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

#dat<-dat%>% filter(event == 'event1_pastyr'|event=='event2_pastyr'|event=='event3_pastyr')
dat<-dat%>% filter(event == 'event1_lifetime'|event=='event2_lifetime'|event=='event3_lifetime')



info<-dat[,c(1:9)]
data<-dat[,c(11:44)]



colsum<-colSums(data)
rankcol<-order(rank(-colsum))
data<-data[,c(rankcol)]

colsum2<-colSums(data)
name2<-names(data)

colsum2<-as.data.frame(colsum2)
colsum2<-cbind(name2,colsum2)

writexl::write_xlsx(colsum2,path='appendix1_ever.xlsx')
#writexl::write_xlsx(colsum2,path='appendix1_all.xlsx')

