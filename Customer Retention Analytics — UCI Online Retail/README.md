
# 🛒 Retail Online — Cohort Retention Analysis Dashboard

> **Tool:** Microsoft SQL Server, Power BI | **Dataset:** UCI Online Retail | **Period:** 2010–2011  
> **Type:** Descriptive & Diagnostic Analytics
> > **Workflow:** Micorsoft SQL Server --> PBI

---

## 📌 Project Overview

This project builds a two-page Power BI dashboard to analyse **customer cohort retention** for a UK-based online retail business. The analysis follows a structured approach — starting from business problems and questions, then building visuals to answer them.

The dataset is the [UCI Online Retail Dataset](https://archive.ics.uci.edu/ml/datasets/online+retail), containing transactional records from December 2010 to December 2011, pre-cleaned before import into Power BI.

---

## 🎯 Business Problems

1. **Unknown retention health** — The business spends on acquiring new customers but has no visibility into how many actually return.
2. **Cohort blind spots** — Customers acquired in different months behave differently. Without cohort-level tracking, there is no way to identify which acquisition periods produce loyal customers.
3. **No diagnostic understanding** — Even if retention numbers exist, the business does not know *why* some cohorts retain better — whether driven by spend level, purchase frequency, or geography.

---

## ❓ Business Questions

### Page 1 — Descriptive Analytics
| # | Question |
|---|----------|
| Q1 | How many customers were acquired per cohort, and how many cohorts exist? |
| Q2 | What is the retention rate of each cohort at each month after acquisition? |
| Q3 | What is the average retention rate across all cohorts by month index? |
| Q4 | Which cohorts have the highest and lowest retention at Month 3 and Month 6? |
| Q5 | Is retention improving over time — are newer cohorts better than older ones? |

### Page 2 — Diagnostic Analytics
| # | Question |
|---|----------|
| Q6 | Do retained customers have a higher Average Order Value than one-time buyers? |
| Q7 | Does purchase frequency correlate with retention? |
| Q8 | How are customers distributed across RFM segments, and which segments are at risk? |
| Q9 | Which cohorts produce the most Champions and Loyal customers? |

---

## 📊 Dashboard Structure

### Page 1 — Descriptive Analytics: *"What is happening?"*

| Visual | Purpose |
|--------|---------|
| KPI Cards (Total Customers, Revenue, Orders, AOV) | Establish baseline scale and health |
| Cohort Retention Matrix (absolute counts) | Show real customer volumes surviving each month |
| Cohort Retention Matrix (% rates) | Heatmap of retention rates — core cohort analysis visual |
| Bar Chart — Avg Retention % by Month | Show the average retention curve and rate of drop-off |
| Bar Chart — Revenue % by Cohort | Show which cohorts are driving the most revenue |
<img width="1783" height="1161" alt="Screenshot 2026-03-05 124316" src="https://github.com/user-attachments/assets/60dc4c9b-2614-45bb-a8e1-0772b43a0866" />

### Page 2 — Diagnostic Analytics: *"Why is it happening?"*

| Visual | Purpose |
|--------|---------|
| Bar Chart — AOV: Retained vs One-time | Quantify the value difference between customer types |
| Bar Chart — Customers by Frequency Bucket | Show distribution of purchase frequency (1, 2, 3, 4, 5, 6+) |
| Treemap — RFM Segment Distribution | Show the proportion of customers in each engagement state |
| Stacked Bar — Segment Breakdown by Cohort Month | Diagnose *why* each cohort retained well or poorly |
<img width="1535" height="1199" alt="Screenshot 2026-03-05 124425" src="https://github.com/user-attachments/assets/08155a63-936b-4f4c-9c52-6b7d3645635c" />
---

## 🔍 Key Insights

### Page 1 — Scale & Retention Patterns

**The headline numbers**
- **4,219** unique customers | **17,132** orders | **$8.34M** revenue | **$486.73** AOV
- Orders per customer = **~4.06** — but this average is misleading. It is heavily skewed by a small loyal core. With Month 1 retention averaging only ~20%, the majority of customers place exactly **one order and never return**.
- AOV at $486.73 signals a **wholesale/B2B-leaning customer base** — each lost repeat customer represents nearly $500 in foregone transaction value, not the $20–50 typical of B2C retail.

**The retention reality**
<img width="1005" height="1062" alt="Screenshot 2026-03-05 131217" src="https://github.com/user-attachments/assets/91bd2b01-7cee-4959-b7e6-09c391794ee4" />

- Month 1 retention averages only **18–24%** across all cohorts — roughly **3 out of 4 new customers never return** in the month after their first purchase.
- However, customers who survive past Month 2–3 show genuine loyalty, stabilising at **20–27%** for up to 10 months. A real loyal base exists — it is just small.

**The "last month drop" artifact**
Every cohort shows a dramatic retention collapse in its final observed month (e.g., January Month 11: 36.45% → 11.75%). This is **not real churn** — it reflects data truncation at the December 2011 dataset boundary. Incomplete transactions in the final period make retention appear to collapse.

**Unexpected retention bumps — reactivation signal**
Several cohorts show retention *increasing* at specific months, which contradicts the normal monotonic decline:

| Cohort | Reactivation Bump |
|--------|------------------|
| January | Month 2 (22%→27%), Month 4 (23%→32%), Month 9–10 (33%→36%) |
| February | Month 3 (19%→28%), Month 9 (25%→31%) |
| June | Month 5 (23%→33%) |
| September | Month 2 (23%→30%) |

These bumps likely reflect **seasonal reactivation** — dormant customers returning during holiday periods or mid-year sale events. This is a strong signal that **win-back campaigns could be effective** for this business.

**Quarterly retention trend**

| Quarter | Avg Retention | Trend |
|---------|--------------|-------|
| Q1 (Jan–Mar) | 26.6% → 23.3% → 20.6% | Strongest |
| Q2 (Apr–Jun) | 20.0% → 19.1% → 20.9% | Stable |
| Q3 (Jul–Sep) | 19.9% → 20.6% → 21.6% | Slight recovery |
| Q4 (Oct–Nov) | 17.7% → 11.2% | Sharpest decline |

**Q1 cohorts significantly outperform all others** — nearly 6 percentage points above Q4. Customers acquired early in the year appear to have discovered the business organically, resulting in stronger long-term engagement.

**Q4 is the most concerning quarter.** Despite being the highest-traffic e-commerce period, October and November produce the weakest retaining customers — a classic holiday acquisition problem where deal-seekers and one-time gift buyers have no intention of returning.

**Revenue concentration risk**
- Q1 alone contributes **53.7%** of total revenue
- January cohort alone = **25.59% (~$2.13M)** of all revenue
- Q3 + Q4 combined = only **22.3% (~$1.86M)** — less than January by itself

The business is dangerously dependent on its earliest cohorts. If the January cohort ages out, there is no evidence newer cohorts can replace that revenue. This is the most critical business risk identified in the analysis.

---

### Page 2 — Diagnostic Insights

**AOV: Retained vs One-time buyers**
- Retained customers: **$486.83** AOV
- One-time buyers: **$412.80** AOV — a **$74 gap per transaction**

The overall AOV of $486.73 is almost entirely propped up by retained customers. One-time buyers sit $74 below baseline, and since they represent the majority of customers, they are actively dragging the blended average down. Retained customers are not just more frequent — they also spend more per order, ruling out the hypothesis that returning customers are bargain hunters.

**Purchase frequency distribution**
```
1 order:   1,493 customers  (35.4% — largest single group)
2 orders:    835 customers
3 orders:    508 customers
4 orders:    388 customers
5 orders:    242 customers
6+ orders:   872 customers  (20.7% — the loyal core)
```

The distribution is **bimodal** — a large spike of one-time buyers and a secondary spike of highly loyal buyers (6+), with decay in between. The 2–3 order range (1,343 customers) represents the critical intervention window: customers who have shown return intent but have not yet committed to loyalty.

**RFM segment breakdown**

| Segment | Share | Implication |
|---------|-------|-------------|
| Champions | 19.62% | Active, high-value, recent — protect at all costs |
| Hibernating | 18.53% | Were active, now dormant — largest at-risk group by volume |
| At Risk | 12.43% | Declining engagement — urgent win-back needed |
| Loyal | 11.46% | Consistent purchasers — reinforce with loyalty rewards |
| Potential Loyalist | 10.17% | Strong candidates for Champion conversion |
| Lost | 8.37% | Effectively churned |
| About To Sleep | 7.70% | Early warning — act before they hibernate |
| Need Attention | 6.18% | Irregular, fading — requires re-engagement |
| Cannot Lose Them | 0.62% | Small but extremely high-value — any loss is critical |

**Healthy segments (Champions + Loyal) = 31%** of the base. However, **at-risk segments (Hibernating + At Risk + About To Sleep + Need Attention) = 38.66%** — more customers are in various stages of disengagement than are actively healthy.

**Cohort-level segment diagnosis**

- **January & February** contain the highest concentrations of Champions and Loyal customers (Jan: 102 Champions + 77 Loyal = ~43% of cohort). This directly explains their revenue dominance — it is customer quality, not cohort size alone.
- **January and February also have 84 and 86 At Risk customers respectively** — former high-value buyers now disengaging. These represent the single highest-priority win-back opportunity in the dataset.
- **March marks the inflection point** — the first cohort where Hibernating and Lost customers outnumber Champions and Loyal. Acquisition quality began declining here.
- **October is dominated by About To Sleep (107) and Hibernating (90)** — customers who never developed deep engagement, confirming the Q4 acquisition quality problem.
- **November** has 145 New Customers (largest of any cohort) with zero Champions, zero Loyal, and zero At Risk — consistent with holiday buyers who have not yet had time to prove loyalty or churn.

---

## 💡 Integrated Story & Strategic Implications

**Why does the January cohort dominate revenue?**
It contains 102 Champions and 77 Loyal customers — the highest concentration of high-value RFM segments in the dataset. Purchasing repeatedly at ~$487 AOV across 10+ months compounds their revenue contribution far beyond what their cohort size alone would suggest.

**Why does Q4 retention collapse?**
October acquires customers who move directly into About To Sleep and Hibernating without ever developing engagement. November floods the base with unproven New Customers. Neither cohort builds the repeat purchase habits that define Champions.

**Why does the blended AOV look healthy when most customers only buy once?**
872 customers buying 6+ times at $486.83+ statistically dominate the revenue pool, masking the drag from 1,493 one-time buyers averaging only $412.80.

**Priority 1 — Win back At Risk customers from January and February**
These 170 customers (84 + 86) have already proven willingness to spend at high AOV across multiple transactions. Each recovered customer represents multiple future orders at ~$487. Reactivation cost is far lower than equivalent new customer acquisition.

**Priority 2 — Convert 2–3 order customers into the 6+ loyalty bracket**
1,343 customers are in the conversion window. A targeted intervention — personalised outreach, loyalty incentive, or replenishment reminder — at this stage has the highest probability of moving them into the loyal core.

**Priority 3 — Reassess Q4 acquisition strategy**
High traffic volume in Q4 does not translate to high customer quality. At $486.73 AOV, acquiring holiday deal-seekers may cost more than their lifetime value returns. Resources may be better invested in retaining existing customers than acquiring new ones during this period.



---

## 📦 Dataset

**Source:** [UCI Machine Learning Repository — Online Retail](https://archive.ics.uci.edu/ml/datasets/online+retail)  
**Period:** December 2010 – December 2011  
**Scope:** UK-based online retailer, primarily wholesale/B2B transactions  
**Cleaning applied:** Removed null CustomerIDs, negative quantities (returns), and zero-price records prior to import.
