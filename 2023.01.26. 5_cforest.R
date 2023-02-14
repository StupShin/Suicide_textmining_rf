set.seed(7654321)
#setwd('/Users/shin/Desktop')
#setwd('D:/')
setwd('R:/')

pacman::p_load(party,caret,pROC)

dat<-as.data.frame(readxl::read_xlsx('4_with episode_wideform_1696.xlsx'))

category<-dat[,c(17:51)]

sad<-dat[,6]
sad<-ifelse(sad>=9,1,0)
anx<-dat[,7]
anx<-ifelse(anx>=8,1,0)

data_sad<-cbind(category,sad)
data_anx<-cbind(category,anx)

data_sad$sad<-as.factor(data_sad$sad)
data_anx$anx<-as.factor(data_anx$anx) #이거 없으면 terminal node의 그래프가 안 그려짐.

data_sad<-na.omit(data_sad)
data_anx<-na.omit(data_anx)

idx_sad <- createDataPartition(data_sad$sad, p=0.7, list=FALSE)
idx_anx <- createDataPartition(data_anx$anx, p=0.7, list=FALSE)

train_sad<-data_sad[idx_sad,] 
train_anx<-data_anx[idx_anx,]

test_sad<- data_sad[-idx_sad,]
test_anx<- data_anx[-idx_sad,]


#####
#####cforest(anx)
y_anx <-cforest(anx~., data=train_anx, control=cforest_unbiased(mtry=33, ntree=1000, maxdepth=7))

# 테스트
pred = predict(y_anx, newdata=test_anx, OOB=T, type = 'response')
# 분류표
table(pred, test_anx$anx)
# 정분류율
sum(pred ==test_anx$anx)/nrow(test_anx)

# ROC 곡선
pacman::p_load(ROCR)


probabilities <- 1- unlist(treeresponse(y_anx, newdata=test_anx), 
                           use.names=F)[seq(1,nrow(test_anx)*2,2)]


predd <- prediction(probabilities, test_anx$anx)
perf <- performance(predd,"tpr","fpr")
par(new=TRUE)
plot(perf, main="ROC curve", colorize=F) # T로 해야 하나?
abline(a=0,b=1, col=4)
text(0.8,0.2, labels= 'AUC = 0.630')
par(new=FALSE)

# And then a lift chart
perf <- performance(predd,"lift","rpp")
plot(perf, main="lift curve", colorize=F)

auc_anx<- performance(predd, measure = "auc")
auc_anx<- auc_anx@y.values[[1]]


tr <- party:::prettytree(y_anx@ensemble[[1]], names(y_anx@data@get("input")))

update_tree <- function(x) {
  if(!x$terminal) {
    x$left <- update_tree(x$left)
    x$right <- update_tree(x$right)
  } else {
    x$weights <- x[[9]]
    x$weights_ <- x[[9]]
  }
  x
}
tr_weights <- update_tree(tr)
png(filename='anx_rf_tree1.png',width=1160,height=490,bg='transparent',res=200)
plot(new("BinaryTree", tree=tr_weights, data=y_anx@data, responses=y_anx@responses))
dev.off()
png(filename='anx_rf_tree2.png',width=1160,height=490,bg='transparent',res=200)
plot(new("BinaryTree", tree=tr_weights, data=y_anx@data, responses=y_anx@responses),type='simple')
dev.off()

anx.varimp<-as.data.frame(varimp(y_anx))
anx.varimp<-cbind(" "=rownames(anx.varimp), anx.varimp)

writexl::write_xlsx(anx.varimp,path='anx.varimp.xlsx',col_names = TRUE)



#####
#####cforest(sad)

y_sad <-cforest(sad~., data=train_sad, control=cforest_unbiased(mtry=33, ntree=1000, maxdepth=7))

# 테스트
pred = predict(y_sad, newdata=test_sad, OOB=T, type = 'response')
# 분류표
table(pred, test_sad$sad)
# 정분류율
sum(pred ==test_sad$sad)/nrow(test_sad)

# ROC 곡선
pacman::p_load(ROCR)


probabilities <- 1- unlist(treeresponse(y_sad, newdata=test_sad), 
                           use.names=F)[seq(1,nrow(test_sad)*2,2)]


predd <- prediction(probabilities, test_sad$sad)
perf <- performance(predd,"tpr","fpr")
par(new=TRUE)
plot(perf, main="ROC curve", colorize=F) # T로 해야 하나?
abline(a=0,b=1, col=4)
text(0.8,0.2, labels= 'AUC = 0.566')
par(new=FALSE)

# And then a lift chart
perf <- performance(predd,"lift","rpp")
plot(perf, main="lift curve", colorize=F)

auc_sad<- performance(predd, measure = "auc")
auc_sad<- auc_sad@y.values[[1]]


tr <- party:::prettytree(y_sad@ensemble[[1]], names(y_sad@data@get("input")))

update_tree <- function(x) {
  if(!x$terminal) {
    x$left <- update_tree(x$left)
    x$right <- update_tree(x$right)
  } else {
    x$weights <- x[[9]]
    x$weights_ <- x[[9]]
  }
  x
}
tr_weights <- update_tree(tr)
png(filename='sad_rf_tree1.png',width=4000,height=1500,bg='transparent',res=200)
plot(new("BinaryTree", tree=tr_weights, data=y_sad@data, responses=y_sad@responses))
dev.off()
png(filename='sad_rf_tree2.png',width=4000,height=1500,bg='transparent',res=200)
plot(new("BinaryTree", tree=tr_weights, data=y_sad@data, responses=y_sad@responses),type='simple')
dev.off()

sad.varimp<-as.data.frame(varimp(y_sad))
sad.varimp<-cbind(" "=rownames(sad.varimp), sad.varimp)

writexl::write_xlsx(sad.varimp,path='sad.varimp.xlsx',col_names = TRUE)

