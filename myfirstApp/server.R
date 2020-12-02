#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)


df <- read_csv("/Volumes/GoogleDrive/Mi unidad/Codigos R/Course-9---Project-3---week-4/RSMCovidCol.csv")


# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generate Date based on input$Date from ui.R
        df2 <- df %>% filter(input$City == City)
        
        # draw the histogram with the specified Date
        ggplot(data = df2, mapping = aes(y=Count,x=Date)) +
            geom_line() + geom_point()
            
    })

})

