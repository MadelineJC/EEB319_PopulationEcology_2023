########Exercise 1.1############3

#parameters

r<-1
K<-1000

#Biomass
N<-1000

#Vector
G<-numeric(N)

#Initial Condition
G[1]<-0

#simulation

for (n in 1:N){
  
  G[n]<-r*n*(1-(n/K))
  
}

NN<-seq(1,N)
plot(NN,G,xlab="Biomass (N)",ylab="G(N)")

#########Exercise 1.2###############

e<-0.3

#Biomass
N<-1000

#Vector
H<-numeric(N)

#Initial Condition
H[1]<-0

#simulation

for (n in 1:N){
  
  H[n]<-e*n
  
}

NN<-seq(1,N)
lines(NN,H,lwd=4)
text(800,200,"H(N)",cex=1)

#######Exercise 1.3##################

#parameters

K<-1000

#Biomass
e<-100

#Vector
N<-numeric(e)

#Initial Condition
N[1]<-K

#simulation

for (i in 1:e){
  
  N[i]=(-K*i)+K
  
}

ee<-seq(1,e)
plot(ee,N,xlab="e",ylab="N*")

###########Exercise 2.1#############

#parameters

r<-1
K<-1000

#Biomass
N<-1000

#Vector
G<-numeric(N)

#Initial Condition
G[1]<-0

#simulation

for (n in 1:N){
  
  G[n]<-r*n*(1-(n/K))
  
}

NN<-seq(1,N)
plot(NN,G,xlab="Biomass (N)",ylab="G(N)")

abline(h=150,lwd=3)
text(875,170,"H(N)",cex=1)

#Exercise 2.2 and 2.3 should be straight forward if students know the code above










