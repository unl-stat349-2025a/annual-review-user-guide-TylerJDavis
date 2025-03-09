# Load required package
library(mice)

# Load example dataset
data(nhanes2)

# Check the structure of the dataset
str(nhanes2)

# Check missing data pattern
md.pattern(nhanes2)

# Define the imputation method for each variable
meth <- c("pmm", "pmm", "logreg", "polyreg")  # logreg for binary, polyreg for categorical

# Define the predictor matrix (set diagonal to 0)
pred_matrix <- quickpred(nhanes2)

# Perform multiple imputation
imp <- mice(nhanes2, method = meth, predictorMatrix = pred_matrix, m = 5, maxit = 10)

# Check summary of imputed data
summary(imp)

# Compare original vs. imputed data
stripplot(imp, pch = 20, cex = 1.2)

# Analyze each imputed dataset and pool results (Example: Regression model)
fit <- with(imp, lm(bmi ~ age + hyp))
pooled <- pool(fit)

# Display pooled results
summary(pooled)
