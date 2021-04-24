# variable 
a<-5
a
pi<-6
pi
pi
a<-10
b<-20
c<-30
d<-40
rm(a)
rm(b,d)
a<-10
a<-40
a<-80
A<-40
xyz<-100
XYZ<-1000

# data types in R
# Atomic data type , collective data type 
# Atomatic data types 
 # integer , numeric , charecter , complex , logical
a<-5
class(a)

# class is function that returns the data type of object 
a<-6.7
class(a)

# numeric type of data can hold whole numbers and decimal 
 a<- -1000
 A<-500
class(A)
a<-0
class(a)
b<- 50
a<-b
class(a)
# integer data 
a<-23L
class(a)
a<-23.6L
# if i convert a into an int we will lose 0.6 
# if we convert a into numeric we can retain the 23.6 
class(a) # implicite conversion 

a<-50L
class(a)
b<-50
class(b)
c<-a+b
c
class(c)
# when we perform mathmatical expression using int and numeric 
 # answer is always numeric 

a<-50L
class(a)
b<-60L
class(b)
c<-a+b
c
class(c)

# int + int = int 
# num + num = num 
# int + num = num 

a<-23.6
class(a)
b<-as.integer(a)
b
class(b)

# complex 
# a + bi \ a- bi 
x<-5+7i
class(x)
y<- 5-7i
class(y)
z <-4+2i
x+z

x<-23.000000001
class(x)
p<-as.integer(x)
p

p<-23.67
class(p)
q<-round(23.67)
q
class(q)

# charecter data type 
a<-'1'
class(a)
a<-"1L"
class(a)
a<-"12+8i"
class(a)
a<-"a"
class(a)
a<-"data"
class(a)
a<-"data is imp"
class(a)

a<-"b"
a
class(a)
x<- " ******this is data***** "
class(x)
a<-"         "
a
class(a)
a<-10
b<-20
c<-a*b
c
class(c)

# logical data type 

5<6
5>6
5!=6
5 == 7 # equals to , comp. operator 


true<-45
TRUE<-45
a<-T
!a
b<-FALSE 

# int : whole numbers 
# num : whole numbers and decimal 
# char : which can store anything in "" or ''
# complex: store number of the form a+bi 
# logical : logical statement [T[TRUE],F[FALSE]]

# collective data types in R
# vector , list , factor , data frame , array , matrix 

# vector 
# one dimentional collection of homogeneous elements 
vect1<-c(12,23,45,67,89,20,12,100,68,79,80,99,110)
class(vect1)
#c <- combine / concatinate / collabrate 
length(vect1) # number of elements in vector 
# how to fetch the values from vector ? 
# fetch the 5th element from vector 
# indexing in r starts with 1 
vect1
vect1[5]
round(45.8)
class(vect1)
vect1[8]
vect1[13]
vect1[14]
# fetch 3,6 and 10th element 
vect1[c(3,6,10)]
# 1st, 8th and 13th element 
vect1[c(1,8,13)]
# fetch 3,6 and 10th element and store in vect2 
vect2<-vect1[c(3,6,10)]
vect2
# fect elements from 1 to 8 
vect1[c(1,2,3,4,5,6,7,8)]
vect1[c(1:8)]
vect1[1:8]
# range operator can generate answer without function c 
# fetch elemets 1:5 , 8 to 13 
vect1[c(1:5,8:13)]

# inserting element in vector / appending 
vect1[14]<-1000
vect1
vect1[15]<-50
vect1
# add 60,70,80 at 16,17,18th position of vect1
vect1[c(16,17,18)]<-c(60,70,80)
vect1
#
vect1[20]<-200
vect1
vect1[25]<-115
vect1
vect1[23]<-120
vect1
vect1[1]<-112
vect1
# mean of vect1 
vect1
mean(vect1,na.rm = T)
median(vect1,na.rm = T)
var(vect1,na.rm = T)
sd(vect1,na.rm = T)
max(vect1,na.rm = T)
min(vect1,na.rm = T)

vect1[24]<-300;vect1
vect1[21]<-350;vect1

vect1[21]<-350
vect1

# 
vect1[1]
vect1[-1]
vect1<-vect1[-1];vect1
vect2<-vect1[-1]
vect2
# remove 4th, 8th and 13th index from vect1 and store result in vect3
vect3<-vect1[-c(4,8,13)];vect3

