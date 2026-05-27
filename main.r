data <- c(10,20,30,30,50,60,70)

print("Dataset:")
print(data)

mean_value <- mean(data)
print(paste("Mean =",mean_value))

median_value <- median(data)
print(paste("Median=",median_value))    

mode_function <- function(x){
    ux <- unique(x)
    ux[which.max(tabulate(match(x,ux)))]
}

mode_value <- mode_function(data)
print(paste("Mode=",mode_value))

max_value <- max(data)
print(paste("Max=",max_value))

min_value <- min(data)
print(paste("Min=",min_value))

var_value <- var(data)
print(paste("variance=",var_value))

sd_value <- sd(data)
print(paste("Standard deviation=",sd_value))

s<-summary(data)
print(s)

b <- barplot(data)
print(b)

h <- hist(data)
print(h)

lbls <- c("US", "UK", "Australia", "Germany")
pie(data, labels = lbls, main="Pie Chart of Countries", col=rainbow(length(lbls)))
