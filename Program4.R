print('Asociation Rule Mining')
# Install arules package
install.packages("arules")

# Load arules library
library(arules)

# Create transactions
transactions <- read.transactions(
  textConnection(
    "Milk,Bread
Milk,Butter
Bread,Butter
Milk,Bread,Butter
Milk,Bread"
  ),
  format = "basket",
  sep = ","
)

# Display transactions
inspect(transactions)

# Generate association rules using Apriori
rules <- apriori(
  transactions,
  parameter = list(
    support = 0.4,
    confidence = 0.7
  )
)

# Display rules
inspect(rules)

# Display summary
summary(rules)


print("============ Clustering ==========")

# Create data
data <- data.frame(
  X = c(2, 3, 3, 5, 6, 7, 8, 9),
  Y = c(3, 4, 5, 7, 8, 9, 10, 11)
)

# Display data
print(data)

# Apply K-Means clustering
result <- kmeans(data, centers = 2)

# Display result
print(result)

# Display cluster assignment
print(result$cluster)

# Display cluster centers
print(result$centers)

# Plot clusters
plot(
  data,
  col = result$cluster,
  pch = 19,
  main = "K-Means Clustering",
  xlab = "X",
  ylab = "Y"
)

# Display cluster centers on plot
points(
  result$centers,
  col = "red",
  pch = 8,
  cex = 2
)
