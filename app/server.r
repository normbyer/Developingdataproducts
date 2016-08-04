library(shiny)
lambda <- 2

shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    lambda <<- input$Lambda
    x <- dpois(1:50,lambda)
    plot(0:50,c(0,x),type = "l", lty = 2, xlab="", ylab="")
  })
  output$simplot <- renderPlot({
    input$go
    isolate({
      x<- rpois(input$obs,lambda)
      hist(x,main = paste(input$obs,"with lambda",lambda))
      mean <- signif(mean(x),5)
      legend("topright", paste("mean=",mean), pch = 1, title = "topright")
    })
  })
})