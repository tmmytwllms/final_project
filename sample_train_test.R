#Import data from CSV file
train_test <- read.csv(file='train_test.csv',check.names=F,stringsAsFactors = F)
#import tidyverse
library(tidyverse)
#randomly sample 600000 data points
sample_train_test <- train_test %>% sample_n(600000)
#export sample_train_test as CSV
write.csv(sample_train_test,file="sample_train_test.csv")