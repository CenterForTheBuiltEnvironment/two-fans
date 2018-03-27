library(shiny)

fluidPage(
  titlePanel('Air speed pattern for two-fan interaction'),
  inputPanel(numericInput(inputId = "ss", label = "Choose 1st case:",
                          value = 10, min = 1, max = 28),
             numericInput(inputId = "ss2", label = "Choose 2nd case:",
                          value = 10, min = 1, max = 28),
             numericInput(inputId = 'row', label = 'Row # (1st case):',
                          value = 11, min = 1, max = 15),
             numericInput(inputId = 'col', label = 'Column # (1st case):',
                          value = 7, min = 1, max = 12),
             radioButtons("sca","Scale type:", c("Self-selected" = "fix", "Min-max" = "unfix")),
             sliderInput("rang", "Range (self-selected scale):",
                         min = 0, max = 3, value = c(0,3), step = 0.1)
  ),
  wellPanel(fluidRow(column(3, plotOutput("plot1")),
                     column(3, plotOutput("plot2")),
                     column(3, plotOutput("plot3")),
                     column(3, plotOutput("plot4"))
  )),
  wellPanel(fluidRow(column(3, plotOutput("plot11")),
                     column(3, plotOutput("plot22")),
                     column(3, plotOutput("plot33")),
                     column(3, plotOutput("plot44"))
  )),
  wellPanel(fluidRow(column(4, plotOutput("plot7")), #div(style = "height:50px"), 
                     column(4, plotOutput("plot8")),
                     column(4, plotOutput("plot9"))
  )),
  wellPanel(fluidRow(column(6, plotOutput("plot5")), 
                     column(6, plotOutput("plot6"))
  ))
)