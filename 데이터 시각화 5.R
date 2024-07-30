# 면을 그리는 함수

par(mfrow=c(2,1))
par(oma=c(4,4,4,4)) #outer margin을 설정해주는것
set.seed(1)
hist(rnorm(50),axes=F,xlab="",ylab="",main="box")
box(which="outer",lty=1,lwd=1.2,col="red")
box(which="inner",lty=2,lwd=1.2,col="black")
box(which="plot",lty=3,lwd=1.2,col="blue")
box(which="figure",lty=4,lwd=1.2,col="green")

## 박스 그리기 예제

par(mfrow=c(1,1))
par(oma=c(2,2,2,2))
plot(0:10,xlab="",ylab="",type="n",main="rect",axes=F)

rect(xleft=1,ybottom=1,xright = 3,ytop = 3, border="gold")
rect(xleft=1,ybottom=4,xright = 3,ytop = 6, col="gold")
rect(xleft=1,ybottom=7,xright = 3,ytop = 9)
text(2,9.5,"default",adj=0.5)
text(2,3.5,"border=\"gold\"",adj=0.5)


## 면을 그리는 함수, 사각형을 만들땐 5개의 좌표 필요...

par(oma=c(0,0,0,0))
plot(1:6,xlab="",ylab="",type="n",main="polygon",axes=F)
theta <- seq(-pi,pi,length=12)
x<-cos(theta)
y<-sin(theta)
x1<-x + 2
y1<-y+4.5
x2<-x+5
y2<-y+4.5
x3<-x+2
y3<-y+2
x4<-x+5
y4<-y+2

polygon(x1,y1)
polygon(x2,y2,density=10)
polygon(x3,y3,col="gold")
polygon(x4,y4,lty=2,lwd=2)
text(2,5.7,adj=0.5,"default")
text(5,5.7,adj=0.5,"density=10")
text(2,3.3,adj=0.5,"col=\"gold\"")
text(5,3.2,adj=0.5,"lty=1,lwd=2")
