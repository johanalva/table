library(shiny)
library(shinydashboard)


dashboardPage(
    dashboardHeader(title = "IBM - Trello Report"),
    dashboardSidebar(
        fileInput("aecom", "Add File"),
        actionButton("do", "Get Report"),
        actionButton("nothing", "Do Nothing")
    ),
    dashboardBody(
        # Boxes need to be put in a row (or column)
        fluidRow(
            box(tableOutput("ServiceLine"))
        )
    )
)