vect1<-c(12,23L,T,"data",2+3i);vect1
class(vect1)
# if any single entry is char ; entire vector becomes char 
vect2<-c(12,23L,T,2+3i);vect2
12= 12+0i
23L= 23+0i
T= 1=1+0i
2+3i
class(vect2)
vect2
# if in a vector no char,but even if single entry is complex ; every entry becomes 
 # complex. 
vect3<-c(12,23L,T)
class(vect3)

# if in a vector no char and complex ,but even if single entry is numeric;every entry becomes 
# numeric. 

vect4<-c(23L,T)
class(vect4)

# if in a vector no char,no complex and no numeric,but even if single entry is 
# integer ; every entry becomes integer
vect5<-c(T)
class(vect5)
# internal conversion : char - complex - numeric- integer - logical 

# factor - level
gender<-c("M","F","M","F","F","F","F","M","M","M","F","M","M","M")
class(gender)
gender
summary(gender)
gen<-as.factor(gender)
gen
class(gen)
summary(gen)

outcome<-c(1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,1,0)
class(outcome)
outcome_factor<-as.factor(outcome)
class(outcome_factor)
summary(outcome_factor)

# data frame 
# combination of multiple vectors , similar to table [ rows / cols ], 2 dimensional
eid<-c(1,2,3,4,5,6,7,8,9,10)
e_name<-c("A","B","C","D","E","F","G","H","I","J")
e_salary<-c(30,34,45,67,78,89,70,89,78,90)
e_bonus<-c(8,9,9,8,10,12,11,19,20,22)
e_gender<-c("M","F","F","F","M","M","M","F","F","M")
e_dept<-c("MAR","HR","FIN","FIN","MAR","HR","HR","MAR","FIN","FIN")
emp<-data.frame(eid,e_name,e_salary,e_bonus,e_gender,e_dept)
emp
dim(emp)# no of row and column 
# subset : index based subsetting , condition based subset 
# index based subset 
# fetch the records from 1st to 5th row 
#dataset[row,column]
sub1<-emp[1:5,];sub1
# fetch the record for ename and dept for all emp
sub2<-emp[,c(2,6)];sub2
sub3<-emp[,c("e_name","e_dept")];sub3
# fetch the name,salary and gender for 1 to5th and 9th emp
names(emp)
sub4<-emp[c(1:5,9),c("e_name","e_salary","e_gender")];sub4
# condition based subsetting 
# fetch the emp having gender as M 
sub5<-subset(emp,emp$e_gender=="M");sub5
#a=10 assign 
#a==11 check 

# fetch the emp having salary greater than 50k

sub6<-subset(emp,emp$e_salary>=50);sub6

eid<-c(11:13)
e_name<-c("p","q","r")
employee<-data.frame(eid,e_name)
employee
# fetch emp having gender as female and salary greater than 50
s1<-subset(emp,emp$e_gender=="F");s1
s2<-subset(s1,s1$e_salary>50);s2

# compound statement [and ,or]
 # And : when all inputs are true ; generate output 
 # OR : when any one input is true ; generate output

s3<-subset(emp,emp$e_gender=="F" & emp$e_salary>50);s3

# fetch the emp working either in finance or HR department 

s4<-subset(emp,emp$e_dept=="FIN" | emp$e_dept=="HR");s4

!T
!F
# fin , mar , hr 
s5<-subset(emp,emp$e_dept!="MAR");s5

# fetch the records , salary > 50 , bonus > 7 and dept can be fin or mar
s6<-subset(emp, (emp$e_salary>50 & emp$e_bonus>7) & emp$e_dept!="HR");s6

# save emp in csv format 
write.csv(emp,file = "C:/prachi/batch8/emp.csv")
write.csv(emp,file="emp.csv")

# load file in R 

# absolute path 
# relative path 
# file.choose()
# import dataset 

# absolute path : complete path starting with root directory 
salary <- read.csv("C:/prachi/batch8/basic_salary2.csv")
View(salary)

# using relative path 
getwd()
salary1<-read.csv("basic_salary2.csv")

# using file.choose()
salary2<-read.csv(file.choose())

# using import dataset 





