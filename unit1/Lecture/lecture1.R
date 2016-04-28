# =============== Lecture 1===========
#loading File
WHO = read.csv("WHO.csv")
str(WHO)
summary(WHO)
WHO_Europe = subset(WHO, Region == "Europe")
str(WHO_Europe)
write.csv(WHO_Europe, "WHO_Europ.csv")
ls ()
rm(WHO_Europe)
ls()
Under15
WHO$Under15
mean(WHO$Under15)
sd(WHO$Under15)
summary(WHO$Under15)
which.min(WHO$Under15)
WHO$Country[86]
which.max(WHO$Under15)
WHO$Country[124]
plot(WHO$GNI,WHO$FertilityRate)
Outliers = subset(WHO, GNI > 10000  & FertilityRate > 2.5)
nrow(Outliers)
Outliers[c("Country","GNI", "FertilityRate")]
# =======QUiz ========== 
mean(WHO$Over60)
min(WHO$Over60)
which.min(WHO$Over60)
WHO$Country[183]
which.max(WHO$LiteracyRate)
WHO$Country[44]
#=======Lecture Resume ==========
hist(WHO$CellularSubscribers)
boxplot(WHO$LifeExpectancy ~ WHO$Region)
boxplot(WHO$LifeExpectancy ~ WHO$Region , xlab ="", ylab="Life Expectancy", main ="LifeExpectancy of countires by Region")
table(WHO$Region)
tapply(WHO$Over60, WHO$Region, mean)
tapply(WHO$LiteracyRate,WHO$Region, min)
tapply(WHO$LiteracyRate,WHO$Region, min, na.rm = TRUE)
tapply(WHO$ChildMortality,WHO$Region, mean)


# Assigmnet 1 ============

mvt <- read.csv("mvtWeek1.csv",header =TRUE)
DateConvert = as.Date(strptime(mvt$Date, "%m/%d/%y %H:%M"))
mvt$Month = months(DateConvert)
mvt$Weekday = weekdays(DateConvert)
mvt$Date = DateConvert
summary(mvt)
