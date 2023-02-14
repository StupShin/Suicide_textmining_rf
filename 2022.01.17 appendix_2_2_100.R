setwd('R:/')
#setwd('/Users/shin/Desktop')
pacman::p_load('dplyr','rlist','openxlsx')

#src_dir <- c("/Users/shin/Desktop")
src_dir <-c('D:/')
src_file<-list.files(src_dir)[5:39] # specific files. #more file, then this will be changed. so, place to save output different.
src_file<-sort(src_file) 
src_file_cnt<-length(src_file)



for(i in 1:9){
  assign(paste0('data_0',i),
         readxl::read_xlsx(paste0(src_dir,'/',src_file[i])
         ))
  print(i)
}

for(i in 10:35){
  assign(paste0('data_',i),
         readxl::read_xlsx(paste0(src_dir,'/',src_file[i])
         ))
  print(i)
}
'
L <- mget(ls(pattern = "^data_\\d+$"))
L2 <- L
for(i in seq_along(L)[-1]) {
  Li <- L[[i]]
  Sum <- rowSums(Li[, seq_len(i-1), drop = FALSE])
  L2[[i]] <- Li[Sum == 0, ]
}'





data_01_00<-data_01 #family 1997
data_01_01<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,10]==1 & rowSums(data_01_00[,10:44])==1)
data_01_02<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,11]==1 & rowSums(data_01_00[,10:11])==2)
data_01_03<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,12]==1 & rowSums(data_01_00[,10:12])==2)
data_01_04<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,13]==1 & rowSums(data_01_00[,10:13])==2)
data_01_05<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,14]==1 & rowSums(data_01_00[,10:14])==2)
data_01_06<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,15]==1 & rowSums(data_01_00[,10:15])==2)
data_01_07<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,16]==1 & rowSums(data_01_00[,10:16])==2)
data_01_08<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,17]==1 & rowSums(data_01_00[,10:17])==2)
data_01_09<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,18]==1 & rowSums(data_01_00[,10:18])==2)
data_01_10<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,19]==1 & rowSums(data_01_00[,10:19])==2)
data_01_11<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,20]==1 & rowSums(data_01_00[,10:20])==2)
data_01_12<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,21]==1 & rowSums(data_01_00[,10:21])==2)
data_01_13<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,22]==1 & rowSums(data_01_00[,10:22])==2)
data_01_14<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,23]==1 & rowSums(data_01_00[,10:23])==2)
data_01_15<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,24]==1 & rowSums(data_01_00[,10:24])==2)
data_01_16<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,25]==1 & rowSums(data_01_00[,10:25])==2)
data_01_17<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,26]==1 & rowSums(data_01_00[,10:26])==2)
data_01_18<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,27]==1 & rowSums(data_01_00[,10:27])==2)
data_01_19<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,28]==1 & rowSums(data_01_00[,10:28])==2)
data_01_20<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,29]==1 & rowSums(data_01_00[,10:29])==2)
data_01_21<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,30]==1 & rowSums(data_01_00[,10:30])==2)
data_01_22<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,31]==1 & rowSums(data_01_00[,10:31])==2)
data_01_23<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,32]==1 & rowSums(data_01_00[,10:32])==2)
data_01_24<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,33]==1 & rowSums(data_01_00[,10:33])==2)
data_01_25<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,34]==1 & rowSums(data_01_00[,10:34])==2)
data_01_26<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,35]==1 & rowSums(data_01_00[,10:35])==2)
data_01_27<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,36]==1 & rowSums(data_01_00[,10:36])==2)
data_01_28<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,37]==1 & rowSums(data_01_00[,10:37])==2)
data_01_29<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,38]==1 & rowSums(data_01_00[,10:38])==2)
data_01_30<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,39]==1 & rowSums(data_01_00[,10:39])==2)
data_01_31<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,40]==1 & rowSums(data_01_00[,10:40])==2)
data_01_32<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,41]==1 & rowSums(data_01_00[,10:41])==2)
data_01_33<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,42]==1 & rowSums(data_01_00[,10:42])==2)
data_01_34<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,43]==1 & rowSums(data_01_00[,10:43])==2)
data_01_35<-data_01_00 %>% filter(data_01_00[,10]==1& data_01_00[,44]==1 & rowSums(data_01_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 100, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 100, remove

L <- mget(ls(pattern = "^data_01_\\d+$"))

write.xlsx(L, "D:/01_FamilyOut.xlsx")

data_02_00<-data_02 #incident/accident 1700
data_02_02<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,11]==1 & rowSums(data_02_00[,10:44])==1)
data_02_03<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,12]==1 & rowSums(data_02_00[,10:12])==2)
data_02_04<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,13]==1 & rowSums(data_02_00[,10:13])==2)
data_02_05<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,14]==1 & rowSums(data_02_00[,10:14])==2)
data_02_06<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,15]==1 & rowSums(data_02_00[,10:15])==2)
data_02_07<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,16]==1 & rowSums(data_02_00[,10:16])==2)
data_02_08<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,17]==1 & rowSums(data_02_00[,10:17])==2)
data_02_09<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,18]==1 & rowSums(data_02_00[,10:18])==2)
data_02_10<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,19]==1 & rowSums(data_02_00[,10:19])==2)
data_02_11<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,20]==1 & rowSums(data_02_00[,10:20])==2)
data_02_12<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,21]==1 & rowSums(data_02_00[,10:21])==2)
data_02_13<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,22]==1 & rowSums(data_02_00[,10:22])==2)
data_02_14<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,23]==1 & rowSums(data_02_00[,10:23])==2)
data_02_15<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,24]==1 & rowSums(data_02_00[,10:24])==2)
data_02_16<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,25]==1 & rowSums(data_02_00[,10:25])==2)
data_02_17<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,26]==1 & rowSums(data_02_00[,10:26])==2)
data_02_18<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,27]==1 & rowSums(data_02_00[,10:27])==2)
data_02_19<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,28]==1 & rowSums(data_02_00[,10:28])==2)
data_02_20<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,29]==1 & rowSums(data_02_00[,10:29])==2)
data_02_21<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,30]==1 & rowSums(data_02_00[,10:30])==2)
data_02_22<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,31]==1 & rowSums(data_02_00[,10:31])==2)
data_02_23<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,32]==1 & rowSums(data_02_00[,10:32])==2)
data_02_24<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,33]==1 & rowSums(data_02_00[,10:33])==2)
data_02_25<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,34]==1 & rowSums(data_02_00[,10:34])==2)
data_02_26<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,35]==1 & rowSums(data_02_00[,10:35])==2)
data_02_27<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,36]==1 & rowSums(data_02_00[,10:36])==2)
data_02_28<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,37]==1 & rowSums(data_02_00[,10:37])==2)
data_02_29<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,38]==1 & rowSums(data_02_00[,10:38])==2)
data_02_30<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,39]==1 & rowSums(data_02_00[,10:39])==2)
data_02_31<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,40]==1 & rowSums(data_02_00[,10:40])==2)
data_02_32<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,41]==1 & rowSums(data_02_00[,10:41])==2)
data_02_33<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,42]==1 & rowSums(data_02_00[,10:42])==2)
data_02_34<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,43]==1 & rowSums(data_02_00[,10:43])==2)
data_02_35<-data_02_00 %>% filter(data_02_00[,11]==1& data_02_00[,44]==1 & rowSums(data_02_00[,10:44])==2)



to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 100, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 100, remove

L <- mget(ls(pattern = "^data_02_\\d+$"))

write.xlsx(L, "D:/02_EtcOut.xlsx")

