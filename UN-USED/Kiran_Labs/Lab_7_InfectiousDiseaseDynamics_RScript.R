#Exercise 1:

#Parameters

k<-50;
b<-0.05;
dt<-0.001;

#Timescale of simulation
T<-100;

#Vector for each class

S<-numeric(T); I<-numeric(T); R<-numeric(T);

#Initial conditions

S[1]<-10000; I[1]<-1; R[1]<-0;

#Simulation

for(t in 2:T){
  
  S[t]=-b*S[t-1]*I[t-1]*dt+S[t-1]
  I[t]=(b*S[t-1]*I[t-1]-k*I[t-1])*dt+I[t-1]
  R[t]=k*I[t-1]*dt+R[t-1]
  
}

#Plot results

TT<-seq(1,T)
plot(TT,S,xlab="Time(days)",ylab="Abundance",type="l",ylim=c(0,10000));
lines(TT,I,lty=2); 
lines(TT,R,lty=3);

#Exercise 2

#Calculating R0 for simulation above
R0<-b*S[1]/k
R0

#Calculating Host Density Threshold (Nc) for simulation above

Nc<-k/b
Nc

##########################################################
#Parameters

k<-50;
b<-0.05;
dt<-0.001;

#Timescale of simulation
T<-100;

#Vector for each class

S<-numeric(T); I<-numeric(T); R<-numeric(T);

#Initial conditions

S[1]<-5000; I[1]<-1; R[1]<-0;

#Simulation

for(t in 2:T){
  
  S[t]=-b*S[t-1]*I[t-1]*dt+S[t-1]
  I[t]=(b*S[t-1]*I[t-1]-k*I[t-1])*dt+I[t-1]
  R[t]=k*I[t-1]*dt+R[t-1]
  
}

#Plot results

TT<-seq(1,T)
plot(TT,S,xlab="Time(days)",ylab="Abundance",type="l",ylim=c(0,10000));
lines(TT,I,lty=2); 
lines(TT,R,lty=3);


#Calculating R0 for simulation above
R0<-b*S[1]/k
R0

#Calculating Host Density Threshold (Nc) for simulation above

Nc<-k/b
Nc

####################

k<-50;
b<-0.05;
dt<-0.001;

#Timescale of simulation
T<-100;

#Vector for each class

S<-numeric(T); I<-numeric(T); R<-numeric(T);

#Initial conditions

S[1]<-4000; I[1]<-1; R[1]<-0;

#Simulation

for(t in 2:T){
  
  S[t]=-b*S[t-1]*I[t-1]*dt+S[t-1]
  I[t]=(b*S[t-1]*I[t-1]-k*I[t-1])*dt+I[t-1]
  R[t]=k*I[t-1]*dt+R[t-1]
  
}

#Plot results

TT<-seq(1,T)
plot(TT,S,xlab="Time(days)",ylab="Abundance",type="l",ylim=c(0,10000));
lines(TT,I,lty=2); 
lines(TT,R,lty=3);


#Calculating R0 for simulation above
R0<-b*S[1]/k
R0

#Calculating Host Density Threshold (Nc) for simulation above

Nc<-k/b
Nc

##########################3

k<-50;
b<-0.05;
dt<-0.001;

#Timescale of simulation
T<-100;

#Vector for each class

S<-numeric(T); I<-numeric(T); R<-numeric(T);

#Initial conditions

S[1]<-2000; I[1]<-1; R[1]<-0;

#Simulation

for(t in 2:T){
  
  S[t]=-b*S[t-1]*I[t-1]*dt+S[t-1]
  I[t]=(b*S[t-1]*I[t-1]-k*I[t-1])*dt+I[t-1]
  R[t]=k*I[t-1]*dt+R[t-1]
  
}

#Plot results

TT<-seq(1,T)
plot(TT,S,xlab="Time(days)",ylab="Abundance",type="l",ylim=c(0,10000));
lines(TT,I,lty=2); 
lines(TT,R,lty=3);


#Calculating R0 for simulation above
R0<-b*S[1]/k
R0

#Calculating Host Density Threshold (Nc) for simulation above

Nc<-k/b
Nc

######################


k<-50;
b<-0.05;
dt<-0.001;

#Timescale of simulation
T<-100;

#Vector for each class

S<-numeric(T); I<-numeric(T); R<-numeric(T);

#Initial conditions

S[1]<-1001; I[1]<-1; R[1]<-0;

#Simulation

for(t in 2:T){
  
  S[t]=-b*S[t-1]*I[t-1]*dt+S[t-1]
  I[t]=(b*S[t-1]*I[t-1]-k*I[t-1])*dt+I[t-1]
  R[t]=k*I[t-1]*dt+R[t-1]
  
}

#Plot results

TT<-seq(1,T)
plot(TT,S,xlab="Time(days)",ylab="Abundance",type="l",ylim=c(0,10000));
lines(TT,I,lty=2); 
lines(TT,R,lty=3);


#Calculating R0 for simulation above
R0<-b*S[1]/k
R0

#Calculating Host Density Threshold (Nc) for simulation above

Nc<-k/b
Nc

#####################


k<-50;
b<-0.05;
dt<-0.001;

#Timescale of simulation
T<-100;

#Vector for each class

S<-numeric(T); I<-numeric(T); R<-numeric(T);

#Initial conditions

S[1]<-1000; I[1]<-1; R[1]<-0;

#Simulation

for(t in 2:T){
  
  S[t]=-b*S[t-1]*I[t-1]*dt+S[t-1]
  I[t]=(b*S[t-1]*I[t-1]-k*I[t-1])*dt+I[t-1]
  R[t]=k*I[t-1]*dt+R[t-1]
  
}

#Plot results

TT<-seq(1,T)
plot(TT,S,xlab="Time(days)",ylab="Abundance",type="l",ylim=c(0,10000));
lines(TT,I,lty=2); 
lines(TT,R,lty=3);


#Calculating R0 for simulation above
R0<-b*S[1]/k
R0

#Calculating Host Density Threshold (Nc) for simulation above

Nc<-k/b
Nc

########################

k<-50;
b<-0.05;
dt<-0.001;

#Timescale of simulation
T<-100;

#Vector for each class

S<-numeric(T); I<-numeric(T); R<-numeric(T);

#Initial conditions

S[1]<-500; I[1]<-1; R[1]<-0;

#Simulation

for(t in 2:T){
  
  S[t]=-b*S[t-1]*I[t-1]*dt+S[t-1]
  I[t]=(b*S[t-1]*I[t-1]-k*I[t-1])*dt+I[t-1]
  R[t]=k*I[t-1]*dt+R[t-1]
  
}

#Plot results

TT<-seq(1,T)
plot(TT,S,xlab="Time(days)",ylab="Abundance",type="l",ylim=c(0,10000));
lines(TT,I,lty=2); 
lines(TT,R,lty=3);


#Calculating R0 for simulation above
R0<-b*S[1]/k
R0

#Calculating Host Density Threshold (Nc) for simulation above

Nc<-k/b
Nc

#Exercise 3 








