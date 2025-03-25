library(rmarkdown)
library(here)

# Render the report and trigger all data steps
setwd(here::here())
rmarkdown::render(
  input = "code/Diabetes_Case_Study.Rmd",
  output_format = c("html_document", "pdf_document"),
  output_dir = "report"
)

message("Report and CSVs successfully generated.")

