library(ggplot2)
library(data.table)
library(directlabels)


fodelse.dfr <- read.csv('fodelseland.csv', header=T)
names(fodelse.dfr) <- c('Land','1900','1930','1950','1960','1970','1980','1990','2000','2010','2020','2023')

# make long format
fodelse.dfr <- melt(setDT(fodelse.dfr), id.vars = 'Land',  variable.name = "Year")

fodelse.dfr$value <- as.numeric(fodelse.dfr$value)
fodelse.dfr$Year <- as.numeric(as.character(fodelse.dfr$Year))
fodelse.dfr$Land <- as.factor(fodelse.dfr$Land)

fodelse.dfr$value[is.na(fodelse.dfr$value)] <- 0


# Order Land after value for the year 2023
subs <- fodelse.dfr[fodelse.dfr$Year==2023]
landordning <- subs$Land[order(-subs$value)]
fodelse.dfr$Land <- factor(fodelse.dfr$Land, landordning)

# vector for placing Land labels

subs$Land <- factor(subs$Land, landordning)
subs = subs[with(subs, order(Land, levels(subs$Land))),]

subs$cum <- rev(cumsum(rev(subs$value)))
subs$label.y <- subs$cum-(subs$val/2)

subs$labeltext <- paste0(subs$Land, '    (',format(subs$value, big.mark=" ", trim=T),')')
subs$labeltext[11:19] <- ""
subs$labeltextpar <- paste0('(',format(subs$value, big.mark=" ", trim=T),')')
subs$labeltextpar[11:19] <- ""


redge<- 2026
ggplot(fodelse.dfr, aes(x=Year,y=value, group=Land, fill=Land)) +
  geom_area(position="stack", show.legend=F)+
  geom_line(color="black", position="stack", size=.2) +
scale_y_continuous(
   labels = scales::comma,
   breaks = seq(0,sum(fodelse.dfr$value[fodelse.dfr$Year==2023], na.rm=T),by=100000)
 ) +
scale_x_continuous(
   limits = c(1960,redge),
   breaks = c(seq(1960, 2020, by=10),2023),
   minor_breaks = NULL
) +
# cosmetics
ylab(element_blank())+
xlab(element_blank())+
theme_minimal() +
geom_text(
    data=subs
  , hjust='left'
  , aes(label=c(levels(subs$Land)[1:10],rep('',9)), x=2023.5, y=label.y)
  # , aes(label=labeltext, x=2023.5, y=label.y)
  , size=2
)
ggsave('fodelse.png', units='cm', width=20, height=10)

sum(subs$value)


sum(fodelse.dfr$value[fodelse.dfr$Year==1960])
  # [1] 197
