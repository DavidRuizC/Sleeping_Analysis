# Read the dataset from a CSV file
path <- "C:/Users/David/Desktop/ADC_Final_Project/Cleaned_Dataset.csv"
dataset <- read.csv(path)

# Separate the dataset into men and women
men_data <- subset(dataset, Gender == "Male")
women_data <- subset(dataset, Gender == "Female")

# Calculate the average age for men
average_age_men <- mean(men_data$Age, na.rm = TRUE)

# Calculate the average age for women
average_age_women <- mean(women_data$Age, na.rm = TRUE)

# Print the results
cat("Average age for men:", average_age_men, "\n")
cat("Average age for women:", average_age_women, "\n")
