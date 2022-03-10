set.seed(937573)                               # Create randomly distributed data
x <- rnorm(1000)
x[1:5] <- c(7, 10, - 5, 16, - 23) 

x                                              # Print data

boxplot(x)                                     # Create boxplot of all data

x_out_rm <- x[!x %in% boxplot.stats(x)$out]    # Remove outliers

length(x) - length(x_out_rm)                   # Count removed observations

boxplot(x_out_rm)                              # Create boxplot without outliers
