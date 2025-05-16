# Install packages
install.packages("officer")
install.packages("flextable")
install.packages("gtsummary")

# Load packages
library(tidyverse)
library(gtsummary)
library(officer)
library(flextable)
library(readxl)

# Load data
data <- read_excel("Data/Thalassemia_Survey.xlsx", sheet = 3)

# Descriptive statistics

# Table 1: Demographics
table_1 <- data |> 
  select(1:6) |> 
  tbl_summary(type = list(Age ~ "continuous2",
                          `Do you know about thalassemia?` ~ "categorical"),
              statistic = list(Age ~ c("{mean} ({sd})"))) |> 
  as_flex_table() |> 
  set_table_properties(width = 1, layout = "autofit")

save_as_docx(table_1, path = "Table_1.docx")


# Table 2: Knowledge of thalassemia
data_1 <- data |> 
  filter(`Do you know about thalassemia?` == "Yes")

table_2 <- data_1 |> 
  select(8:17) |>
  tbl_summary(missing = "no",
              type = everything() ~ "categorical") |> 
  as_flex_table() |> 
  set_table_properties(width = 1, layout = "autofit")

save_as_docx(table_2, path = "Table_2.docx")

# Inferential statistics 

# Table 3: Knowledge of thalassemia by education

table_3 <- data_1 |> 
  select(`Field of Study`, 8:17) |>
  tbl_summary(by = `Field of Study`) |> 
  add_overall() |>
  add_p() |> 
  bold_p(t = 0.05) |> 
  as_flex_table() |> 
  set_table_properties(width = 1, layout = "autofit")

save_as_docx(table_3, path = "Table_3.docx")







