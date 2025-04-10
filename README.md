# ShopEasy Marketing Analysis

## Project Background
ShopEasy, an online retail business, is facing reduced customer engagement and conversion rates despite launching several new online marketing campaigns. The business seeks to understand the root causes through detailed KPI analysis and uncover strategies to enhance its marketing effectiveness and customer journey.

Targeted SQL queries regarding various kpi's can be found [here](https://github.com/rPrajwal18/ShopEasy_Marketing_analysis/tree/ef8e4ffb0b4df2103eb9109686f7ed03842a021c/sql).

## Data Structure & Initial Checks
ShopEasy's database as seen below consists of five main tables dim_customers, dim_products, fact_customer_journey, fact_customer_reviews, and fact_engagement_data with other transformed table is Calender.

![model_erd](https://github.com/rPrajwal18/ShopEasy_Marketing_analysis/blob/ef8e4ffb0b4df2103eb9109686f7ed03842a021c/files/model_EDA.png)

## Executive Summary

### Overview of Findings
- **Decreased Conversion Rates**: The conversion rate demonstrated a strong rebound in December, reaching 10.2%, despite a notable dip to 5.0% in October.
- **Reduced Customer Engagement**:
  * There is a decline in overall social media engagement, with views dropping throughout the year.
  * While clicks and likes are low compared to views, the click-through rate stands at 15.37%, meaning that engaged users are still interacting effectively.
- **Customer Feedback Analysis**:
  * Customer ratings have remained consistent, averaging around 3.7 throughout the year.
  * Although stable, the average rating is below the target of 4.0, suggesting a need for focused improvements in customer satisfaction, for products below 3,5.

![analysis dashboard](https://github.com/rPrajwal18/ShopEasy_Marketing_analysis/blob/ef8e4ffb0b4df2103eb9109686f7ed03842a021c/files/marketing_analysis_dashboard.png)

## Insights Deep-Dive

### Decreased Conversion Rates
- **General Conversion Trend**: Throughout the year, conversion rates varied, with higher numbers of products converting successfully in months like February and July. This suggests that while some products had strong seasonal peaks, there is potential to improve conversions in lower-performing months through targeted interventions.
- **Lowest Conversion Month**: May experienced the lowest overall conversion rate at 6.1%, with no products standing out significantly in terms of conversion. This indicates a potential need to revisit marketing strategies or promotions during this period to boost performance.
- **Highest Conversion Rates**: January recorded the highest overall conversion rate at 17.3%, driven significantly by the Ski Boots with a remarkable 100% conversion. This indicates a strong start to the year, likely fueled by seasonal demand and effective marketing strategies.

![decreased_conversion_rates](https://github.com/rPrajwal18/ShopEasy_Marketing_analysis/blob/ef8e4ffb0b4df2103eb9109686f7ed03842a021c/files/decreased_conversion_rates.png)

### Reduced Customer Engagement
- **Declining Views**: Views peaked in February and April but declined from August and on, indicating reduced audience engagement in the later half of the year.
- **Low Interaction Rates**: Clicks and likes remained consistently low compared to views, suggesting the need for more engaging content or stronger calls to action.
- **Content Type Performance**: Blog content drove the most views, especially in Jan and April, while social media and video content maintained steady but slightly lower engagement.
  
![click_view_likes_analysis](https://github.com/rPrajwal18/ShopEasy_Marketing_analysis/blob/ef8e4ffb0b4df2103eb9109686f7ed03842a021c/files/clicks_views_likes_analysis.png)
![age_group_analysis](https://github.com/rPrajwal18/ShopEasy_Marketing_analysis/blob/ef8e4ffb0b4df2103eb9109686f7ed03842a021c/files/total_views_by_content_type.png)

### Customer Rating Analysis
- **Customer Ratings Distribution**: The majority of customer reviews are in the higher ratings, with 431 reviews at 4 stars and 409 reviews at 5 stars, indicating overall positive feedback. Lower ratings (1-2 stars) account for a smaller proportion, with 80 reviews at 1 star and 153 reviews at 2 stars.

![customer_rating_analysis](https://github.com/rPrajwal18/ShopEasy_Marketing_analysis/blob/ef8e4ffb0b4df2103eb9109686f7ed03842a021c/files/customer_reviews_by_rating.png)

## Recommendations

- **Increase Conversion Rates**: Target High-Performing Product Categories: Focus marketing efforts on products with demonstrated high conversion rates, such as Kayaks, Ski Boots, and Baseball Gloves. Implement seasonal promotions or personalized campaigns during peak months (e.g., January and September) to capitalize on these trends.
- **Enhance Customer Engagement**: Revitalize Content Strategy: To turn around declining views and low interaction rates, experiment with more engaging content formats, such as interactive videos or user-generated content. Additionally, boost engagement by optimizing call-to-action placement in social media and blog content, particularly during historically lower-engagement months (September-December).
- **Improve Customer Feedback Scores**: Address 1 and 2-3 Feedback and Implement a feedback loop where 1 and 2-3 reviews are analyzed to identify common issues. Develop improvement plans to address these concerns. Consider following up with dissatisfied customers to resolve issues and encourage re-rating, aiming to move average ratings closer to the 4.0 target.

## General Info

You can download and explore the Power BI (.pbix) file [here](https://github.com/rPrajwal18/ShopEasy_Marketing_analysis/blob/ef8e4ffb0b4df2103eb9109686f7ed03842a021c/dashboard/Marketing%20analysis%20dashboard.pbix) to interact with the full report and customize the analysis further based on your needs.


