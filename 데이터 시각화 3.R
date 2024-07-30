## a 벡터는 2, 4, 1, 5, 7의 값을 갖는다. 
## 이 벡터를 이용하여 “Using index”라는 타이틀을 가진 그래프를 그리시오

a <- c(2,4,1,5,7)

plot(a,main='Using index')

## a 벡터는 1, 2, 3, 4, 5의 값을 갖고 b 벡터는 a벡터의 제곱승의 값을 갖는다. a가 x-좌표, b가
## y-좌표로 “x^2”라는 타이틀을 가진 그래프를 그리시오

a <- c(1,2,3,4,5)
b <- a^2

plot(b,main='x^2')

## c벡터는 5,4,3,2,1의 값을 가질 때 cbind이용하여 mat 행렬을 완성해라

c <- c(5,4,3,2,1)

mat <- cbind(a,b,c)

plot(mat,main='Using matrix')

## 3주차 고수준 그래픽 함수 실습

a <- c(1,2,3,4,5)
b <- a^2

plot(a,b,type='p',main='Points')
plot(a,b,type='l',main='Lines')
plot(a,b,type='b',main='Both points and lines')
plot(a,b,type='o',main='Overplotted')
plot(a,b,type='h',main='High density')
plot(a,b,type='n',main='No plotting')

## 앞에서 그린 6개의 그래프를 2행 3열로 분활하여 한 화면에 그리시오

op<-par(no.readonly=TRUE)
par(mfrow=c(2,3))
plot(a,b,type='p',main='Points')
plot(a,b,type='l',main='Lines')
plot(a,b,type='b',main='Both points and lines')
plot(a,b,type='o',main='Overplotted')
plot(a,b,type='h',main='High density')
plot(a,b,type='n',main='No plotting')

##다시 원상복귀하려면 par(op)

### a벡터는 5, 4, 3, 2, 1의 값을 갖고 b 벡터는 a벡터의 제곱승의 값을 갖는다. 
### 1) 겹친 점과 선으로 그리시오.
### 2) x-축의 범위는 0~5, y-축의 범위는 0~30으로 설정하고 겹친 점과 선으로 그리시오.
### 3) 두 그래프를 비교하기 위해 한 화면에 위 아래로 그리시오

a <- c(5,4,3,2,1)
b <- a^2

op<-par(no.readonly=TRUE)
par(mfrow=c(1,2))
plot(a,b,type='o')
plot(a,b,type='o',xlim=c(0,5),ylim=c(0,30))

par(op)

### x축의 이름은 numbers, y축은 이름없이 산점도 그래프를 그리시오.

plot(a,b,xlim=c(0,5),ylim=c(0,30),xlab='numbers',ylab="")

### x는 1,2,3,4,5 y는 2,4,6,8,10의 값을 갖는다. 2,6에는 8번점을 4,10에는 15번 점을
### 4,4에는 11번점을 찍으시오.

a <- c(1:5)
b <- seq(2,10,by=2)

plot(a,b,xlim=c(0,5),ylim=c(0,30),xlab='numbers',ylab="")
points(2,6,pch=8)
points(4,10,pch=15)
points(4,4,pch=11)

points(1,4,pch=68)

points(2,8,pch='가')


## 3주차 응용 실습

x <- c(1:10)
y <- c(10,4,25,7,20,15,6,17,9,14)

plot(x,y,type='c',xlim=c(0,11),ylim=c(0,30),xlab='x',ylab='y',main='응용 실습')

symbol <- c(25,25,17,25,17,17,25,17,27,17)
points(x,y,pch=symbol,cex=1.3) ## cex=1.3은 recycling rule. 재활용 함수.











