# Read the dataset from a CSV file
path <- "C:/Users/David/Desktop/ADC_Final_Project/Cleaned_Dataset.csv"
dataset <- read.csv(path)

# Load necessary libraries
library(ggplot2)

# Create the plot
ggplot(dataset, aes(x = Age, y = `Sleep_Duration`)) +
  geom_point(alpha = 0.5) +  # Scatter plot points with some transparency
  geom_smooth(method = "lm", col = "blue") +  # Add a linear trend line
  labs(title = "Average Sleep Duration by Age",
       x = "Age (years)",
       y = "Sleep Duration (hours)") 

# Display the plot
ggsave("Average_Sleep_Duration_by_Age.png")
