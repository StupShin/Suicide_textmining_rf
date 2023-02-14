setwd('R:/')
#setwd('/Users/shin/Desktop')

pacman::p_load('tidyr')

dat<-readxl::read_xlsx('3_with episode_2009.xlsx')
dat<-as.data.frame(dat[,c(1:9,45)])

data.wide<- reshape(dat, idvar='ID_1',timevar='event',direction='wide')

info<-data.wide[,1:7]
text<-data.wide[,c(8,16,24,32,40,48)]
episode<-data.wide[,c(9,17,25,33,41,49)]
episode<-paste(episode[,1],episode[,2],episode[,3],episode[,4],episode[,5],episode[,6])

data.wide<-as.data.frame(cbind(info,text,episode))

data.wide$a0<-ifelse(grepl('a0',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$a1<-ifelse(grepl('a1',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$a2<-ifelse(grepl('a2',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$a3<-ifelse(grepl('a3',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$a4<-ifelse(grepl('a4',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$a5<-ifelse(grepl('a5',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$a6<-ifelse(grepl('a6',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$a7<-ifelse(grepl('a7',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$a8<-ifelse(grepl('a8',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$a9<-ifelse(grepl('a9',data.wide$episode,ignore.case=F)==TRUE,1,0)

data.wide$b0<-ifelse(grepl('b0',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$b1<-ifelse(grepl('b1',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$b2<-ifelse(grepl('b2',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$b3<-ifelse(grepl('b3',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$b4<-ifelse(grepl('b4',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$b5<-ifelse(grepl('b5',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$b6<-ifelse(grepl('b6',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$b7<-ifelse(grepl('b7',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$b8<-ifelse(grepl('b8',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$b9<-ifelse(grepl('b9',data.wide$episode,ignore.case=F)==TRUE,1,0)

data.wide$c0<-ifelse(grepl('c0',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$c1<-ifelse(grepl('c1',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$c2<-ifelse(grepl('c2',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$c3<-ifelse(grepl('c3',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$c4<-ifelse(grepl('c4',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$c5<-ifelse(grepl('c5',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$c6<-ifelse(grepl('c6',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$c7<-ifelse(grepl('c7',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$c8<-ifelse(grepl('c8',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$c9<-ifelse(grepl('c9',data.wide$episode,ignore.case=F)==TRUE,1,0)

data.wide$d0<-ifelse(grepl('d0',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$d1<-ifelse(grepl('d1',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$d2<-ifelse(grepl('d2',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$d3<-ifelse(grepl('d3',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$d4<-ifelse(grepl('d4',data.wide$episode,ignore.case=F)==TRUE,1,0)
data.wide$d5<-ifelse(grepl('d5',data.wide$episode,ignore.case=F)==TRUE,1,0)

names(data.wide)<-c('id_2021','age','sex','PHQ-9','GAD','PTSD','body_symptom',
                    'event1_pastyr','event2_pastyr','event3_pastyr',
                    'event1_ever','event2_ever','event3_ever','episode',
                    '가족','가족과직장','가족의건강','가족과갈등','가족의죽음',
                    '직장','건강','취업','취업과학업','취업의실패','코로나','본인학업',
                    '대인관계','경제문제','돌봄','연인과이별','주거',
                    '사건사고', '정신건강','열등감','가족형태변화','실직',
                    '학대폭력성범죄','신체와외모','미래','반려동물','사회이슈','자살과자해',
                    '임신과출산','유학','군복무','배신','법적문제','명절','재난')
                    
writexl::write_xlsx(data.wide,'4_with episode_wideform_2009.xlsx')
