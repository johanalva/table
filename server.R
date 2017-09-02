library(shiny)

shinyServer(function(input, output, session) {
    
    observeEvent(input$do,{
        openSR <- reactive({
            inFile <- input$aecom
            if (is.null(inFile)){
                return(NULL)
            }
            read.csv(inFile$datapath)
        })
        
        output$ServiceLine <- renderTable({
            openSR()
        })
        
    })
    
    # close the R session when Chrome closes
    session$onSessionEnded(function() {
        stopApp()
        q("no")
    })
})