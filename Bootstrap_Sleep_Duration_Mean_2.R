path <- "C:/Users/David/Desktop/ADC_Final_Project/Cleaned_Dataset.csv"
data <- read.csv(path)

non_param__mean = function(x){
  x = mean(sample(x, size = length(x), replace = TRUE))
  return (x)
}
set.seed(123) 
stats_mean = replicate(1000, non_param__mean(data$Sleep_Duration))
stats_mean
final_mean = mean(stats_mean)
final_mean
sd_mean = sd(stats_mean)
sd_mean
CImean = quantile(stats_mean, probs = c(0.025, 0.975))
CImean