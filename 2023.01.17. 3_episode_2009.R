#from 2022.02.26. analysis
#setwd('/Users/shin/Desktop')
('R:/')
#setwd('/Users/shin/Desktop')
pacman::p_load('dplyr')

dat<-readxl::read_xlsx('2_binded_2009.xlsx')
name.dat<-names(dat)

info<-dat[,1:9]
data<-as.data.frame(dat[,-(1:9)])



info<-dat[,1:9]
data<-dat[,10:42]
etc <-dat[,43:44]
num<-c(1:12054)

info<-cbind(info,num)
data<-cbind(data,num)
etc <-cbind(etc ,num)

data<-na.omit(data[,c(1:34)])

dat<-inner_join(info,data,by='num')
dat<-inner_join(dat, etc ,by='num')
dat<-dat[,c(1:9,11:45)]

info<-dat[,1:9]
data<-dat[,10:44]

data<- data %>% relocate(c(family, work, disease, GetJob, covid, 
                           education, relationship, economic, conflict, caring, 
                    failure, MentalHealth, death, romance, residence, 
                    inferior, incident, marriage, LoseJob, farewell, 
                    violence, appear, future, pet, socialIssue, 
                    suicide, pregnancy, ToForeign, ToArmy, betray, 
                    legal, holiday, disaster))


names(data)<-c('가족', '직장', '건강', '취업과진로', '코로나', 
               '본인학업', '대인관계', '경제', '갈등', '돌봄', 
               '실패', '정신건강', '죽음', '연인', '주거', 
               '열등감', '사건사고', '가족형태변화', '실직', '이별', 
               '학대폭력성범죄', '신체와외모', '미래', '반려동물', '사회이슈', 
               '자살과자해', '임신과출산', '유학', '군복무', '배신', 
               '법적문제', '명절', '재난')

data$episode1<-NA

data$episode1 <- ifelse(rowSums(data[,1:33])==1,
                        ifelse(data[,1]==1,'a0',data$episode1),
                        data$episode1) #family only 268
data$episode1<- ifelse(data[,1]==1,
                       ifelse(data[,2]==1,
                              ifelse(rowSums(data[,1:2])==2,'a1',data$episode1),
                              data$episode1),
                       data$episode1) #family and work 114
data$episode1<- ifelse(data[,1]==1,
                       ifelse(data[,3]==1,
                              ifelse(rowSums(data[,1:3])==2,'a2',data$episode1),
                              data$episode1),
                       data$episode1) #family and health 363
data$episode1<- ifelse(data[,1]==1,
                       ifelse(data[,9]==1,
                              ifelse(rowSums(data[,1:9])==2,'a3',data$episode1),
                              data$episode1),
                       data$episode1) #family and conflict 396
data$episode1<- ifelse(data[,1]==1,
                       ifelse(data[,13]==1,
                              ifelse(rowSums(data[,1:13])==2,'a4',data$episode1),
                              data$episode1),
                       data$episode1) #family and death 177

data$episode1 <- ifelse(rowSums(data[,1:33])==1,
                        ifelse(data[,2]==1,'a5',data$episode1),
                        data$episode1) #work only 563

data$episode1 <- ifelse(rowSums(data[,1:33])==1,
                        ifelse(data[,3]==1,'a6',data$episode1),
                        data$episode1) #health only 338

data$episode1 <- ifelse(rowSums(data[,1:33])==1,
                        ifelse(data[,4]==1,'a7',data$episode1),
                        data$episode1) #GetJob only 335
data$episode1<- ifelse(data[,4]==1,
                       ifelse(data[,6]==1,
                              ifelse(rowSums(data[,1:6])==2,'a8',data$episode1),
                              data$episode1),
                       data$episode1) #get_job and education 105
data$episode1<- ifelse(data[,4]==1,
                       ifelse(data[,11]==1,
                              ifelse(rowSums(data[,1:11])==2,'a9',data$episode1),
                              data$episode1),
                       data$episode1) #get_job and failure 214

data$episode1 <- ifelse(rowSums(data[,1:33])==1,
                        ifelse(data[,5]==1,'b0',data$episode1),
                        data$episode1) #covid only 352

data$episode1 <- ifelse(rowSums(data[,1:33])==1,
                        ifelse(data[,6]==1,'b1',data$episode1),
                        data$episode1) #learning only 284

