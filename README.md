# NHANES Diabetes Case Study

[View the Live Report](https://jtorrescarbajal.github.io/nhanes-diabetes-case-study/)

This case study explores diabetes testing behavior among U.S. adults using the 2021-2023 NHANES dataset.

##  Objective
To understand which demographic and socioeconomic factors influence whether individuals get tested for diabetes.

## Key Findings
- Younger adults and low-income individuals are significantly less likely to receive diabetes testing, highlighting major disparities in preventive healthcare. Adults aged 18–34 had 62.7% lower odds of testing than middle-aged adults, while low-income individuals had 32.2% lower odds compared to high-income groups.

- Lack of health insurance and lower education levels are strong barriers to testing. Insured individuals are 76% more likely to test than uninsured individuals, and those with lower education showed lower testing rates, reinforcing the role of health coverage and health literacy in prevention efforts.

- Early warning signs of diabetes often appear in adolescence, however most diagnoses occur in middle age. This gap highlights the urgent need for earlier screening in at risk populations such as young men, who had 38.9% lower odds of testing than young women.

## Folder Structure
- `code/` – R scripts and RMarkdown file
- `data/` – Cleaned and raw datasets (non-sensitive)
- `figures/` – Charts and visualizations
- `docs/` – Exported final report (PDF or HTML)

## How to Get the Data and Generate Outputs
Raw `.xpt` files are downloaded directly from the official NHANES/CDC website when the analysis is run. These files are not stored in the repository.

To download the data, generate cleaned CSVs, and produce the final reports (PDF/HTML):

1. Open `generate_report.R` in the root folder
2. Run the script. This will:
   - Download and save the required `.xpt` files to `data/raw/`
   - Generate cleaned datasets in `data/processed/`
   - Render the reports to the `report/` folder

## Tools Used
- **R** – Primary language for data analysis and visualization. I deepened my understanding of R's functional programming style and how to write reproducible analysis pipelines using RMarkdown and custom functions.
- **RMarkdown** – Used to create a fully self-contained, dynamic report that combines code, narrative, and visuals. This helped me develop a more structured and communicative approach to sharing insights.
- **tidyverse**
  - **dplyr** – For data cleaning, filtering, transformation, and joining. I became more proficient in writing clean, readable data pipelines using functions like mutate(), filter(), select(), and left_join() to prepare and transform datasets for analysis.
  - **tidyr** – Used to reshape and tidy data as needed for analysis and plotting, especially during variable grouping and pivoting steps.
- **haven** – Allowed me to directly import `.xpt` files from NHANES. This was my first time working with SAS transport files and taught me how to handle non-standard file formats in R.
- **knitr** – Enabled figure embedding, caching, and report rendering. I learned how to configure RMarkdown chunks for better reproducibility and performance.
- **Logistic Regression** – Used glm() to model the likelihood of undergoing a diabetes blood test based on factors like age, income, gender, education level, and health insurance status. I learned to interpret odds ratios, confidence intervals, and p-values to quantify disparities in testing behavior.
- **Relative Risk and Association Analysis** – Wrote a custom function to perform Chi-square tests and calculate Cramér’s V and Relative Risk with confidence intervals, using contingency tables. This helped quantify both the strength and magnitude of associations between categorical predictors such as insurance status and diabetes testing behavior.
- **Confidence Intervals and p-values** – Reported alongside odds ratios and relative risks to communicate uncertainty and statistical significance. Strengthened my ability to interpret statistical outputs in the context of public health disparities and real-world decision-making.

## What I Learned
- How to work with real-world, multi-file datasets and combine them programmatically
- The importance of using survey weights in national health datasets to avoid biased results
- How to apply and interpret logistic regression and relative risk models for public health analysis
- How to tell a compelling story with data using RMarkdown by integrating narrative, visuals, and code into a polished report
- The value of good project structure and reproducibility in data analysis such separating raw and processed data and using scripts for rendering
- The influence of socioeconomic and demographic factors on healthcare access and outcomes highlights a central theme at the intersection of data science and public health.

## References
- NHANES 2021–2023 [CDC site](https://wwwn.cdc.gov/nchs/nhanes/continuousnhanes/default.aspx?Cycle=2021-2023)

## This project was conducted in R version 4.4.2 using the following packages:

- `dplyr` - Data manipulation and transformation
- `epitools` - Epidemiological tools, including risk ratio calculations
- `forcats` - Handling categorical (factor) variables
- `haven` - Importing data from SPSS, Stata, and SAS
- `kableExtra` - Enhancing tables in R Markdown
- `knitr` - Report generation in R Markdown
- `rvest` - Web scraping
- `vcd` - Visualizing and analyzing categorical data

## License
This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.
