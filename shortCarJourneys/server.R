library(leaflet.extras)
library(dplyr)
function(input, output, session) {
  
  source("load-data.R")
  
  lines <- reactive({
    rf %>% 
      top_n(n = input$nos_lines, wt = car_driver) %>% 
      mutate(pcycle = bicycle / all * 100)
    
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
}