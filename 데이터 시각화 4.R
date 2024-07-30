plot(0:6,0:6,type="n",xlab="",ylab="",ylim=c(0,20))
lines(c(1,3),c(20,20),col=1) # 20개 색깔을 넣으면 번거로움...

x1 <- rep(1,20) #x의 1좌표값 20개
x2 <- rep(3,20) #x의 3좌표값 20개
y1 <- 20:1
y2 <- 20:1


color <- c("black","red","green3","blue","cyan","magenta","yellow",
           "gray","deeppink","deepskyblue","khaki","peachpuff",
           "seagreen","tomato","slateblue","wheat","seashell",
           "rosybrown","palegreen","plum")

for(i in 1:20){
  lines(c(x1[i],x2[i]),c(y1[i],y2[i]),col=color[i])
}


## text 함수 adjc(좌우,위아래), 중앙정렬이 디폴트값
## 0은 왼쪽 아래쪽 정렬
## 1은 오른쪽 위쪽 정렬
## 0.5는 생략, 중앙 정렬

# 선을 그리는 함수 실습

plot(0,0,type='n',ylab='y-axis',xlab='x-axis',xlim=c(0,7),ylim=c(0,21),main='lines')
text(4,21,'Type')
text(5,21,'Color')
text(6,21,'Width')

x1 <- rep(1,20) #x의 1좌표값 20개
x2 <- rep(3,20) #x의 3좌표값 20개
y1 <- 20:1
y2 <- 20:1

type <- c("1","2","3","4","5","6",'blank',
          "solid","dashed","dotted","dotdash","longdash","twodash",
          "33","24","F2","2F","3313","F252","FF29")

color <- c("1","2","3","4","5","6","7",
           "8","deeppink","khaki","deepskyblue","tomato","salmon",
           "purple4","plum2","powderblue","mistyrose","oldlace","olivedrab","navyblue")

width <- c(1,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2:11)

text(4,21,'Type')
text(5,21,'Color')
text(6,21,'Width')


text1 <- rep(4,20)
text2 <- rep(5,20)
text3 <- rep(6,20)
y1 <- 20:1


for (i in 1:20){
  lines(c(x1[i],x2[i]),c(y1[i],y2[i]),lty=type[i],col=color[i],lwd=width[i])
  text(text1[i],y1[i],type[i])
  text(text2[i],y1[i],color[i])
  text(text3[i],y1[i],width[i])  
}



## 화살표 그리기 실습

plot(0,0,type='n',ylab='',xlab='',xlim=c(0,9),ylim=c(0,9),main='arrows',axes=F) ## axes는 좌표축 출력안함

x0 <- rep(1,9)
x1 <- rep(4,9)
y0 <- 9:1
y1 <- 9:1
ang <- c(30,30,30,60,90,120,30,30,30)
len <- c(0.25,0.5,0.1,0.25,0.25,0.25,0.25,0.25,0.25)
cd <- c(2,2,2,2,2,2,0,1,3)
tx <- rep(4.5,9)

txt <- c("angle=30,legnth=0.25,code=2","length=0.5","length=0.1","angle=60",
           "angle=90","angle=120","code=0","code=1","coee=3")

for (i in 1:9){
  arrows(x0[i],y0[i],x1[i],y1[i],angle=ang[i],length=len[i],code=cd[i])
  text(tx[i],y0[i],txt[i],adj=0)
}

box(which="outer")

## 좌표점들의 그룹별 선 그리는 함수

x <- c(1:5)
y <- runif(5)
plot(x,y)
s<-seq(length(x)-2)
segments(x[s],y[s],x[s+2],y[s+2],lty=1:2)

## 좌표점들의 그룹별 선 그리는 함수 예시

set.seed(1)
x <- runif(12)

set.seed(2)
y <- rnorm(12)

i <- order(x) # 오름차순 정렬
x <- x[i]
y <- y[i]

plot(x,y,main="2 segments")

s<- seq(length(x)-2)

segments(x[s],y[s],x[s+2],y[s+2],lty=1:2,col=c("deeppink","khaki"))


