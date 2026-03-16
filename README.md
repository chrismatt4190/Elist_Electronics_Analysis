<h1 align="center">Elist Electronics Data Analysis</h1>

<h2 align="center">Client Background</h2>

<p>
<strong>Elist Electronics</strong>, founded in 2018, is a global e-commerce company that sells popular electronic products through its website and mobile app. While the company has accumulated large volumes of data across sales, marketing, operations, product offerings, and its customer loyalty program, much of this data has historically been underutilized. This project analyzes and synthesizes these datasets to uncover meaningful insights that can support better decision-making and ultimately strengthen Elist’s commercial performance.
</p>

<p>
The Head of Operations is requesting a data-driven analysis of Elist’s order and sales performance from 2019 to 2022 to support an upcoming company-wide town hall presentation. Specifically, leadership wants a clear overview of overall sales trends during this period, including monthly and yearly growth rates. In addition, they are seeking insights into the effectiveness of the new loyalty program to determine whether it should continue to be used. The request also includes an evaluation of key operational metrics such as average order value (AOV), which will help leadership better understand customer purchasing behavior and the company’s overall financial performance.
</p>

---

<h2 align="center">Data Structures</h2>

<p align="center">
Elist's database structure consists of four tables: orders, customers, geo_lookup, and order_status, with a total of 108,127 records.
</p>

<p align="center">
<img width="500" src="https://github.com/user-attachments/assets/1fbd15fa-18e4-4436-aba4-4e8b94aaf6a0">
</p>

---

<h2 align="center">Summary of Insights</h2>

<h3 align="center">Seasonality</h3>

<p align="center">
The charts show a clear seasonal sales cycle throughout the year. Sales generally start slow in January and February, with February consistently showing the largest declines in growth, indicating a post-holiday slowdown and pipeline rebuilding period. Activity begins to gradually increase from March through June as deals move through the pipeline. The strongest sales performance occurs between July and September, with September typically representing the peak month across multiple years.
</p>

<p align="center">
<img width="918" height="268" alt="Screenshot 2026-03-16 at 10 03 28 AM" src="https://github.com/user-attachments/assets/209bdf6a-799b-4253-8575-ce856490e8c8" />
</p>

<h3 align="center">Product Performance</h3>

<p>
The product performance shows that revenue is concentrated in a few key products, while order volume is driven by lower-priced accessories. The 27in 4K gaming monitor is the top revenue driver, generating 35% of total sales ($9.85M) with a relatively high AOV of $421 and moderate order share (22%), indicating strong value per transaction. Apple AirPods contribute the highest order volume (45%) and account for 28% of total sales, showing they are the primary volume driver despite a lower AOV of $160. High-ticket items like the MacBook Air ($1,588 AOV) and ThinkPad Laptop ($1,100 AOV) generate significant revenue (22% and 11% of sales respectively) but represent a very small share of orders (4% and 3%), indicating they are low-volume, high-value products. Lower-priced accessories such as the Samsung Charging Cable Pack generate 20% of orders but only 2% of revenue, demonstrating high volume but minimal revenue contribution. From a quality perspective, refund rates are highest for laptops (11–12%), suggesting potential customer satisfaction or expectation issues, while accessories have very low refund rates. Overall, the portfolio shows a balanced mix of high-volume accessory products and high-margin premium devices, with monitors and AirPods driving the majority of revenue and demand.
</p>

<p align="center">
<img width="792" height="213"  alt="Screenshot 2026-03-16 at 10 06 17 AM" src="https://github.com/user-attachments/assets/ede7fedb-9eea-445c-8f59-7c26ea6ddff0" />
</p>

<h3 align="center">Global Reach</h3>

<p>
Elist demonstrates a broad global reach with sales concentrated across North America, Europe, and Asia-Pacific, while still maintaining emerging demand in Latin America. North America is the dominant region, accounting for 51% of total sales, driven primarily by the United States, which alone contributes 47% of global revenue ($13.3M). EMEA represents the second-largest market at 30% of total sales, with the United Kingdom, Germany, and France serving as the primary revenue drivers and a total of nine countries contributing to regional performance, indicating strong geographic diversification. APAC contributes 12% of overall sales, led by Japan and Australia, which together represent more than half of the region’s revenue and demonstrate strong purchasing power through higher average order values. Latin America accounts for 6% of total sales, with Brazil and Mexico leading the region, suggesting an emerging but smaller market footprint.
</p>

