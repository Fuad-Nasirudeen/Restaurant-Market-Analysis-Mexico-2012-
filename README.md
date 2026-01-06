# Restaurant-Market-Analysis-Mexico-2012-
This project analyzes a 2012 consumer survey dataset regarding the restaurant industry in Mexico. As a contracted Data Analyst, the goal is to provide actionable insights for business entrepreneurs and investors to identify market gaps, understand consumer demographics, and define the "winning formula" for a successful restaurant investment.

## Project Objectives 
-	Understand characteristics of highly rated restaurants
-	Analyze the effect of consumer preferences on ratings
-	Examine consumer demographics and possible data bias
-	Identify demand and supply gaps in the restaurant market
-	Recommend ideal investment characteristics for new restaurants

## Dataset Overview
The dataset is a multi-table relational database derived from a 2012 consumer survey conducted in Mexico. It captures the intersection of consumer demographics, restaurant features, and subjective quality ratings to provide a 360-degree view of the local hospitality market.

Total Ratings: 1,161 records (Overall, Food, and Service scores).

Total Restaurants: 130 establishments across various price points and cuisines.

Total Consumers: 138 surveyed individuals with detailed demographic and behavioral profiles.
### Key Components
- Ratings Table: (0–2 scale) for Food, Service, and Overall experience.

- Restaurant Profiles: Including location coordinates, price tiers (Low/Medium/High), and amenities like alcohol service, smoking areas, and parking availability.

- Consumer Demographics: Personal data including age, occupation (notably a high student population), budget levels, and social habits (smoking and drinking levels).

- Cuisine Mapping: Two auxiliary tables defining the specific cuisines served by restaurants and the preferred cuisines of the consumers.

## Analysis Process
### Data Preparation
-	Handled missing values
-	Removed duplicates
-	Standardized categorical fields
-	Cleaned the Data

### Analysis
- Identified the best 'Performing' restaurants
- Determined the target cuisines and Location 

## Tools used
-	Power BI (Dashboard & visualization)
-	PostgreSQL (Aggregation and Analysis)

## Business Impact
-	Helps investors identify profitable restaurant opportunities
-	Supports entrepreneurs in selecting cuisines and target markets
-	Helps Consumers in selecting restaurants
-	Enables data-driven market entry strategies


## Key Insights and Analytical Questions answered
### 1. What can you learn from the highest rated restaurants? Do consumer preferences have an effect on ratings?

The "Top Rated Restaurants": Mariscos El Pescador and El Rincon De San Francisco located in San Luis Potosi lead the market. Notably, 80% of top-rated spots are Medium-priced in a closed area, proving that the local demographic prioritizes value-for-money over luxury. Majority of the top rated restaurants offer Alcohol service of wine and beer with No smoking.

High-Value Niches: While Mexican food is common, Coffee Shops and International cuisines hold the highest satisfaction scores. These "experience-based" niches represent lower competition and higher consumer appreciation.

The Preference Paradox: Surprisingly, consumers gave higher ratings when visiting restaurants that did not match their stated preferred cuisine compared to those that did. This suggests consumers are more critical of their "favorite" food types and more easily impressed by new experiences.

The Service-Food Link: Top establishments like Tortas Locas Hipocampo show near-identical scores for both Food and Service. In this market, high-quality food cannot compensate for poor service; they must be balanced to achieve a top-tier rating.

Consumer preferences significantly impact ratings. Consumers who find their "Preferred Cuisine" at a venue consistently rate it higher than those who do not, highlighting the importance of specialized niche menus over generic ones.


### 2. Consumer Demographics & Data Bias

The dataset is heavily skewed toward Students (approx. 82%) and Single young adults (Avg. Age 27).

Economic Profile: Most consumers operate on a Medium to Low budget.

Bias Note: There is a clear sampling bias toward the student demographic in San Luis Potosí. This data may not fully represent the "High Budget" or "Family" segments of the broader Mexican market, but it provides a perfect blueprint for targeting the university-age population.

Social Profile: The customers are mostly casual or social drinkers, Majority are Non Smokers and are Independent and Single. 



### 3. Demand and Supply Gaps

The analysis revealed several untapped opportunities where consumer preference exists without corresponding restaurant supply:

The "Zero Supply" Cuisines: High interest was found in Hot Dogs, Latin American, Sushi, and Tex-Mex, yet no restaurants in the dataset currently serve these categories.

The Quality Gap: Coffee Shops, Family and Mediterranean restaurants are extremely low in supply but hold the highest average ratings, indicating a hungry market for high-quality specialized venues.

The City, Cuernavaca has a high average rating but fewer restaurants than San Luis Potosí. The high satisfaction levels here suggest a consumer base that is receptive to quality dining and could likely support more "International" or "Contemporary" options, which are currently high-performing but low-supply cuisines.

### 4. The Ideal Investment Strategy
Based on the data, an investor looking for the highest probability of success should look for these characteristics:

Cuisine: Coffee Shop, Family or International (High demand/Low supply).

Price Point: Medium (Highest perceived value for all budget tiers).

Location: Cuernavaca (Highest overall satisfaction rates) or San Luis Potosi (Largest Market).

Amenities: Alcohol service (Wine & Beer) and Private/Valet Parking (Critical for high-rating car-using consumers) in a closed area.

## Limitations
-	Dataset is limited to one city and time period
-	Survey responses are subjective
-	Demographic bias may affect conclusions

## Conclusion
Restaurant success in this dataset is strongly influenced by how well offerings align with consumer preferences. Identifying underserved cuisines and understanding demographic trends provides clear opportunities for smart investment decisions.

