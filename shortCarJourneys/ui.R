library(leaflet)
fluidPage(
  leafletOutput("pctShinyMap", height = 300),
  p(),
  actionButton("recalc", "New lines"),
  sliderInput(
    "nos_lines",
    label = "Top N Lines (number of short car journeys)",
    1,
    200,
    value = 50
    ),
  sliderInput(
    "max_dist",
    label = "Maximum distance (km)",
    0,
    5,
    value = 5
    )
)