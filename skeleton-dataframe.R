#bookmarks

#vector----


#matrices----


#vector----

rollno = 1:30
sname = paste('Student',1:30,sep="-")
gender = sample(c('M','F'), size=30, replace=T,prob = (c(.7,.3)))
#table(gender)
#prop.table((table(gender)))
#increasing the sample space divides the proportions properly

(marks1= floor(rnorm(30,mean = 50,sd=10)))
(marks2= ceiling(rnorm(30,40,5)))
(course=sample(c('BBA','MBA'),size = 30,replace = T, prob = c(0.5,0.5)))

rollno; sname; gender
marks1;marks2; course


#create DF
df1= data.frame(rollno, sname, gender, marks1, marks2, course, stringsAsFactors = F)
str(df1) # viewing structure
head(df1) #view top 6 rows
head(df1, n=3) #view top 3 rows
head(df1[ ,c(2,4)])
class(df1) #viewing class
summary(df1) #viewing summary
nrow(df1)


#print particular column/row
df1$course

#factor creates categories- things like type, gender course should be kept as factors so that their count can be found out
df1$gender= factor(df1$gender)
df1$course= factor(df1$course)

str(df1)
summary(df1)
#boxplot(df1$marks1)
#boxplot(marks1~ gender, data=df1)
boxplot(marks1 ~ gender + course, data=df1)
df1
df1$course

df1[marks1>50 & gender=='F', c('rollno', 'sname', 'gender', 'marks1')]
names(df1)

aggregate(df1$marks1, by=list(df1$gender), FUN=sum)
aggregate(marks1 ~ gender, data=df1, FUN=sum)
aggregate(cbind(marks1,marks2) ~ gender, data=df1, FUN=max)

(df2= aggregate(cbind(marks1,marks2) ~ gender + course, data=df1, FUN= mean))







#Factors----
(grades= sample(c('A','B','C','D'), size=30,replace=T,prob=c(.3,2,.4,.1)))
summary(grades)
summary(grades)
table(grades)
(gradesFactor = factor(grades))
(gradesFactorOrdered= factor(grades, ordered = T))
summary(gradesFactorOrdered)
gradesFactorOrderedLevels= factor(grades, ordered= T, levels = c('D','C','B','A'))


