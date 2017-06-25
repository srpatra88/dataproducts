library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Simple Interest Calculator"),
  
  sidebarLayout(
    sidebarPanel( 
      
      helpText("Calculate the simple interest"),            
      br(),           
      numericInput("principal",label = h4("Principal (P): $"),min = 0, max = 100000, 0),
      br(),
      numericInput("rate",label = h4("Rate (R): % per year"),min = 0, max = 100, 0),
      br(),
      numericInput("year",label = h4("Time (in years): "),min = 0, max = 50, 0),
      br(),
      actionButton("calculateInterest", label = "Calculate Simple Interest")    
      
      
    ),
    mainPanel
    (
      tabsetPanel
      (
        tabPanel("Calculate Interest",
                 p(h4("Your Inputs")),
                 textOutput("principal"),
                 textOutput("rate"),
                 textOutput("year"),
                 br(),
                 textOutput("interest")
        ),
        tabPanel(
          "Documentation",
          p(h4("Simple Interest")),
          br(),
          helpText("Simple interest is calculated only on the principal amount, or on that portion of the principal amount that remains. It excludes the effect of compounding. Simple interest can be applied over a time period other than a year, e.g. every month. Simple interest is calculated according to the following formula:"),
          br(),         
          helpText("P * r * n/100"),
          br(),
          helpText("where P is the principal amount, r is the simple annual interest rate, n is the frequency of applying interest.")
        )
      
        )
      )
    )
))