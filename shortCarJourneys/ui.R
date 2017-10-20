fluidPage(
  leafletOutput("pctShinyMap"),
  p(),
  actionButton("recalc", "New lines"),
  sliderInput(
    "nos_lines",
    label = "Top N Lines (most cycled)",
    1,
    200,
    value = 30,
    ticks = F
  )
)