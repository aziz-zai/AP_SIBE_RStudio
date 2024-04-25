setwd("~/sibe/GIT")
switch <- FALSE

#IF ELSE TASK
if(switch){
  print("switch is on")
}else{
  print("switch is broken")
}

#LOOP TASK
results <- vector("numeric")
for (i in 1:100){
  
  if(i == 1){
    current_result <- i
  }
  else{
    current_result <- i + results[i - 1]
  }
  results <- c(results, current_result)
}
print(results)