library("dplyr"); library("readr")

as.data.frame(date()) %>%
        cbind("event") %>%
        write_csv("TEST")


