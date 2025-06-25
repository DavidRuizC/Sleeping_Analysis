# Read the dataset from a CSV file
path <- "C:/Users/David/Desktop/ADC_Final_Project/Cleaned_Dataset.csv"
data <- read.csv(path)

# Calculate the Pearson correlation coefficient between sleep quality and stress level
correlation <- cor(data$Quality_of_Sleep, data$Stress_Level, use = "complete.obs")

# Perform a hypothesis test for the Pearson correlation coefficient
correlation_test <- cor.test(data$Quality_of_Sleep, data$Stress_Level, method = "pearson", use = "complete.obs")

# Print the results
cat("Pearson correlation coefficient:", correlation, "\n")
print(correlation_test)
