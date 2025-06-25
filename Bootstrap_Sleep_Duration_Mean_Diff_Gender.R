path <- "C:/Users/David/Desktop/ADC_Final_Project/Cleaned_Dataset.csv"
dataset <- read.csv(path)

B <- 1000


# Separate the dataset into men and women
men_data <- subset(dataset, Gender == "Male")
women_data <- subset(dataset, Gender == "Female")

# Estimate parameters for the normal distributions
mean_men <- mean(men_data$Sleep_Duration, na.rm = TRUE)
sd_men <- sd(men_data$Sleep_Duration, na.rm = TRUE)
mean_women <- mean(women_data$Sleep_Duration, na.rm = TRUE)
sd_women <- sd(women_data$Sleep_Duration, na.rm = TRUE)

# Number of bootstrap samples
B <- 1000

# Function to generate bootstrap samples and calculate the difference in means
bootstrap_diff_means <- replicate(B, {
  sample_men <- rnorm(n = nrow(men_data), mean = mean_men, sd = sd_men)
  sample_women <- rnorm(n = nrow(women_data), mean = mean_women, sd = sd_women)
  mean(sample_men) - mean(sample_women)
})

# Calculate the 95% confidence interval for the difference in means
ci_diff_lower <- quantile(bootstrap_diff_means, 0.025)
ci_diff_upper <- quantile(bootstrap_diff_means, 0.975)

# Print the results
cat("95% confidence interval for the difference in mean sleep duration (Men - Women):", ci_diff_lower, "-", ci_diff_upper, "\n")
