library(ggplot2)
setwd("E:/paper_POI&cases/paper_revision/9delay")
data1= read.csv("1_9delay_A_CP_result.csv")
data2= read.csv("2_9delay_A_result.csv")
data3= read.csv("3_9delay_A_result.csv")
data4= read.csv("4_9delay_A_result.csv")
data5= read.csv("5_9delay_A_CP_result.csv")
data6= read.csv("6_9delay_A_CP_result.csv")

ggplot()+
  geom_line(data=data1, mapping=(aes(x=data1$r,y=data1$obs)),lwd=0.8,col="#FF9933")+ # »Æ
  geom_line(data=data2, mapping=(aes(x=data2$r,y=data2$obs)),lwd=0.8,col="#EE1100")+ # ºì
  geom_line(data=data3, mapping=(aes(x=data3$r,y=data3$obs)),lwd=0.8,col="#00CC66")+ # ÂÌ
  geom_line(data=data4, mapping=(aes(x=data4$r,y=data4$obs)),lwd=0.8,col="#0066CC")+ # À¶
  geom_line(data=data5, mapping=(aes(x=data5$r,y=data5$obs)),lwd=0.8,col="#660099")+ # ×Ï
  geom_line(data=data6, mapping=(aes(x=data6$r,y=data6$obs)),lwd=0.8,col="#FF0066")+ # ·Û  
  theme_classic()+xlab("r")+ylab("Lhat(r)")
ggsave(file="9delay.jpeg", width=4, height=3, dpi=300)