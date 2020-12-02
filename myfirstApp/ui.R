#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
df <- read_csv("/Volumes/GoogleDrive/Mi unidad/Codigos R/Course-9---Project-3---week-4/RSMCovidCol.csv")
CityALL <- unique(df$City)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Colombia COVID"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput("City",
                        "City:",
                        choices = CityALL,
                        selected = "BOGOTA")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))

