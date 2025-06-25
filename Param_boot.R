# Read the dataset from a CSV file
path <- "C:/Users/David/Desktop/ADC_Final_Project/Cleaned_Dataset.csv"
data <- read.csv(path)

# Function to generate bootstrap samples and calculate the mean assuming normality
parametric_bootstrap_mean = function(x, n_bootstrap = 1000) {
  # Estimate parameters of the normal distribution
  sample_mean = mean(x, na.rm = TRUE)
  sample_sd = sd(x, na.rm = TRUE)
  
  # Generate bootstrap samples
  bootstrap_means = numeric(n_bootstrap)
  set.seed(123)  # For reproducibility
  for (i in 1:n_bootstrap) {
    bootstrap_sample = rnorm(length(x), mean = sample_mean, sd = sample_sd)
    bootstrap_means[i] = mean(bootstrap_sample)
  }
  
  return(bootstrap_means)
}

# Perform parametric bootstrap on Sleep_Duration
stats_mean = parametric_bootstrap_mean(data$Sleep_Duration)

# Calculate final mean and standard deviation of bootstrap means
final_mean = mean(stats_mean)
final_mean
sd_mean = sd(stats_mean)
sd_mean

# Calculate 95% confidence interval
CImean = quantile(stats_mean, probs = c(0.025, 0.975))
CImean

# Print results
cat("Bootstrap mean:", final_mean, "\n")
cat("Bootstrap standard deviation:", sd_mean, "\n")
cat("95% confidence interval for the mean:", CImean, "\n")
