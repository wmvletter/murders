library(tidyverse)
load("~/projects/murders/rda/murders.rda")

murders %>% mutate(region = factor(region), rate = total/population * 10^5,abb = reorder(abb, rate)) %>% 
  ggplot(aes(abb, rate)) +
  geom_bar(width = 0.5, stat = "identity", color = "black") + 
  coord_flip()

ggsave("figs/barplot.png")
