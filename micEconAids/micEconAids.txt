# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Almost ideal demand systems (AIDS) Use micEconAids With (In) R Software
install.packages("micEconAids")
install.packages("carData")
library("micEconAids")
library("carData")
# Import Data Csv Into R From Github Olah Data Semarang (timbulwidodostp)
micEconAids=read.csv("https://github.com/timbulwidodostp/micEconAids/raw/main/micEconAids/micEconAids.csv",sep = ";")
# Estimate Almost ideal demand systems (AIDS) Use micEconAids With (In) R Software
priceNames<-c("pFood1","pFood2","pFood3","pFood4")
shareNames<-c("wFood1", "wFood2","wFood3","wFood4")
quaids<-aidsEst(priceNames,shareNames,"xFood",data=micEconAids,priceIndex ="S")
print(quaids)
summary(quaids)
# Almost ideal demand systems (AIDS) Use micEconAids With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished
