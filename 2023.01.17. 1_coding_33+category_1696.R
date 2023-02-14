#setwd("/Users/shin/Desktop")
setwd("R:/")
dat<-readxl::read_xlsx('2022.09.26. raw data_1696.xlsx',sheet=1)

library(stringr)

row<-data.frame(dat$ID_2022)



row$family<-ifelse(str_detect(dat$event.text,'5촌|가정|가족|남편|동생|딸|막내|며느리|모친|배우자|본가|부모|부부|부친|사촌|삼촌|숙모|시가|시누이|시댁|시어머님|식구|신랑|아들|아버님|아버지|아빠|어머니|어머님|언니|엄마|오빠|와이프|외가|외가|이모|자녀|자매|자식|장인|조모|조부|친가|친정|친척|할머니|할아버지|형제|시어른|고부|부부|외갓'),1,0)
row$work<-ifelse(str_detect(dat$event.text,'이성과|가부장|변호사|이사|인테리어'),0,ifelse(str_detect(dat$event.text,'거래처|고객|과장|대표|동료|부장|사수|사원|상사|선임|신입|업체|재직|직원|직장|팀장|회사|후임|일터|상부기관|손님|근로|근무|민원|실적|야근|업무|업무스트레스|직무|출근|평가|프로젝트|퇴근|회식|인수인계|연말정산|보고서|실험|콜센터|갑질|외주|세미나|사무실|조교|성과|거래정지|서비스직|발령|부서이동|승진|입사|이직|진급|인사이동|가게|사업|식당|자영업|장사|창업|계약직|단기|아르바이트|알바|인턴|직업|커리어|스탭|지도교수|사장|실습|강의자료|원장|전문가'),1,0))
row$romance<-ifelse(str_detect(dat$event.text,'장애인'),0,ifelse(str_detect(dat$event.text,'남자친구|남친|애인|여자친구|여친|연애|연인|이성|교제|소개팅|사귄|섹스'),1,0))
row$relationship<-ifelse(str_detect(dat$event.text,'남자친구|여자친구'),0,ifelse(str_detect(dat$event.text,'관계|사람|썸|인간|친구|지인|주변인'),1,0))
row$pet<-ifelse(str_detect(dat$event.text,'강아지|고양이|반려|애완|펫|반려견|반려묘|반려동물'),1,0)
row$economic<-ifelse(str_detect(dat$event.text,'가계|가난|가상|감봉|경제|금융|금전|급여|대출|돈|만원|매출|보너스|보증금|보험|생계|생활고|생활비|세금|소득|손실|수익|수입|연봉|용돈|월급|월세|은행|임금|잔고|재정|재테크|전세|주식|체불|카드|코인|통장|투자|학자금|화폐|부도|채권|채무|제테크|적자|자산|재산|곤궁함|벼락거지|하한가|지갑사정'),1,0)
row$disease<-ifelse(str_detect(dat$event.text,'가르치질|아파트'),0,ifelse(str_detect(dat$event.text,'간병|갱년기|건강|검진|경련|골절|관절|근육|뇌|다리|담낭|두통|디스크|발병|변비|병|병원|뼈|생리|설사|수술|신체|아킬레스건|아토피|아파|아팠|아프|아픔|암|기형|염|오십견|입원|진통|체력|치료|치매|치질|통원|통증|팔|피로|피부|허리|환자|후유증|아픈|아플|마비|포진|이명|바이러스|이석증|소양증|몸이|당뇨|고지혈증|청각|응급실|안면|난청|질환|다래끼|성기능|부작용|인대|쓰러진|아플|황색종|급체|피임약|치아교정|두드러기|체력|영구치|대상포진|안색|다친|식중독|다침|부상|코에|머리빠지|넘어진|다쳐|넘어져'),1,0))
row$residence<-ifelse(str_detect(dat$event.text,'매매|보증금|부동산|분양|빌라|소음|아파트|월세|이사|인테리어|전세|주거|주택|집값|집을 구하기|자취|내집|전셋집|마련|거주지|경매'),1,0)
row$GetJob<-ifelse(str_detect(dat$event.text,'공무원|공시|독립|면접|백수|시험|자격증|진로|채용|취업|취준|취직|행시|9급|구직|일자리|임용|취성패'),1,0)
row$education<-ifelse(str_detect(dat$event.text,'편입니다|내성적|재수술'),0,ifelse(str_detect(dat$event.text,'공부|과제|교육|논문|대학|성적|수능|수업|입학|자퇴|재수|졸업|진학|학교|학교생활|학습|학업|학점|대입|입시|유급 |수험|랩미팅|학문|모의고사|점수|전공|편입|스터디|전학'),1,0))
row$caring<-ifelse(str_detect(dat$event.text,'돌봄|부양|사춘기|아이|양육|육아|자녀|자식|아기|간병|간호|부양|돌보던|키우'),1,0)
row$appear<-ifelse(str_detect(dat$event.text,'대외적|전세살이|월세살이'),0,ifelse(str_detect(dat$event.text,'여드름|외모|탈모|외적|다이어트|몸매|몸무게|비만|살도|살이|살쪄|살찌|살찐|살찜|요요|체중|폭식|뚱뚱|살쪘|쌍수|성형'),1,0))
row$legal<-ifelse(str_detect(dat$event.text,'감금|고소|구속|민사|법정|소송|신고|재판|형사'),1,0)
row$future<-ifelse(str_detect(dat$event.text,'노후|미래|불확실|장래'),1,0)
row$covid<-ifelse(str_detect(dat$event.text,'코로나|코비드|제한|마스크|거리두기|외출|격리|자가격리|금지|못함|집콕'),1,0)
row$conflict<-ifelse(str_detect(dat$event.text,'갈등|다투|다툼|다퉜|불화|싸우|싸운|싸움|싸웠|의견|절교|충돌|트러블|마찰|분쟁'),1,0)
row$betray<-ifelse(str_detect(dat$event.text,'배신|외도'),1,0)
row$farewell<-ifelse(str_detect(dat$event.text,'결별|이별|차였|헤어|헤어짐'),1,0)
row$death<-ifelse(str_detect(dat$event.text,'돌아가|떠났|무지개다리|사망|세상을|소천|임종|장례|죽음|하늘나라'),1,0)
row$holiday<-ifelse(str_detect(dat$event.text,'명절|설날|연휴|제사|추석'),1,0)
row$pregnancy<-ifelse(str_detect(dat$event.text,'난임|불임|유산|인공수정|임신|출산'),1,0)
row$marriage<-ifelse(str_detect(dat$event.text,'결혼|별거|이혼|재혼'),1,0)
row$ToForeign<-ifelse(str_detect(dat$event.text,'유학|교환학생|어학연수|해외|워킹홀리데이'),1,0)
row$LoseJob<-ifelse(str_detect(dat$event.text,'구조조정|권고사직|사직|실업|실직|퇴사|퇴직|폐업|해고|휴직|계약만료|짤렸'),1,0)
row$failure<-ifelse(str_detect(dat$event.text,'시력|주식|체력'),0,ifelse(str_detect(dat$event.text,'떨어|떨어졌|불합격|실패|좌절|탈락|포기|낙방'),1,0))
row$inferior<-ifelse(str_detect(dat$event.text,'업무시간'),0,ifelse(str_detect(dat$event.text,'괴롭힘|낙인|남아선호|따돌림|무시|왕따|차별|편견|편애|아웃팅|금수저|박탈감|비교|시선|열등감|질투|은따'),1,0))
row$violence<-ifelse(str_detect(dat$event.text,'방임|학대|욕설|폭력|폭언|폭행|협박|쌍욕|학폭|강간|성추행|성폭력|성희롱|스킨|성폭행|성범죄|조롱|악플|비난|조른|질타|위협'),1,0)
row$incident<-ifelse(str_detect(dat$event.text,'피싱|사기|해킹|다단계|교통사고|뺑소니|사고|상해|자동차|치임|강도|총을|도둑|차량|잃어|시신|도용|가해자|덤탱이|분실'),1,0)
row$MentalHealth<-ifelse(str_detect(dat$event.text,'공황|무기력|불면증|불안|섭식|수면|식이장애|심리상담|우울|정신건강|코로나블루|트라우마|폭식|폭절식|먹토|잠이|잠못|잠을|정신적|금연|중독|악몽|술먹|술마|필름|만취'),1,0)
row$suicide<-ifelse(str_detect(dat$event.text,'자살|자해|죽고|뛰어내'),1,0)
row$ToArmy<-ifelse(str_detect(dat$event.text,'군대|군복무|입대|군생활'),1,0)
row$socialIssue<-ifelse(str_detect(dat$event.text,'번방|LH|정인이|동물원|미세먼지|사회|고유정|정치|조국|조두순|세월호|국정농단|강남역|박지선|구하라|뉴스|페미|언론'),1,0)
row$disaster<-ifelse(str_detect(dat$event.text,'폭설|장마'),1,0)


row$etc<-ifelse(rowSums(row[,c(2:34)])==0,1,0)
row$emotion<-ifelse(str_detect(dat$event.text,'분노|소외|슬픔|억울|외로|외로움|감정'),1,0)


binded<-cbind(dat[,c(1:11)],row[,c(2:36)])

writexl::write_xlsx(binded,path = '2_binded_1696.xlsx',col_names=T)
