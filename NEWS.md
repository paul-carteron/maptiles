# maptiles 0.6.1

## fix
- deactivate get_tiles() example due to unpredictable download time leading to 
CRAN note/rejection...



# maptiles 0.6.0

## fix

- remove various unreliable provider (OpenStreetMap.MapnikBW, HikeBike, 
Wikimedia, OpenStreetMap.NoLabels...) 
- update openstreetmap provider url (#23)
- update stamen provider to stadia (#24)
- fix forceDownload mechanism (force replace *.tif files) 

## feat

- new function create_provider() to create provider
- use a better mechanism for apikey


# maptiles 0.5.0

## fix
* do not discard the crs of SpatRaster and SpatVector (@rhijmans #19)
* no buffer is applied on input sf* object extent when crop = TRUE anymore

## feat
* add a project argument to get_tiles() to output SpatRaster in its original projection (part of @rhijmans #20)

## test
* better test suite



# maptiles 0.4.0

## Bug fixes
* Fix issue that stopped downloading tile sets that span different orders of magnitude
* Fix error message from GDAL for raster with nodata values 
* Allow 'jpeg' tile extension 
* Fail gracefully if the tile server is not responding


# maptiles 0.3.0

## Minor changes
* Change projection management, faster with 3857 now
* Add adjust argument to plot_tiles() to plot the raster without zoom-in or zoom-out in the graphic device
* Modify attribution of Stamen maps


# maptiles 0.2.0

## Minor changes
* Suppress warnings for png files
* Use sf::gdal_utils to merge tiles, the operation is really faster. 



# maptiles 0.1.3

## Minor changes
Lower gdal dependancy


# maptiles 0.1.2

## Minor changes
* Added a `NEWS.md` file to track changes to the package.
* Added URL and BugReports links
* Better tiles display
* Allow to use terra::plot() with tiles
* Added SpatRaster and SpatVector support in get_tiles()


## Bug fixes
* Added alpha channel to display transparents tiles
