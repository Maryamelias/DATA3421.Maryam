### Q1-Importing Data
df <-read.csv("data.csv")

### Q2-Exploring Data
summary(df)

head(df)
tail(df)

ncol(df)
nrow(df)

### Q3-Basic Operations w/ DataFrame
# Extracting the col "Age
df[, c("Age")]

### Q4- Filtering a Df
# Filtering for the age 25 and above
df$Age >= 25
df[df$Age >= 25 , ]

### Q5 - Generate Statistical Indicators
# Calculating mean Income
mean(df$Income)

### Q6 - Descriptive Statistics with the psych package
install.packages("psych")
library(psych)
describe(df)
## getting a descriptive stats for HoursWorkedPerWeek
describe(df$HoursWorkedPerWeek)

###Q7 - Determining the Skewness and Kurtosis
library(e1071)
require(e1071)
## Skewness 
skewness(df$Weight_kg)
hist(df$Weight_kg)
## Kurtosis
kurtosis(df$Weight_kg)

### Q8 - Data Transformation
# Transforming Income col into logscale 
hist(df$Income) # intial visualization
library(dplyr)
df <- mutate(df, logIncome = log(df$Income))
hist(df$logIncome, main = "Histogram of LogIncome",
     xlab = "Log-Tranformed Income")

### Q9 - Recoding Continuous Variables
# Recoding Job satisfication
names(df)
unique(df$JobSatisfaction)
class(df$JobSatisfaction)
# changing to numeric
df$JobSatisfaction <- as.numeric(df$JobSatisfaction)
# recoding to three categories 
unique(df$JobSatisfaction)
df$JobSatisfaction <- cut(df$JobSatisfaction,
                                     breaks = c(0, 3, 7, 10),
                                     labels = c("Low", "Medium", "High"),
                                     include.lowest = TRUE)
head(df)

### Q10 - Sorting Data Frame
# Sorting age col into descending order
library(dplyr)
View(df)
df_sorted <- df[order(df$Age , decreasing = TRUE),]
View(df_sorted)
### Q11 - USing filter()
# filter for ind. working more than 40hr/week & live in US
head(df)
wrk_40plus <- filter(df, HoursWorkedPerWeek > 40, 
                     Country == "USA")
head(wrk_40plus)
View(wrk_40plus)

### Q12 - Using arrange()
# arrange df based on income in ascending order
Income_asc <- df %>% arrange(Income)
View(Income_asc)

### Q13-Pick Variables by theri Names(select())
#selecting col ID, Age, & Gender
df_selected<- select(df, ID,Age, Gender)
df_selected

### Q14 - Create new variable w/ existing variable 
# creating a bmi variable
df2 <- df %>%
  mutate(BMI  =  Weight_kg / (Height_cm)^2)
View(df2)

### Label Encoding 
#encoding gender, Female = 0 ; Male = 1
levels = c("Female","Male")
labels = c(0, 1)
df$Gender <- factor(df$Gender, levels = levels, labels = labels)
View(df)
head(df)
