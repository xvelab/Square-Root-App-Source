library(shiny)

quadraticRoot <- function(a="", b="", c="", r=1) {
  if(a=="" | b=="" | c=="") {
    return(c("Please enter a, b and c of the quadratic equation"))
  }
  else {
    #are the values numeric?
    a1 = as.numeric(a)
    b1 = as.numeric(b)
    c1 = as.numeric(c)
               
    if(is.na(a1) | is.na(b1) | is.na(c1)) {
      return(c("Values must be numeric!"))
    }
    else {
      if(r==1) {
        x1 = (-b1 + sqrt(b1^2 - 4 * a1 * c1)) / (2 * a1)
        return(c(x1))
      }
      else if (r==2) {
        x2 = (-b1 - sqrt(b1^2 - 4 * a1 * c1)) / (2 * a1)
        return(c(x2))
      }
    }
  }
}

shinyServer(
  function(input, output) {
    output$x1 <- renderText({quadraticRoot(input$a, input$b, input$c, 1)})
    output$x2 <- renderText({quadraticRoot(input$a, input$b, input$c, 2)})
  }
)
