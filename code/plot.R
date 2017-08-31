source("code/set-up.R")
source("code/load-data.R")

plot(z$geometry)

# interactive map
library(mapview)
mapview(z)

# find car dependent zones
summary(z$car_driver)
sel_high_car = z$car_driver > 2000
z_high_car = z[sel_high_car, ]
mapview(z_high_car) +
  mapview(l[l$car_driver > 500,])
