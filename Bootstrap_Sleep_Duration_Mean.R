path <- "C:/Users/David/Desktop/ADC_Final_Project/Cleaned_Dataset.csv"

dataset <- read.csv(path)

B <- 1000

bootstrap_means <- numeric(B)

set.seed(123) 
for (i in 1:B) {
  bootstrap_sample <- dataset[sample(1:nrow(dataset), replace = TRUE), ]
  
  bootstrap_means[i] <- mean(bootstrap_sample$`Sleep_Duration`)
}

ci_lower <- quantile(bootstrap_means, 0.025)
ci_upper <- quantile(bootstrap_means, 0.975)

cat("Estimación de la media del Sleep Duration (hours):", mean(bootstrap_means), "\n")
cat("Intervalo de confianza del 95% para la media:", ci_lower, "-", ci_upper, "\n")