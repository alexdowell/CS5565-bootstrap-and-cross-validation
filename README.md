# CS5565 Bootstrap and Cross-Validation  

## Description  
This repository contains R scripts for **CS5565**, focusing on resampling methods such as cross-validation and bootstrapping. The labs involve evaluating model performance using different sampling techniques and applying polynomial regression, k-fold cross-validation, and bootstrapping to assess estimation accuracy.  

## Files Included  

### **Task 1: Model Training and Testing**  
- **File:** CS5565_lab_5_task1.R  
- **Topics Covered:**
  - Splitting data into training and test sets.
  - Fitting simple linear regression models.
  - Computing test mean squared error (MSE) for different polynomial degrees.

### **Task 2: Training Size Effect on Performance**  
- **File:** CS5565_lab_5_task2.R  
- **Topics Covered:**
  - Splitting data with different training set proportions.
  - Comparing test errors across multiple training sizes.
  - Observing how training size impacts model performance.

### **Task 3: Cross-Validation for Polynomial Regression**  
- **File:** CS5565_lab_5_task3.R  
- **Topics Covered:**
  - Performing k-fold cross-validation.
  - Evaluating model performance for polynomial regression of different orders.
  - Selecting the optimal polynomial degree based on cross-validation error.

### **Task 4: Comparing k-Fold Cross-Validation Methods**  
- **File:** CS5565_lab_5_task4.R  
- **Topics Covered:**
  - Performing k-fold cross-validation with different k values.
  - Comparing cross-validation results for k = 5 and k = 10.
  - Assessing how different k values impact model evaluation.

### **Task 5: Bootstrapping for Model Accuracy**  
- **File:** CS5565_lab_5_task5.R  
- **Topics Covered:**
  - Implementing bootstrapping to estimate parameter variability.
  - Comparing model estimates for different bootstrap sample sizes.
  - Observing the effect of increasing bootstrap sample size on model accuracy.

### **Lab Report**  
- **File:** CS5565 Stat Learning Lab Bootstrap and Cross-Validation.pdf  
- **Contents:**
  - Summary of cross-validation and bootstrapping results.
  - Discussion of key findings and model performance analysis.
  - Interpretation of training size effects and polynomial regression evaluation.

## Installation  
Ensure R and the required libraries are installed before running the scripts.  

### Required R Packages  
- ISLR2  
- boot  

To install the necessary packages, run:  
install.packages(c("ISLR2", "boot"))  

## Usage  
1. Open RStudio or an R console.  
2. Load the necessary dataset using library(ISLR2).  
3. Run the script using:  
   source("CS5565_lab_5_task1.R")  
   source("CS5565_lab_5_task2.R")  
   source("CS5565_lab_5_task3.R")  
   source("CS5565_lab_5_task4.R")  
   source("CS5565_lab_5_task5.R")  
4. View model summaries and results in the R console or through plots generated in RStudio.  

## Example Output  
- **Polynomial Regression with Cross-Validation (Task 3)**  
  cv.error <- rep(0, 8)  
  for (i in 1:8) {  
    glm.fit <- glm(mpg ~ poly(displacement, i), data = Auto)  
    cv.error[i] <- cv.glm(Auto, glm.fit)$delta[1]  
  }  
  print(cv.error)  
  - Displays cross-validation error for polynomial regression models.  

- **Bootstrapping with Different Sample Sizes (Task 5)**  
  boot250 <- boot(Auto, boot.fn, R = 1000, size = 250)  
  boot500 <- boot(Auto, boot.fn, R = 1000, size = 500)  
  boot2500 <- boot(Auto, boot.fn, R = 1000, size = 2500)  
  - Shows how increasing sample size affects model stability.  

## Contributions  
This repository is designed for educational purposes. Feel free to fork and modify the scripts.  

## License  
This project is open for educational and research use.  

---
**Author:** Alexander Dowell  