data_03_00<-data_03 #work 1331
data_03_03<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,12]==1 & rowSums(data_03_00[,10:44])==1)
data_03_04<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,13]==1 & rowSums(data_03_00[,10:13])==2)
data_03_05<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,14]==1 & rowSums(data_03_00[,10:14])==2)
data_03_06<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,15]==1 & rowSums(data_03_00[,10:15])==2)
data_03_07<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,16]==1 & rowSums(data_03_00[,10:16])==2)
data_03_08<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,17]==1 & rowSums(data_03_00[,10:17])==2)
data_03_09<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,18]==1 & rowSums(data_03_00[,10:18])==2)
data_03_10<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,19]==1 & rowSums(data_03_00[,10:19])==2)
data_03_11<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,20]==1 & rowSums(data_03_00[,10:20])==2)
data_03_12<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,21]==1 & rowSums(data_03_00[,10:21])==2)
data_03_13<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,22]==1 & rowSums(data_03_00[,10:22])==2)
data_03_14<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,23]==1 & rowSums(data_03_00[,10:23])==2)
data_03_15<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,24]==1 & rowSums(data_03_00[,10:24])==2)
data_03_16<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,25]==1 & rowSums(data_03_00[,10:25])==2)
data_03_17<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,26]==1 & rowSums(data_03_00[,10:26])==2)
data_03_18<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,27]==1 & rowSums(data_03_00[,10:27])==2)
data_03_19<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,28]==1 & rowSums(data_03_00[,10:28])==2)
data_03_20<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,29]==1 & rowSums(data_03_00[,10:29])==2)
data_03_21<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,30]==1 & rowSums(data_03_00[,10:30])==2)
data_03_22<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,31]==1 & rowSums(data_03_00[,10:31])==2)
data_03_23<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,32]==1 & rowSums(data_03_00[,10:32])==2)
data_03_24<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,33]==1 & rowSums(data_03_00[,10:33])==2)
data_03_25<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,34]==1 & rowSums(data_03_00[,10:34])==2)
data_03_26<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,35]==1 & rowSums(data_03_00[,10:35])==2)
data_03_27<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,36]==1 & rowSums(data_03_00[,10:36])==2)
data_03_28<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,37]==1 & rowSums(data_03_00[,10:37])==2)
data_03_29<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,38]==1 & rowSums(data_03_00[,10:38])==2)
data_03_30<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,39]==1 & rowSums(data_03_00[,10:39])==2)
data_03_31<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,40]==1 & rowSums(data_03_00[,10:40])==2)
data_03_32<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,41]==1 & rowSums(data_03_00[,10:41])==2)
data_03_33<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,42]==1 & rowSums(data_03_00[,10:42])==2)
data_03_34<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,43]==1 & rowSums(data_03_00[,10:43])==2)
data_03_35<-data_03_00 %>% filter(data_03_00[,12]==1& data_03_00[,44]==1 & rowSums(data_03_00[,10:44])==2)



to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 100, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 100, remove

L <- mget(ls(pattern = "^data_03_\\d+$"))

write.xlsx(L, "D:/03_HealthOut.xlsx")


data_04_00<-data_04 #relationship 1039
data_04_04<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,13]==1 & rowSums(data_04_00[,10:44])==1)
data_04_05<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,14]==1 & rowSums(data_04_00[,10:14])==2)
data_04_06<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,15]==1 & rowSums(data_04_00[,10:15])==2)
data_04_07<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,16]==1 & rowSums(data_04_00[,10:16])==2)
data_04_08<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,17]==1 & rowSums(data_04_00[,10:17])==2)
data_04_09<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,18]==1 & rowSums(data_04_00[,10:18])==2)
data_04_10<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,19]==1 & rowSums(data_04_00[,10:19])==2)
data_04_11<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,20]==1 & rowSums(data_04_00[,10:20])==2)
data_04_12<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,21]==1 & rowSums(data_04_00[,10:21])==2)
data_04_13<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,22]==1 & rowSums(data_04_00[,10:22])==2)
data_04_14<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,23]==1 & rowSums(data_04_00[,10:23])==2)
data_04_15<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,24]==1 & rowSums(data_04_00[,10:24])==2)
data_04_16<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,25]==1 & rowSums(data_04_00[,10:25])==2)
data_04_17<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,26]==1 & rowSums(data_04_00[,10:26])==2)
data_04_18<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,27]==1 & rowSums(data_04_00[,10:27])==2)
data_04_19<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,28]==1 & rowSums(data_04_00[,10:28])==2)
data_04_20<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,29]==1 & rowSums(data_04_00[,10:29])==2)
data_04_21<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,30]==1 & rowSums(data_04_00[,10:30])==2)
data_04_22<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,31]==1 & rowSums(data_04_00[,10:31])==2)
data_04_23<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,32]==1 & rowSums(data_04_00[,10:32])==2)
data_04_24<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,33]==1 & rowSums(data_04_00[,10:33])==2)
data_04_25<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,34]==1 & rowSums(data_04_00[,10:34])==2)
data_04_26<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,35]==1 & rowSums(data_04_00[,10:35])==2)
data_04_27<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,36]==1 & rowSums(data_04_00[,10:36])==2)
data_04_28<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,37]==1 & rowSums(data_04_00[,10:37])==2)
data_04_29<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,38]==1 & rowSums(data_04_00[,10:38])==2)
data_04_30<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,39]==1 & rowSums(data_04_00[,10:39])==2)
data_04_31<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,40]==1 & rowSums(data_04_00[,10:40])==2)
data_04_32<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,41]==1 & rowSums(data_04_00[,10:41])==2)
data_04_33<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,42]==1 & rowSums(data_04_00[,10:42])==2)
data_04_34<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,43]==1 & rowSums(data_04_00[,10:43])==2)
data_04_35<-data_04_00 %>% filter(data_04_00[,13]==1& data_04_00[,44]==1 & rowSums(data_04_00[,10:44])==2)



to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 100, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 100, remove

L <- mget(ls(pattern = "^data_04_\\d+$"))

write.xlsx(L, "D:/04_WorkOut.xlsx")


data_05_00<-data_05 #Get_job 964
data_05_05<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,14]==1 & rowSums(data_05_00[,10:44])==1)
data_05_06<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,15]==1 & rowSums(data_05_00[,10:15])==2)
data_05_07<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,16]==1 & rowSums(data_05_00[,10:16])==2)
data_05_08<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,17]==1 & rowSums(data_05_00[,10:17])==2)
data_05_09<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,18]==1 & rowSums(data_05_00[,10:18])==2)
data_05_10<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,19]==1 & rowSums(data_05_00[,10:19])==2)
data_05_11<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,20]==1 & rowSums(data_05_00[,10:20])==2)
data_05_12<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,21]==1 & rowSums(data_05_00[,10:21])==2)
data_05_13<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,22]==1 & rowSums(data_05_00[,10:22])==2)
data_05_14<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,23]==1 & rowSums(data_05_00[,10:23])==2)
data_05_15<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,24]==1 & rowSums(data_05_00[,10:24])==2)
data_05_16<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,25]==1 & rowSums(data_05_00[,10:25])==2)
data_05_17<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,26]==1 & rowSums(data_05_00[,10:26])==2)
data_05_18<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,27]==1 & rowSums(data_05_00[,10:27])==2)
data_05_19<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,28]==1 & rowSums(data_05_00[,10:28])==2)
data_05_20<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,29]==1 & rowSums(data_05_00[,10:29])==2)
data_05_21<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,30]==1 & rowSums(data_05_00[,10:30])==2)
data_05_22<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,31]==1 & rowSums(data_05_00[,10:31])==2)
data_05_23<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,32]==1 & rowSums(data_05_00[,10:32])==2)
data_05_24<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,33]==1 & rowSums(data_05_00[,10:33])==2)
data_05_25<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,34]==1 & rowSums(data_05_00[,10:34])==2)
data_05_26<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,35]==1 & rowSums(data_05_00[,10:35])==2)
data_05_27<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,36]==1 & rowSums(data_05_00[,10:36])==2)
data_05_28<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,37]==1 & rowSums(data_05_00[,10:37])==2)
data_05_29<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,38]==1 & rowSums(data_05_00[,10:38])==2)
data_05_30<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,39]==1 & rowSums(data_05_00[,10:39])==2)
data_05_31<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,40]==1 & rowSums(data_05_00[,10:40])==2)
data_05_32<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,41]==1 & rowSums(data_05_00[,10:41])==2)
data_05_33<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,42]==1 & rowSums(data_05_00[,10:42])==2)
data_05_34<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,43]==1 & rowSums(data_05_00[,10:43])==2)
data_05_35<-data_05_00 %>% filter(data_05_00[,14]==1& data_05_00[,44]==1 & rowSums(data_05_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 100, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 100, remove

L <- mget(ls(pattern = "^data_05_\\d+$"))

write.xlsx(L, "D:/05_GetJobOut.xlsx")

data_06_00<-data_06 #covid 889
data_06_06<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,15]==1 & rowSums(data_06_00[,10:44])==1)
data_06_07<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,16]==1 & rowSums(data_06_00[,10:16])==2)
data_06_08<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,17]==1 & rowSums(data_06_00[,10:17])==2)
data_06_09<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,18]==1 & rowSums(data_06_00[,10:18])==2)
data_06_10<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,19]==1 & rowSums(data_06_00[,10:19])==2)
data_06_11<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,20]==1 & rowSums(data_06_00[,10:20])==2)
data_06_12<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,21]==1 & rowSums(data_06_00[,10:21])==2)
data_06_13<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,22]==1 & rowSums(data_06_00[,10:22])==2)
data_06_14<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,23]==1 & rowSums(data_06_00[,10:23])==2)
data_06_15<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,24]==1 & rowSums(data_06_00[,10:24])==2)
data_06_16<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,25]==1 & rowSums(data_06_00[,10:25])==2)
data_06_17<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,26]==1 & rowSums(data_06_00[,10:26])==2)
data_06_18<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,27]==1 & rowSums(data_06_00[,10:27])==2)
data_06_19<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,28]==1 & rowSums(data_06_00[,10:28])==2)
data_06_20<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,29]==1 & rowSums(data_06_00[,10:29])==2)
data_06_21<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,30]==1 & rowSums(data_06_00[,10:30])==2)
data_06_22<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,31]==1 & rowSums(data_06_00[,10:31])==2)
data_06_23<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,32]==1 & rowSums(data_06_00[,10:32])==2)
data_06_24<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,33]==1 & rowSums(data_06_00[,10:33])==2)
data_06_25<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,34]==1 & rowSums(data_06_00[,10:34])==2)
data_06_26<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,35]==1 & rowSums(data_06_00[,10:35])==2)
data_06_27<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,36]==1 & rowSums(data_06_00[,10:36])==2)
data_06_28<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,37]==1 & rowSums(data_06_00[,10:37])==2)
data_06_29<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,38]==1 & rowSums(data_06_00[,10:38])==2)
data_06_30<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,39]==1 & rowSums(data_06_00[,10:39])==2)
data_06_31<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,40]==1 & rowSums(data_06_00[,10:40])==2)
data_06_32<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,41]==1 & rowSums(data_06_00[,10:41])==2)
data_06_33<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,42]==1 & rowSums(data_06_00[,10:42])==2)
data_06_34<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,43]==1 & rowSums(data_06_00[,10:43])==2)
data_06_35<-data_06_00 %>% filter(data_06_00[,15]==1& data_06_00[,44]==1 & rowSums(data_06_00[,10:44])==2)



