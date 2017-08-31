pkgs = c("stplanr", "sf", "shiny", "leaflet")
to_install = !pkgs %in% installed.packages()
if(any(to_install)) install.packages(pkgs)
lapply(pkgs, library, character.only = TRUE)
