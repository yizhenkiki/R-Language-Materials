#Chapter 1 Basic of R
##i.Simple Expressions
##Using R as a Calculator
1+2
6-3
8*9
8/4
2^3
9%%4#remainder
2**3

##Using R print string
"Hello World!"

##ii.	Assignments
##Variable and Entering Input
x <- 1
x
print(x)
x <- 10:20
x

##Using Variable as a Calculator
my_apples<-5
my_oranges<-6
my_apples+my_oranges
my_fruit<-my_apples+my_oranges
my_fruit

##iii.select the data type:class()¡Bstr()
my_numeric <- 60
my_character <- "Taiwan"
my_logical <- FALSE
class(my_numeric)
class(my_character)
class(my_logical)
str(my_numeric)
str(my_character)
str(my_logical)

##iv.Input&Output:
getwd()
setwd("C:/Users/User/Desktop")
getwd()
dir()
#use femaleMiceWeights.csv
read.csv("femaleMiceWeights.csv")
read.table("femaleMiceWeights.csv")

data<-iris
write.table(data, file = "test.CSV", sep = ",")
write.csv(data, file = "test2.CSV")

##v.	Install package() Meet common package
install.packages("ggplot2")
install.packages("dslabs")
install.packages("dplyr")
library(ggplot2)
require(ggplot2)

##vi.	Other basic operation
View(sleep)
q()

a<-1
b<-"Two"
ls()

rm(a)
ls()

##vii.	About help
args(prop.test)
example("vector")
?rm
help("data.frame")
##############################
#Chapter2 Vector

##i.Create Vector c( )¡Bnames()
codes <- c(380,1240,818)
codes
country <-c("Taiwan", "Japan", "Hong Kong")
country
names(codes)<-c("Taiwan", "Japan", "Hong Kong")
codes
codes2 <- c("Taiwan"=380, "Japan"=1240, "Hong Kong"=818)
codes2

##ii.	Data-type
##is.numeric/character/factor
a <- c(1,2,3,4,5)
class(a)
b<-c("a","b","c","d")
is.numeric(a)
is.character(b)
is.factor(b)

##as.numeric/character/factor
a <- c(1,2)
a<-as.numeric(a)
class(a)
a<-as.character(a)
class(a)
a<-as.factor(a)
class(a)

##iii.Subsetting
codes <- c("Taiwan"=380, "Japan"=1240, "Hong Kong"=818)
codes
codes[2]
codes[-1]
codes[c(1:3)]
codes["Japan"]
codes[c("Taiwan","Japan")]
codes>500#logical

##iv.	Vector Caculate
##Single vector caculate
earnings<-c(50,100,30)
earnings*3
earnings/10
earnings-20
earnings+100
earnings^2

##double vector caculate
earnings<-c(50,100,30)
expenses<-c(30,40,80)
earnings-expenses
earnings+c(10,20,30)
earnings*c(1,2,3)
earnings/c(1,2,3)

##useful function(levels()¡Bmin()¡Bmax()¡Bmedian()¡Blength()¡Bprod()¡Bsum()¡Bmean())
##levels,min,max
food <- factor(c("low", "high", "medium", "high", "low", "medium", "high"))
levels(food)
min(food)#Error!! Because the factor is not order

args(factor)
food <- factor(food, levels = c("low", "medium", "high"), ordered=TRUE)
levels(food)
min(food)
max(food)

#median()¡Blength()¡Bsum()¡Bmean()
poker_vector <- c(140, -50, 20, -120, 240)
median(poker_vector)
sum(poker_vector)
mean(poker_vector)

##logical
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
linkedin > 15
linkedin < 3 || linkedin > 17
linkedin > 15 && linkedin <= 20
linkedin > 10 & facebook < 10
linkedin >= 12 | facebook >= 12
linkedin >= 15 || facebook >= 12

#Sorting
food <- factor(food, levels = c("low", "medium", "high"), ordered=TRUE)
food
range(food)
sort(food)

##############################
#Chapter3 Calculate

##i.Logical
5>3
4<9
2>=4
7<=8
8==5
8!=4
"useR" == "user"
"raining" <= "raining dogs"
TRUE > FALSE

