library(leaflet)
library(dplyr)

source("./climate_mesh_data.R")

ShowMeshMap <- function(target) {
  map <- PrepareData()
  palette <- colorNumeric(palette = "viridis", domain = map[[target]])

  leaflet() %>%
    addTiles() %>%
    addPolygons(data = map,
                color = ~palette(map[[target]]),
                stroke = TRUE,
                label = as.character(map[[target]])
    ) %>%
    addLegend(pal = palette, values = map[[target]], title = target)
}
