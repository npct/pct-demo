library(leaflet.extras)
library(leaflet)
library(shiny)
library(dplyr)
library(sp)
function(input, output, session) {
  
  source("load-data.R")
  
  lines <- reactive({
    rf$pcycle = rf$bicycle / rf$all
    rf = rf[rf$rf_dist_km < input$max_dist, ]
    top_n_lines = head(sort(rf$car_driver, decreasing = TRUE, index.return = TRUE)$ix, n = input$nos_lines)
    rf = rf[unique(top_n_lines), ]
    rf
  })
  
  output$pctShinyMap <- renderLeaflet({
    pal = leaflet::colorBin(palette = "RdYlBu", domain = c(0, 80), bins = c(0, 1, 2, 3, 4, 6, 10, 15, 20, 25, 30, 50))
    leaflet() %>%
      addProviderTiles(providers$Stamen.TonerLite,
                       options = providerTileOptions(noWrap = TRUE)
      ) %>%
      addPolylines(data = lines(), color = ~pal(pcycle)) %>% 
      addFullscreenControl() %>% 
      addLegend("bottomright", pal = pal, values = lines()$pcycle, title = "Percent cycling")
  })
  print(nrow(rf))
}