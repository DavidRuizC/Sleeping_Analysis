# Load the dataset
path <- "C:/Users/David/Desktop/ADC_Final_Project/Cleaned_Dataset.csv"
data <- read.csv(path)

# Define a function to calculate the mean difference between males and females
non_param_mean_diff <- function(data){
  male_mean <- mean(sample(data$Sleep_Duration[data$Gender == "Male"], 
                           size = sum(data$Gender == "Male"), replace = TRUE))
  female_mean <- mean(sample(data$Sleep_Duration[data$Gender == "Female"], 
                             size = sum(data$Gender == "Female"), replace = TRUE))
  return (male_mean - female_mean)
}

# Set seed for reproducibility
set.seed(123) 

# Perform bootstrap sampling
stats_mean_diff <- replicate(1000, non_param_mean_diff(data))

# Calculate the mean of the bootstrap samples
final_mean_diff <- mean(stats_mean_diff)

# Calculate the standard deviation of the bootstrap samples
sd_mean_diff <- sd(stats_mean_diff)

# Calculate the 95% confidence interval
CI_mean_diff <- quantile(stats_mean_diff, probs = c(0.025, 0.975))

# Print the results
cat("Bootstrap Mean Difference: ", final_mean_diff, "\n")
cat("Bootstrap Standard Deviation: ", sd_mean_diff, "\n")
cat("95% Confidence Interval: ", CI_mean_diff, "\n")
