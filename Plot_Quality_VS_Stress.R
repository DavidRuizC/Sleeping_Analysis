# Load necessary libraries
library(ggplot2)

# Read the dataset from a CSV file
path <- "C:/Users/David/Desktop/ADC_Final_Project/Cleaned_Dataset.csv"
dataset <- read.csv(path)

# Summarize the data to calculate the average quality of sleep for each stress level
summary_data <- dataset %>%
  group_by(Stress_Level) %>%
  summarize(Average_Quality_of_Sleep = mean(Quality_of_Sleep, na.rm = TRUE))

# Create the line plot
ggplot(summary_data, aes(x = Stress_Level, y = Average_Quality_of_Sleep)) +
  geom_line(color = "blue") +
  geom_point(color = "red") +
  labs(title = "Average Quality of Sleep by Stress Level",
       x = "Stress Level (scale: 1-10)",
       y = "Quality of Sleep (scale: 1-10)") +
  theme_minimal()

# Display the plot
