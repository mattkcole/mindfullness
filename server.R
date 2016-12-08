library(shiny)
library(shinyjs)
library(readr)
library(dplyr)

write_date <- function(){
        date() %>%
                as.data.frame() %>%
                write_csv("TEST")
}

shinyServer(function(input, output, session) {
        onevent("keypress", "Audio1", write_date()) # click, dblclick, hover, 
        # mousedown, mouseenter, mouseleave, mousemove, mouseout, mouseover, 
        # mouseup, keydown, keypress, keyup
        input$plays 
})
