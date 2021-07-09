# Lloyd Huang
# Analysis of Variance (ANOVA)

library(agricolae)

# 先讀檔案，須包含目標性質(y)及你的treatment label(至少三種)
setwd("D:/University/Lab/Silicon/土樣來源/data")
dat <- read.csv("BOX.csv")

# 設定y以及treatment是什麼，此處是ASi及Level
y <- dat$ASi 
treat <- as.factor(dat$Level)
data <- data.frame(y, treat)
# 資料處理好之後就開始ANOVA
fit=lm(y~treat,data=data)
anova(fit)  # 如果Pr > 0.05就不顯著QQ

# Post hoc
LSD.test(fit,"treat",alpha=0.05, console=T)
HSD.test(fit,"treat",alpha=0.05, console=T)
# 不顯著的話你怎麼post hoc都沒有用啦






