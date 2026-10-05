# Matrix Operations Program

cat("Enter number of rows: ")
rows <- as.integer(readline())

cat("Enter number of columns: ")
cols <- as.integer(readline())

cat("Enter elements of first matrix: ")
mat1_elements <- scan(n = rows * cols)

mat1 <- matrix(mat1_elements,
               nrow = rows,
               ncol = cols,
               byrow = TRUE)

cat("Enter elements of second matrix: ")
mat2_elements <- scan(n = rows * cols)

mat2 <- matrix(mat2_elements,
               nrow = rows,
               ncol = cols,
               byrow = TRUE)

cat("\nMatrix 1:\n")
print(mat1)

cat("\nMatrix 2:\n")
print(mat2)

cat("\nMatrix Addition:\n")
print(mat1 + mat2)

cat("\nMatrix Subtraction:\n")
print(mat1 - mat2)

cat("\nMatrix Multiplication:\n")
print(mat1 %*% mat2)

cat("\nTranspose of Matrix 1:\n")
print(t(mat1))

cat("\nTranspose of Matrix 2:\n")
print(t(mat2))

if (rows == cols) {
  
  det1 <- det(mat1)
  det2 <- det(mat2)
  
  if (det1 != 0) {
    cat("\nInverse of Matrix 1:\n")
    print(solve(mat1))
  } else {
    cat("\nMatrix 1 is not invertible.\n")
  }
  
  if (det2 != 0) {
    cat("\nInverse of Matrix 2:\n")
    print(solve(mat2))
  } else {
    cat("\nMatrix 2 is not invertible.\n")
  }
  
  if (det2 != 0) {
    cat("\nMatrix Division (Matrix 1 / Matrix 2):\n")
    print(mat1 %*% solve(mat2))
  } else {
    cat("\nMatrix Division not possible.\n")
  }
  
} else {
  
  cat("\nInverse and division require square matrices.\n")
}