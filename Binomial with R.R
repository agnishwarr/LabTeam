set.seed(123)
n_samples <- 10000
n_iterations <- 100000
size <- 10
prob <- 0.5
sample_means <- numeric(n_iterations)

for (i in 1:n_iterations) {
  samples <- rbinom(n_samples, size = size, prob = prob)
  sample_means[i] <- mean(samples)
}

hist(sample_means, breaks = 30, probability = TRUE, 
     main = "Histogram of Sample Means (Binomial Distribution)",
     xlab = "Sample Mean", col = "lightblue", border = "black")
lines(density(sample_means), col = "red", lwd = 2)

mean_of_means <- mean(sample_means)
sd_of_means <- sd(sample_means)

# Debugging: Print the standard deviation
print(sd_of_means)

cat("Mean of sample means:", mean_of_means, "\n")
cat("Standard deviation of sample means:", sd_of_means**2, "\n")
