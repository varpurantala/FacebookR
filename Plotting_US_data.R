library(readr)
library(tidyverse)
library(stringr)
library(scales)
library(RCurl)

urldata = getURL("https://raw.githubusercontent.com/varpurantala/FacebookR/master/US_Election_Facebook.csv")

dataa <- read_csv(urldata)

colnames(dataa) <- colnames(dataa) %>% str_to_lower()

# inspect
dataa %>% names()
require(scales)
require(reshape2)
plotz = ggplot() +
  geom_line(data = dataa, aes(x = as.numeric(x1), y=(donald j. trump)), color='red') +
              geom_line(data = dataa, aes(x = as.numeric(x1), y=(hillary clinton)), color='#00b8ff') +
                          scale_y_continuous(labels = comma) +
                          scale_colour_manual(name="Candidate", values=cols) +
                          labs( x = 'Week, 2016',
                                y = 'Engagement',
                                title = "Trump's Facebook Page Skyrocketed Before Election") +
                          theme(text = element_text(family = 'Gill Sans', color = "#444444")
                                ,panel.background = element_rect(fill = '#444B5A')
                                ,panel.grid.minor = element_line(color = '#4d5566')
                                ,panel.grid.major = element_line(color = '#586174')
                                ,plot.title = element_text(size = 16)
                                ,axis.title = element_text(size = 10, color = '#555555')
                                ,axis.title.y = element_text(vjust = 1, angle = 0)
                                ,axis.title.x = element_text(hjust = 0)
                          ) 
                        
                        
                        
                        
                        
                        plotz
                        
                        
                        
                        