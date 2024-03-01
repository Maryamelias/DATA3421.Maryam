######Vectors
#### Q1-Create a vector w/ c() 
my_vector <- c(1,2,3,4,5)
my_vector
### Q2-Create a vector w/ rep()
v<-rep(c(1,2),3)
v
### Question 3-Create a vector w/ seq()
x <- seq(from=5, to= 15,by=2)
x
### Q4-Create a vector w/ Random numbers
set.seed(123)
random_vector<- rnorm(10, mean=0, sd = 1)
random_vector
### Q5 - Create empty vectors
x <-c()
x
class(x)
### Q6 - Naming vectors components 
goods<- c(10,20,30)
goods
names(goods)<-c("First", "Second", "Third")

goods
goods["First"]
### Q7- Filtering vectors 
x <-c(1,3,5,7,9)
x
n <- x[x>4]
n
### Q8 - Sum & Product of vector components
x<-c(2,4,6,8)
x
sum(x)
prod(x)
### Q9-Vectorized Operations
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
### Q10-Vector Correlation 
x<-c(1,2,3,4,5)
y<-c(5,4,3,2,1)

#Computing correlation
cor.test(x,y)
###Matrices and Arrarys
## Q11-Creating matrices 
x = matrix(c(1,2,3,4,5,6,7,8,9),nrow=3, ncol = 3)
x
## Q12- Naming Matrices Rows & Cols
x = matrix(c(1,2,3,4,5,6,7,8,9),nrow=3, ncol = 3,
           byrow = TRUE,dimnames=list(c("Row1", "Row2", "Row3"),
                                      c("Col1", "Col2", "Col3")) )
x
### Q13-Indexing Matrices 
#Exracting all elements of the 2nd row
x[2,]
### Q14-Adding & Deleting Rows/Cols in Matrices
#Adding
y=matrix(c(10,11,12), nrow=3, ncol=1, byrow=TRUE)
colnames(y)= c("Col4")
xy = cbind(x,y)
xy
##Deleting the row
xy<-xy[-2, ]
xy
### Q15-Applying Functions to Matrices
x
apply(x,2, sum)
### Q16-Adding & Multiplying Matrices
A<-matrix(1:4, nrow=2)
A
B<-matrix(rep(2,4), nrow = 2)
B
##Adding Matrices
C<- A + B
C
##Multiplying Matrices
C <- A %*% B
C
### Q17-Missing Values in Vectors
z<-c(1,NA,3,NA,5)
z
avg<-mean(z,na.rm = TRUE)
z[is.na(z)]<-avg
z
### Q18-Filtering Matrices 
M<-matrix(1:9, nrow=3)
new_M<-M[M > 5]
new_M
### Q19-Editing Elements in Matrices 
M
fm 
fm[fm>=5]<-0
fm
