#1要因分散分析(参加者内計画)

#データ
dat <- read.csv("ch06one-way-repeated.csv", header=TRUE)
source("anovakun_485.txt")

anovakun(dat, "sA", 3)