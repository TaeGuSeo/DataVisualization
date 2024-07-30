## 막대그래프 꾸미기
bar1 <- runif(12)*50
bar2 <- matrix(bar1,ncol=3,byrow=T) ## 매트릭스 생성, 행순으로
rownames(bar2) <- c("row1","row2","row3","row4")
colnames(bar2) <- c("col1","col2","col3")

barplot(bar2,axes=F) # 축 없애기
barplot(bar2,cex.axis = 1) ## 축 왼쪽 숫자 크기
barplot(bar2,cex.names=3) ## 축 아래 막대 이름 크기
barplot(bar2,cex.names=3,plot=F) ## 그래프 출력 여부
barplot(bar2,axis.lty=2) ## x축과 범주축 종류
barplot(bar2,offset = 20) ## 막대그래프의 높이 시작점.

x1 <- c(15,9,12,10,19,11,14,5,4,18,11,10,18,13,6)
grp <- matrix(x1,ncol=3,byrow=T)
rownames(grp)<-c("카테고리 1","카테고리 2","카테고리 3","카테고리 4","카테고리 5")
colnames(grp)<-c("통신사 A","통신사 B","통신사 C")

### 실습
par(mfrow=c(1,2))
barplot(grp,beside=T,col=rainbow(5),legend.text = T)
title(sub="통신사 카테고리 별 비교",line=3)

barplot(grp,col=rainbow(5),legend.text = T)
title(sub="통신사 별 비교",line=3)

### boxplot 함수
par(mfrow=c(1,1))
box1 <- rnorm(100,3,2)
box2 <- rnorm(100,3,4)
boxplot(box1,box2)

listdata <- list(data1=box1,data2=box2,data3=rnorm(80,2,4)) ## list 활용하여 3가지 데이터 만들기
boxplot(listdata)

View(InsectSprays)
boxplot(InsectSprays$count)
boxplot(count~spray,data=InsectSprays) ### 여러개 데이터를 가지고 만들기

## boxplot 실습

View(ToothGrowth)
str(ToothGrowth)

par(mfrow=c(3,2))

boxplot(len~dose,data=ToothGrowth)
title("len~dose")
boxplot(len~supp,data=ToothGrowth)
title("len~supp")
boxplot(len~dose+supp,data=ToothGrowth)
title("len~dose+supp")
boxplot(len~supp=="VC",data=ToothGrowth)
title("len~supp==\"VC\"")
boxplot(len~dose,data=ToothGrowth,subset=supp=="VC")
title("len~dose,subset=supp==\"VC\"")
boxplot(len[supp=="VC"]~dose[supp=="VC"],data=ToothGrowth)


## boxplot 설정들

x1<-runif(10)
x2<-runif(20)
x3<-runif(30)
x4<-runif(40)
x5<-runif(50)

boxplot(x1,x2,x3,x4,x5,range=0.1) ## range 통해 수염의 길이 설정
boxplot(x1,x2,x3,x4,x5,width=c(1,3,2,6,4)) ##width 통해 각각 막대의 모양크기 조정
x <- list(x1,x2,x3,x4,x5)
boxplot(x,varwidth=T) ##상자의 폭

boxplot(x,notch=T) ## 95% 신뢰구간 표시
boxplot(x,outline=T,names=c("dd","d","c","e","w")) ## 이상치 위치를 출력, 없애려면 F
boxplot(x,bowwex=0.9) ## 모든 박스의 확장 폭을 지정
boxplot(x,staplewex=2) ## 수염의 가로 길이 지정
boxplot(x,plot=F) ## F가 되면 박스플롯 출력안되고 정보를 리스트로 반환
boxplot(x,border=5) ## 박스 테두리 색
boxplot(x,col=5) ## 박스 플롯 상자 내부 색
boxplot(x,log="x") ## log 스케일로 변환
boxplot(x,horizontal=T) ## 가로로 변환
boxplot(x,add=T) ## 그래프 기존에 것에 추가하여 그리기
boxplot(x,staplelty=2) ## 스태플 선의 종류
boxplot(x,outpch=3) ## 이상치 점문자 종류


