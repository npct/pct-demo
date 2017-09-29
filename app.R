library(shiny)
library(leaflet)
library(sf)

r_colors <- rgb(t(col2rgb(colors()) / 255))
names(r_colors) <- colors()

ui <- fluidPage(
  leafletOutput("pctShinyMap"),
  p(),
  actionButton("recalc", "New lines")
)

server <- function(input, output, session) {
  
  source("code/load-data.R")
  
  lines <- eventReactive(input$recalc, {
    rf[sample(x = nrow(rf), size = 10),]
  }, ignoreNULL = FALSE)
  
  output$pctShinyMap <- renderLeaflet({
    leaflet() %>%
      addProviderTiles(providers$Stamen.TonerLite,
                       options = providerTileOptions(noWrap = TRUE)
      ) %>%
      addPolylines(data = lines(), color = "red")
  })
}

shinyApp(ui, server)