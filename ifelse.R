setwd("~/sibe/GIT")
switch <- FALSE

#IF ELSE TASK
if(switch){
  print("switch is on")
}else{
  print("switch is broken")
}

#LOOP TASK
results <- c()
for (i in 1:100){
  
  if(i == 0){
    current_result <- i
  }
  else{
    current_result <- i + results[i - 1]
  }
  results <- c(results, current_result)
}
print(results)

#FUNCTION TO CONVERT CELCIUS TO FAHRENHEIT
celsiusToFahrenheit <- function(celsius) {
  fahrenheit <- (celsius * 1.8) + 32
  return(fahrenheit)
}
fahrenheitToCelsius <- function(fahrenheit) {
  celsius <- (fahrenheit -32) / 1.8
  return(celsius)
}
celsius_value <- 100
fahrenheit_value <- 212

converted_fahrenheit_value <- celsiusToFahrenheit(celsius_value)
converted_celsius_value <- fahrenheitToCelsius(fahrenheit_value)

print(paste(converted_celsius_value, "degrees Celsius is", converted_fahrenheit_value, "degrees Fahrenheit"))

#FUNCTION TASK 2
data <- read.csv("pressure.tsv", sep="\t")

data$temperatureCelsius <- sapply(data$temperature, fahrenheitToCelsius)

print(data)




