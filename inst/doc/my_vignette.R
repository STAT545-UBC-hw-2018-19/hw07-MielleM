## ------------------------------------------------------------------------
library(tidyverse)
library(getmode)

## ------------------------------------------------------------------------
allcolors <- c("red", "red", "yellow", "orange", "green", "blue", "purple", "purple", "black", "white")

## ------------------------------------------------------------------------
color <- group_by(as_data_frame
         (as_factor
           (c(allcolors))),
         value)

color

## ------------------------------------------------------------------------
mode <- modefunction(color)