##ii.Math function
1:10
abs(-1)
sqrt(9)
round(1.59)#rounding
sum(1:10)
summary(1:10)
sample(1:20)
sample(c("a","b","c","d"))
cumsum(1:20)
cumprod(1:5)
log(8, base = 2)
log(8, 2)

##iii.statistics function
x<-1:10
x
mean(x)
sd(x)
var(x)#variance
median(x)

##iv.string function
length("Taiwan")
length(c("US", "Taiwan"))
nchar("Taiwan")
nchar(c("US", "Taiwan"))
tolower(c("US", "Taiwan"))#turn lower case
toupper(c("us", "taiwan"))#turn uppercase letter
casefold(c("US", "Taiwan"),upper=FALSE)#FALSE-> turn lower case
casefold(c("apple", "orange"),upper=TRUE)

##v.seq()
1:10
seq(1, 10)#=1:10
?"seq"
seq(1, 10, by=2)#1,3,5,7,9
seq(length =10, from =1 , by =2 )
seq(1, 10, length.out=5)#1~10 is divided into 5 parts

##vi.rep()
rep(1:3,each=2)#Arrangement:112233
rep(1:3,time = 2)#Arrangement:123123
rep(1:3, length.out = 6)

##vii.Condition
##ifelse
y<-6
if (y %% 2 == 0) {
  y ** 2
} else {
  y
}

ifelse (y %% 2 == 0, y ** 2, y)

##for{}
x <- 1:5
total <- 0
for (element in x) total <- total + element
total

##while
x <- 1:5
total <- 0
index <- 1
while (index <= length(x)) {
  element <- x[index]
  index <- index + 1
  total <- total + element
}
total

#repeat
x <- 1:5
total <- 0
index <- 1
repeat {
  element <- x[index]
  total <- total + element
  index <- index + 1
  if (index > length(x)) break
}
total


##############################
#Chapter4 Factor

##i.create factor
sex_vector <- c("Male", "Female", "Female", "Male", "Male")
factor_sex_vector <- factor(sex_vector)
factor_sex_vector

temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, 
                                    levels = c("Low", "Medium", "High"))
factor_temperature_vector

##ii.levels & summary

#level
sex <- c("male", "female", "female", "male")
class(sex)
levels(sex)#No level

sex <- factor(c("male", "female", "female", "male"))
class(sex)
levels(sex)
nlevels(sex)

summary(sex)

##iii.Comparing ordered factors
##fail example!!!!!
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
male <- factor_survey_vector[1]
female <- factor_survey_vector[2]
# Male 'larger' than female?
male > female

##correct example
speed_vector <- c("medium", "slow", "slow", "medium", "fast")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, 
                              levels = c("slow", "medium", "fast"))
# Factor value for second data analyst
da2 <- factor_speed_vector[2]
# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]
# Is data analyst 2 faster than data analyst 5?
da2>da5
##############################
#Chapter5 Matrix

##i.Create Matrix
matrix(1:6,nrow=2)

matrix(1:6,ncol=3)

matrix(1:6,nrow=2,byrow=TRUE)

args(matrix)

##Create matrix by using vector
new_hope <- c(360.7, 208.6)
empire_strikes <- c(310.542, 300.250)
return_jedi <- c(302.513, 320.612)
# Create box_office
box_office <- c(new_hope,empire_strikes,return_jedi)
# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office,byrow = TRUE,nrow=3)
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi),
                           nrow = 3, byrow = TRUE)
star_wars_matrix

##ii.Recognize "cbind¡Brbind¡Bcolnames¡Brownames¡Bdimnames¡Blettlers¡BLETTERS¡Bdim¡Bsample"
#cbind,rbind
cbind(1:3,1:3)

rbind(1:3,1:3)

a<-c(1,2,3)
b<-c(4,5,6)
cbind(a, b)

##colnames,rownames
m<-matrix(1:6,byrow=TRUE,nrow=2)

rownames(m)<-c("row1","row2")

m

colnames(m)<-c("col1","col2","col3")

m

##dimnames
box_office <- c(360.7, 208.6,310.542, 300.250,302.513, 320.612)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", 
                                             "Return of the Jedi"), c("US", "non-US")))
