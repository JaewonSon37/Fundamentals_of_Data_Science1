### Dicussion 1
data_set <- c(18, 8, 22, 10, 12, 5, 4, 32, 2, 9, 16, 25, 26, 28)

# Bin the data
bins <- cut(data_set, breaks = 5)

# Function to replace each item with the median value of the bin
find_median <- function(x) {
  bin_median <- median(data_set[bins == x])
  return(rep(bin_median, sum(bins == x)))
}

# Apply the function to bins
data_after_smoothing <- unlist(lapply(unique(bins), find_median))

# Print the outputs
cat("Bins:", bins, "\n\n")
cat("Smoothed Data:", data_after_smoothing, "\n\n")

### Dicussion 2
data_set <- c(18, 8, 22, 10, 12, 5, 4, 32, 2, 9, 16, 25, 26, 28)

# Function to Min-Max Scaling to range 10 to 20
min_max <- function(x) {
  return((x-min(x)) / (max(x) - min(x)) * 10 + 10)
}

# Print the outputs
min_max_scaled_data <- min_max(data_set)
cat("Min-Max Scaled Data:", min_max_scaled_data, "\n")
cat("Value mapped to 0:", min_max_scaled_data[data_set == min(data_set)], "\n")
cat("Minimum value:", min(min_max_scaled_data), "\n")
cat("Maximum value:", max(min_max_scaled_data), "\n\n")

# Function to Standardization Scaling
standarization <- function(x) {
  return((x-mean(x)) / sd(x))
}

# Print the outputs
standarization_scaled_data <- standarization(data_set)
cat("Standardization Scaled Data:", standarization_scaled_data, "\n")
cat("Value mapped to 0:", standarization_scaled_data[data_set == min(data_set)], "\n")
cat("Minimum value:", min(standarization_scaled_data), "\n")
cat("Maximum value:", max(standarization_scaled_data), "\n\n")


# Function to Decimal Scaling
decimal <- function(x) {
  return((x / 100))
}

# Print the outputs
decimal_scaled_data <- decimal(data_set)
cat("Decimal Scaled Data:", decimal_scaled_data, "\n")
cat("Value mapped to 0:", decimal_scaled_data[data_set == min(data_set)], "\n")
cat("Minimum value:", min(decimal_scaled_data), "\n")
cat("Maximum value:", max(decimal_scaled_data), "\n\n")
