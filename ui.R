library(shiny)
shinyUI(fluidPage(
  titlePanel("Quadratic equation"),
      sidebarPanel(
        withMathJax(),
        titlePanel("$$ax^2 + bx + c = 0$$"),
        helpText("$$x={-b\\pm\\sqrt{b^2-4ac}\\over 2a}$$"),
        helpText("If x1 = NaN or x2 = NaN, the equation doesn't have a real solution. This is because $$b^2 - 4ac$$ is giving a negative number, and it's not possible to take the square root."),
        helpText(" "),
        tags$a(href="https://rawgit.com/xvelab/xvelab.github.io/master/index.html", "More info about this app!"),
        helpText("Please enter de coefficients a, b and c:"),
        helpText(" "),
        textInput(inputId="a", label = "a = "),
        textInput(inputId="b", label = "b = "),
        textInput(inputId="c", label = "c = ")
      ),
      
      mainPanel(
        h3('x1 ='),
        textOutput('x1'),
        h3('x2 ='),
        textOutput('x2')
      )

))