star_wars_matrix

##lettlers¡BLETTERS
CHAR<-matrix(LETTERS[1:6],nrow = 4,ncol = 3)
CHAR
char<-matrix(letters[1:6],nrow = 4,ncol = 3)
char

##dim()
num<-matrix(1:8,ncol = 2)
dim(num)

##sample
matrix(sample(1:20),ncol = 2)

##iii.Use cblind¡Brbind and vector to create matrix row and column 
m<-matrix(1:6,byrow=TRUE,nrow=2)
m

rbind(m,7:9)

cbind(m,c(10,11))

num<-matrix(1:8,ncol = 2)
CHAR<-matrix(LETTERS[1:6],nrow = 4,ncol = 3)

cbind(num,CHAR)
cbind(CHAR,num)

##iv.dim(matrix)<- c(row,colum)
m1<-matrix(1:8,byrow=TRUE,nrow=2)
m1
dim(m1)<-c(4,2)
m1

##v.Subsetting
m<-matrix(sample(1:15,12), nrow = 3)

m

m[1,3]

m[3,2]

m[3,]

m[,3]

m[4]

m[9]

##SUBSET MULTIPLE ELEMENTS
m[2,c(2,3)]

m[c(1,2),c(2,3)]

m[c(1,3),c(1,3,4)]

##SUBSET BY NAME
rownames(m) <-c("r1","r2","r3")
colnames(m) <-c("a","b","c","d")
m

m[2,3]

m["r2","c"]

m[2,"c"]

m[3,c("c","b")]

##vi.	Matrix calculate
##Basic +-*/
the_fellowship<-c(316,556)
two_towers<-c(343,584)
return_king<-c(378,742)

lotr_matrix<-rbind(the_fellowship,two_towers,return_king)
colnames(lotr_matrix)<-c("US","non-US")
rownames(lotr_matrix)<-c("Fellowship","Two Towers","Return King")

lotr_matrix

lotr_matrix/1.12

lotr_matrix-50

##t()matrix transform
m<-matrix(sample(1:10),nrow = 5)
m
t(m)

##rowSums()¡BcolSums()
box_office <- c(360.7, 208.6,310.542, 300.250,302.513, 320.612)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", 
                                             "Return of the Jedi"), c("US", "non-US")))
star_wars_matrix
# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector
worldwide_vectorc<-colSums(star_wars_matrix)
worldwide_vectorc

#array
array(1:16,dim = c(4,2,2))#4X2X2 array
array(1:16,dim = c(2,2,2,2))#2X2X2X2 array
##############################
#Chapter6 Dataframe

##i.Create data.frame
##Create dataframe by using vector
name <- c("Anne", "Pete", "Frank", "Julia", "Cath")
age <- c(28, 30, 21, 39, 35)
child <- c(FALSE, TRUE, TRUE, FALSE, TRUE) 

df <- data.frame(name, age, child)

df

##names
names(df) <- c("Name", "Age", "Child")

df

df<-data.frame(Name=name,Age=age,Child=child)
df

##ii.Extend data frame(create row)¡Buse cblind¡Brblind create row and column
name<-c("Anne","Pete","Frank","Julia","Cath")
age<-c(28,30,21,39,35)
child<-c(FALSE,TRUE,TRUE,FALSE,TRUE)
df<-data.frame(name,age,child)
df

args(data.frame)
df <- data.frame(Name = name, Age = age, Child = child, stringsAsFactors = FALSE)
height <- c(163, 177, 163, 162, 157)
df1<- cbind.data.frame(df,height)
df1

newsample <- c("Tom", 22, TRUE, 180)
df2 <- rbind.data.frame(df1,newsample)
df2

##iii.Subsetting
name <- c("Anne", "Pete", "Frank", "Julia", "Cath")
age <- c(28, 30, 21, 39, 35)
child <- c(FALSE, TRUE, TRUE, FALSE, TRUE)
people<-data.frame(name,age,child,stringsAsFactors = FALSE)

people

people[3,2]

people[3,"age"]

people[3,]

people[,"age"]

people[c(3,5),c("age","child")]

people[2]

##Subset
subset(people,subset = age>30)

