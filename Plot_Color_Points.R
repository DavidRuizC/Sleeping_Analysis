# Load necessary libraries
library(ggplot2)

# Read the dataset from a CSV file
path <- "C:/Users/David/Desktop/ADC_Final_Project/Cleaned_Dataset.csv"
dataset <- read.csv(path)

# Create the scatter plot
ggplot(dataset, aes(x = Age, y = Sleep_Duration, color = Gender)) +
  geom_point() +
  scale_color_manual(values = c("Female" = "pink", "Male" = "blue")) +
  labs(title = "Scatter Plot of Age vs. Hours of Sleep",
       x = "Age (years)",
       y = "Sleep Duration (hours)",
       color = "Gender") +
  theme_minimal()

# Display the plot
