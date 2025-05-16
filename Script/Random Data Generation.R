# Install Packages
install.packages("openxlsx")

# Load Package
library(openxlsx)


# Set seed for reproducibility
set.seed(42)

# Sample size
n <- 700

# Generate random data for existing columns
Age <- sample(18:23, n, replace = TRUE)
Gender <- sample(c("Male", "Female"), n, replace = TRUE)
Marital_Status <- sample(c("Married", "Unmarried"), n, replace = TRUE, prob = c(0.1, 0.9))
Field_of_Study <- sample(c("Science", "Arts", "Business"), n, replace = TRUE)
Year_of_Study <- sample(c("1st Year", "2nd Year", "3rd Year", "4th Year"), n, replace = TRUE)
Do_you_know_about_thalassemia <- sample(c("Yes", "No"), n, replace = TRUE, prob = c(0.9, 0.1))
Sources_of_information <- sample(c("Electronic Media", "Print Media","Friends and Family","Seminar","No"), n, replace = TRUE, prob = c(0.3, 0.2, 0.2, 0.2, 0.1))

# Generate demographic data frame
demographic_data <- data.frame(
  Age = Age,
  Gender = Gender,
  Marital_Status = Marital_Status,
  Field_of_Study = Field_of_Study,
  Year_of_Study = Year_of_Study,
  Do_you_know_about_thalassemia = Do_you_know_about_thalassemia,
  Sources_of_information = Sources_of_information)

# Generate thalassemia data frame

# First generate response choices
responses <- c("Yes", "Don't Know", "No")

# Then generate different probability weights for each column
prob_inherited_disorder <- c(0.7, 0.2, 0.1)
prob_contagious <- c(0.2, 0.3, 0.5)
prob_marriage_healthy_carrier <- c(0.5, 0.3, 0.2)
prob_marriage_two_carriers <- c(0.8, 0.15, 0.05)
prob_gene_transmission <- c(0.9, 0.05, 0.05)
prob_termination <- c(0.1, 0.3, 0.6)
prob_intermarriage_risk <- c(0.6, 0.25, 0.15)
prob_transfusion_treatment <- c(0.85, 0.1, 0.05)
prob_preventable <- c(0.8, 0.1, 0.1)
prob_curable <- c(0.4, 0.3, 0.3)
prob_relationship_acceptance <- c(0.5, 0.3, 0.2)
prob_consult_before_marriage <- c(0.75, 0.15, 0.1)
prob_blood_test_before_marriage <- c(0.9, 0.05, 0.05)
prob_accept_probability <- c(0.3, 0.4, 0.3)
prob_inform_others <- c(0.7, 0.2, 0.1)
prob_public_education <- c(0.85, 0.1, 0.05)
prob_bone_marrow_donor <- c(0.65, 0.25, 0.1)
prob_participate_prevention <- c(0.6, 0.3, 0.1)
prob_tell_friends <- c(0.75, 0.2, 0.05)
prob_curable_duplicate <- c(0.4, 0.3, 0.3)  

# Now generate each column using its specific weights
thalassemia_data <- data.frame(
  `Thalassemia is an inherited blood disorder (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_inherited_disorder),
  `Thalassemia is a major contagious disease (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_contagious),
  `Marriage between a healthy individual and a carrier results in the birth of a severely thalassemic child (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_marriage_healthy_carrier),
  `Marriage between two carriers results in the birth of a severely thalassemic Child (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_marriage_two_carriers),
  `Thalassemia can pass onto your child through a gene (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_gene_transmission),
  `Pregnancy should be terminated during thalassemia (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_termination),
  `Intermarriage is a significant risk factor for thalassemia (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_intermarriage_risk),
  `Blood transfusion is a treatment for major thalassemia patients. (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_transfusion_treatment),
  `Thalassemia is a preventable disease (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_preventable),
  `Thalassemia is a curable disease (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_curable),
  `I would happily accept a relationship with a thalassemic person (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_relationship_acceptance),
  `I would like to consult with a consultant before getting married (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_consult_before_marriage),
  `I would undergo necessary blood tests before marriage to avoid the birth of a thalassemic child (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_blood_test_before_marriage),
  `I should accept the probability of a child just because of a family marriage (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_accept_probability),
  `I would like to inform others about the dangers of thalassemia (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_inform_others),
  `I would like to consider the importance of public education regarding Thalassemia (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_public_education),
  `If my family has a major thalassemia patient and I am the only candidate for bone marrow transplantation, I would consider it (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_bone_marrow_donor),
  `I would like to participate in the” Thalassemia Prevention Program” if someone introduces (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_participate_prevention),
  `I would like to tell friends about Thalassemia after completing This survey (Yes/Don't Know/No)` = sample(responses, n, replace = TRUE, prob = prob_tell_friends),
  `Thalassemia is a curable disease (Yes/Don't Know/No)_duplicate` = sample(responses, n, replace = TRUE, prob = prob_curable_duplicate)
)


# Generate the final data with demographic + thalassemia-related columns
final_data <- cbind(demographic_data, thalassemia_data)

# Export to Excel
write.xlsx(final_data, "Custom_Thalassemia_Survey.xlsx")
