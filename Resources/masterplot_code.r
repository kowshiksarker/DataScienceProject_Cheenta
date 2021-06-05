library(ggplot2)
library(rayshader)


plot = ggplot(Data, aes(Country, City)) +
geom_jitter(aes(color = PercentOfBaseline), size = 0.5) +
theme(axis.text = element_text(size = 12),
title = element_text(size = 12,face="bold"),
panel.border= element_rect(size=2,color="black",fill=NA))

plot_gg(plot, multicore = TRUE, width = 8, height = 8, scale = 300,
zoom = 0.6, phi = 60,
background = "#afceff",shadowcolor = "#3a4f70")

render_movie(filename = "plot", type = "orbit", phi = 45, theta = 60)