library(shiny)

bmi <- function(weight, height){
  weight/((height/100)^2)
}

group <- function(weight, height){
  BMI_calculation <- weight/((height/100)^2)
  ifelse(BMI_calculation<18.5,"underweight",
       ifelse(BMI_calculation<25,"normal weight",
              ifelse(BMI_calculation<30,"overweight","obesity")))
}

shinyServer(function(input, output) {
  output$BMI <- renderPrint({bmi(input$weight,input$height)})
  output$GROUP <- renderPrint({group(input$weight,input$height)})
})



