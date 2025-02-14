providers <- list(
  "OpenStreetMap", "OpenStreetMap.France",
  "OpenStreetMap.HOT", "OpenTopoMap",
  "Stadia.Stamen.Toner", "Stadia.Stamen.TonerBackground",
  "Stadia.Stamen.TonerLite", "Stadia.Stamen.Watercolor",
  "Stadia.Stamen.Terrain", "Stadia.Stamen.TerrainBackground",
  "Esri.WorldStreetMap", "Esri.DeLorme", "Esri.WorldTopoMap",
  "Esri.WorldImagery", "Esri.WorldTerrain", "Esri.WorldShadedRelief",
  "Esri.OceanBasemap", "Esri.NatGeoWorldMap", "Esri.WorldGrayCanvas",
  "CartoDB.Positron", "CartoDB.PositronNoLabels",
  "CartoDB.DarkMatter",
  "CartoDB.Voyager", "CartoDB.VoyagerNoLabels",
  "Thunderforest.OpenCycleMap", "Thunderforest.Transport",
  "Thunderforest.TransportDark", "Thunderforest.SpinalMap",
  "Thunderforest.Landscape",
  "Thunderforest.Pioneer", "Thunderforest.MobileAtlas",
  "Thunderforest.Neighbourhood"
)
library(sf)
library(maptiles)
stadiakey <- "xxx"
thunderkey <- "xxx"
nc <- st_read(system.file("shape/nc.shp", package = "sf"), quiet = TRUE)
nc <- st_transform(nc, 3857)
library(mapsf)
png("man/figures/README-front.png", width = 202 * 4, height = 76 * 8)
par(mar = c(0, 0, 0, 0), mfrow = c(8, 4))
for (i in 1:length(providers)) {
  t <- get_tiles(nc,
    provider = providers[[i]],
    zoom = 5, cachedir = "tiles",
    crop = T, apikey = thunderkey
  )
  plot_tiles(t)
  mf_title(
    txt = providers[[i]], pos = "center", tab = TRUE, inner = TRUE,
    line = 1.5, cex = 1.5, bg = "white", fg = "black", font = 2
  )
}
dev.off()
