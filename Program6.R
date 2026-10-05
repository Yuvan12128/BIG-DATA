x <- c(10, 20, 30, 40, 50)


y <- c(15, 25, 35, 45, 60)


model <- lm(y ~ x)


print(model)


summary(model)


plot(
  x, y,
  main = "Simple Linear Regression",
  xlab = "Independent Variable (X)",
  ylab = "Dependent Variable (Y)",
  pch = 19
)


abline(model, col = "red", lwd = 2)