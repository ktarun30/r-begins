#Matrix Manipulation
m1 = matrix(1:12, nrow = 4,ncol = 3)
class(m1)
attributes(m1)
dim(m1)
m1

#printing rows and columns and deleting

m1[1,];m1[,2]
m1[,-2]

#this doesn't change the matrix, use var to save these instances

m1[,1,drop=F] #align vertically
m1[1, drop=F] #align vertically

m1[1,2:3]
m1[c(1,3),]
m1[,-c(1,3), drop=F]
m1[m1>5 & m1<9]



paste("C","D", sep="-")
paste("C",1:100,sep="/")
paste("C",1:3,sep="")

#naming columns and rows

(colnames(m1) = paste('C',1:3,sep=''))
m1
(rownames(m1)=paste('Row',1:4,sep='-'))
m1

attributes(m1)
m1[,c('C1','C3')]
m1[,c(1,3)]


#vector to matrix
(m3=1:24)
(dim(m3)=c(6,4))
m3


#access elements

m2= matrix(100:111, nrow = 4,ncol = 3)

#matrix is a structured vector


m2[2,2]
m2[2,2] = 10
m2
m2[2,]=10
m2

#joining columns and rows

rbind(m2, c(50,60,70))
rbind(m2,m2)
m2
cbind(m2, c(55,65,75,85))
cbind(m2,m2)


#sums and means
colSums(m2)
rowSums(m2)
colMeans(m1)
rowMeans(m1)

#transpose
m3 = t(m2) 
m3

#adding to the elements
sweep(m3, MARGIN=1, STATS = c(1,1,1), FUN="-")
sweep(m3, MARGIN=2, STATS = c(1,1,1,1), FUN="-")


#IMPORTANT
addmargins(m3,margin=1,sum)
addmargins(m3,margin=2,sum)
addmargins(m3,c(1,2),sum)

addmargins(m3,c(1,2),mean)
addmargins(m3,c(1,2),sd)
addmargins(m3,c(1,2),list(list(mean,sum,sd,max), list(mean,sum,sd,max)))
g = 
round(g, digits=0)


