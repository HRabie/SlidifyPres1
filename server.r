library(shiny)
shinyServer(
  
  function(input, output, session) {
    output$Ploty<-renderPlot({
      
      disType<-input$Distribution
      size<-input$SampleSize
      if(disType=="Normal"){
        SampleT<-rnorm(size,mean=as.numeric(input$mean),sd=as.numeric(input$sd))
      }
      else {
        if(disType=="Exponential"){SampleT<-rexp(size,1/as.numeric(input$Explambda))
}
        else{        
          SampleT<-rpois(size,as.numeric(input$Poslambda))
}
        
      }
      hist(SampleT,main="Histogram for the Selected Distribution",
           col="red",border="white",xlab="Sample" )
    })
    
  }
)