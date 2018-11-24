#Data structures in R
c(2,4,6)
seq(2,5,0.5)
seq(by=0.5, from=2, to=3)
rep(1:4, times=3)
rep(1:3, each=3)

x=1:10
x
(x1 <- 1:20)
(x1 = 1:30)
class(x2)

(x3=c('a',"ABC"))

#to know the data-type of a variable
class(x3)

#asking for 
LETTERS[1:26]
x4=letters[1:10]


#storing as integers is done using L
x5=c(3L,5L) 

x[1:100] = 1
length(x)
x6
x
x[ seq(1, length(x), 2)]
x[x>30 & x<50]
x[x<30 | x>80]

#deleting specific element of vector
x[x>30]
x[length(x)-1]
x[-length(x)-1]

#random number generator
y1
set.seed(1234)
(y1 = sample(1:5000))

sort(y1)

z1=NULL
z1[4]

?distribution
(z1= rnorm(100, mean=50, sd=5))
plot(density(z1))
abline(v=c(-3,0,3))
hist(z1, breaks=15)
hist(z1, freq=F)
lines(density(z1), col=2)

#decile
quantile(z1,seq(0,1,0.1))

#percentile
quantile(z1,seq(0,1,0.01))

#to find unique values
unique(z1)

#to plot stem and leaf diagram in console itself
stem(z1)
