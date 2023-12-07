########Exercise 1############################

#Parameters

r<-0.1
K<-1000

#Timescale of simulation
T<-101

#Vector to store abundance in
N<-numeric(T)

#Initial Conditions

N[1]<-5

#Simulation

for(t in 2:T){
  N[t]=N[t-1]*exp(r*(1-(N[t-1]/K)))
}

#Plot results

TT<-seq(1,T)
plot(TT,N,xlab="Time(years)", ylab="Abundance(N)",type="o")

#############Exercise 2#############################

#Parameters

r<-0.1
K<-1000

#Timescale of simulation
T<-101

#Vector to store abundance in
N<-numeric(T)

#Initial Conditions

N[1]<-200

#Simulation

for(t in 2:T){
  N[t]=N[t-1]*exp(0.1*(1-(N[t-1]/K)))
}

#Plot results

TT<-seq(1,T)
lines(TT,N,type="o")

##################Exercise 3 & 4##########################

set.seed(2)

#Parameters
r<-0.1
K<-1000
sd<-0.4

#Timescale of simulation
T<-101

#Vector to store abundance in
N<-numeric(T)

#Initial Conditions

N[1]<-5

epsilon<-rlnorm(T-1,meanlog=0,sdlog=sd)

for(t in 2:T){
  
  N[t]=N[t-1]*exp(0.1*(1-(N[t-1]/K)+epsilon[t-1]))
}

plot(1:T,N,type="o",las=1,xlab="Time(years",ylab="Abundance (N)")

#Simulation#2-5

epsilon<-rlnorm(T-1,meanlog=0,sdlog=sd)

for(t in 2:T){
  
  N[t]=N[t-1]*exp(0.1*(1-(N[t-1]/K)+epsilon[t-1]))
}

lines(1:T,N,type="o",las=1,col="red")

epsilon<-rlnorm(T-1,meanlog=0,sdlog=sd)

for(t in 2:T){
  
  N[t]=N[t-1]*exp(0.1*(1-(N[t-1]/K)+epsilon[t-1]))
}

lines(1:T,N,type="o",las=1,col="red")

epsilon<-rlnorm(T-1,meanlog=0,sdlog=sd)

for(t in 2:T){
  
  N[t]=N[t-1]*exp(0.1*(1-(N[t-1]/K)+epsilon[t-1]))
}

lines(1:T,N,type="o",las=1,col="blue")

epsilon<-rlnorm(T-1,meanlog=0,sdlog=sd)

for(t in 2:T){
  
  N[t]=N[t-1]*exp(0.1*(1-(N[t-1]/K)+epsilon[t-1]))
}

lines(1:T,N,type="o",las=1,col="green")

epsilon<-rlnorm(T-1,meanlog=0,sdlog=sd)

for(t in 2:T){
  
  N[t]=N[t-1]*exp(0.1*(1-(N[t-1]/K)+epsilon[t-1]))
}

lines(1:T,N,type="o",las=1,col="purple")

############Exercise 5###################

#Parameters

r<-0.5
K<-1000

#Timescale of simulation
T<-101

#Vector to store abundance in
N<-numeric(T)

#Initial Conditions

N[1]<-5

#Simulation

for(t in 2:T){
  N[t]=N[t-1]*exp(r*(1-(N[t-1]/K)))
}

#Plot results

TT<-seq(1,T)
plot(TT,N,xlab="Time(years)", ylab="Abundance(N)",type="o",ylim=c(0,2500))


#Parameters
r<-1

#Simulation

for(t in 2:T){
  N[t]=N[t-1]*exp(r*(1-(N[t-1]/K)))
}

#Plot results

TT<-seq(1,T)
lines(TT,N,type="o",col="red")


#Parameters
r<-1.5
#Simulation

for(t in 2:T){
  N[t]=N[t-1]*exp(r*(1-(N[t-1]/K)))
}

#Plot results

TT<-seq(1,T)
lines(TT,N,type="o",col="green")


#Parameters
r<-1.9
#Simulation

for(t in 2:T){
  N[t]=N[t-1]*exp(r*(1-(N[t-1]/K)))
}

#Plot results

TT<-seq(1,T)
lines(TT,N,type="o",col="blue")



#Parameters
r<-2
#Simulation

for(t in 2:T){
  N[t]=N[t-1]*exp(r*(1-(N[t-1]/K)))
}

#Plot results

TT<-seq(1,T)
lines(TT,N,type="o",col="purple")

r<-2.2
#Simulation

for(t in 2:T){
  N[t]=N[t-1]*exp(r*(1-(N[t-1]/K)))
}

#Plot results

TT<-seq(1,T)
lines(TT,N,type="o",col="orange")



r<-2.5
#Simulation

for(t in 2:T){
  N[t]=N[t-1]*exp(r*(1-(N[t-1]/K)))
}

#Plot results

TT<-seq(1,T)
lines(TT,N,type="o",col="yellow")

r<-2.6
#Simulation

for(t in 2:T){
  N[t]=N[t-1]*exp(r*(1-(N[t-1]/K)))
}

#Plot results

TT<-seq(1,T)
lines(TT,N,type="o",col="pink")

r<-2.7
#Simulation

for(t in 2:T){
  N[t]=N[t-1]*exp(r*(1-(N[t-1]/K)))
}

#Plot results

TT<-seq(1,T)
lines(TT,N,type="o",col="brown")


r<-2.8
#Simulation

for(t in 2:T){
  N[t]=N[t-1]*exp(r*(1-(N[t-1]/K)))
}

#Plot results

TT<-seq(1,T)
lines(TT,N,type="o",col="grey")


r<-2.9
#Simulation

for(t in 2:T){
  N[t]=N[t-1]*exp(r*(1-(N[t-1]/K)))
}

#Plot results

TT<-seq(1,T)
lines(TT,N,type="o",col="dark green")

#############Exercise 6######################

##############Exercise 8####################


#Parameters

f<-12
a<-5
s<-0.85

#Timescale of simulation

T<-2000

#Vectors for each stage

J<-numeric(T);A<-numeric(T)

#Initial conditions

J[1]<-100;A[1]<-120

#Simulation

for(t in 2:T){
  
  J[t]<-A[t-1]*exp(f)
  A[t]<-(J[t-1]*exp(-a*J[t-1]))+s*A[t-1]
  
}

#Plot the results

TT<-seq(1,T)

plot(TT[500:2000],J[500:2000],xlab="Time(years)",ylab="Abundance(N)")
plot(TT[500:2000],A[500:2000],xlab="Time(years)",ylab="Abundance(N)")

#############Exercise 9#####################

cbind(J,A)
plot(J[500:2000],A[500:2000],xlab="Juvenile Abundance",ylab="Adult Abundance")

##############Exercise 10###################

set.seed(2)

random1<-rlnorm(1500,meanlog=100,sdlog=10)

random2<-rlnorm(1500,meanlog=120,sdlog=10)

plot(random1,random2)

