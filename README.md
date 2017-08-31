Demonstrating the PCT, for education and reproducibility
================

Welcome to pct-demo, a small repo with a little code and data to how how the pct works.

The starting point is that regional data has already been generated. See [pct-scripts](https://github.com/pctbike/pct-scripts) or an academic paper on the subject ([Lovelace et al. 2017](https://www.jtlu.org/index.php/jtlu/article/view/862)).

We also assume your have R and RStudio installed and running on your computer. There is plenty of guidance online, notably on the RStudio website: [rstudio.com](https://www.rstudio.com/products/rstudio/download/).

The first step is to download the the repo <https://github.com/npct/pct-demo/archive/master.zip> - that contains both code and data. Note that it contains a .qgs file that can be opened with the open source program [QGIS](http://qgis.org/) - another powerful tool for analysing the geographical distribution of cycling potential.

The remainder of this tutorial is based on R code, which can be found in the [code](https://github.com/npct/pct-demo/tree/master/code) folder. We encourage you to look over these scripts. The script to load-in the data, for example, can be opened with the following command:

``` r
file.edit("code/load-data.R")
```

Once that file is open we can run it line-by-line, e.g. by pressing `Ctl-Enter`. Alternatively you can entirety of a script file with the `source()` function.

There are some dependencies: you need to have some packages installed.

``` r
source("code/set-up.R")
```

    ## Loading required package: sp

    ## Linking to GEOS 3.5.1, GDAL 2.2.1, proj.4 4.9.2, lwgeom 2.3.3 r15473

To load the input data, we can run the following script:

``` r
source("code/load-data.R")
```

    ## Reading layer `c' from data source `/home/robin/npct/pct-demo/data/c.geojson' using driver `GeoJSON'
    ## Simple feature collection with 18 features and 63 fields
    ## geometry type:  POINT
    ## dimension:      XY
    ## bbox:           xmin: -1.526358 ymin: 50.59781 xmax: -1.096598 ymax: 50.75714
    ## epsg (SRID):    4326
    ## proj4string:    +proj=longlat +datum=WGS84 +no_defs
    ## Reading layer `l' from data source `/home/robin/npct/pct-demo/data/l.geojson' using driver `GeoJSON'
    ## Simple feature collection with 137 features and 77 fields
    ## geometry type:  LINESTRING
    ## dimension:      XY
    ## bbox:           xmin: -1.538618 ymin: 50.59781 xmax: -1.082664 ymax: 50.80799
    ## epsg (SRID):    4326
    ## proj4string:    +proj=longlat +datum=WGS84 +no_defs
    ## Reading layer `rf' from data source `/home/robin/npct/pct-demo/data/rf.geojson' using driver `GeoJSON'
    ## Simple feature collection with 137 features and 77 fields
    ## geometry type:  LINESTRING
    ## dimension:      XY
    ## bbox:           xmin: -1.538737 ymin: 50.59005 xmax: -1.082969 ymax: 50.80802
    ## epsg (SRID):    4326
    ## proj4string:    +proj=longlat +datum=WGS84 +no_defs
    ## Reading layer `rq' from data source `/home/robin/npct/pct-demo/data/rq.geojson' using driver `GeoJSON'
    ## Simple feature collection with 137 features and 18 fields
    ## geometry type:  LINESTRING
    ## dimension:      XY
    ## bbox:           xmin: -1.538737 ymin: 50.59664 xmax: -1.082969 ymax: 50.80802
    ## epsg (SRID):    4326
    ## proj4string:    +proj=longlat +datum=WGS84 +no_defs
    ## Reading layer `rnet' from data source `/home/robin/npct/pct-demo/data/rnet.geojson' using driver `GeoJSON'
    ## Simple feature collection with 238 features and 7 fields
    ## geometry type:  LINESTRING
    ## dimension:      XY
    ## bbox:           xmin: -1.526657 ymin: 50.59008 xmax: -1.091978 ymax: 50.75952
    ## epsg (SRID):    4326
    ## proj4string:    +proj=longlat +datum=WGS84 +no_defs
    ## Reading layer `z' from data source `/home/robin/npct/pct-demo/data/z.geojson' using driver `GeoJSON'
    ## Simple feature collection with 18 features and 65 fields
    ## geometry type:  MULTIPOLYGON
    ## dimension:      XY
    ## bbox:           xmin: -1.591613 ymin: 50.57491 xmax: -1.070027 ymax: 50.76684
    ## epsg (SRID):    4326
    ## proj4string:    +proj=longlat +datum=WGS84 +no_defs

Including Code
--------------

You can include R code in the document as follows:

``` r
summary(cars)
```

    ##      speed           dist       
    ##  Min.   : 4.0   Min.   :  2.00  
    ##  1st Qu.:12.0   1st Qu.: 26.00  
    ##  Median :15.0   Median : 36.00  
    ##  Mean   :15.4   Mean   : 42.98  
    ##  3rd Qu.:19.0   3rd Qu.: 56.00  
    ##  Max.   :25.0   Max.   :120.00

Including Plots
---------------

You can also embed plots, for example:

![](README_files/figure-markdown_github-ascii_identifiers/pressure-1.png)

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
