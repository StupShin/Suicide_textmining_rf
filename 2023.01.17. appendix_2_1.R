pacman::p_load(dplyr)
#setwd('/Users/shin/Desktop')
setwd("R:/")
dat<-readxl::read_xlsx('2_binded_2009.xlsx')

info<-dat[,1:9]
data<-dat[,-(1:9)]
num<-c(1:12054)

info<-cbind(info,num)
data<-cbind(data,num)

data<-na.omit(data[,c(1:36)])

dat<-inner_join(info,data,by='num')


info<-dat[,c(1:9)]
data<-dat[,c(11:45)]

colsum<-colSums(data)
rankcol<-order(rank(-colsum))

originame<-names(data)
newname<-c('가족','직장','연인','대인관계','반려동물','경제',
           '건강','주거','취업과진로','본인학업', '돌봄','신체와외모',
           '법적문제','미래','코로나','갈등','배신','이별',
           '죽음','명절','임신과출산','가족형태변화','유학','실직',
           '실패','열등감','학대폭력성범죄','사건사고','정신건강','자살과자해',
           '군복무','사회이슈','재난','기타','정서')
colnames(data)<-newname

data<-data[,c(rankcol)]
newname<-names(data)
data<-cbind(info,data)

for(i in 1:9){
  j<-i-1
  test<-data%>%filter(data[i+9]!=0)
  test<-test[,1:44]
  name<- newname[i]
  writexl::write_xlsx(test,path = paste0('response_0',i,'rank',name,'.xlsx'))
  print(j)
}

for(i in 10:35){
  j<-i-1
  test<-data%>%filter(data[i+9]!=0)
  test<-test[,1:44]
  name<- newname[i]
  writexl::write_xlsx(test,path = paste0('response_',i,'rank',name,'.xlsx'))
  print(j)
}