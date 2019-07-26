#https://github.com/shandatascience/ISLR

library(ISLR)

# Chapter 2 Lab: Introduction to R
# 2.3.1 Basic Commands

#vector of numbers
x <- c(1,3,2,5)
x
x = c(1,6,2)
x

y = c(1,4,3)

length(x)
length(y)
x+y

# list all objects - ls; rm - remove the objects listed in the arguments
ls()
rm(x,y)
ls()

x = c(1,6,2)
x
y = c(1,4,3)
ls()
# remove all the objects in the list
rm(list=ls())


#create matrix of numbers

?matrix
x=matrix(data=c(1,2,3,4), nrow=2, ncol=2)
x
x=matrix(c(1,2,3,4),2,2)
#byrow = TRUE is required to populate the matrix in the order of the rows
matrix(c(1,2,3,4),2,2,byrow=TRUE)

sqrt(x)
x^2

# rnorm creates standard normal random variables with a mean of 0 and SD of 1.
x=rnorm(50)
y=x+rnorm(50,mean=50,sd=.1)

# corr is used to compute the correlation between two numbers
cor(x,y)
# set.seed function takes an arbitary integer argument and used in calculations involving
# random quantities. set.seed function uses our code to reproduce exact same set of random#.
set.seed(1303)
rnorm(50)
set.seed(3)
y=rnorm(100)
mean(y)
var(y)
sqrt(var(y))
sd(y)

# 2.3.2 Graphics

x=rnorm(100)
y=rnorm(100)

#plot function is a primary way to plot data in R. produces a scatterplot of no.s in x vs y.
dev.new()
plot(x,y)
plot(x,y,xlab="this is the x-axis",ylab="this is the y-axis",main="Plot of X vs Y")
#pdf() or jpeg() can be used
#pdf("Figure.pdf")
jpeg("ChandraShan_LabWeek1_plot.jpeg")
plot(x,y,col="green")
#dev.off indicates to R that we are done creating the plot
dev.off()
dev.cur()
#seq used to create a sequence of numbers
x=seq(1,10)
x
x=1:10
x
#Contour function produces a contour plot inorder to represent 3D data
#image function provides a color coded plot

x=seq(-pi,pi,length=50)
y=x
f=outer(x,y,function(x,y)cos(y)/(1+x^2))
contour(x,y,f)
contour(x,y,f,nlevels=45,add=T)
fa=(f-t(f))/2
contour(x,y,fa,nlevels=15)
image(x,y,fa)
persp(x,y,fa)
persp(x,y,fa,theta=30)
persp(x,y,fa,theta=30,phi=20)
persp(x,y,fa,theta=30,phi=70)
persp(x,y,fa,theta=30,phi=40)

# Indexing Data

A=matrix(1:16,4,4)
A
A[2,3]
A[c(1,3),c(2,4)]
A[1:3,2:4]
A[1:2,]
A[,1:2]
A[1,]
A[-c(1,3),]
A[-c(1,3),-c(1,3,4)]
dim(A)

# Loading Data

 # Below code is commented as the ISLR package is installed.
#Auto=read.table("Auto.data")
#fix(Auto)
#Auto=read.table("Auto.data",header=T,na.strings="?")
#fix(Auto)
#Auto=read.csv("Auto.csv",header=T,na.strings="?")
#fix(Auto)
#dim(Auto)
#Auto[1:4,]
#Auto=na.omit(Auto)
#dim(Auto)
head(Auto)
names(Auto)



# Additional Graphical and Numerical Summaries

# below line will have error when executing as object cylinders not found
#plot(cylinders, mpg)

plot(Auto$cylinders, Auto$mpg)
attach(Auto)
plot(cylinders, mpg)
cylinders=as.factor(cylinders)
plot(cylinders, mpg)
plot(cylinders, mpg, col="red")
plot(cylinders, mpg, col="red", varwidth=T)
plot(cylinders, mpg, col="red", varwidth=T,horizontal=T)
plot(cylinders, mpg, col="red", varwidth=T, xlab="cylinders", ylab="MPG")
hist(mpg)
hist(mpg,col=2)
hist(mpg,col=2,breaks=15)
pairs(Auto)
pairs(~ mpg + displacement + horsepower + weight + acceleration, Auto)
plot(horsepower,mpg)
identify(horsepower,mpg,name)
summary(Auto)
summary(mpg)
