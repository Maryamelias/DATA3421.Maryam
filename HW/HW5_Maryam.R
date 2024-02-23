######Vectors
####Question 1-Create a vector w/ c() 
my_vector <- c(1,2,3,4,5)
my_vector
###Question 2-Create a vector w/ rep()
v<-rep(c(1,2),3)
v
### Question 3-Create a vector w/ seq()
x <- seq(from=5, to= 15,by=2)
x
### Question 4-Create a vector w/ Random numbers
set.seed(123)
random_vector<- rnorm(10, mean=0, sd = 1)
random_vector
### Question 5 - Create empty vectors
x <-c()
x
class(x)
### Question 6 - Naming vectors components 
goods<- c(10,20,30)
goods
names(goods)<-c("First", "Second", "Third")

goods
goods["First"]
### Question 7- Filtering vectors 
x <-c(1,3,5,7,9)
x
n <- x[x>4]
n
### Question 8 - Sum & Product of vector components
x<-c(2,4,6,8)
x
sum(x)
prod(x)
### Question 9-Vectorized Operations
a<-c(1,2,3)
a
b<-c(4,5,6)
b
# Element-wise-sum
a+b
# Element-wise-difference
a-b
# Element-wise-multiplication
a*b
### Question 10-Vector Correlation 
x<-c(1,2,3,4,5)
y<-c(5,4,3,2,1)

#Computing correlation
cor.test(x,y)
###Matrices and Arrarys
##Question 11-Creating matrices 
x = matrix(c(1,2,3,4,5,6,7,8,9),nrow=3, ncol = 3)
x
##Question 12- Naming Matrices Rows & Cols
x = matrix(c(1,2,3,4,5,6,7,8,9),nrow=3, ncol = 3,
           byrow = False, dimnames=list(c("Row1", "Row2", "Row3"),
                               c("Col1", "Col2", "Col3")) )