to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 100, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 100, remove

L <- mget(ls(pattern = "^data_06_\\d+$"))

write.xlsx(L, "D:/06_CovidOut.xlsx")


data_07_00<-data_07 #learning 870
data_07_07<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,16]==1 & rowSums(data_07_00[,10:44])==1)
data_07_08<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,17]==1 & rowSums(data_07_00[,10:17])==2)
data_07_09<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,18]==1 & rowSums(data_07_00[,10:18])==2)
data_07_10<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,19]==1 & rowSums(data_07_00[,10:19])==2)
data_07_11<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,20]==1 & rowSums(data_07_00[,10:20])==2)
data_07_12<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,21]==1 & rowSums(data_07_00[,10:21])==2)
data_07_13<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,22]==1 & rowSums(data_07_00[,10:22])==2)
data_07_14<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,23]==1 & rowSums(data_07_00[,10:23])==2)
data_07_15<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,24]==1 & rowSums(data_07_00[,10:24])==2)
data_07_16<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,25]==1 & rowSums(data_07_00[,10:25])==2)
data_07_17<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,26]==1 & rowSums(data_07_00[,10:26])==2)
data_07_18<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,27]==1 & rowSums(data_07_00[,10:27])==2)
data_07_19<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,28]==1 & rowSums(data_07_00[,10:28])==2)
data_07_20<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,29]==1 & rowSums(data_07_00[,10:29])==2)
data_07_21<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,30]==1 & rowSums(data_07_00[,10:30])==2)
data_07_22<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,31]==1 & rowSums(data_07_00[,10:31])==2)
data_07_23<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,32]==1 & rowSums(data_07_00[,10:32])==2)
data_07_24<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,33]==1 & rowSums(data_07_00[,10:33])==2)
data_07_25<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,34]==1 & rowSums(data_07_00[,10:34])==2)
data_07_26<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,35]==1 & rowSums(data_07_00[,10:35])==2)
data_07_27<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,36]==1 & rowSums(data_07_00[,10:36])==2)
data_07_28<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,37]==1 & rowSums(data_07_00[,10:37])==2)
data_07_29<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,38]==1 & rowSums(data_07_00[,10:38])==2)
data_07_30<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,39]==1 & rowSums(data_07_00[,10:39])==2)
data_07_31<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,40]==1 & rowSums(data_07_00[,10:40])==2)
data_07_32<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,41]==1 & rowSums(data_07_00[,10:41])==2)
data_07_33<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,42]==1 & rowSums(data_07_00[,10:42])==2)
data_07_34<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,43]==1 & rowSums(data_07_00[,10:43])==2)
data_07_35<-data_07_00 %>% filter(data_07_00[,16]==1& data_07_00[,44]==1 & rowSums(data_07_00[,10:44])==2)



to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 100, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 100, remove

L <- mget(ls(pattern = "^data_07_\\d+$"))

write.xlsx(L, "D:/07_LearningOut.xlsx")


data_08_00<-data_08 #economic 809
data_08_08<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,17]==1 & rowSums(data_08_00[,10:44])==1)
data_08_09<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,18]==1 & rowSums(data_08_00[,10:18])==2)
data_08_10<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,19]==1 & rowSums(data_08_00[,10:19])==2)
data_08_11<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,20]==1 & rowSums(data_08_00[,10:20])==2)
data_08_12<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,21]==1 & rowSums(data_08_00[,10:21])==2)
data_08_13<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,22]==1 & rowSums(data_08_00[,10:22])==2)
data_08_14<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,23]==1 & rowSums(data_08_00[,10:23])==2)
data_08_15<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,24]==1 & rowSums(data_08_00[,10:24])==2)
data_08_16<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,25]==1 & rowSums(data_08_00[,10:25])==2)
data_08_17<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,26]==1 & rowSums(data_08_00[,10:26])==2)
data_08_18<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,27]==1 & rowSums(data_08_00[,10:27])==2)
data_08_19<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,28]==1 & rowSums(data_08_00[,10:28])==2)
data_08_20<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,29]==1 & rowSums(data_08_00[,10:29])==2)
data_08_21<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,30]==1 & rowSums(data_08_00[,10:30])==2)
data_08_22<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,31]==1 & rowSums(data_08_00[,10:31])==2)
data_08_23<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,32]==1 & rowSums(data_08_00[,10:32])==2)
data_08_24<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,33]==1 & rowSums(data_08_00[,10:33])==2)
data_08_25<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,34]==1 & rowSums(data_08_00[,10:34])==2)
data_08_26<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,35]==1 & rowSums(data_08_00[,10:35])==2)
data_08_27<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,36]==1 & rowSums(data_08_00[,10:36])==2)
data_08_28<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,37]==1 & rowSums(data_08_00[,10:37])==2)
data_08_29<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,38]==1 & rowSums(data_08_00[,10:38])==2)
data_08_30<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,39]==1 & rowSums(data_08_00[,10:39])==2)
data_08_31<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,40]==1 & rowSums(data_08_00[,10:40])==2)
data_08_32<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,41]==1 & rowSums(data_08_00[,10:41])==2)
data_08_33<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,42]==1 & rowSums(data_08_00[,10:42])==2)
data_08_34<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,43]==1 & rowSums(data_08_00[,10:43])==2)
data_08_35<-data_08_00 %>% filter(data_08_00[,17]==1& data_08_00[,44]==1 & rowSums(data_08_00[,10:44])==2)



to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 100, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 100, remove

L <- mget(ls(pattern = "^data_08_\\d+$"))

write.xlsx(L, "D:/08_RelationshipOut.xlsx")


data_09_00<-data_09 #conflict 932
data_09_09<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,18]==1 & rowSums(data_09_00[,10:44])==1)
data_09_10<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,19]==1 & rowSums(data_09_00[,10:19])==2)
data_09_11<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,20]==1 & rowSums(data_09_00[,10:20])==2)
data_09_12<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,21]==1 & rowSums(data_09_00[,10:21])==2)
data_09_13<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,22]==1 & rowSums(data_09_00[,10:22])==2)
data_09_14<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,23]==1 & rowSums(data_09_00[,10:23])==2)
data_09_15<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,24]==1 & rowSums(data_09_00[,10:24])==2)
data_09_16<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,25]==1 & rowSums(data_09_00[,10:25])==2)
data_09_17<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,26]==1 & rowSums(data_09_00[,10:26])==2)
data_09_18<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,27]==1 & rowSums(data_09_00[,10:27])==2)
data_09_19<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,28]==1 & rowSums(data_09_00[,10:28])==2)
data_09_20<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,29]==1 & rowSums(data_09_00[,10:29])==2)
data_09_21<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,30]==1 & rowSums(data_09_00[,10:30])==2)
data_09_22<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,31]==1 & rowSums(data_09_00[,10:31])==2)
data_09_23<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,32]==1 & rowSums(data_09_00[,10:32])==2)
data_09_24<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,33]==1 & rowSums(data_09_00[,10:33])==2)
data_09_25<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,34]==1 & rowSums(data_09_00[,10:34])==2)
data_09_26<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,35]==1 & rowSums(data_09_00[,10:35])==2)
data_09_27<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,36]==1 & rowSums(data_09_00[,10:36])==2)
data_09_28<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,37]==1 & rowSums(data_09_00[,10:37])==2)
data_09_29<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,38]==1 & rowSums(data_09_00[,10:38])==2)
data_09_30<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,39]==1 & rowSums(data_09_00[,10:39])==2)
data_09_31<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,40]==1 & rowSums(data_09_00[,10:40])==2)
data_09_32<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,41]==1 & rowSums(data_09_00[,10:41])==2)
data_09_33<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,42]==1 & rowSums(data_09_00[,10:42])==2)
data_09_34<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,43]==1 & rowSums(data_09_00[,10:43])==2)
data_09_35<-data_09_00 %>% filter(data_09_00[,18]==1& data_09_00[,44]==1 & rowSums(data_09_00[,10:44])==2)



