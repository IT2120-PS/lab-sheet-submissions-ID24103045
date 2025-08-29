setwd("C:/Users/it24103045/Desktop/IT24103045")
#1. Import the dataset (’Exercise – Lab 05.txt’) into R and store it in a data framecalled ”Delivery Times”.

delivery_times <- read.table("Exercise - Lab 05.txt", header = TRUE)

# Rename the column for easier access
colnames(delivery_times) <- "Delivery_Time"

# Store only the Delivery_Time column
Delivery_Times <- delivery_times$Delivery_Time

#2. Draw a histogram for deliver times using nine class intervals where the lower limit is 20 and upper limit is 70. Use right open intervals.
breaks_seq <- seq(20, 70, length.out = 10)   # 9 intervals
hist(Delivery_Times,
     breaks = breaks_seq,
     right = FALSE,      # right open intervals
     col = "skyblue",
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency")

#4.Draw a cumulative frequency polygon (ogive) for the data in a separate plot.
hist_obj <- hist(Delivery_Times, breaks = breaks_seq, right = FALSE, plot = FALSE)
cum_freq <- cumsum(hist_obj$counts)

plot(hist_obj$breaks[-1], cum_freq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "red")