<p align="center">
<img width="961" height="519" alt="Screenshot 2026-03-16 at 10 16 47 AM" src="https://github.com/user-attachments/assets/9680efaf-d6af-477d-9b5c-4d119690b277" />

<h3 align="center">Loyalty Program</h3>

<p>
The loyalty program appears to be an increasingly important channel for sustaining customer engagement and revenue over time. After launching in 2019, the program initially generated modest results, with loyalty sales of roughly $416K and 2K orders, significantly trailing non-loyalty performance. Adoption accelerated substantially in 2020 and 2021, when loyalty sales grew to $2.97M and $4.87M, respectively, alongside strong increases in order volume from 13K orders in 2020 to nearly 20K orders in 2021. During this period, the program became a meaningful driver of customer activity, with growth largely fueled by higher purchase frequency rather than increases in average order value (AOV). While loyalty AOV rose gradually from $207 in 2019 to $249 in 2021, the primary driver of revenue expansion was the surge in repeat purchases from loyalty members.

The program experienced a notable slowdown in 2022, with loyalty sales declining to $2.72M and order counts falling to about 11K, though AOV remained relatively stable at $245. This suggests that while fewer loyalty purchases occurred, the spending behavior of participating customers remained consistent. Overall, the trend indicates that the loyalty program successfully scaled customer participation and repeat purchasing during its growth phase, but its recent contraction points to an opportunity to revisit engagement strategies and marketing channels to sustain loyalty member activity and long-term program value.
</p>

<p align="center">
<img width="961" height="99" alt="Screenshot 2026-03-16 at 10 55 08 AM" src="https://github.com/user-attachments/assets/25edb21e-d604-49ae-9dc5-02e2c2179833" />
</p>

---

<h1 align="center">Recommendations</h1>

<h2>Product Performance</h2>
<p>
Elist should expand its catalog within the product categories that are already driving the majority of revenue. 
Currently, <strong>96% of total sales come from Wireless In-Ear Headphones, High-End Gaming Monitors, and Lightweight Laptops</strong>, 
indicating strong product-market fit in these segments. Expanding the assortment to include 
<strong>additional in-class or adjacent products</strong>—such as upgraded versions, complementary accessories, 
or premium variants—would likely improve overall sales performance, increase average order value, 
and broaden brand reach while leveraging existing consumer demand.
</p>

<h2>Global Reach</h2>
<p>
Because <strong>85% of total sales and orders originate from just 17 countries</strong>, 
Elist should prioritize maintaining strong market penetration in these countries in the short term. 
These markets represent the company’s core revenue base and should remain the primary focus for 
marketing investment, customer acquisition, and retention strategies.
</p>

<p>
To support long-term growth, Elist should initiate a project to identify 
<strong>countries with economic and consumer characteristics similar to its current top-performing markets</strong>. 
Expanding into these comparable markets will increase the likelihood of successful international growth.
</p>

<p>
Additionally, Elist should prioritize <strong>experimentation and expansion within the APAC region</strong>. 
Although APAC currently accounts for <strong>12% of total sales</strong>, it has the 
<strong>highest average order value among all regions</strong>, indicating strong purchasing power and 
demand for premium technology products. Given that consumers in many APAC markets tend to purchase 
higher-priced electronics as status symbols, targeted marketing campaigns and localized product 
offerings in this region could significantly increase revenue.
</p>

<h2>Loyalty Program</h2>
<p>
The loyalty program historically served as an important mechanism for maintaining customer value 
following the surge in sales during 2020. However, recent trends indicate a potential shift in 
customer engagement that should be monitored closely.
</p>

<p>
From <strong>September through December 2022</strong>, non-loyalty customers exceeded loyalty customers 
in <strong>sales, average order value, and order count</strong> for the first time since December 2020. 
While this does not necessarily indicate the program is ineffective, it suggests that loyalty engagement 
may be declining and warrants further evaluation before making long-term decisions about the program.
</p>

<p>
To improve performance, Elist should <strong>reduce investment in the affiliate marketing channel</strong> 
and instead concentrate marketing efforts on the <strong>direct and email marketing channels</strong>, 
which have demonstrated the strongest loyalty program participation rates:
</p>

<ul>
<li><strong>Direct Marketing Channel:</strong> 40% signup rate (~23.5K signups)</li>
<li><strong>Email Marketing Channel:</strong> 59% signup rate (~8K signups)</li>
</ul>

<p>
Strengthening these channels will help increase loyalty program participation and reinforce 
repeat purchasing behavior among existing customers.
</p>
