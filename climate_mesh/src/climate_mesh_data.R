library(xml2)
library(dplyr)
library(sf)

PrepareData <- function() {
  #
  map <- rbind(
    read_sf("../data/G02-12_3622-jgd_GML/"),
    read_sf("../data/G02-12_3623-jgd_GML/"),
    read_sf("../data/G02-12_3624-jgd_GML/"),
    read_sf("../data/G02-12_3724-jgd_GML/"),
    read_sf("../data/G02-12_3725-jgd_GML/"),
    read_sf("../data/G02-12_3823-jgd_GML/"),
    read_sf("../data/G02-12_3824-jgd_GML/"),
    read_sf("../data/G02-12_3831-jgd_GML/"),
    read_sf("../data/G02-12_3926-jgd_GML/"),
    read_sf("../data/G02-12_3927-jgd_GML/"),
    read_sf("../data/G02-12_3928-jgd_GML/"),

    read_sf("../data/G02-12_4027-jgd_GML/"),
    read_sf("../data/G02-12_4028-jgd_GML/"),
    read_sf("../data/G02-12_4128-jgd_GML/"),
    read_sf("../data/G02-12_4129-jgd_GML/"),
    read_sf("../data/G02-12_4229-jgd_GML/"),
    read_sf("../data/G02-12_4230-jgd_GML/"),
    read_sf("../data/G02-12_4328-jgd_GML/"),
    read_sf("../data/G02-12_4329-jgd_GML/"),
    read_sf("../data/G02-12_4429-jgd_GML/"),
    read_sf("../data/G02-12_4529-jgd_GML/"),
    read_sf("../data/G02-12_4530-jgd_GML/"),
    read_sf("../data/G02-12_4531-jgd_GML/"),
    read_sf("../data/G02-12_4629-jgd_GML/"),
    read_sf("../data/G02-12_4630-jgd_GML/"),
    read_sf("../data/G02-12_4728-jgd_GML/"),
    read_sf("../data/G02-12_4729-jgd_GML/"),
    read_sf("../data/G02-12_4730-jgd_GML/"),
    read_sf("../data/G02-12_4731-jgd_GML/"),
    read_sf("../data/G02-12_4828-jgd_GML/"),
    read_sf("../data/G02-12_4831-jgd_GML/"),
    read_sf("../data/G02-12_4839-jgd_GML/"),
    read_sf("../data/G02-12_4928-jgd_GML/"),
    read_sf("../data/G02-12_4929-jgd_GML/"),
    read_sf("../data/G02-12_4930-jgd_GML/"),
    read_sf("../data/G02-12_4931-jgd_GML/"),
    read_sf("../data/G02-12_4932-jgd_GML/"),
    read_sf("../data/G02-12_4939-jgd_GML/"),

    read_sf("../data/G02-12_5030-jgd_GML/"),
    read_sf("../data/G02-12_5031-jgd_GML/"),
    read_sf("../data/G02-12_5032-jgd_GML/"),
    read_sf("../data/G02-12_5033-jgd_GML/"),
    read_sf("../data/G02-12_5034-jgd_GML/"),
    read_sf("../data/G02-12_5039-jgd_GML/"),
    read_sf("../data/G02-12_5129-jgd_GML/"),
    read_sf("../data/G02-12_5130-jgd_GML/"),
    read_sf("../data/G02-12_5131-jgd_GML/"),
    read_sf("../data/G02-12_5132-jgd_GML/"),
    read_sf("../data/G02-12_5133-jgd_GML/"),
    read_sf("../data/G02-12_5134-jgd_GML/"),
    read_sf("../data/G02-12_5135-jgd_GML/"),
    read_sf("../data/G02-12_5139-jgd_GML/"),
    read_sf("../data/G02-12_5229-jgd_GML/"),
    read_sf("../data/G02-12_5231-jgd_GML/"),
    read_sf("../data/G02-12_5232-jgd_GML/"),
    read_sf("../data/G02-12_5233-jgd_GML/"),
    read_sf("../data/G02-12_5234-jgd_GML/"),
    read_sf("../data/G02-12_5236-jgd_GML/"),
    read_sf("../data/G02-12_5237-jgd_GML/"),
    read_sf("../data/G02-12_5238-jgd_GML/"),
    read_sf("../data/G02-12_5239-jgd_GML/"),
    read_sf("../data/G02-12_5240-jgd_GML/"),
    read_sf("../data/G02-12_5333-jgd_GML/"),
    read_sf("../data/G02-12_5334-jgd_GML/"),
    read_sf("../data/G02-12_5335-jgd_GML/"),
    read_sf("../data/G02-12_5336-jgd_GML/"),
    read_sf("../data/G02-12_5338-jgd_GML/"),
    read_sf("../data/G02-12_5339-jgd_GML/"),
    read_sf("../data/G02-12_5340-jgd_GML/"),
    read_sf("../data/G02-12_5432-jgd_GML/"),
    read_sf("../data/G02-12_5433-jgd_GML/"),
    read_sf("../data/G02-12_5435-jgd_GML/"),
    read_sf("../data/G02-12_5436-jgd_GML/"),
    read_sf("../data/G02-12_5437-jgd_GML/"),
    read_sf("../data/G02-12_5438-jgd_GML/"),
    read_sf("../data/G02-12_5439-jgd_GML/"),
    read_sf("../data/G02-12_5440-jgd_GML/"),
    read_sf("../data/G02-12_5539-jgd_GML/"),
    read_sf("../data/G02-12_5540-jgd_GML/"),
    read_sf("../data/G02-12_5541-jgd_GML/"),
    read_sf("../data/G02-12_5636-jgd_GML/"),
    read_sf("../data/G02-12_5637-jgd_GML/"),
    read_sf("../data/G02-12_5638-jgd_GML/"),
    read_sf("../data/G02-12_5639-jgd_GML/"),
    read_sf("../data/G02-12_5640-jgd_GML/"),
    read_sf("../data/G02-12_5641-jgd_GML/"),
    read_sf("../data/G02-12_5739-jgd_GML/"),
    read_sf("../data/G02-12_5740-jgd_GML/"),
    read_sf("../data/G02-12_5741-jgd_GML/"),
    read_sf("../data/G02-12_5839-jgd_GML/"),
    read_sf("../data/G02-12_5840-jgd_GML/"),
    read_sf("../data/G02-12_5841-jgd_GML/"),
    read_sf("../data/G02-12_5939-jgd_GML/"),
    read_sf("../data/G02-12_5940-jgd_GML/"),
    read_sf("../data/G02-12_5941-jgd_GML/"),
    read_sf("../data/G02-12_5942-jgd_GML/"),

    read_sf("../data/G02-12_6040-jgd_GML/"),
    read_sf("../data/G02-12_6041-jgd_GML/"),
    read_sf("../data/G02-12_6139-jgd_GML/"),
    read_sf("../data/G02-12_6140-jgd_GML/"),
    read_sf("../data/G02-12_6141-jgd_GML/"),
    read_sf("../data/G02-12_6239-jgd_GML/"),
    read_sf("../data/G02-12_6239-jgd_GML/"),
    read_sf("../data/G02-12_6240-jgd_GML/"),
    read_sf("../data/G02-12_6241-jgd_GML/"),
    read_sf("../data/G02-12_6243-jgd_GML/"),
    read_sf("../data/G02-12_6339-jgd_GML/"),
    read_sf("../data/G02-12_6340-jgd_GML/"),
    read_sf("../data/G02-12_6342-jgd_GML/"),
    read_sf("../data/G02-12_6343-jgd_GML/"),
    read_sf("../data/G02-12_6439-jgd_GML/"),
    read_sf("../data/G02-12_6440-jgd_GML/"),
    read_sf("../data/G02-12_6441-jgd_GML/"),
    read_sf("../data/G02-12_6442-jgd_GML/"),
    read_sf("../data/G02-12_6443-jgd_GML/"),
    read_sf("../data/G02-12_6444-jgd_GML/"),
    read_sf("../data/G02-12_6445-jgd_GML/"),
    read_sf("../data/G02-12_6540-jgd_GML/"),
    read_sf("../data/G02-12_6541-jgd_GML/"),
    read_sf("../data/G02-12_6542-jgd_GML/"),
    read_sf("../data/G02-12_6544-jgd_GML/"),
    read_sf("../data/G02-12_6545-jgd_GML/"),
    read_sf("../data/G02-12_6641-jgd_GML/"),
    read_sf("../data/G02-12_6642-jgd_GML/"),
    read_sf("../data/G02-12_6842-jgd_GML/")
  )
  #
  xml.metadata <- read_xml("../data/G02-12_5440-jgd_GML/G02-12_5440-jgd.xml")
  col.names.metadata <- xml_child(xml_child(xml.metadata, 4), 1) %>%
    xml_contents %>%
    as_list %>%
    unlist
  names(map)[seq_along(col.names.metadata)] <- col.names.metadata

  map <- map %>%
    mutate_if(grepl(pattern = "(降水量|気温|日照時間|全天日射量)", names(.)), function(x) x*.1)

  return(map)
}
