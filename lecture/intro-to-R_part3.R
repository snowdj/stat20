# Project: Tutorial on R and R Studio (Part II)
# Author:  Le Wang

# This program illustrates some basic data types



###################################    
# Data types in `R`
###################################  


    

# 1. Data types in `R`

# R works with numerous data types. Some of the most basic types to get started are:

#	1. **Decimal values** like 4.5 are called numerics.
#	2. **Natural numbers** like 4 are called integers. Integers are also numerics.
#	3. **Boolean values** (TRUE or FALSE) are called logical.
#	4. **Text** (or string) values are called characters.

# Note how the quotation marks on the right indicate that "some text" is a character.  

# You can check the type of data by using `class()`

# For example

    x <- "Melody to Funkytown!"
    class(x)

    x <- c("TRUE", "FALSE")
    x <- as.logical(x)
    class(x)

    x <- 1:20
    x %% 4 
    x %% 4 == 0
    class(x %% 4 == 0)

# 2. Vectors  	

# Basic examples 

  v <- c(1, 2, 3, 4)		
  v
  v <- 1:4		
  v
  v <- seq(from = 0, to = 0.5, by = 0.1)		
  v


# Vectors with strings 	
  v_colors <- c("blue", "yellow", "light green")	
  v_colors	

	# c() stands for ?concatenate?


# Vector selection (Indexing/reassigning elements)

  v_colors[2]         
  v_colors[c(1, 3)]   

  v_colors[2:3]  <- c("red", "purple")	
  v_colors 	
  
  x <- 100:110
  x
  j <- c(-1,-2,-3)
  x[j]  
  
  
  # We can do it with logical expressions as well
  
  
  x <- 100:110
  
  # What will happen?
  x >105
  select <- x>105
  
  x[x>105]
    

  # See [Datacamp course](https://campus.datacamp.com/courses/free-introduction-to-r) 
  # for other ways to subset a vector

# Assign days as names of poker_vector
  names(v_colors) <- c("Le", "Austin", "Heather")
  
  
# Algebraic Operations of Vectors
  
  x <- c(1,2,3)
  y <- c(4,5,6)
  
  # component-wise addition
  x+y
  
  # component-wise multiplication
  x*y
  
  # What happens to the following
  y^2
  
  
# In the [Datacamp course](https://campus.datacamp.com/courses/free-introduction-to-r) 
# you will learn other operations of vectors.


# 3. Matrix

# create a new matrix
  matrix<-matrix(1:4, byrow = TRUE, nrow = 2)
  matrix

	# Note that : means every number from 1 to 4.
	
# In the matrix() function:

# 1. The first argument is the collection of elements that `R` will arrange into the rows and columns of 
# the matrix. Here, we use 1:4 which is a shortcut for c(1, 2, 3, 4).
# 2. The argument `byrow` indicates that the matrix is filled by the rows. 
# If we want the matrix to be filled by the columns, we just place byrow = FALSE.
# 3. The third argument `nrow` indicates that the matrix should have three rows.	

# rename a matrix
	rownames(matrix) <- c("Le", "Chen")
	colnames(matrix) <- c("Yes", "No")
	
	matrix
	
	
# Dimension of a matrix vs vector
	
	x <- c(1,2,3)
	matrix<-matrix(1:4, byrow = TRUE, nrow = 2)
	matrix
	
	
	length(x)
	length(matrix)
	
	dim(matrix)
	dim(x)	
	
# 4. Lists
	
#	`R` doesn’t like vectors to have different types: `c(TRUE, 1, "Frank")` becomes
# `c("TRUE", "1", "Frank")`. But storing objects with different types is absolutely 
# fundamental to data analysis. `R` has a different type of object besides a vector 
# used to store data of different types side-by-side: a list:
	  
	c(TRUE, 1, "Frank")

	x <- list(TRUE, 1, "Frank")
	x

	
# Many different things not necessarily of same length can be put together. 
	
	x <- list(c(1:5), c("a", "b","c"), c(TRUE, FALSE), c(5L, 6L))

	
# 5. Dataframe
# What's a data frame? (special case of list: equal length)

# Our data often contain various types of data or variables. For example, in the CPS data that you will 
# be dealing with, you will have information on income (numeric), gender (logical), race (string)
# A data frame can have many types of data, and each variable is treated as columns and 
# the observations (or units) as rows. 


# DF with Harry Potter characters

	name <- c("Harry", "Ron", "Hermione", "Hagrid", "Voldemort")	
	height <- c(176, 175, 167, 230, 180)	
	gpa <- c(3.4, 2.8, 4.0, 2.2, 3.4)	
	df_students <- data.frame(name, height, gpa)  		
	df_students	

# Alternative way of creating DF

	df_students <- data.frame(name = c("Harry", "Ron", "Hermione", "Hagrid",
					   "Voldemort"), 	
				  height = c(176, 175, 167, 230, 180), 	
				  gpa = c(3.4, 2.8, 4.0, 2.2, 3.4))	
	df_students
	
	
# Adding variable

	df_students$good <- c(1, 1, 1, 1, 0)   	
	df_students	

# Features of the DF

	dim(df_students)  		
	df_students[2, 3]               #Ron's GPA		
	df_students$gpa[2]              #Ron's GPA	

	df_students[5, ]                #get row 5
	df_students[3:5, ]              #get rows 3-5

	df_students[, 2]                #get column 2 (height)	
	df_students$height              #get column 2 (height) 
	df_students[, 1:3]              #get columns 1-3 


	df_students[4, 2] <- 255        #reassign Hagrid's height	
	df_students$height[4] <- 255    #same thing as above	
	df_students		
	
## Data.table
	
#	`data.table` is an R package that provides an enhanced version of `data.frames`. 
# Its introduction is available [here](https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html)	
	