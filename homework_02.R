View(Orange)
# plot() 繪製散佈圖
plot(Orange$age, Orange$circumference, main = "age vs. circumference", xlab = "Age", ylab = "Circumference", las=1)
# plot() 繪製線圖
plot(Orange$age, Orange$circumference, type = "l", main = "age vs. circumference", xlab = "Age", ylab = "Circumference", las=1)
# hist() 繪製直方圖
par(mfrow = c(1, 2))
hist(Orange$age, main = "Distribution of age", xlab = "Age")
hist(Orange$circumference, main = "Distribution of circumference", xlab = "Circumference")
# boxplot() 繪製盒鬚圖
par(mfrow = c(1, 2))
boxplot(Orange$age ~ Orange$Tree, main = "Distribution of age by Tree", cex.main = 0.7)
boxplot(Orange$circumference ~ Orange$Tree, main = "Distribution of circumference by Tree", cex.main = 0.7)
# barplot() 繪製長條圖
par(mfrow = c(1,1))
table(factor(ChickWeight$Diet))
y_lim <- c(0, 1.2 * max(table(ChickWeight$Diet)))
bar_plt <- barplot(table(ChickWeight$Diet), main = "Chicken counts by diet types", xlab = "Diet", ylab = "Chicken counts", ylim = y_lim, las = 1)
text(x = bar_plt, y = table(ChickWeight$Diet), label = table(ChickWeight$Diet), pos = 3)

