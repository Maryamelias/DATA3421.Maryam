### Week 7 Homework 6
library(dplyr)
library(tidyr)
library(ggplot2)
df<-read.csv("house_price.csv")
head(df)
View(df)

### Q1: Using ggplot2
ggplot(df, aes(x=Size_sqm, y=Price, color=Location)) + 
  geom_point(size = 2)

## Q2: Scatter plot and Regression line
ggplot(df, aes(x=Age_years, y=Price)) +
  geom_point() + labs(x= "Age", y="Price",title="Scatterplot for Age v. Price")+
  geom_smooth(method = "lm")
### It seems that Age has a negative correlation with the prices, 
## this means as the house gets older, the price decreases

## Q3: Modifying a scatterplot
ggplot(df, aes(x=Size_sqm, y=Price, color=Location)) + 
  geom_point(size = 4) + labs(x= "Size", y="Price", 
                              title="Scatterplot for Size v.Price") +
  theme(legend.position = "bottom")

### Q4: Creating a bar chart
## summarizing data
dfs <- aggregate(Price ~ Location, data = df, FUN = mean)
# Create the bar chart
ggplot(dfs, aes(x=Location, y=Price))+
  geom_bar(stat = "identity", fill="skyblue", color="black")+
  labs(
    x="Location",
    y="Average House Price",
    title = "Average House Price by Location"
  )+theme_minimal()

### Q5: Plotting a Histogram of Price
ggplot(df, aes(x=Price))+
  geom_histogram(binwidth = 5000, fill="darkred", color="black")+
  labs(
    x= "Price",
    y= "Frequency",
    title="Histogram of the Price column"
  ) + theme_minimal()

### Q6: Overlaying density plot
ggplot(df, aes(x = Size_sqm)) +
  geom_histogram(binwidth = 5, fill = "steelblue", color = "black") +
  geom_density(aes(y = after_stat(density)), alpha = 0.2, fill = "lightgreen") +
  labs(title = "Histogram and Density Plot for Size_Sqm",
       x = "Size",
       y = "Density") +
  theme_minimal()
### Q7: Creating a bar plot
df_bar <-ggplot(df, aes(x= Condition, fill = Condition)) +
  geom_bar(stat = "count")

df_bar +  scale_fill_manual(values = c("Needs Work" = "red", "Fair"="yellow", 
                               "Good"="lightgreen", "Excellent"="darkgreen"))


### Q8: Using facet_Wrap() to create scatter plot
ggplot(df,aes(x= Size_sqm, y=Price, color = Location) ) +geom_point() +
  facet_wrap(~Location, scales = "free") +
  labs(title = "Scatter plot of Size and Price by Location",
       x = "Size",
       y= "Price") + 
  theme_minimal()
### Q9: Performing Linear Regression
lm_model <- lm(Price ~ Size_sqm + Bedrooms + Bathrooms + Age_years, df)
summary(lm_model)
plot(lm_model)

### Q10: More regression analysis
lm_model <- lm(Price ~ Size_sqm + Bedrooms + Bathrooms + Age_years +
                 Distance_to_city_center_km, df)
summary(lm_model)
plot(lm_model)

## Coefficients of Size_sqm is -293.8, this means that for every additional sqm,
# the price is estimated to decrease by $293.8.
## Coefficient of Bedrooms is 3945.7, this means for every additional bedrooms,
# the price is estimated to increase by $3945.7.
## Coefficient of Bathrooms is 7102.4, this means that for every additional 
# bathroom, the price is estimated to increase by $7102.4
## Coefficient of Age_years is -679.5, this means that for every additional year,
# the house ages, the price is estimated to decrease by $679.5
##  Coefficient of Distance to city center(km) is 586.7, this means for every 
# additional distance to the city center, the price is estimated to increase by $586.7










