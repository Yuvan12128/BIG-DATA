install.packages("arules")

library(arules)

transactions <- list(
  
  c("Milk", "Bread", "Butter"),
  c("Bread", "Butter"),
  c("Milk", "Bread"),
  c("Milk", "Eggs"),
  c("Bread", "Butter", "Eggs"),
  c("Milk", "Bread", "Butter", "Eggs"),
  c("Bread", "Eggs"),
  c("Milk", "Bread", "Butter"),
  c("Milk", "Butter"),
  c("Bread", "Butter", "Eggs")
)

trans <- as(transactions, "transactions")

inspect(trans)

rules <- apriori(
  trans,
  parameter = list(
  support = 0.3,
  confidence = 0.6,
  minlen = 2
  )
)

inspect(rules)

rules_lift <- sort(rules, by = "lift")

inspect(rules_lift)