##iv.Indexing
people$age

people["age"]


##v.Sorting:order()¡Brange()¡Bsort()
height <- c(163, 177, 163, 162, 157)
people <- cbind.data.frame(df,height)
View(people)
people
people[]
people$Age
people[order(people$Age),]
people[order(people$Name),]
args(order)
args(sort)
sort(people$Age)
range(people$Age)
people[order(people$Age, decreasing = TRUE), ]
##############################
#chapter7.List(from datacamp)

##i.Create list
# Vector with numerics from 1 up to 20
my_vector <- 1:20

# Matrix with numerics from 1 up to 15
my_matrix <- matrix(1:15, ncol = 3)

# First 5 elements of the built-in data frame mtcars
my_df <- mtcars[1:5,]
my_df
# Construct list with these different elements:
my_list <- list(my_vector,my_matrix,my_df)

##ii.Create names list
names(my_list)<-c("vec","mat","df")

my_list

my_list2 <- list(vector = my_vector ,matrix = my_matrix,dataframe = my_df)

my_list2

##iii.Select element from a list 
my_list2$vector

my_list2$vector[3]

my_list2$dataframe

my_list_full<-c(my_list2,vs = 0)#?[?JVS = 0
str(my_list_full)
my_list_full
##############################
#chapter8.Downloader package
install.packages("downloader")
library(downloader)

url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
femaleMiceWeights <- "femaleMiceWeights.csv"
download(url, femaleMiceWeights)
mydata <- read.csv("femaleMiceWeights.csv")
View(mydata)

url<- "https://raw.githubusercontent.com/lukes/ISO-3166-Countries-with-Regional-Codes/master/all/all.csv"
all<- "all.csv"
download(url, all)
mydata <- read.csv("all.csv", stringsAsFactors=FALSE, check.names=FALSE)
View(mydata)
str(mydata)
dim(mydata)

##############################
##chapter9.plot&ggplot2

##i.plot create
install.packages("downloader")
require(downloader)
url<- "https://raw.githubusercontent.com/lukes/ISO-3166-Countries-with-Regional-Codes/master/all/all.csv"
all<- "all.csv"
download(url, all)
mydata <- read.csv("all.csv", stringsAsFactors=FALSE, check.names=FALSE)
View(mydata)
str(mydata)
attach(mydata)
str(mydata)
mydata$region <- as.factor(mydata$region)#region become factor
mydata[,7] <- as.factor(mydata[,7])#y=7 become factor
str(mydata)

plot(mydata$region)
plot(mydata[,7])
plot(mydata$region, mydata[,7], xlab = "region", ylab = "sub-region")
table(mydata$region)
table( mydata[,7])

##ii.To draw a scatter plot and Overlapping scatter plot(use example2_4)
par(mfcol=c(1,2),mai=c(0.7,0.7,0.4,0.1),cex=0.8,cex.main=0.8)
attach(example2_4)
par(mfcol=c(1,2),mai=c(0.7,0.7,0.4,0.1),cex=0.8,cex.main=0.8)
attach(example2_4)
plot(Advertisingcost,Salesrevenue,main="(a)Ordinary line",type="n")
grid()
points(Advertisingcost,Salesrevenue,main="(a)Ordinary line")
rug(Advertisingcost,side=1,col=4);rug(Salesrevenue,side=2,col=4)
plot(Advertisingcost,Salesrevenue,main="(b)fitted line")
abline(lm(Salesrevenue~Advertisingcost,data=example2_4))
rug(Advertisingcost,side=1,col=4);rug(Salesrevenue,side=2,col=4)

plot(Advertisingcost,Salesrevenue,xlab="",ylab="Salesrevenue")
abline(lm(Salesrevenue~Advertisingcost,data=example2_4))
points(Saleswebsites,Salesrevenue,pch=2,col="blue")
abline(lm(Salesrevenue~Saleswebsites,data=example2_4),col="blue")
points(Salesperson,Salesrevenue,pch=3,col="red")
abline(lm(Salesrevenue~Salesperson,data=example2_4),col="red")
legend("bottomright",legend = c("Advertisingcost","Saleswebsites","Salesperson"),pch=1:3,col=c("black","blue","red"))


