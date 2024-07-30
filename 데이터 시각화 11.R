## dotchart

x <- (1:12)
letters <- LETTERS[1:3]
name <- rep(letters,times=4)
grname <- rep(c("Group1","Group2","Group3","Group4"),each=3)
dotchart(x,groups=as.factor(grname),labels=name)
title(main="dotchart(x,groups=grname,labels=name)")

## dotchart 설정들
mean <- tapply(x,as.factor(grname),mean) ##그룹별로 평균 계산

dotchart(x,groups=as.factor(grname),labels=name,gdata=mean) ##mean으로 요약한 벡터 사용

dotchart(x,groups=as.factor(grname),labels=name, gpch=(21:24),bg=(4:6)) ## gpch는 grname의 점 종류, bg는 색깔

dotchart(x,groups=as.factor(grname),labels=name, gpch=(21:24),bg=(4:6),gdata=mean)

dotchart(x,groups=as.factor(grname),labels=name, gpch=(21:24),bg=(4:6),
         gdata=mean,color='pink') ##color은 왼쪽 라벨 글씨 색깔

dotchart(x,groups=as.factor(grname),labels=name, gpch=(21:24),bg=(4:6),
         gdata=mean,gcolor='red') ## gdata라벨과 색깔

dotchart(x,groups=as.factor(grname),labels=name, gpch=(21:24),bg=(4:6),
         gdata=mean,lcolor="blue") ### 점선 색깔


### dotchart 실습

cmean <- colMeans(VADeaths)

dotchart(VADeaths,gdata=cmean,color=1,gpch=22,bg=3,gcolor=c(4,2),lcolor='grey')
title(main="Death Rates in virginian (population group)")

tdata<-t(VADeaths)
ctmean <- colMeans(tdata)

dotchart(tdata,gdata=ctmean,color=1,gpch=22,bg="yellow",gcolor=c("red","green","blue","skyblue","purple"),lcolor='grey')
title(main="Death Rates in virginian (Age group)")

## pie차트

piedata <- 1:7
pie(piedata)
pie(piedata,labels=c("1","2","3","4","5","6","7")) ## 라벨 이름

pie(piedata,edges=20) ##원 모서리 갯수 기본값 200

pie(piedata,radius=0.5)##원크기

pie(piedata,density=F) ## 색깔 채우기 없음

pie(piedata,density=19,angle=120) ## angle 은 빗금 각도

pie(piedata,border=3) ##원 테두리 색깔

pie(piedata,lty=3) ## 원 테두리 타입



