install.packages('ggplot2')
library(ggplot2)

install.packages('gapminder')
library(gapminder)

ggplot(gapminder,aes(x=gdpPercap,y=lifeExp,col=continent))+geom_point(alpha=0.2)


## 조건에 부합하는 것들만 행렬로 따로 만들어 geom_bar 만들기
gapminder1 <- gapminder[gapminder$lifeExp>70,1:2] ##lifeExp가 70보다 크고 국가와 대륙의 데이터만 필요하기에
cont <- unique(gapminder1$continent) ##중복이 안되게 무슨 종류의 대륙이 있는지
cont <- as.character(cont)##변수를 문자열로 바꾸는 것


n_country <- matrix(0,5,1) ## 넣을 행렬 만들기
for(i in 1:5){
  country_1<-gapminder1[gapminder1$continent==cont[i],"country"]
  n_country[i] <- nrow(unique(country_1))
} #조건을 만족하는 continent를 matrix안에 개수로 넣는 과정
n_country

data <- as.data.frame(cbind(cont,n_country))
data$V2 <- as.integer(data$V2)

names(data) <- c("continent","number_of_countries")


ggplot(data,aes(x=continent,y=number_of_countries))+geom_bar(stat='identity')

##히스토그램

gapminder2 <- gapminder[gapminder$year==2007,c("continent","lifeExp")]

ggplot(gapminder2,aes(lifeExp,col=continent))+geom_histogram() ##색을 continent별로.



##박스플롯

ggplot(gapminder2,aes(continent,lifeExp,col=continent))+geom_boxplot()

## 플롯의 방향을 전환

gapminder3<-gapminder[gapminder$continent=="Africa",c("country","lifeExp")]
ggplot(gapminder3,aes(country,lifeExp))+geom_bar(stat="identity")+coord_flip() ##가로 세로 변환

## 다양한 색깔을 사용할 수 있는 패키지'

install.packages("RColorBrewer")
library(RColorBrewer)

display.brewer.all()

## RcolorBrewer 사용 ggplot

ggplot(data,aes(continent,number_of_countries))+geom_bar(stat="identity",aes(fill=continent))+
  scale_fill_brewer(palette = "Spectral")


## ggplot 실습

ggplot(cars,aes(speed,dist))+geom_point() ##산점도 그리기

ggplot(gapminder2,aes(continent,lifeExp,col=continent))+geom_bar(stat="identity",aes(fill=continent))+
  coord_flip()+scale_fill_brewer(palette = "Oranges")


##dplyr

install.packages("dplyr")
library(dplyr)

gapminder4 <- select(gapminder,country,year,lifeExp) ##특정 열만 추출하기

gapminder_Croatia<-filter(gapminder,country=="Croatia")##Croatia인 것들만

summarize(gapminder,pop_avg=mean(pop)) ##대륙별 인구 평균, pop의 평균을 구해서 pop_avg라는 변수에 저장

summarize(group_by(gapminder,continent,country),pop_avg=mean(pop)) ## 대륙별 나라별 인구 평균

## %>% 연산자 사용

gapminder %>% filter(country=="Croatia") %>% select(country,lifeExp) %>% 
  summarize(lifeExp_avg=mean(lifeExp))

## dplyr 실습

gapminder %>% filter(year==2007) %>% ggplot(aes(reorder(country,-lifeExp),lifeExp))+
  geom_bar(stat="identity") + coord_flip()

gapminder %>% filter(lifeExp>70) %>% group_by(continent) %>% summarize(n=n_distinct(country))%>%
  ggplot(aes(continent,n))+geom_bar(stat="identity",aes(fill=continent)) +
  scale_fill_brewer(palette = "Blues")

gapminder %>% filter(lifeExp>70) %>% group_by(continent) %>% summarize(n=n_distinct(country))%>%
  ggplot(aes(reorder(continent,-n),n))+geom_bar(stat="identity",aes(fill=continent)) +
  scale_fill_brewer(palette = "Blues") ##이건 내림차순










