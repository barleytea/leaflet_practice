library(leaflet)
library(dplyr)
library(xml2)
library(sf)

ShowMeshMap <- function(target) {
  #
  map.5238 <- read_sf("./G02-12_5238-jgd_GML/")
  map.5239 <- read_sf("./G02-12_5239-jgd_GML/")
  map.5240 <- read_sf("./G02-12_5240-jgd_GML/")
  map.5338 <- read_sf("./G02-12_5338-jgd_GML/")
  map.5339 <- read_sf("./G02-12_5339-jgd_GML/")
  map.5340 <- read_sf("./G02-12_5340-jgd_GML/")
  map.5438 <- read_sf("./G02-12_5438-jgd_GML/")
  map.5439 <- read_sf("./G02-12_5439-jgd_GML/")
  map.5440 <- read_sf("./G02-12_5440-jgd_GML/")
  map <- rbind(map.5238, map.5239, map.5240, map.5338, map.5339, map.5340, map.5438, map.5439, map.5440)

  xml.metadata <- read_xml("./G02-12_5440-jgd_GML/G02-12_5440-jgd-for-read.xml")
  col.names.metadata <- xml_child(xml_child(xml.metadata, 4), 1) %>%
      xml_contents %>%
      as_list %>%
      unlist
  names(map)[seq_along(col.names.metadata)] <- col.names.metadata

  map <- map %>%
        mutate_if(grepl(pattern = "(降水量|気温|日照時間|全天日射量)", names(.)), function(x) x*.1)

  #
  palette <- colorNumeric(palette = "viridis", domain = map[[target]])

  leaflet() %>%
    addPolygons(data = map,
                color = ~palette(map[[target]]),
                stroke = FALSE,
                label = as.character(map[[target]])
    ) %>%
    addLegend(pal = palette, values = map[[target]], title = target)
}
