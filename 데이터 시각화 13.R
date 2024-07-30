## 산점도 pairs 함수 실습

View(swiss)

pairs(~Fertility+Education+Catholic,data=swiss,subset=Education<20,
      cex=1.2,col=1+(swiss$Agriculture>50),pch=1+(swiss$Agriculture>50)) ## swiss$Agriculture>50을 하면 T,F 반환함으로

## pairs 실습2

panel.hist <- function(x,...){
  usr<-par("usr")
  par(usr=c(usr[1:2],0,1.3))
  on.exit(par(usr))
  h<-hist(x,plot=F)
  breaks<-h$breaks
  nB<-length(breaks)
  y<-h$counts
  y<-y/max(y)
  rect(breaks[-nB],0,breaks[-1],y,col="coral")
}

pairs(USJudgeRatings[,1:3],cex=1.5,pch=24,bg="light blue",diag.panel=panel.hist,
      cex.labels=2,font.labels = 2,gap=2,rowlattop=F)

##중점이 평균이고 최소값인 별
panel.star <- function(x,...){
  y<-mean(x)
  z<-min(x)
  theta<-seq(pi/2,pi/2+2*pi,by=2*pi/5)
  pent.x<-cos(theta)*z+y
  pent.y<-sin(theta)*z+y
  s<-seq(length(pent.x))
  s<-c(s[s%%2==1],s[s%%2==0])
  lines(pent.x[s],pent.y[s],col="coral")
}

pairs(USJudgeRatings[,1:3],cex=1.5,pch=24,bg="light blue",diag.panel=panel.star,
      cex.labels=2,font.labels = 2,gap=2,rowlattop=F)

##stars 함수

sweet <- rnorm(11,4)
sour <- rnorm(11,3)
spicy<-rnorm(11,1)
bitter<-rnorm(11,5)

taste <- cbind(sweet,sour,spicy,bitter)

stars(taste)

stars(taste,radius=F) ## 십자가로 반지름 표시

stars(taste,labels=LETTERS[1:11]) ## 도형 이름 표시

stars(taste,key.loc=c(1,4)) ## 범례 key를 그릴 위치

x <- 1:11                  ##locations 함수 예시
y <- 11:1
location<-cbind(x,y)
stars(taste,locations=location) #개별로 x,y위치에 loctions로 보여주기

stars(taste,labels=LETTERS[1:11],flip.labels = T) ## 지그재그로 출력되어서 겹침방지

stars(taste,col.stars=rainbow(11)) ##  색깔 넣기

stars(taste,frame.plot=T) ## 큰틀 그리기
title(main="stars",line=3) ## line으로 메인 타이틀 위치 정해주기

###stars 함수 실습

View(USArrests)

grep("^N",rownames(USArrests)) ## N으로 시작하는 열

data<-USArrests[grep("^N",rownames(USArrests)),]

stars(data,len=0.7,key.loc=c(7,2.5),flip.labels=F,col.stars=rainbow(nrow(data)),
      nrow=3,ncol=3,main="N-states US Arrrests")


## persp 함수
## persp(x,y,z,...)에서 x,y는 무조건 오름차순이여야 함

x <- seq(-10,10,length=30)
y <- x
f <- function(x,y){
  r<-sqrt(x^2+y^2)
  10*sin(r)/r
}

z <- outer(x,y,f)

persp(x,y,z,theta=40)##오른쪽으로 40도
persp(x,y,z,theta=-40)##왼쪽으로 40도
persp(x,y,z,phi=30)##위쪽에서 30도
persp(x,y,z,scale=T)
persp(x,y,z,scale=F) ##scale 변환

persp(x,y,z,expand=0.5) ##z축 확장계수 0~1사이, 클수록 z축의 방향으로 확장
persp(x,y,z,col='blue') ## 색깔 지정
persp(x,y,z,border="skyblue") ##표면 테두리 사선 색깔 지정

persp(x,y,z,ltheta=-120) ## 방위각의 방향으로부터 그림자만들기
persp(x,y,z,lphi=30) ## 여위도의 방향으로부터 그림자만들기
persp(x,y,z,shade=0.5) ## 그림 그림자 만들기. 0~1이고 1일수록 어두워짐

persp(x,y,z,box=F) ## 그래프의 박스 테두리 없애기
persp(x,y,z,ticktype='detailed') ## 틱 유형 설정
persp(x,y,z,ticktype='detailed',nticks=10) ## 눈금 갯수를 지정. 단 detailed 일때만 사용가능

## persp 실습

z <- (volcano)*2
x <- 10*(1:nrow(z))
y <- 15*(1:ncol(z))

persp(x,y,z,theta=135,phi=10,col='green2',scale=F,ltheta=-125,shade=0.75,border=NA,
      box=F,main="Perspective Plots with volcano")















