#devtools::install_github("jhudsl/collegeIncome")
library(collegeIncome)
#devtools::install_github("jhudsl/matahari")
library(matahari)
data(college)
head(college)
dance_start(value = FALSE, contents = FALSE)
str(college)
fit<-lm(median~major_category,data=college)
hist(college$median)
any(is.na(college$major_category))
factor(college$major_category)
df<-aggregate(college$median~college$major_category,FUN = mean)
names(df)<-c("major","medsal")
par(mfrow=c(1,1))
barplot(df$medsal)
summary(fit)$coef
summary(fit)$coef[,4]<0.05

#the p values suggest that the medians are not significantly different.
dance_save("C:/Users/himank/Documents/college_major_analysis.rds")

dance_remove()