to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 100, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 100, remove

L <- mget(ls(pattern = "^data_09_\\d+$"))

write.xlsx(L, "D:/09_EconomicOut.xlsx")

data_10_00<-data_10 #failure 506
data_10_10<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,19]==1 & rowSums(data_10_00[,10:44])==1)
data_10_11<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,20]==1 & rowSums(data_10_00[,10:20])==2)
data_10_12<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,21]==1 & rowSums(data_10_00[,10:21])==2)
data_10_13<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,22]==1 & rowSums(data_10_00[,10:22])==2)
data_10_14<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,23]==1 & rowSums(data_10_00[,10:23])==2)
data_10_15<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,24]==1 & rowSums(data_10_00[,10:24])==2)
data_10_16<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,25]==1 & rowSums(data_10_00[,10:25])==2)
data_10_17<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,26]==1 & rowSums(data_10_00[,10:26])==2)
data_10_18<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,27]==1 & rowSums(data_10_00[,10:27])==2)
data_10_19<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,28]==1 & rowSums(data_10_00[,10:28])==2)
data_10_20<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,29]==1 & rowSums(data_10_00[,10:29])==2)
data_10_21<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,30]==1 & rowSums(data_10_00[,10:30])==2)
data_10_22<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,31]==1 & rowSums(data_10_00[,10:31])==2)
data_10_23<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,32]==1 & rowSums(data_10_00[,10:32])==2)
data_10_24<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,33]==1 & rowSums(data_10_00[,10:33])==2)
data_10_25<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,34]==1 & rowSums(data_10_00[,10:34])==2)
data_10_26<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,35]==1 & rowSums(data_10_00[,10:35])==2)
data_10_27<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,36]==1 & rowSums(data_10_00[,10:36])==2)
data_10_28<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,37]==1 & rowSums(data_10_00[,10:37])==2)
data_10_29<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,38]==1 & rowSums(data_10_00[,10:38])==2)
data_10_30<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,39]==1 & rowSums(data_10_00[,10:39])==2)
data_10_31<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,40]==1 & rowSums(data_10_00[,10:40])==2)
data_10_32<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,41]==1 & rowSums(data_10_00[,10:41])==2)
data_10_33<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,42]==1 & rowSums(data_10_00[,10:42])==2)
data_10_34<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,43]==1 & rowSums(data_10_00[,10:43])==2)
data_10_35<-data_10_00 %>% filter(data_10_00[,19]==1& data_10_00[,44]==1 & rowSums(data_10_00[,10:44])==2)



to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 100, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 100, remove

L <- mget(ls(pattern = "^data_10_\\d+$"))

write.xlsx(L, "D:/10_ConflictOut.xlsx")


data_11_00<-data_11 #mental_health 481
data_11_11<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,20]==1 & rowSums(data_11_00[,10:44])==1)
data_11_12<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,21]==1 & rowSums(data_11_00[,10:21])==2)
data_11_13<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,22]==1 & rowSums(data_11_00[,10:22])==2)
data_11_14<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,23]==1 & rowSums(data_11_00[,10:23])==2)
data_11_15<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,24]==1 & rowSums(data_11_00[,10:24])==2)
data_11_16<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,25]==1 & rowSums(data_11_00[,10:25])==2)
data_11_17<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,26]==1 & rowSums(data_11_00[,10:26])==2)
data_11_18<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,27]==1 & rowSums(data_11_00[,10:27])==2)
data_11_19<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,28]==1 & rowSums(data_11_00[,10:28])==2)
data_11_20<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,29]==1 & rowSums(data_11_00[,10:29])==2)
data_11_21<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,30]==1 & rowSums(data_11_00[,10:30])==2)
data_11_22<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,31]==1 & rowSums(data_11_00[,10:31])==2)
data_11_23<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,32]==1 & rowSums(data_11_00[,10:32])==2)
data_11_24<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,33]==1 & rowSums(data_11_00[,10:33])==2)
data_11_25<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,34]==1 & rowSums(data_11_00[,10:34])==2)
data_11_26<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,35]==1 & rowSums(data_11_00[,10:35])==2)
data_11_27<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,36]==1 & rowSums(data_11_00[,10:36])==2)
data_11_28<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,37]==1 & rowSums(data_11_00[,10:37])==2)
data_11_29<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,38]==1 & rowSums(data_11_00[,10:38])==2)
data_11_30<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,39]==1 & rowSums(data_11_00[,10:39])==2)
data_11_31<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,40]==1 & rowSums(data_11_00[,10:40])==2)
data_11_32<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,41]==1 & rowSums(data_11_00[,10:41])==2)
data_11_33<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,42]==1 & rowSums(data_11_00[,10:42])==2)
data_11_34<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,43]==1 & rowSums(data_11_00[,10:43])==2)
data_11_35<-data_11_00 %>% filter(data_11_00[,20]==1& data_11_00[,44]==1 & rowSums(data_11_00[,10:44])==2)



to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 110, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 110, remove

L <- mget(ls(pattern = "^data_11_\\d+$"))

write.xlsx(L, "D:/11_CaringOut.xlsx")


