# Project: Random Variable, PMF and CDF
# Author:  Le Wang


# This program illustrates how to obtain
# 1. Frequency table
# 2. Histogram
# 3. PMF
# 4. PMF and Forecasting

# Create an artificial dataset
  
  x<-c(6,7,6,3,10,3,2,1,10,7)
  x
  
# Part 1: Frequency Table (By Hand)
  
  x
  sort(x) 
  unique(x)
  
  table(x)
  
  
# Part 2. Histogram
  
  # Bar Plot
  barplot(table(x))
  
  # Histogram
  hist(x)
  
  # Refined histogram
  hist(x,breaks = c(0:10), freq = TRUE)
  
  # c(0:10): A short-cut to create a vector of all integer values between 1 and 10.             
  # breaks = c(0:10): means that I want to calculate more accurate counts for all
  #                   possible values, instead of only some groups of values. 
  # freq = TRUE: gives you number of counts of each value   
  

  
# Part 3. PMF

  x<-c(1,2,3,4,5)
  x  
  
  # PMF when x = 1
  sum(x == 1)/length(x)
  
  # A detailed explanation of the code above
  x
  x == 1
  sum(x == 1)
  length(x)
  sum(x == 1)/length(x)  

  # Histogram (with PMF)  
  # We can calculate it for every value
  hist(x,breaks = c(0:10), probability = TRUE)
  

# Part 4. PMF and Forecasting  

  # Lets look at a larger dataset!
  sample <- sample(1:10,300, replace = TRUE)
  sample
  
  hist(sample, breaks = c(0:10), probability = TRUE)
  
  
# Part 5. CDF
  
  # 1. by hand
  
  sum(x<=4)/length(x)
  x<=4
  
  # 2. Built-in Command
  ecdf(x)(4)
  
  plot(ecdf(x))
  