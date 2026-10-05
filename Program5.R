x <- c(10, 20, NA, 40, 50, NA, 70)

cat("Original Data:\n")
print(x)


cat("Missing Values:\n")
print(is.na(x))


x[is.na(x)] <- mean(x, na.rm = TRUE)

cat("After Replacing Missing Values:\n")
print(x)
print(" ")
print("====== Min-Max Normalization ======")
print(" ")
data <- c(10, 20, 30, 40, 50)

normalized <- (data - min(data)) / (max(data) - min(data))

cat("Original Data:\n")
print(data)

cat("Normalized Data:\n")
print(normalized)