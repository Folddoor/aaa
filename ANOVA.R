#1要因分散分析(参加者間計画)

A <- c(15,9,18,14,18)
B <- c(13,8,8,12,7)
C <- c(10,6,11,7,12)
D <- c(10,7,3,5,7)
statistics_test2 <- c(A,B,C,D)
sidouhou <- c(rep("A",5),rep("B",5),rep("C",5),rep("D",5))
sidouhou2 <- factor(sidouhou)

#分析
aov(statistics_test2~sidouhou2)
summary(aov(statistics_test2~sidouhou2))
#F(3,16)=7.11, p<.01

#多重比較
TukeyHSD((aov(statistics_test2~sidouhou2)))