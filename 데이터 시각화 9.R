## 원그리기

par(pty="s")
angle <- seq(-pi,pi,length=361)
x <- cos(angle)
y <- sin(angle)
x<-5*x
y<-5*y
x<-x+3
y<-y+4
plot(x,y,type="l",main="circle with radius 5 and center (3,4)",xlab="",ylab="")



## 다각형 그리기 ##중앙값 변경 가능. x_t <- cos(theta_t)+3 이렇게

par(pty="s",mar=c(4,2,2,0),oma=c(0,2,2,0),mfrow=c(3,1))

## 1) 삼각형 그리기

theta_t <- seq(pi/2,pi/2+2*pi,by=2*pi/3)
x_t <- cos(theta_t)  
y_t <- sin(theta_t)
plot(x_t,y_t,type="l",xlim=c(-1,1),ylim=c(-1,1),main="triangle")

## 2)사각형 그리기

theta_s <- seq(pi/4,pi/4+2*pi,by=2*pi/4)
x_s<-cos(theta_s)
y_s<-sin(theta_s)
plot(x_s,y_s,type="l",xlim=c(-1,1),ylim=c(-1,1),main="square")

## 3)오각형 그리기

theta_o <- seq(pi/2,pi/2+2*pi,by=2*pi/5)
x_o<-cos(theta_o)
y_o<-sin(theta_o)
plot(x_o,y_o,type="l",xlim=c(-1,1),ylim=c(-1,1),main="pentagon")


### 실습 별그리기

par(mfrow=c(1,1))
theta_p <- seq(pi/2,pi/2+2*pi,by=2*pi/5)
x_p <- cos(theta_p)
y_p <-sin(theta_p)
plot(x_p,y_p,type="n",xlim=c(-1,1),ylim=c(-1,1),main="star")
s <- seq(length(x_p))
s <- c(s[s%%2==1],s[s%%2==0])
lines(x_p[s],y_p[s],col="blue",lty=2)


## 벡터라이제이션

x <- 1:10
y <- logical(length(x))
x
y
names(y)<-x
y


x<- 1:10
z<-x%%2==0
names(z)<-x
z ##위의 코딩값과 밑은 같음

ifelse(x%%2==0,"Even","Odd")

### 막대그래프

bar1 <- runif(12)*50
barplot(bar1)
barplot(-bar1)

bar2 <- matrix(bar1,ncol=3,byrow=T) ##열 세개로 지정 byrow는 행우선
barplot(bar2)
barplot(bar2,beside=T) ##beside 는 옆으로된 막대형 F는 기본값으로 쌓인 막대그래프

barplot(bar2,space=3) ##막대그래프 간격
barplot(bar2,beside=T,space=c(1,3)) ## 1은 그룹 안에서 막대들 간격, 그다음껀 그룹들 사이 간격

barplot(bar1,names.arg=letters[1:length(bar1)]) ## 막대기의 이름 지정

barplot(bar2,names.arg=names(bar2))
colnames(bar2)<-c("col1","col2","col3") ##막대 이름지정 두번째 방법

barplot(bar1,legend.text=letters[1:length(bar1)]) ##범례 만들기

rownames(bar2) <- c("row1","row2","row3","row4")
barplot(bar2,legend.text=T) ##범례 만들기 두번째 방법

barplot(bar1,horiz=T) ## 가로 막대 그래프로 변경

barplot(bar1,density=10:20,angle=60) ##density 는 막대안에 사선그림 그리기, angle은 사선 각도

barplot(bar1,col=rainbow(length(bar1))) ## 색깔 넣기
barplot(bar2,col=rainbow(nrow(bar2))) ## 행갯수로 넣기

barplot(bar1,border=rainbow(length(bar1))) ##막대그래프 테두리 색깔
barplot(bar2,border=rainbow(nrow(bar2)),col="grey") ## 행별로 따로 테두리 색깔


