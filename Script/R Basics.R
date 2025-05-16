# R Basics

# Run the code in RStudio
  # Run Current Line or Selection
    # ⌘ + Return (Mac)
  # Run All
    # ⌘ + Shift + Return (Mac)

# Comment to ignore the line
  # For single line, Type # before the line
  # For multiple lines, select the lines and type ⌘ + Shift + C

# Help
  # Get help on a function
      ?function_name
      help(function_name)
  
  # Get help on a package
      ?package_name
      help(package_name)
    
# Operators
  # Arithmetic Operators
    # + - Addition
    # - - Subtraction
    # * - Multiplication
    # / - Division
    # ^ - Exponentiation
    # %% - Modulus (Remainder)
    # %/% - Integer Division

  # Relational Operators
    # == - Equal to
    # != - Not equal to
    # >  - Greater than
    # <  - Less than
    # >= - Greater than or equal to
    # <= - Less than or equal to

  # Logical Operators
    # &  - AND
    # |  - OR
    # !  - NOT
    # && - Short-circuit AND
    # || - Short-circuit OR
    # xor - Exclusive OR
    # isTRUE - Check if TRUE
    # isFALSE - Check if FALSE
    # is.na - Check if NA (missing value)
    # is.nan - Check if NaN (not a number)
    # is.infinite - Check if infinite
    # is.finite - Check if finite

  # Assignment Operators
    # <- - Assign value to variable
    # =  - Assign value to variable (less common in R)
    # -> - Assign value to variable (rightward assignment)
    # <<- - Assign value to variable in global environment


# Data Structures
    # Vector - One-dimensional array
    # Matrix - Two-dimensional array
    # Array - Multi-dimensional array
    # List - Collection of different data types
    # Data frame - Two-dimensional table-like structure
    # Tibble - Modern version of data frame
    # Time series - Data collected over time
    # Data table - Enhanced version of data frame
    # Raster - Grid of values
    # Spatial - Geographical data

# Variable 
    # A variable is a name that refers to a value
    # A variable can be assigned a value using the assignment operator <- or =
    # The assignment operator <- is the preferred way to assign a value to a variable in R
    # The assignment operator = is also used, but it is less common in R programming
  
  # Assign a value to a variable
    Age <- 30
    Height = 170.5
    Weight <- 190L
    
# Functions 
    # A function is a particular piece of code that allows you to do something in R
    # Arguments/Parameters - What you pass to a function
    # Built-in functions - Functions that are already available in R
    # User-defined functions - Functions that are created by the user
  
  # Print - Print the value
    print("Hello World")
    print(Age)
    print(Height)
    print(Weight)
    
  # SUM - Sum of given values
    sum(c(1,2,3,4,5))
    sum(1,2,3,4,5)

  # MEAN - Average of given values
    mean(c(1,2,3,4,5))


# Package 
    # Package is a bundle of code that can be loaded together and share with others
    # Analogous to software application
    
  # Package installation
    install.packages("dplyr")
    install.packages("ggplot2")
    install.packages("ggpubr")
    install.packages("tidyverse")

  # List of all installed packages
    installed.packages()[, "Package"]

  # Package uninstallation
    remove.packages("dplyr")
  
  # Load the package
    library(dplyr)
    library(ggplot2)
    library(ggpubr)

# Data Types
    # Numeric - Numbers
    # Integer - Whole numbers
    # Double - Decimal numbers
    # Complex - Complex numbers
    # Logical - TRUE/FALSE
    # Character - Text/String
    # Factor - Categorical data
    
    class(Age)
    class(Height)
    class(Weight)
    class("Hello World")
    
    typeof(Age)
    typeof(Height)
    typeof(Weight)
    typeof("Hello World")
    
# Data Set/Data frame
    # A data set is a collection of data that is organized in a specific way
    # A data frame is a two-dimensional table-like structure that can hold different types of data
    # A data frame is similar to a spreadsheet or a database table
    # A data frame can be created using the data.frame() function
    # A data frame can be read from a file using the read.csv() function
    # A data frame can be written to a file using the write.csv() function
    
  # Load the data set
    data <- read.csv("data.csv")
    
  # Load the built-in data set
    library(datasets)
    
  # View the data set
    View(data)
    View(iris)  
    