##iii.other plot(use List_P_3D_data.csv)
threed <- read.table(file="List_P_3D_data.csv", header=T, sep=";")
View(threed)
dim(threed)
head(threed)
str(threed)
tail(threed)
threed <- threed[-31:-33,-10:-12]
tail(threed)
attach(threed)

#hist
hist(threed$X3D_EDV_ml)
hist(threed$X3D_EDV_ml, breaks = 10)

#barplot
barplot(threed$X3D_EDV_ml)

#boxplot
boxplot(threed$X3D_EDV_ml)
boxplot(threed$X3D_ESV_ml)
boxplot(threed$X3D_EDV_ml ~ threed$Subject.no)

#plot(density())
plot(density(threed$X3D_ESV_ml))

#stem
stem(threed$X3D_SV_ml)

#qqplot
args(qqplot)
qqplot(threed$X3D_EDV_ml,threed$X3D_ESV_ml,xlab = "EDV",ylab = "ESV")

#pie(use example2_1)
count1<-table(example2_1$Community)
name<-names(count1) 
percent<-prop.table(count1)*100
label1<-paste(name," ",percent,"%",sep="")
par(cex=0.9,mai=c(0.1,0.4,0.1,0.4))
pie(count1,labels = label1,col=c("gray10","gray40","gray70","gray90"),init.angle = 90)

##iv.package:plotrix (pie3D& fan.plot)
#use example2_1
install.packages("plotrix")
require(plotrix)
pie3D(count1,labels=labs,explode=0.1,labelcex=0.7)
percent<-prop.table(count1/sum(count1)*100)
labs<-paste(name," ",percent,"%",sep="")
library(plotrix)
fan.plot(count1,labels =labs,ticks = 200 )

##v	package:ggplot2
install.packages("ggplot2")
library(ggplot2)
require(ggplot2)
threed <- read.table(file="List_P_3D_data.csv", header=T, sep=";")
ggplot(threed, aes(x = X3D_EDV_ml)) + geom_dotplot()
ggplot(threed, aes(x = X3D_EDV_ml)) + geom_histogram(binwidth = 30)
ggplot(threed, aes(x = X3D_EDV_ml)) + geom_density()

#other ggplot from datacamp
data("mtcars")
View(mtcars)
str(mtcars)
ggplot(mtcars, aes(x = hp, y = drat)) +geom_point()
ggplot(mtcars, aes(x = factor(hp), y = drat)) +geom_point()

#color&size
ggplot(mtcars, aes(x = hp, y = qsec)) +geom_point()
ggplot(mtcars, aes(x = hp, y = qsec, color = disp)) +geom_point()
ggplot(mtcars, aes(x = hp, y = qsec, size = disp)) +geom_point()
ggplot(mtcars, aes(x = hp, y = qsec)) +geom_point()


##############################
#chapter10 Dslabs
##i.Basic operation
install.packages("dslabs")
library(dslabs)
require(dslabs)
data(murders)
attach(murders)
class(murders)
View(murders)
str(murders)
head(murders)
tail(murders)
names(murders)
murders$population
length(murders$population)
class(murders$region)
levels(murders$region)
unique(murders$total)
table(murders$region)

##ii.na value
View(murders)
na.omit(murders)
na.exclude(murders)
complete.cases(murders)
apply(apply(murders,2,is.na),2,sum)

##iii.min&max&which.min/max
require(dslabs)
data(murders)
View(murders)
murders[order(murders$total),]
murders$abb[order(murders$total)]
max(murders$total)
murders$abb[which.max(murders$total)]
murders$abb[which.min(murders$total)]

murderrate<- (murders$total/murders$population)*10000
newmurders <- cbind.data.frame(murders,murderrate)
View(newmurders)
newmurders$state
newmurders$abb[which.max(newmurders$murderrate)]
newmurders$abb[which.min(newmurders$murderrate)]

##iv.Indexing &match & %n% (find the compliance value)
index <- murderrate <= 0.05
table(index)
newmurders$state[index]

west <- newmurders$region == "West"
safe <- newmurders$murderrate <= 0.1
table(west&safe)
index <- west&safe
newmurders$state[index]
newmurders$state[west&safe]

