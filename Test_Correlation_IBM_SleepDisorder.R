
# Read the dataset from a CSV file
path <- "C:/Users/David/Desktop/ADC_Final_Project/Cleaned_Dataset.csv"
dataset <- read.csv(path)

# Create a contingency table
contingency_table <- table(dataset$BMI_Category, dataset$Sleep_Disorder)

# Print the contingency table
print(contingency_table)

# Perform the chi-square test of independence
chi_square_test <- chisq.test(contingency_table)

# Print the results of the chi-square test
print(chi_square_test)

# Interpret the results
if (chi_square_test$p.value < 0.05) {
  cat("There is a significant association between BMI categories and sleep disorders (p-value:", chi_square_test$p.value, ")\n")
} else {
  cat("There is no significant association between BMI categories and sleep disorders (p-value:", chi_square_test$p.value, ")\n")
}