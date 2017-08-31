# Visualisations
library(Hmisc)
library(ggplot2)


summaryCSfSYM <- tmpFert %>%
  group_by(CSf, System) %>%
  summarise(csfCountS=n(), csfAvgS=mean(PStat, na.rm=T)) %>% 
  
  ggplot(aes(x=CSf, y=csfAvgS)) +
  geom_point(aes(size=csfCountS, colour = System), alpha=0.4) +
  geom_line(aes(colour = System, group=System), alpha=0.6) +
  ylim(c(0,1)) + theme_bw() +
  labs(title="Summary for Body Condition on Pregnancy Status",
       x="Body Condition",
       y="Pregnancy Status")

summaryCSfSYM

#Made some changes to test the Version Control of GitHub ;)