match(c("Hawaii","Oregon","Utah"), newmurders$state)
c("Boston","Dakota","Washington") %in% newmurders$state

?match

##v.Vector length
library(dslabs)
data(heights)
str(heights)
male <- heights$height[heights$sex=="Male"]
female <- heights$height[heights$sex=="Female"]
length(male)
length(female)


#vi.Percentiles
male_percentiles<-quantile(male,seq(0.1,0.9,0.2))
female_percentiles<-quantile(female,seq(0.1,0.9,0.2))
df<-data.frame(male = male_percentiles,female = female_percentiles)
df

##vii.Calculate
library(dslabs)
data(heights)
View(heights)
x <- heights$height[heights$sex == "Female"]
mean(x)
mean(x>60&x<=70)
sd(x)
median(x)
mad(x)

##viii.use ggplot 
install.packages("ggplot2")
library(ggplot2)
require(ggplot2)
data("mtcars")
View(mtcars)
str(mtcars)
ggplot(mtcars, aes(x = wt, y = mpg)) +geom_point()
ggplot(mtcars, aes(wt,mpg)) +geom_point()
ggplot(mtcars, aes(wt,mpg,label = drat))+geom_point()+geom_label()
ggplot(mtcars, aes(wt,mpg,label = drat))+geom_point()+geom_label(color = "red")
ggplot(mtcars, aes(wt,mpg,label = drat,color = qsec))+geom_point()+geom_label()
##############################
#chapter11 Dplyr
##i.%>% Order of execution
install.packages("dplyr")
install.packages("dslabs")
install.packages("ggplot2")
library(dplyr)
library(dslabs)
library(ggplot2)
murders %>% ggplot(aes(x = population, y =total )) +geom_point()
murders %>% ggplot(aes(total, population)) +geom_point()

##ii.mutate()
newmurders<- mutate(murders, rate=total/population*10000)
View(newmurders)

##iii.filter()
filter(newmurders, rate <= 0.2)

newmurders %>% filter(rate<=0.2)

newmurders %>% filter(region == "West")

##iv.summarise
newmurders %>% filter(rate <= 0.2) %>% summarize(average = mean(total,na.rm = TRUE),
                                                 standard_deviation = sd(total,na.rm = TRUE))

newmurders %>% filter(rate <= 0.2) %>% summarize(average = mean(total,na.rm = TRUE),
                                                 standard_deviation = sd(total,na.rm = TRUE))%>%.$average

##v.	min&max
newmurders %>% filter(rate <= 0.2) %>% summarize(min = min(total,na.rm = TRUE),
                                                 max = max(total,na.rm = TRUE))
##vi.group_by 
newmurders %>% filter(rate <= 0.2) %>% group_by(region) %>% summarize(average = mean(total,na.rm = TRUE),
                                                                      standard_deviation = sd(total,na.rm = TRUE))
#group by both but this example's result is not fit :newmurders %>% filter(rate <= 0.2) %>% group_by(region,state) %>% summarize(average = mean(total,na.rm = TRUE),standard_deviation = sd(total,na.rm = TRUE))

##vii.select()
newmydaya<- select(newmurders, state, region, rate)
View(newmydaya)
newmurders %>% select (state, region, rate) %>% filter(rate <=0.1)
newmurders %>% filter(rate <=0.1) %>% select (state, region, rate)

##viii.arrange()??row?Æ¦C????(from Internet)
View(newmurders)
newmurders%>%arrange(population,region)

##ix.with ggplot
newmurders %>% filter(rate <=0.1) %>% select (state, region, rate) %>% 
  ggplot(aes(region,rate,color = region))+geom_point()
murders %>% mutate(rate = total/population*100000) %>% mutate(region=reorder(region, rate, FUN=median))%>%
  ggplot(aes(region,rate))+geom_boxplot()+geom_point()




#========================================================textbook3============================================================
a<-data.frame(x = rnorm(100),y = runif(100))
b<-c(3,4.4,1/3)

#Save a,b to a file
save(a,b,file = "mydata.rba")

load("mydata.rba")

save.image(file = "mydata.RData")
load("mydata.RData")

