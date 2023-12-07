data<- read.csv("Grizzly data.csv", header=TRUE)
head(data)

#Question 1

plot(data, type="o", ylab="Population size (N)", xlab="Time (Years)")

#Question 2 part 1

Nt <- data[,2] # vector of population abundances
T <- length(Nt) # number of years of data to loop over
lambda <- c() 

for (t in 1:T){
  lambda[t] <- ((Nt[t+1])/Nt[t])
}

lambda[is.na(lambda)]<-0
lambda

# Add the column to the existing data:
data <- data.frame(data)
data <- data.frame(data$year,data$N,lambda)

#Question 2 part 2

rt<-c()

for (t in 1:T){
  
  rt[t]<-log(lambda[t])
}

rt
mean(rt)
sd(rt)

#Add the rt column to the existing data
data <- data.frame(data)
data <- data.frame(data$year,data$N,lambda,rt)

#Question 3

N0<-44 #initial population size
times=60 #number of years into the future
N<-vector(length=times) #empty vector to store pop.sizes
N[1]=N0 #initial population size should be the first N
r<-(-0.01357) #mean growth rate calculated from question 2

for (t in 2:times){
  
  N[t]=N[t-1]*exp(r)
}

df<-data.frame(times,N)
df
plot(1:times,N,type="o",las=1)

#Question 4


#r+sd
set.seed(2)
N0<-44
times<-50
N<-vector(length=times)
N[1]=N0
r<-(-0.01357)
sd<-0.0815547

for (t in 2:times){
  
  N[t]=N[t-1]*exp(r+sd)
}

N

plot(1:times,N,type="o",las=1)


#r-sd
set.seed(2)
N0<-44
times<-50
N2<-vector(length=times)
N2[1]=N0
r<-(-0.01357)
sd<-0.0815547

for (t in 2:times){
  
  N2[t]=N2[t-1]*exp(r-sd)
}

N2

lines(1:times,N2,type="o",las=1)
lines(1:times,N,type="o",las=1)

#Question 5

set.seed(2)

r<-(-0.01357)
sd<-0.0815547
N0<-44
times<-50
N<-vector(length=times)
N[1]<-N0

epsilon<-rlnorm(times-1,meanlog=0,sdlog=sd)

for (t in 2:times){
  
  N[t]=N[t-1]*exp(r+epsilon[t-1])
}

plot(1:times,N,type="o",las=1)



#### Question 6 ####

epsilon_list <- list()
for(i in 1:100){
  epsilon_list[[i]] <- rnorm(50,0,1)
}

N_list <- list()

for (i in 1:100){
  epsilon <- epsilon_list[[i]]
  N <- c(44,rep(NA,49))
  for (t in 2:time)
    N[t] <- N[t-1]*exp(r + epsilon[t-1])
  N_list[[i]] <- N
}

