data_12_00<-data_12 #mental_health 476
data_12_12<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,21]==1 & rowSums(data_12_00[,10:44])==1)
data_12_13<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,22]==1 & rowSums(data_12_00[,10:22])==2)
data_12_14<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,23]==1 & rowSums(data_12_00[,10:23])==2)
data_12_15<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,24]==1 & rowSums(data_12_00[,10:24])==2)
data_12_16<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,25]==1 & rowSums(data_12_00[,10:25])==2)
data_12_17<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,26]==1 & rowSums(data_12_00[,10:26])==2)
data_12_18<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,27]==1 & rowSums(data_12_00[,10:27])==2)
data_12_19<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,28]==1 & rowSums(data_12_00[,10:28])==2)
data_12_20<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,29]==1 & rowSums(data_12_00[,10:29])==2)
data_12_21<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,30]==1 & rowSums(data_12_00[,10:30])==2)
data_12_22<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,31]==1 & rowSums(data_12_00[,10:31])==2)
data_12_23<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,32]==1 & rowSums(data_12_00[,10:32])==2)
data_12_24<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,33]==1 & rowSums(data_12_00[,10:33])==2)
data_12_25<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,34]==1 & rowSums(data_12_00[,10:34])==2)
data_12_26<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,35]==1 & rowSums(data_12_00[,10:35])==2)
data_12_27<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,36]==1 & rowSums(data_12_00[,10:36])==2)
data_12_28<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,37]==1 & rowSums(data_12_00[,10:37])==2)
data_12_29<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,38]==1 & rowSums(data_12_00[,10:38])==2)
data_12_30<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,39]==1 & rowSums(data_12_00[,10:39])==2)
data_12_31<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,40]==1 & rowSums(data_12_00[,10:40])==2)
data_12_32<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,41]==1 & rowSums(data_12_00[,10:41])==2)
data_12_33<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,42]==1 & rowSums(data_12_00[,10:42])==2)
data_12_34<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,43]==1 & rowSums(data_12_00[,10:43])==2)
data_12_35<-data_12_00 %>% filter(data_12_00[,21]==1& data_12_00[,44]==1 & rowSums(data_12_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 120, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 120, remove

L <- mget(ls(pattern = "^data_12_\\d+$"))

write.xlsx(L, "D:/12_FailureOut.xlsx")

data_13_00<-data_13 #death 338
data_13_13<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,22]==1 & rowSums(data_13_00[,10:44])==1)
data_13_14<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,23]==1 & rowSums(data_13_00[,10:23])==2)
data_13_15<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,24]==1 & rowSums(data_13_00[,10:24])==2)
data_13_16<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,25]==1 & rowSums(data_13_00[,10:25])==2)
data_13_17<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,26]==1 & rowSums(data_13_00[,10:26])==2)
data_13_18<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,27]==1 & rowSums(data_13_00[,10:27])==2)
data_13_19<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,28]==1 & rowSums(data_13_00[,10:28])==2)
data_13_20<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,29]==1 & rowSums(data_13_00[,10:29])==2)
data_13_21<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,30]==1 & rowSums(data_13_00[,10:30])==2)
data_13_22<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,31]==1 & rowSums(data_13_00[,10:31])==2)
data_13_23<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,32]==1 & rowSums(data_13_00[,10:32])==2)
data_13_24<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,33]==1 & rowSums(data_13_00[,10:33])==2)
data_13_25<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,34]==1 & rowSums(data_13_00[,10:34])==2)
data_13_26<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,35]==1 & rowSums(data_13_00[,10:35])==2)
data_13_27<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,36]==1 & rowSums(data_13_00[,10:36])==2)
data_13_28<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,37]==1 & rowSums(data_13_00[,10:37])==2)
data_13_29<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,38]==1 & rowSums(data_13_00[,10:38])==2)
data_13_30<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,39]==1 & rowSums(data_13_00[,10:39])==2)
data_13_31<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,40]==1 & rowSums(data_13_00[,10:40])==2)
data_13_32<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,41]==1 & rowSums(data_13_00[,10:41])==2)
data_13_33<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,42]==1 & rowSums(data_13_00[,10:42])==2)
data_13_34<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,43]==1 & rowSums(data_13_00[,10:43])==2)
data_13_35<-data_13_00 %>% filter(data_13_00[,22]==1& data_13_00[,44]==1 & rowSums(data_13_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 120, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 120, remove

L <- mget(ls(pattern = "^data_13_\\d+$"))

write.xlsx(L, "D:/13_MentalHealthOut.xlsx")

data_14_00<-data_14 #death 283
data_14_14<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,23]==1 & rowSums(data_14_00[,10:44])==1)
data_14_15<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,24]==1 & rowSums(data_14_00[,10:24])==2)
data_14_16<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,25]==1 & rowSums(data_14_00[,10:25])==2)
data_14_17<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,26]==1 & rowSums(data_14_00[,10:26])==2)
data_14_18<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,27]==1 & rowSums(data_14_00[,10:27])==2)
data_14_19<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,28]==1 & rowSums(data_14_00[,10:28])==2)
data_14_20<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,29]==1 & rowSums(data_14_00[,10:29])==2)
data_14_21<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,30]==1 & rowSums(data_14_00[,10:30])==2)
data_14_22<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,31]==1 & rowSums(data_14_00[,10:31])==2)
data_14_23<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,32]==1 & rowSums(data_14_00[,10:32])==2)
data_14_24<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,33]==1 & rowSums(data_14_00[,10:33])==2)
data_14_25<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,34]==1 & rowSums(data_14_00[,10:34])==2)
data_14_26<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,35]==1 & rowSums(data_14_00[,10:35])==2)
data_14_27<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,36]==1 & rowSums(data_14_00[,10:36])==2)
data_14_28<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,37]==1 & rowSums(data_14_00[,10:37])==2)
data_14_29<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,38]==1 & rowSums(data_14_00[,10:38])==2)
data_14_30<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,39]==1 & rowSums(data_14_00[,10:39])==2)
data_14_31<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,40]==1 & rowSums(data_14_00[,10:40])==2)
data_14_32<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,41]==1 & rowSums(data_14_00[,10:41])==2)
data_14_33<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,42]==1 & rowSums(data_14_00[,10:42])==2)
data_14_34<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,43]==1 & rowSums(data_14_00[,10:43])==2)
data_14_35<-data_14_00 %>% filter(data_14_00[,23]==1& data_14_00[,44]==1 & rowSums(data_14_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 120, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 120, remove

L <- mget(ls(pattern = "^data_14_\\d+$"))

write.xlsx(L, "D:/14_DeathOut.xlsx")



data_15_00<-data_15 #death 270
data_15_15<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,24]==1 & rowSums(data_15_00[,10:44])==1)
data_15_16<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,25]==1 & rowSums(data_15_00[,10:25])==2)
data_15_17<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,26]==1 & rowSums(data_15_00[,10:26])==2)
data_15_18<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,27]==1 & rowSums(data_15_00[,10:27])==2)
data_15_19<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,28]==1 & rowSums(data_15_00[,10:28])==2)
data_15_20<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,29]==1 & rowSums(data_15_00[,10:29])==2)
data_15_21<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,30]==1 & rowSums(data_15_00[,10:30])==2)
data_15_22<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,31]==1 & rowSums(data_15_00[,10:31])==2)
data_15_23<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,32]==1 & rowSums(data_15_00[,10:32])==2)
data_15_24<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,33]==1 & rowSums(data_15_00[,10:33])==2)
data_15_25<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,34]==1 & rowSums(data_15_00[,10:34])==2)
data_15_26<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,35]==1 & rowSums(data_15_00[,10:35])==2)
data_15_27<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,36]==1 & rowSums(data_15_00[,10:36])==2)
data_15_28<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,37]==1 & rowSums(data_15_00[,10:37])==2)
data_15_29<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,38]==1 & rowSums(data_15_00[,10:38])==2)
data_15_30<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,39]==1 & rowSums(data_15_00[,10:39])==2)
data_15_31<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,40]==1 & rowSums(data_15_00[,10:40])==2)
data_15_32<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,41]==1 & rowSums(data_15_00[,10:41])==2)
data_15_33<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,42]==1 & rowSums(data_15_00[,10:42])==2)
data_15_34<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,43]==1 & rowSums(data_15_00[,10:43])==2)
data_15_35<-data_15_00 %>% filter(data_15_00[,24]==1& data_15_00[,44]==1 & rowSums(data_15_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_15_\\d+$"))

write.xlsx(L, "D:/15_RomanceOut.xlsx")





data_16_00<-data_16 #divorce 245
data_16_16<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,25]==1 & rowSums(data_16_00[,10:44])==1)
data_16_17<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,26]==1 & rowSums(data_16_00[,10:26])==2)
data_16_18<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,27]==1 & rowSums(data_16_00[,10:27])==2)
data_16_19<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,28]==1 & rowSums(data_16_00[,10:28])==2)
data_16_20<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,29]==1 & rowSums(data_16_00[,10:29])==2)
data_16_21<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,30]==1 & rowSums(data_16_00[,10:30])==2)
data_16_22<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,31]==1 & rowSums(data_16_00[,10:31])==2)
data_16_23<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,32]==1 & rowSums(data_16_00[,10:32])==2)
data_16_24<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,33]==1 & rowSums(data_16_00[,10:33])==2)
data_16_25<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,34]==1 & rowSums(data_16_00[,10:34])==2)
data_16_26<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,35]==1 & rowSums(data_16_00[,10:35])==2)
data_16_27<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,36]==1 & rowSums(data_16_00[,10:36])==2)
data_16_28<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,37]==1 & rowSums(data_16_00[,10:37])==2)
data_16_29<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,38]==1 & rowSums(data_16_00[,10:38])==2)
data_16_30<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,39]==1 & rowSums(data_16_00[,10:39])==2)
data_16_31<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,40]==1 & rowSums(data_16_00[,10:40])==2)
data_16_32<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,41]==1 & rowSums(data_16_00[,10:41])==2)
data_16_33<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,42]==1 & rowSums(data_16_00[,10:42])==2)
data_16_34<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,43]==1 & rowSums(data_16_00[,10:43])==2)
data_16_35<-data_16_00 %>% filter(data_16_00[,25]==1& data_16_00[,44]==1 & rowSums(data_16_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_16_\\d+$"))

write.xlsx(L, "D:/16_ResidenceOut.xlsx")

data_17_00<-data_17 #accident 245
data_17_17<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,26]==1 & rowSums(data_17_00[,10:44])==1)
data_17_18<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,27]==1 & rowSums(data_17_00[,10:27])==2)
data_17_19<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,28]==1 & rowSums(data_17_00[,10:28])==2)
data_17_20<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,29]==1 & rowSums(data_17_00[,10:29])==2)
data_17_21<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,30]==1 & rowSums(data_17_00[,10:30])==2)
data_17_22<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,31]==1 & rowSums(data_17_00[,10:31])==2)
data_17_23<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,32]==1 & rowSums(data_17_00[,10:32])==2)
data_17_24<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,33]==1 & rowSums(data_17_00[,10:33])==2)
data_17_25<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,34]==1 & rowSums(data_17_00[,10:34])==2)
data_17_26<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,35]==1 & rowSums(data_17_00[,10:35])==2)
data_17_27<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,36]==1 & rowSums(data_17_00[,10:36])==2)
data_17_28<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,37]==1 & rowSums(data_17_00[,10:37])==2)
data_17_29<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,38]==1 & rowSums(data_17_00[,10:38])==2)
data_17_30<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,39]==1 & rowSums(data_17_00[,10:39])==2)
data_17_31<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,40]==1 & rowSums(data_17_00[,10:40])==2)
data_17_32<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,41]==1 & rowSums(data_17_00[,10:41])==2)
data_17_33<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,42]==1 & rowSums(data_17_00[,10:42])==2)
data_17_34<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,43]==1 & rowSums(data_17_00[,10:43])==2)
data_17_35<-data_17_00 %>% filter(data_17_00[,26]==1& data_17_00[,44]==1 & rowSums(data_17_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_17_\\d+$"))

write.xlsx(L, "D:/17_InferiorOut.xlsx")

data_18_00<-data_18 #loseJob 230
data_18_18<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,27]==1 & rowSums(data_18_00[,10:44])==1)
data_18_19<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,28]==1 & rowSums(data_18_00[,10:28])==2)
data_18_20<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,29]==1 & rowSums(data_18_00[,10:29])==2)
data_18_21<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,30]==1 & rowSums(data_18_00[,10:30])==2)
data_18_22<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,31]==1 & rowSums(data_18_00[,10:31])==2)
data_18_23<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,32]==1 & rowSums(data_18_00[,10:32])==2)
data_18_24<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,33]==1 & rowSums(data_18_00[,10:33])==2)
data_18_25<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,34]==1 & rowSums(data_18_00[,10:34])==2)
data_18_26<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,35]==1 & rowSums(data_18_00[,10:35])==2)
data_18_27<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,36]==1 & rowSums(data_18_00[,10:36])==2)
data_18_28<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,37]==1 & rowSums(data_18_00[,10:37])==2)
data_18_29<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,38]==1 & rowSums(data_18_00[,10:38])==2)
data_18_30<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,39]==1 & rowSums(data_18_00[,10:39])==2)
data_18_31<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,40]==1 & rowSums(data_18_00[,10:40])==2)
data_18_32<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,41]==1 & rowSums(data_18_00[,10:41])==2)
data_18_33<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,42]==1 & rowSums(data_18_00[,10:42])==2)
data_18_34<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,43]==1 & rowSums(data_18_00[,10:43])==2)
data_18_35<-data_18_00 %>% filter(data_18_00[,27]==1& data_18_00[,44]==1 & rowSums(data_18_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_18_\\d+$"))

write.xlsx(L, "D:/18_IncidentOut.xlsx")

data_19_00<-data_19 #Bully 218
data_19_19<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,28]==1 & rowSums(data_19_00[,10:44])==1)
data_19_20<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,29]==1 & rowSums(data_19_00[,10:29])==2)
data_19_21<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,30]==1 & rowSums(data_19_00[,10:30])==2)
data_19_22<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,31]==1 & rowSums(data_19_00[,10:31])==2)
data_19_23<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,32]==1 & rowSums(data_19_00[,10:32])==2)
data_19_24<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,33]==1 & rowSums(data_19_00[,10:33])==2)
data_19_25<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,34]==1 & rowSums(data_19_00[,10:34])==2)
data_19_26<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,35]==1 & rowSums(data_19_00[,10:35])==2)
data_19_27<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,36]==1 & rowSums(data_19_00[,10:36])==2)
data_19_28<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,37]==1 & rowSums(data_19_00[,10:37])==2)
data_19_29<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,38]==1 & rowSums(data_19_00[,10:38])==2)
data_19_30<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,39]==1 & rowSums(data_19_00[,10:39])==2)
data_19_31<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,40]==1 & rowSums(data_19_00[,10:40])==2)
data_19_32<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,41]==1 & rowSums(data_19_00[,10:41])==2)
data_19_33<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,42]==1 & rowSums(data_19_00[,10:42])==2)
data_19_34<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,43]==1 & rowSums(data_19_00[,10:43])==2)
data_19_35<-data_19_00 %>% filter(data_19_00[,28]==1& data_19_00[,44]==1 & rowSums(data_19_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_19_\\d+$"))

write.xlsx(L, "D:/19_ChangeFamilyOut.xlsx")

data_20_00<-data_20 #farewell 205
data_20_20<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,29]==1 & rowSums(data_20_00[,10:44])==1)
data_20_21<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,30]==1 & rowSums(data_20_00[,10:30])==2)
data_20_22<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,31]==1 & rowSums(data_20_00[,10:31])==2)
data_20_23<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,32]==1 & rowSums(data_20_00[,10:32])==2)
data_20_24<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,33]==1 & rowSums(data_20_00[,10:33])==2)
data_20_25<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,34]==1 & rowSums(data_20_00[,10:34])==2)
data_20_26<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,35]==1 & rowSums(data_20_00[,10:35])==2)
data_20_27<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,36]==1 & rowSums(data_20_00[,10:36])==2)
data_20_28<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,37]==1 & rowSums(data_20_00[,10:37])==2)
data_20_29<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,38]==1 & rowSums(data_20_00[,10:38])==2)
data_20_30<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,39]==1 & rowSums(data_20_00[,10:39])==2)
data_20_31<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,40]==1 & rowSums(data_20_00[,10:40])==2)
data_20_32<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,41]==1 & rowSums(data_20_00[,10:41])==2)
data_20_33<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,42]==1 & rowSums(data_20_00[,10:42])==2)
data_20_34<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,42]==1 & rowSums(data_20_00[,10:43])==2)
data_20_35<-data_20_00 %>% filter(data_20_00[,29]==1& data_20_00[,42]==1 & rowSums(data_20_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_20_\\d+$"))

write.xlsx(L, "D:/20_LoseJobOut.xlsx")

data_21_00<-data_21 #criminal 186
data_21_21<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,30]==1 & rowSums(data_21_00[,10:44])==1)
data_21_22<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,31]==1 & rowSums(data_21_00[,10:31])==2)
data_21_23<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,32]==1 & rowSums(data_21_00[,10:32])==2)
data_21_24<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,33]==1 & rowSums(data_21_00[,10:33])==2)
data_21_25<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,34]==1 & rowSums(data_21_00[,10:34])==2)
data_21_26<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,35]==1 & rowSums(data_21_00[,10:35])==2)
data_21_27<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,36]==1 & rowSums(data_21_00[,10:36])==2)
data_21_28<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,37]==1 & rowSums(data_21_00[,10:37])==2)
data_21_29<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,38]==1 & rowSums(data_21_00[,10:38])==2)
data_21_30<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,39]==1 & rowSums(data_21_00[,10:39])==2)
data_21_31<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,40]==1 & rowSums(data_21_00[,10:40])==2)
data_21_32<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,41]==1 & rowSums(data_21_00[,10:41])==2)
data_21_33<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,42]==1 & rowSums(data_21_00[,10:42])==2)
data_21_34<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,43]==1 & rowSums(data_21_00[,10:43])==2)
data_21_35<-data_21_00 %>% filter(data_21_00[,30]==1& data_21_00[,44]==1 & rowSums(data_21_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_21_\\d+$"))

write.xlsx(L, "D:/21_FarewellOut.xlsx")


data_22_00<-data_22 #future 137
data_22_22<-data_22_00 %>% filter(data_22_00[,31]==1& data_22_00[,31]==1 & rowSums(data_22_00[,10:44])==1)
data_22_23<-data_22_00 %>% filter(data_22_00[,31]==1& data_22_00[,32]==1 & rowSums(data_22_00[,10:32])==2)
data_22_24<-data_22_00 %>% filter(data_22_00[,31]==1& data_22_00[,33]==1 & rowSums(data_22_00[,10:33])==2)
data_22_25<-data_22_00 %>% filter(data_22_00[,31]==1& data_22_00[,34]==1 & rowSums(data_22_00[,10:34])==2)
data_22_26<-data_22_00 %>% filter(data_22_00[,31]==1& data_22_00[,35]==1 & rowSums(data_22_00[,10:35])==2)
data_22_27<-data_22_00 %>% filter(data_22_00[,31]==1& data_22_00[,36]==1 & rowSums(data_22_00[,10:36])==2)
data_22_28<-data_22_00 %>% filter(data_22_00[,31]==1& data_22_00[,37]==1 & rowSums(data_22_00[,10:37])==2)
data_22_29<-data_22_00 %>% filter(data_22_00[,31]==1& data_22_00[,38]==1 & rowSums(data_22_00[,10:38])==2)
data_22_30<-data_22_00 %>% filter(data_22_00[,31]==1& data_22_00[,39]==1 & rowSums(data_22_00[,10:39])==2)
data_22_31<-data_22_00 %>% filter(data_22_00[,31]==1& data_22_00[,40]==1 & rowSums(data_22_00[,10:40])==2)
data_22_32<-data_22_00 %>% filter(data_22_00[,31]==1& data_22_00[,41]==1 & rowSums(data_22_00[,10:41])==2)
data_22_33<-data_22_00 %>% filter(data_22_00[,31]==1& data_22_00[,42]==1 & rowSums(data_22_00[,10:42])==2)
data_22_34<-data_22_00 %>% filter(data_22_00[,31]==1& data_22_00[,43]==1 & rowSums(data_22_00[,10:43])==2)
data_22_35<-data_22_00 %>% filter(data_22_00[,31]==1& data_22_00[,44]==1 & rowSums(data_22_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_22_\\d+$"))

write.xlsx(L, "D:/22_ViolenceOut.xlsx")




data_23_00<-data_23 #future 137
data_23_23<-data_23_00 %>% filter(data_23_00[,32]==1& data_23_00[,32]==1 & rowSums(data_23_00[,10:44])==1)
data_23_24<-data_23_00 %>% filter(data_23_00[,32]==1& data_23_00[,33]==1 & rowSums(data_23_00[,10:33])==2)
data_23_25<-data_23_00 %>% filter(data_23_00[,32]==1& data_23_00[,34]==1 & rowSums(data_23_00[,10:34])==2)
data_23_26<-data_23_00 %>% filter(data_23_00[,32]==1& data_23_00[,35]==1 & rowSums(data_23_00[,10:35])==2)
data_23_27<-data_23_00 %>% filter(data_23_00[,32]==1& data_23_00[,36]==1 & rowSums(data_23_00[,10:36])==2)
data_23_28<-data_23_00 %>% filter(data_23_00[,32]==1& data_23_00[,37]==1 & rowSums(data_23_00[,10:37])==2)
data_23_29<-data_23_00 %>% filter(data_23_00[,32]==1& data_23_00[,38]==1 & rowSums(data_23_00[,10:38])==2)
data_23_30<-data_23_00 %>% filter(data_23_00[,32]==1& data_23_00[,39]==1 & rowSums(data_23_00[,10:39])==2)
data_23_31<-data_23_00 %>% filter(data_23_00[,32]==1& data_23_00[,40]==1 & rowSums(data_23_00[,10:40])==2)
data_23_32<-data_23_00 %>% filter(data_23_00[,32]==1& data_23_00[,41]==1 & rowSums(data_23_00[,10:41])==2)
data_23_33<-data_23_00 %>% filter(data_23_00[,32]==1& data_23_00[,42]==1 & rowSums(data_23_00[,10:42])==2)
data_23_34<-data_23_00 %>% filter(data_23_00[,32]==1& data_23_00[,43]==1 & rowSums(data_23_00[,10:43])==2)
data_23_35<-data_23_00 %>% filter(data_23_00[,32]==1& data_23_00[,44]==1 & rowSums(data_23_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_23_\\d+$"))

write.xlsx(L, "D:/23_AppearOut.xlsx")






data_24_00<-data_24 #future 137
data_24_24<-data_24_00 %>% filter(data_24_00[,33]==1& data_24_00[,33]==1 & rowSums(data_24_00[,10:44])==1)
data_24_25<-data_24_00 %>% filter(data_24_00[,33]==1& data_24_00[,34]==1 & rowSums(data_24_00[,10:34])==2)
data_24_26<-data_24_00 %>% filter(data_24_00[,33]==1& data_24_00[,35]==1 & rowSums(data_24_00[,10:35])==2)
data_24_27<-data_24_00 %>% filter(data_24_00[,33]==1& data_24_00[,36]==1 & rowSums(data_24_00[,10:36])==2)
data_24_28<-data_24_00 %>% filter(data_24_00[,33]==1& data_24_00[,37]==1 & rowSums(data_24_00[,10:37])==2)
data_24_29<-data_24_00 %>% filter(data_24_00[,33]==1& data_24_00[,38]==1 & rowSums(data_24_00[,10:38])==2)
data_24_30<-data_24_00 %>% filter(data_24_00[,33]==1& data_24_00[,39]==1 & rowSums(data_24_00[,10:39])==2)
data_24_31<-data_24_00 %>% filter(data_24_00[,33]==1& data_24_00[,40]==1 & rowSums(data_24_00[,10:40])==2)
data_24_32<-data_24_00 %>% filter(data_24_00[,33]==1& data_24_00[,41]==1 & rowSums(data_24_00[,10:41])==2)
data_24_33<-data_24_00 %>% filter(data_24_00[,33]==1& data_24_00[,42]==1 & rowSums(data_24_00[,10:42])==2)
data_24_34<-data_24_00 %>% filter(data_24_00[,33]==1& data_24_00[,43]==1 & rowSums(data_24_00[,10:43])==2)
data_24_35<-data_24_00 %>% filter(data_24_00[,33]==1& data_24_00[,44]==1 & rowSums(data_24_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_24_\\d+$"))

write.xlsx(L, "D:/24_FutureOut.xlsx")


data_25_00<-data_25 #future 137
data_25_25<-data_25_00 %>% filter(data_25_00[,34]==1& data_25_00[,34]==1 & rowSums(data_25_00[,10:44])==1)
data_25_26<-data_25_00 %>% filter(data_25_00[,34]==1& data_25_00[,35]==1 & rowSums(data_25_00[,10:35])==2)
data_25_27<-data_25_00 %>% filter(data_25_00[,34]==1& data_25_00[,36]==1 & rowSums(data_25_00[,10:36])==2)
data_25_28<-data_25_00 %>% filter(data_25_00[,34]==1& data_25_00[,37]==1 & rowSums(data_25_00[,10:37])==2)
data_25_29<-data_25_00 %>% filter(data_25_00[,34]==1& data_25_00[,38]==1 & rowSums(data_25_00[,10:38])==2)
data_25_30<-data_25_00 %>% filter(data_25_00[,34]==1& data_25_00[,39]==1 & rowSums(data_25_00[,10:39])==2)
data_25_31<-data_25_00 %>% filter(data_25_00[,34]==1& data_25_00[,40]==1 & rowSums(data_25_00[,10:40])==2)
data_25_32<-data_25_00 %>% filter(data_25_00[,34]==1& data_25_00[,41]==1 & rowSums(data_25_00[,10:41])==2)
data_25_33<-data_25_00 %>% filter(data_25_00[,34]==1& data_25_00[,42]==1 & rowSums(data_25_00[,10:42])==2)
data_25_34<-data_25_00 %>% filter(data_25_00[,34]==1& data_25_00[,43]==1 & rowSums(data_25_00[,10:43])==2)
data_25_35<-data_25_00 %>% filter(data_25_00[,34]==1& data_25_00[,44]==1 & rowSums(data_25_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_25_\\d+$"))

write.xlsx(L, "D:/25_EmotionOut.xlsx")


data_26_00<-data_26 #future 137
data_26_26<-data_26_00 %>% filter(data_26_00[,35]==1& data_26_00[,35]==1 & rowSums(data_26_00[,10:44])==1)
data_26_27<-data_26_00 %>% filter(data_26_00[,35]==1& data_26_00[,36]==1 & rowSums(data_26_00[,10:36])==2)
data_26_28<-data_26_00 %>% filter(data_26_00[,35]==1& data_26_00[,37]==1 & rowSums(data_26_00[,10:37])==2)
data_26_29<-data_26_00 %>% filter(data_26_00[,35]==1& data_26_00[,38]==1 & rowSums(data_26_00[,10:38])==2)
data_26_30<-data_26_00 %>% filter(data_26_00[,35]==1& data_26_00[,39]==1 & rowSums(data_26_00[,10:39])==2)
data_26_31<-data_26_00 %>% filter(data_26_00[,35]==1& data_26_00[,40]==1 & rowSums(data_26_00[,10:40])==2)
data_26_32<-data_26_00 %>% filter(data_26_00[,35]==1& data_26_00[,41]==1 & rowSums(data_26_00[,10:41])==2)
data_26_33<-data_26_00 %>% filter(data_26_00[,35]==1& data_26_00[,42]==1 & rowSums(data_26_00[,10:42])==2)
data_26_34<-data_26_00 %>% filter(data_26_00[,35]==1& data_26_00[,43]==1 & rowSums(data_26_00[,10:43])==2)
data_26_35<-data_26_00 %>% filter(data_26_00[,35]==1& data_26_00[,44]==1 & rowSums(data_26_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_26_\\d+$"))

write.xlsx(L, "D:/26_PetOut.xlsx")



data_27_00<-data_27 #future 137
data_27_27<-data_27_00 %>% filter(data_27_00[,36]==1& data_27_00[,36]==1 & rowSums(data_27_00[,10:44])==1)
data_27_28<-data_27_00 %>% filter(data_27_00[,36]==1& data_27_00[,37]==1 & rowSums(data_27_00[,10:37])==2)
data_27_29<-data_27_00 %>% filter(data_27_00[,36]==1& data_27_00[,38]==1 & rowSums(data_27_00[,10:38])==2)
data_27_30<-data_27_00 %>% filter(data_27_00[,36]==1& data_27_00[,39]==1 & rowSums(data_27_00[,10:39])==2)
data_27_31<-data_27_00 %>% filter(data_27_00[,36]==1& data_27_00[,40]==1 & rowSums(data_27_00[,10:40])==2)
data_27_32<-data_27_00 %>% filter(data_27_00[,36]==1& data_27_00[,41]==1 & rowSums(data_27_00[,10:41])==2)
data_27_33<-data_27_00 %>% filter(data_27_00[,36]==1& data_27_00[,42]==1 & rowSums(data_27_00[,10:42])==2)
data_27_34<-data_27_00 %>% filter(data_27_00[,36]==1& data_27_00[,43]==1 & rowSums(data_27_00[,10:43])==2)
data_27_35<-data_27_00 %>% filter(data_27_00[,36]==1& data_27_00[,44]==1 & rowSums(data_27_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_27_\\d+$"))

write.xlsx(L, "D:/27_SocialIssueOut.xlsx")



data_28_00<-data_28 #future 137
data_28_28<-data_28_00 %>% filter(data_28_00[,37]==1& data_28_00[,37]==1 & rowSums(data_28_00[,10:44])==1)
data_28_29<-data_28_00 %>% filter(data_28_00[,37]==1& data_28_00[,38]==1 & rowSums(data_28_00[,10:38])==2)
data_28_30<-data_28_00 %>% filter(data_28_00[,37]==1& data_28_00[,39]==1 & rowSums(data_28_00[,10:39])==2)
data_28_31<-data_28_00 %>% filter(data_28_00[,37]==1& data_28_00[,40]==1 & rowSums(data_28_00[,10:40])==2)
data_28_32<-data_28_00 %>% filter(data_28_00[,37]==1& data_28_00[,41]==1 & rowSums(data_28_00[,10:41])==2)
data_28_33<-data_28_00 %>% filter(data_28_00[,37]==1& data_28_00[,42]==1 & rowSums(data_28_00[,10:42])==2)
data_28_34<-data_28_00 %>% filter(data_28_00[,37]==1& data_28_00[,43]==1 & rowSums(data_28_00[,10:43])==2)
data_28_35<-data_28_00 %>% filter(data_28_00[,37]==1& data_28_00[,44]==1 & rowSums(data_28_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_28_\\d+$"))

write.xlsx(L, "D:/28_SuicideOut.xlsx")



data_29_00<-data_29 #future 137
data_29_29<-data_29_00 %>% filter(data_29_00[,38]==1& data_29_00[,38]==1 & rowSums(data_29_00[,10:44])==1)
data_29_30<-data_29_00 %>% filter(data_29_00[,38]==1& data_29_00[,39]==1 & rowSums(data_29_00[,10:39])==2)
data_29_31<-data_29_00 %>% filter(data_29_00[,38]==1& data_29_00[,40]==1 & rowSums(data_29_00[,10:40])==2)
data_29_32<-data_29_00 %>% filter(data_29_00[,38]==1& data_29_00[,41]==1 & rowSums(data_29_00[,10:41])==2)
data_29_33<-data_29_00 %>% filter(data_29_00[,38]==1& data_29_00[,42]==1 & rowSums(data_29_00[,10:42])==2)
data_29_34<-data_29_00 %>% filter(data_29_00[,38]==1& data_29_00[,42]==1 & rowSums(data_29_00[,10:43])==2)
data_29_35<-data_29_00 %>% filter(data_29_00[,38]==1& data_29_00[,42]==1 & rowSums(data_29_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_29_\\d+$"))

write.xlsx(L, "D:/29_PregnancyOut.xlsx")


data_30_00<-data_30 #future 137
data_30_30<-data_30_00 %>% filter(data_30_00[,39]==1& data_30_00[,39]==1 & rowSums(data_30_00[,10:44])==1)
data_30_31<-data_30_00 %>% filter(data_30_00[,39]==1& data_30_00[,40]==1 & rowSums(data_30_00[,10:40])==2)
data_30_32<-data_30_00 %>% filter(data_30_00[,39]==1& data_30_00[,41]==1 & rowSums(data_30_00[,10:41])==2)
data_30_33<-data_30_00 %>% filter(data_30_00[,39]==1& data_30_00[,42]==1 & rowSums(data_30_00[,10:42])==2)
data_30_34<-data_30_00 %>% filter(data_30_00[,39]==1& data_30_00[,43]==1 & rowSums(data_30_00[,10:43])==2)
data_30_35<-data_30_00 %>% filter(data_30_00[,39]==1& data_30_00[,44]==1 & rowSums(data_30_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_30_\\d+$"))

write.xlsx(L, "D:/30_ToForignOut.xlsx")


data_31_00<-data_31 #future 137
data_31_31<-data_31_00 %>% filter(data_31_00[,40]==1& data_31_00[,40]==1 & rowSums(data_31_00[,10:44])==1)
data_31_32<-data_31_00 %>% filter(data_31_00[,40]==1& data_31_00[,41]==1 & rowSums(data_31_00[,10:41])==2)
data_31_33<-data_31_00 %>% filter(data_31_00[,40]==1& data_31_00[,42]==1 & rowSums(data_31_00[,10:42])==2)
data_31_34<-data_31_00 %>% filter(data_31_00[,40]==1& data_31_00[,43]==1 & rowSums(data_31_00[,10:43])==2)
data_31_35<-data_31_00 %>% filter(data_31_00[,40]==1& data_31_00[,44]==1 & rowSums(data_31_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_31_\\d+$"))

write.xlsx(L, "D:/31_ToArmyOut.xlsx")


data_32_00<-data_32 #future 137
data_32_32<-data_32_00 %>% filter(data_32_00[,41]==1& data_32_00[,41]==1 & rowSums(data_32_00[,10:44])==1)
data_32_33<-data_32_00 %>% filter(data_32_00[,41]==1& data_32_00[,42]==1 & rowSums(data_32_00[,10:42])==2)
data_32_34<-data_32_00 %>% filter(data_32_00[,41]==1& data_32_00[,43]==1 & rowSums(data_32_00[,10:43])==2)
data_32_35<-data_32_00 %>% filter(data_32_00[,41]==1& data_32_00[,44]==1 & rowSums(data_32_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_32_\\d+$"))

write.xlsx(L, "D:/32_BetrayOut.xlsx")



data_33_00<-data_33 #future 137
data_33_33<-data_33_00 %>% filter(data_33_00[,42]==1& data_33_00[,42]==1 & rowSums(data_33_00[,10:44])==1)
data_33_34<-data_33_00 %>% filter(data_33_00[,42]==1& data_33_00[,43]==1 & rowSums(data_33_00[,10:43])==2)
data_33_35<-data_33_00 %>% filter(data_33_00[,42]==1& data_33_00[,44]==1 & rowSums(data_33_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_33_\\d+$"))

write.xlsx(L, "D:/33_LegalOut.xlsx")



data_34_00<-data_34 #future 137
data_34_34<-data_34_00 %>% filter(data_34_00[,43]==1& data_34_00[,43]==1 & rowSums(data_34_00[,10:44])==1)
data_34_35<-data_34_00 %>% filter(data_34_00[,43]==1& data_34_00[,44]==1 & rowSums(data_34_00[,10:44])==2)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_34_\\d+$"))

write.xlsx(L, "D:/34_HolidayOut.xlsx")



data_35_00<-data_35 #future 137
data_35_35<-data_35_00 %>% filter(data_35_00[,43]==1& data_35_00[,43]==1 & rowSums(data_35_00[,10:44])==1)


to.rm <- unlist(eapply(.GlobalEnv, function(x) is.data.frame(x) && nrow(x) < 100 )) #less than 160, remove
rm(list = names(to.rm)[to.rm], envir = .GlobalEnv)  #less than 160, remove

L <- mget(ls(pattern = "^data_35_\\d+$"))

write.xlsx(L, "D:/35_DisasterOut.xlsx")