data$episode1 <- ifelse(rowSums(data[,1:33])==1,
                        ifelse(data[,7]==1,'b2',data$episode1),
                        data$episode1) #relationship only 209

data$episode1 <- ifelse(rowSums(data[,1:33])==1,
                        ifelse(data[,8]==1,'b3',data$episode1),
                        data$episode1) #economic only 306

data$episode1 <- ifelse(rowSums(data[,1:33])==1,
                        ifelse(data[,10]==1,'b4',data$episode1),
                        data$episode1) #caring only 131

data$episode1<- ifelse(data[,14]==1,
                       ifelse(data[,20]==1,
                              ifelse(rowSums(data[,1:20])==2,'b5',data$episode1),
                              data$episode1),
                       data$episode1) #romance and farewell 118

data$episode1 <- ifelse(rowSums(data[,1:33])==1,
                        ifelse(data[,15]==1,'b6',data$episode1),
                        data$episode1) #residence only 111

###### based on algorithm, 4383 responses are tagged




data$episode1 <- ifelse(rowSums(data[,1:17])==1,
                        ifelse(data[,17]==1,'b7',data$episode1),
                        data$episode1) #incident only 81

data$episode1 <- ifelse(rowSums(data[,1:12])==1,
                        ifelse(data[,12]==1,'b8',data$episode1),
                        data$episode1) #mentalhealth only 80


data$episode1 <- ifelse(rowSums(data[,1:16])==1,
                        ifelse(data[,16]==1,'b9',data$episode1),
                        data$episode1) #inferior only 55

data$episode1 <- ifelse(rowSums(data[,1:18])==1,
                        ifelse(data[,18]==1,'c0',data$episode1),
                        data$episode1) #changeOfFamily only 46

data$episode1 <- ifelse(rowSums(data[,1:19])==1,
                        ifelse(data[,19]==1,'c1',data$episode1),
                        data$episode1) #LoseJob only 45

data$episode1 <- ifelse(rowSums(data[,1:21])==1,
                        ifelse(data[,21]==1,'c2',data$episode1),
                        data$episode1) #Violence only 34

data$episode1 <- ifelse(rowSums(data[,1:22])==1,
                        ifelse(data[,22]==1,'c3',data$episode1),
                        data$episode1) #appear only 69

data$episode1 <- ifelse(rowSums(data[,1:23])==1,
                        ifelse(data[,23]==1,'c4',data$episode1),
                        data$episode1) #future only 22

data$episode1 <- ifelse(rowSums(data[,1:24])==1,
                        ifelse(data[,24]==1,'c5',data$episode1),
                        data$episode1) #pet only 11

data$episode1 <- ifelse(rowSums(data[,1:25])==1,
                        ifelse(data[,25]==1,'c6',data$episode1),
                        data$episode1) #socialissue only 32

data$episode1 <- ifelse(rowSums(data[,1:26])==1,
                        ifelse(data[,26]==1,'c7',data$episode1),
                        data$episode1) #suicide only 8

data$episode1 <- ifelse(rowSums(data[,1:27])==1,
                        ifelse(data[,27]==1,'c8',data$episode1),
                        data$episode1) #pregnancy only 23

data$episode1 <- ifelse(rowSums(data[,1:28])==1,
                        ifelse(data[,28]==1,'c9',data$episode1),
                        data$episode1) #toforeign only 23

data$episode1 <- ifelse(rowSums(data[,1:29])==1,
                        ifelse(data[,29]==1,'d0',data$episode1),
                        data$episode1) #toarmy only 32

data$episode1 <- ifelse(rowSums(data[30])==1,
                        ifelse(data[,30]==1,'d1',data$episode1),
                        data$episode1) #betray only 3

data$episode1 <- ifelse(rowSums(data[,1:31])==1,
                        ifelse(data[,31]==1,'d2',data$episode1),
                        data$episode1) #legal only 5

data$episode1 <- ifelse(rowSums(data[,1:32])==1,
                        ifelse(data[,32]==1,'d3',data$episode1),
                        data$episode1) #holiday only 5

data$episode1 <- ifelse(rowSums(data[,1:33])==1,
                        ifelse(data[,33]==1,'d4',data$episode1),
                        data$episode1) #disaster only 0




dat<-cbind(info,data)
writexl::write_xlsx(dat,path='3_with episode_2009.xlsx')
