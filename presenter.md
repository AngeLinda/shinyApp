Shiny App Presentation
========================================================
author: AngeLinda 
date: 13-07-2017
autosize: true

Introduction
========================================================

In this presentation, a shiny app about BMI calculation is created, 
which is accessible via <https://angelindaqiao.shinyapps.io/myapp/>. 

Also the steps to create this app is also explained briefly in the
following slides along with some codes. The codes are available via
...

BMI Calculation App
========================================================
The BMI (Body Mass Index) is used by the medical profession to quickly 
and simply determine a person weight in regard to their height. From 
a straight forward calculation the BMI factor can be gained and gives 
a measure which can be used to determine if a person is underweight (<18.5), normal weight (18.5 - 25), overweight(25-30) or obese (>30).

Basically, the user only need to fill in his/her weight (in KG) and 
height (in cm) in the left input panel. His/her BMI will be calculated 
according to the codes on the last slide of this presentation and shown 
in the result panel.In addition, the correlated BMI group will also be shown.


The look of the app
========================================================
![somecaption](look.png)

Embedded R code
========================================================

```r
bmi <- function(weight, height){
  weight/((height/100)^2)
}

group <- function(weight, height){
  BMI_calculation <- weight/((height/100)^2)
  ifelse(BMI_calculation<18.5,"underweight",
       ifelse(BMI_calculation<25,"normal weight",
              ifelse(BMI_calculation<30,"overweight","obesity")))
}
```

Thank you for watching ! 
