# U.S. Alternative Fuel Vehicle Analysis

## Overview

This project analyzes U.S. vehicle registration data by fuel type to understand electric vehicle adoption across the country. The goal is to compare electric vehicles, plug-in hybrid electric vehicles, hybrid electric vehicles, gasoline vehicles, diesel vehicles, and other alternative fuels by state.

The project uses Python for data cleaning and exploratory data analysis, PostgreSQL for SQL-based analysis, Power BI for dashboard creation, and Gamma/AI-assisted presentation tools to communicate the final findings.

## Business Problem

A transportation research group wants to understand where electric vehicle adoption is strongest, which states are lagging behind, and where EV infrastructure investment should be prioritized. This analysis helps support decisions around charging infrastructure, alternative fuel planning, and future transportation policy.

## Dataset

The dataset contains vehicle registration counts by U.S. state and fuel type. Each row represents one state, and each column represents a vehicle fuel category.

Key fields include:

* State
* Electric
* Plug-in Hybrid Electric
* Hybrid Electric
* Biodiesel
* Ethanol/Flex Fuel
* Compressed Natural Gas
* Propane
* Hydrogen
* Gasoline
* Diesel

Additional calculated fields were created during the project, including total vehicles, EV percentage, gasoline percentage, diesel percentage, electrified vehicle percentage, and alternative fuel share.

## Tools Used

* Python
* Pandas
* Jupyter Notebook
* PostgreSQL
* SQLAlchemy
* Power BI
* Power Query
* DAX
* Gamma

## Project Steps

### 1. Load the Data in Python

The raw CSV file was imported into Python using Pandas. The dataset was reviewed to understand its structure, column names, data types, and overall quality.

### 2. Clean the Data

The cleaning process included standardizing column names, checking for missing values, converting numeric columns, and preparing the dataset for analysis.

New calculated fields were also created to make the analysis more meaningful, including vehicle share percentages by state.

### 3. Perform Exploratory Data Analysis

Exploratory data analysis was used to compare fuel types, identify leading EV adoption states, and understand how gasoline and diesel vehicles compare to alternative fuel vehicles.

This step helped uncover patterns in EV adoption, gasoline dependence, and the overall distribution of alternative fuel vehicles across the United States.

### 4. Run SQL Analysis

After cleaning the data, the dataset was loaded into PostgreSQL. SQL queries were used to answer key business questions, including which states have the highest EV adoption rates, which states lag behind, and which alternative fuels are most common.

SQL was also used to support the final recommendations for EV infrastructure investment.

### 5. Build the Power BI Dashboard

A Power BI dashboard was created to make the analysis interactive and easier to understand. The dashboard includes visuals that allow users to compare states, fuel types, adoption rates, and vehicle market size.

The dashboard includes:

* KPI cards for key summary metrics
* A map visual showing EV adoption by state
* Bar charts comparing fuel types
* A scatterplot comparing EV adoption and vehicle market size
* Slicers for interactive filtering

### 6. Create the Final Report and Presentation

A final written report was created to summarize the project overview, dataset, cleaning process, SQL analysis, dashboard, and business recommendations.

A presentation was also created using Gamma to communicate the main findings in a clear and professional format.

## Dashboard

The Power BI dashboard provides an interactive view of U.S. vehicle registrations by fuel type and state. It helps users quickly identify which states have higher EV adoption, which states rely more heavily on gasoline vehicles, and where infrastructure investment may be most useful.

The dashboard is designed for policymakers, transportation planners, and analysts who need to understand EV adoption patterns across the United States.

## Results and Key Insights

* Gasoline vehicles still make up the largest share of vehicle registrations in most states.
* EV adoption varies significantly across the United States.
* Some states show stronger EV adoption rates, while others remain heavily dependent on gasoline and diesel vehicles.
* Hybrid electric and plug-in hybrid vehicles are important transition categories between gasoline vehicles and fully electric vehicles.
* Alternative fuels such as hydrogen, propane, compressed natural gas, and biodiesel remain niche compared to gasoline, diesel, hybrid, and electric vehicles.
* EV infrastructure investment should be prioritized in states with strong EV adoption momentum, large vehicle markets, and opportunities to reduce gasoline dependence.

## Business Recommendations

Based on the analysis, policymakers should prioritize EV infrastructure investment in states where adoption is already growing but additional charging support could accelerate the transition to electric vehicles.

Recommended investment priorities include:

1. States with high EV adoption rates and large vehicle markets
2. States with strong hybrid or plug-in hybrid adoption that could transition further toward EVs
3. States where gasoline vehicles still dominate but future EV growth potential exists

These recommendations can help guide future charging infrastructure planning and support long-term transportation policy decisions.

## How to Run This Project

1. Clone or download this repository.

2. Install the required Python packages:

```bash
pip install -r requirements.txt
```

3. Open the Jupyter Notebook:

4. Run the notebook to review the data cleaning and exploratory analysis.

5. Open the SQL file in PostgreSQL:

6. Open the Power BI file to view the interactive dashboard:

7. Review the final project report for a complete explanation of the analysis and recommendations.

## Final Deliverables

This project includes:

* Raw dataset
* Cleaned dataset
* Python analysis notebook
* PostgreSQL SQL script
* Power BI dashboard
* Final written report
* Presentation created with Gamma
* Requirements file
* Repository documentation

## Author

Dominic Velikov

## License

This project is licensed under the MIT License.
