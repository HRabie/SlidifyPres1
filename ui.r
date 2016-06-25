library(shiny)
shinyUI(fluidPage(
    titlePanel(title = "Shiny Application for some common Distributions"),
    sidebarLayout( 
            sidebarPanel(("Normal, Exponential and Poisson Distributions"),
                         
       selectInput("Distribution","Select Distribution Type", 
                   choices = c("Normal","Exponential","Poisson")),
       
       sliderInput("SampleSize","Please Select the size of sample",
                   min=30,max=3000,value=30,step=300),
       
       conditionalPanel(condition="input.Distribution=='Normal'",
                        textInput("mean","Select Distribution Mean",10),
                        textInput("sd","Select Standard Deviation",3)),
       
       conditionalPanel(condition= "input.Distribution=='Exponential'",
                        textInput("Explambda","Select Exponential Lambda",7)),
       
       conditionalPanel(condition= "input.Distribution=='Poisson'",
                        textInput("Poslambda","Select Poisson Lambda",4))
       
      ),
      
      mainPanel (("Presenting the Distribution Graph"),
                 plotOutput("Ploty")
                 )
    )
)
  
  
  
)