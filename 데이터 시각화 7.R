## 화면 분활 함수

par(fig=c(0,1,0.5,1))
plot(1:10,xlab="",ylab="")

par(fig=c(0,0.5,0,0.5),new=T) ##new=T해줘야 기존화면에 합치기 가능
hist(1:5)

par(fig=c(0.5,1,0,0.5),new=T)
hist(5:10)


## 화면 분활 함수

layout(mat=matrix(c(1,2,3,3),2,2,byrow=T))
layout.show(1)
layout.show(2)
layout.show(3)

plot(1:10)
hist(1:10)


## 화면 분활 함수

split.screen(fig=c(2,1)) ## screen1

split.screen(c(1,2),screen=1) ##screen1을 한번더 쪼게겠다.
x<- 1:10
y <- x^2
plot(x,y)

y1<-sqrt(x)

screen(n=4) ### screen 지정을 해야 거기에 그려짐
plot(x,y1)

screen(n=2)
hist(1:10,1:10)

close.screen(all=T) ##마지막은 이렇게 해야 마무리 된 것으로 판단


### 화면분활 실습

par(mfrow=c(2,2))

plot(1:10,type="l",main="plot",xlab="x",ylab="y")
plot(10:1,type="s",main="plot by new=F",xlab="x",ylab="y")

plot(1:10,type="l",main="plot",xlab="x",ylab="y")
par(new=T)                             ####그래프 위에 추가하고 싶을때 사용
plot(10:1,type="s",main="plot by new=F",xlab="x",ylab="y")

x <- rnorm(10)
plot(x,xlab="x",ylab="y",main="")
par(new=T)
hist(x,xlab="x",ylab="y",main="histogram")


### 상자 영역 그림 설정하기

par(mfrow=c(1,1))
par(bty="l")
plot(1:10)

par(bty="]")
plot(1:10)


### 플롯 영역의 형태 지정, x축 y축의 비율

theta <- seq(-pi,pi,length=30)
x<-cos(theta)
y<-sin(theta)

par(mfrow=c(1,2),pty="s",bty="o")
plot(x,y,type="l",main="pty=\"s\"")

par(pty="m")
plot(x,y,type="l",main="pty=\"m\"")


### 좌표 눈금선의 틱 길이 지정

par(mfrow=c(3,3))
plot(0:4,0:4,tck=-0.2)
plot(0:4,0:4,tck=-0.1)
plot(0:4,0:4,tck=0)
plot(0:4,0:4,tck=0.3)
plot(0:4,0:4,tck=0.5)
plot(0:4,0:4,tck=0.7) #par에서 tck 지정했어도 plot 함수의 tck이 우선시됨

### 문자열을 회전하여 출력하는 함수 실습

par(mfrow=c(1,1),mar=c(2,2,2,2))
plot(0:6,0:6,type="n",xlab="",ylab="",main="srt",axes=F)

text(3,5,"str=0",cex=2,srt=0)
text(1,3,"str=90",cex=2,srt=90)
text(3,1,"str=180",cex=2,srt=180)
text(5,3,"str=270",cex=2,srt=270)
text(5,5,"str=-45",cex=2,srt=-45)
text(1,5,"str=45",cex=2,srt=45)

axis(side=1)


### par 함수가지고 차트 폰트 및 차트 배경/테두리 꾸미기

set.seed(0)
x<-rnorm(30)
x

par(bg="pink",fg="blue")
hist(x,xlab="rnorm(30)",ylab="Frequency",main="bg=\"pink\",fg=\"blue\"")


## 텍스트 검색하기

ex <- c("apple","orange","banana","Apple","pineapple")
grep('an',ex) ### 위치가 나옴. 대문자 소문자 구분 안되어있음.

grep('apple',ex,value = T,ignore.case = T) ## Value하면 실제값 출력, ignore 은 대문자 무시해서 찾기


## sky 이름붙은 색깔 가져오기

grep("sky",colors(),value = T,ignore.case = T)

col2rgb(grep("sky",colors(),value = T))

rgb(0,191,255,maxColorValue = 255)

### 알파 투명 채널 실습, 투명도 넣는법 끝에 77넣기

par(mfrow=c(1,2))

x <- c(1,1.3,1.6)
y <- c(1,2,1)

plot(x,y,pch=16,cex=20,col=c("red","green","blue"),xlim=c(0,3),ylim=c(-2,5),
     xlab = "", ylab = "",main="col=c(\'red\',\'green\',\'blue\'")

plot(x,y,pch=16,cex=20,col=c("#FF000077","#00FF0077","#0000FF77"),xlim=c(0,3),ylim=c(-2,5),
     xlab = "", ylab = "",main="alpha channel by \"77\"")

#### 색상 함수들

par(mfrow=c(2,2))
reds1 <- rgb((0:15)/15, g = 0, b = 0)
reds2 <- rgb((0:15)/15, g = 0, b = 0, alpha = 0.5)
gray1 <- gray(0:8/8)
gray2 <- gray(0:8/8, alpha = 0.5)
plot(1:16, col=reds1, pch=16, cex=16, axes=F)
plot(1:16, col=reds2, pch=16, cex=16, axes=F)
plot(1:16, col=gray1, pch=16, cex=16, axes=F)
plot(1:16, col=gray2, pch=16, cex=16, axes=F)









