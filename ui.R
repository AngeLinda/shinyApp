library(shiny)
shinyUI(fluidPage(
  titlePanel("BMI (Body Mass Index) Calculator"),
  sidebarLayout(
    sidebarPanel(
      numericInput("height", "What is your height (cm)?", value = NULL, min = 10, max = 250, step = 5),
      numericInput("weight", "What is your weight (kg)?", value = NULL, min = 10, max = 250, step = 5),
      submitButton("Calculate BMI")
  ),

  mainPanel(
    p('The BMI (Body Mass Index) is used by the medical profession to quickly and simply determine a person weight in regard to their height.'),
    p('From a straight forward calculation the BMI factor can be gained and gives a measure which can be used to determine if a person is underweight, of normal weight, overweight or obese.'),

    h3("Your BMI is "), verbatimTextOutput("BMI"),
    p('You are '), verbatimTextOutput("GROUP"))
    )
  )
)