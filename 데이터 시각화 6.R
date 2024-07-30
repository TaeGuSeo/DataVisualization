###범례

plot(1:10,type="n",xlab="",ylab="",main='legend')
legend("bottomright",legend="(x,y)",pch=1,title="bottomright")
legend("bottom",legend="(x,y)",pch=1,title="bottom")
legend("bottomleft",legend="(x,y)",pch=1,title="bottomleft")
legend("topright",legend="(x,y)",pch=1,title="topright",col="red")
legend("top",legend="(x,y)",pch=1,title="top",col="red")
legend("topleft",legend="(x,y)",pch=1,title="topleft",col="red")
legend("right",legend="(x,y)",pch=1,title="right",col="blue")
legend("center",legend="(x,y)",pch=1,title="center",col="blue")
legend("left",legend="(x,y)",pch=1,title="left",col="blue")
legend(3,8,legend=c("Legend1","Legend2"),pch=1:2,col=c("blue","red"))

L <- c("x","y","z")
legend(7,9,legend=L,pch=1,col=c("purple","blue","red"))
legend(3,4,legend=L,lty=1:3,col=c("purple","blue","red"))
legend(7,4,legend=L,pch=1:3,lty=1:3,col=c('purple','blue','red'))

##직접 그리기
legend(locator(1),legend=c("A","B"),fill=c("yellow","orange"))
legend(locator(1),legend=c("A","B"),fill=c("yellow","orange"),density=30)

###좌표축함수

par(oma=c(0,0,2,0))

plot(1:5,type="l",xlab="",ylab="",main="axis",axes=F)
axis(side=1,at=1:5,labels=LETTERS[1:5],line=2)
axis(side=2,tick=F,col.axis="blue")
axis(side=3,at=c(1,3,5),pos=3,col="blue",col.axis="red")
axis(side=3, outer=T)
axis(side=4,lty=2,lwd=2)

## 좌표평면에 격자를 그리는 함수

par(mar=c(4,4,2,2),mfrow=c(2,1))
plot(iris$Sepal.Length,iris$Sepal.Width,pch=16,col=as.integer(iris$Species))
grid()
title('grid()')

plot(iris$Sepal.Length,iris$Sepal.Width,pch=16,col=as.integer(iris$Species))
grid(3,4,lty=1,lwd=1.2,col="blue")
title("grid(3,4,lty=1,lwd=1.2,col=\"blue\")")

## 1차원 rug 표시하는 함수

par(mfrow = c(2, 1))
plot(density(quakes$lat), main = "rug(lat)")
rug(quakes$lat)
plot(density(quakes$long), main = "side=3, col='blue', ticksize=0.04")
rug(quakes$long, side = 3, col = "blue", ticksize = 0.04)



## 테두리 좌표점들의 원소를 구하는 함수, 묶어서 색칠하는 함수

par(mfrow=c(1,1))

set.seed(1)
dot <- matrix(rnorm(200), ncol = 2)
plot(dot)
chull.data <- chull(dot)
polygon(dot[chull.data, ], angle = 45, density = 15, col = "red")
title(main = "Polygon by chull")






