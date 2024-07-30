## stripchart

x <- round(rnorm(50),1)
y <- round(rnorm(50),1)
z <- round(rnorm(50),1)

data <-list(x,y,z)

stripchart(data)

stripchart(OrchardSprays$decrease~OrchardSprays$treatment,data=OrchardSprays)

## stripchart 설정들

stripchart(data,method="jitter") ## method를 통해 점이 어떻게 보이는지 알 수 있음. jitter은 흩뜨리기
stripchart(data,method="jitter",jitter=0.1) ##method가 jitter일 경우에만 사용하며 흩뜨러지는 정도
stripchart(data,method="stack") ## stack은 쌓기
stripchart(data,method="stack",offset=2) ## method가 stack일 경우에만 사용. 점간의 여백

stripchart(data,vertical=T) ## vertical은 수직표현

stripchart(data,add=T) ##산점도의 추가 여부

stripchart(data,at=c(1,2,3)) ## 그래프 그릴 위치 지정

stripchart(data,group.names = "3") ## group.names는 그룹 이름 각각 설정

##stripchart 실습


View(OrchardSprays)

par(mfrow=c(2,1))

stripchart(OrchardSprays$decrease~OrchardSprays$treatment,data=OrchardSprays,method="jitter",
           jitter=0.2,col="red",pch=16,cex=1.5,vertical=T,xlab="treatment",ylab="decrease",
           main="stripchart(OrchardSprays)",group.names=paste(LETTERS[1:8],"group"))


stripchart(OrchardSprays$decrease~OrchardSprays$treatment,data=OrchardSprays,offset=1/2,
           cex=1.5,pch=15,col=1:8,method="stack",main="stripchart(OrchardSprays)",xlab="decrease")

## curve 함수
## curve(수식,시작x점,끝x점)

func <-function(x) x^2 + 2

curve(func,-2,2)

curve(dnorm,-3,3) ## 정규분포

curve(func,-2,2,n=3) ## 좌표점의 갯수 지정

curve(func,-2,2,type='p') ## 선 종류

##matplot 함수
## 행렬 데이터를 열별로 그룹피어 플롯

y1 <- rnorm(20,mean=-3,sd=1)
y2 <- rnorm(20,mean=0,sd=1)
y3 <- rnorm(20,mean=3,sd=1)
mat <- cbind(y1,y2,y3)

matplot(mat,type="lSo") ##lso 타입으로 그리기
matplot(mat,type=c("l","s","o")) ## 각각도 가능
matplot(mat,col='green')

matplot(amt,verbose=T) ## 콘솔에 대한 정보출력

##matplot 함수 실습

matplot(mat)
matplot(y2,type="l",add=T)

matplot(mat,type="n")
matpoints(y2,type="p")

matplot(mat,type="n")
matlines(y2,type="l")

matplot(mat,pch=1:3,col=3:5,verbose=T)

##sunflowerplot 함수

x <- sample(1:5,200,replace=T)
y <- sample(1:5,200,replace=T)

sunflowerplot(x,y)
sunflowerplot(1:10,rep(1,10),number=1:10,col="blue",bg="green",cex=2)

##symbols 함수

x <- round(rnorm(20),2)
y <- round(rnorm(20),2)
z1<-abs(round(rnorm(20),2))
z2<-abs(round(rnorm(20),2))
z3<-round(runif(20),2)
z4<-round(runif(20),2)
z5<-round(runif(20),2)

symbols(x,y,circles = abs(x),inches = 0.2,bg=1:20)
symbols(x,y,squares = abs(x),inches = 0.2,bg=1:20)
symbols(x,y,rectangles = cbind(abs(x),abs(y)),inches = 0.2,bg=1:20) ##직사각형은 두개의 벡터를 알려줘야함
symbols(x,y,stars = cbind(abs(x),abs(y),z1,z2,z3),inches = 0.2,bg=1:20)
symbols(x,y,thermometers=cbind(abs(x),abs(y),z4),inches=0.2,bg=1:20)
symbols(x,y,boxplots=cbind(abs(x),abs(y),z3,z4,z5),inches=0.2,bg=1:20)

## mosaicplot 함수 실습

View(UCBAdmissions)

mosaicplot(~Gender+Admit,data=UCBAdmissions,sort=c(2,1),offset=c(5,20),color=c(4,2),las=2,
           main="UCB Admissions")












