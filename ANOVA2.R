#1要因分散分析(参加者間計画)

#データ
dat <- read.csv("ch06one-way.csv", header=TRUE)
dat$Class <- factor(dat$Class)
attach(dat)
m.dat <- tapply(Score, Class, mean)
sd.dat <- tapply(Score, Class, sd)

table(Class)                # 各グループの人数確認
m.dat # 各グループの平均
sd.dat # 各グループの標準偏差

#等分散性の検定
library(car)
leveneTest(Score, Class, center=mean)

#分析
anova(lm(Score~Class))

#多重比較
TukeyHSD(aov(Score~Class))