x<-list(1,2,3)
serialize(x,NULL)


str(file)
con<-file("foo.txt")
data<-read.csv("foo.txt")

con<-gzfile("wordsw.gz")
x<-readline(con,10)
x

con<-url("http://www.jhsph.edu","r")
x<-readLines(con)
head(x)

x<-matrix(1:6,2,3)
x[1,,drop = FALSE]

x<-list(foo = 1:4,bar = 0.6)
x[[1]]
x[["bar"]]
x<-list(aardvark = 1:6)
x$a#a:aardvark abbreviation
x[["a"]]
x[["a",exact = FALSE]]

x<-c(1,2,NA,4,NA,5)
y<-c("a","b",NA,"d",NA,"f")
good<-complete.cases(x,y)#no missing values
good

head(airquality)
good<-complete.cases(airquality)
head(airquality[good,])

x<-1:4
y<-6:9
z<-x+y
z
z<-numeric(length(x))
for(i in seq_along(x)){
  z<-x[i]+y[i]
}
z

x<-as.Date("1970-01-01")
x

x<-Sys.time()
x
class(x)

x <- as.Date("2012-03-01")
y <- as.Date("2012-02-28")
x-y

x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 06:00:00", tz = "GMT")
y-x

require(dplyr)
chicago<-readRDS("chicago.rds")
chicago
str(chicago)

names(chicago)[1:3]
subset<-select(chicago,city:dptp)
head(subset)

select(chicago,-(city:dptp))

i<-match("city",names(chicago))
j<-match("dptp",names(chicago))
head(chicago[,-(i:j)])

subset<-select(chicago,ends_with("2"))
str(subset)

subset<-select(chicago,starts_with("d"))
str(subset)

chic.f<-filter(chicago,pm25tmean2>30)
str(chic.f)

summary(chic.f$pm25tmean2)

chic.f<-filter(chicago,pm25tmean2>30&tmpd>80)
select(chic.f,date,tmpd,pm25tmean2)

chicago<-arrange(chicago,date)
chicago
head(select(chicago,date,pm25tmean2),3)

tail(select(chicago,date,pm25tmean2),3)

head(chicago[,1:5],3)
chicago<-rename(chicago,dewpoint = dptp,pm25 = pm25tmean2)

head(chicago[,1:5],3)
chicago <- mutate(chicago, pm25detrend = pm25 - mean(pm25, na.rm = TRUE))
head(chicago)

head(transmute(chicago,
               pm10detrend = pm10tmean2 - mean(pm10tmean2, na.rm = TRUE),
               o3detrend = o3tmean2 - mean(o3tmean2, na.rm = TRUE)))

chicago <- mutate(chicago, year = as.POSIXlt(date)$year + 1900)
chicago
years<-group_by(chicago,year)

summarize(years, pm25 = mean(pm25, na.rm = TRUE),
          o3 = max(o3tmean2, na.rm = TRUE),
          no2 = median(no2tmean2, na.rm = TRUE))

x<-runif(1,0,10)
x
if(x>3){
  y<-10
}else{
  y<-0
}

y

y<-if(x>3){
  10
}else{
  0
}
y

for(i in 1:10){
  print(i)
}

x<-c("a","b","c","d")
for(i in 1:4){
  print(x[i])
}

#commonly used in conjunction with for loops in order to generate an integer sequence based on the length of an object
for(i in seq_along(x)){
  print(x[i])
}

for(letter in x){
  print(letter)
}

x<-matrix(1:6,2,3)
x
for(i in seq_along((nrow(x)))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

count<-0
while(count<10){
  print(count)
  count<-count+1
}
z<-5
set.seed(1)
while(z>=3&&z<=10){
  coin<-rbinom(1,1,0.5)
  if(coin==1){
    z<-z+1
  }else{
    z<-z-1
  }
}
print(z)


f<-function(num){
  hello<-"Hello, world!\n"
  for(i in seq_len(num)){
    cat(hello)
  }
  chars<-nchar(hello)*num
  chars
}
f(3)

str(rnorm)
mydata<-rnorm(100,2,1)
sd(mydata)
sd(x = mydata,na.rm = FALSE)

args(lm)

