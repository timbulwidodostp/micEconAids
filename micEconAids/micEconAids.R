# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Almost ideal demand systems (AIDS) Use micEconAids With (In) R Software
install.packages("readxl")
install.packages("httr")
install.packages("micEconAids")
library("httr")
library("readxl")
library("micEconAids")
# Import Data Excel Into R From Github Olah Data Semarang (timbulwidodostp)
github_link <- "https://github.com/timbulwidodostp/micEconAids/raw/main/micEconAids/micEconAids.xlsx"
temp_file <- tempfile(fileext = ".xlsx")
req <- GET(github_link, 
# authenticate using GITHUB_PAT
authenticate(Sys.getenv("GITHUB_PAT"), ""),
# write result to disk
write_disk(path = temp_file))
micEconAids <- readxl::read_excel(temp_file)
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