# Campaign Performance Dashboard - Power BI Project

## Part 1: Project Overview & Business Goal

The company launched 6 marketing campaigns aimed at promoting different product categories through multiple platforms and customer segments.

** Business Goal:**
- Evaluate and compare the performance of each campaign to inform future marketing decisions.

---
## Part 2: Dataset Description

The dataset contains transaction-level data across six marketing campaigns:

- **Customer Info:** Age, education, income, marital status, web visits, household composition  
- **Campaign Metadata:** Campaign IDs and acceptance status  
- **Product Info:** Categories and quantities  
- **Sales Data:** Revenue, platforms (store, web, catalog, deal)

**Data Model:** Star schema for optimized cross-filtering and interactivity.


---

## Part 3: Metrics & Dimensions

**North Star Metric:**  
- Overall Campaign Performance

**Supporting Metrics:**  
- Total Sales Revenue  
- Number of Customers  
- Average Income  

**Key Dimensions:**  
- Product Categories (Wine, Meat, Baked Goods, etc.)  
- Sales Platforms (Store, Web, Catalog, Deal)  
- Customer Demographics (Age, Marital Status, Income, etc.)

**Analysis Objectives:**  
- Dataset lacks date columns (one row = one transaction)  
- Focus analysis only on campaign recipients  
- Slice campaign performance by key dimensions  
- Use Key Influencer analysis to guide marketing strategy

---

## Part 4: Tools Used

- **Power BI:** For dashboard development and interactivity  
- **Power Query:** For data transformation and ETL  
- **DAX:** For calculated measures and Key Influencer visuals  
- **PowerPoint:** For layout, branding, and design consistency

---

## Recommendations

- **Targeting:** Focus on older, married, high-income customers with no children  
- **Product Strategy:** Lead with wine and meat for high-impact campaigns  
- **Platform Strategy:** Prioritize store and web; optimize catalog reach  
- **Data-Driven Action:** Use key influencers to refine audience targeting and budget allocation
 
---

##  Part 5: Executive Summary

- **Top Campaign:** Campaign 6 (334 purchases, $0.33M revenue)  
- **Weakest Campaign:** Campaign 2 (30 purchases, $0.04M revenue)  
- **Best-Selling Product:** Wine ($0.33M), followed by Meat ($0.17M)  
- **Top Channel:** Store (4,022 purchases); Discount purchases lowest  
- **Customer Profile:** Mostly married, college graduates, no children at home, avg income ~$61K  

---

##  Part 6: Campaign Performance Analysis – Products & Platforms
![image](https://github.com/user-attachments/assets/19ef5084-a4a0-4960-83ad-f7162e384c08)


**Campaign 6:**
- 334 purchases, $0.33M revenue  
- Top products: Wine (51%), Meat (30%)  
- Top platform: Store (34%)

**Campaign 5:**
- 162 purchases, $0.26M revenue  
- Wine accounted for 54%  
- Strong web and store presence

**Campaign 2:**
- Weakest campaign (30 purchases, $0.04M)  
- 69% were wine purchases  
- Store dominant (41%)

**📌 Recommendations:**
- Allocate more budget to Campaigns 5 and 6  
- Focus on wine and meat  
- Prioritize in-store and web platforms for performance  
- Reassess product-platform fit for Campaign 2

---

##  Part 7: Campaign Analysis – Customer Segments

### Overall View:
![image](https://github.com/user-attachments/assets/1529e634-94b6-42c1-804a-9626e4e2b715)

- 608 customers accpeted campaigns, average income ~$61.7K, avg age 56.7  
- Most are married, university graduates, and child-free  
- Wine preference rises with age; meat declines

### Campaign 6:
![image](https://github.com/user-attachments/assets/448365fe-8b53-40c0-b9b1-d21f1c20b5ad)

- 334 customers, income ~$60.2K, avg age 55.6  
- 66% no kids, 71% no teens  
- Wine-heavy purchases

**Recommendation:** Continue targeting older, child-free segments with wine-focused messaging.

### Campaign 5:
![image](https://github.com/user-attachments/assets/48cd77d6-fa34-4333-8f13-18a421a7e863)

- 162 customers, income ~$82.3K, avg age 55.5  
- Highest income group, diverse education  
- Strong platform mix

**Recommendation:** Tailor to high-income households. Use catalog/web to push premium offers.

### Campaign 1:
![image](https://github.com/user-attachments/assets/84390564-c7c4-4f7d-9566-e85572cff882)

- 144 customers, income ~$78.8K, avg age 56.5  
- Strong discount engagement  
- Balanced customer base

**Recommendation:** Use value-based messaging and bundled offers for price-sensitive buyers.

---

##  Part 8: Key Influencer Insights
![image](https://github.com/user-attachments/assets/47617973-4eaa-4dd5-a2b4-4291e9de95d5)

- Pick the campaign, filter the products and see the recommendations from Power BI AI.

---

