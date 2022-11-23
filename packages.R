install.packages("DT")  ##installing the packages in the system

install.packages(c("leaflet", "readxl", "sf", "shiny", "tidyverse"))  ##installing the multiple packages at once
install.packages("BiocManager")  ##installing the package install_libs as it is not available so installing biocmanager

pacman::p_load(install_libs)  ##installing the package 


for(lib in install_libs) install.packages(lib, dependencies=TRUE)  ##installing missing dependencies

  
sapply(install_libs, require, character=TRUE)    ##Load all package dependencies


source(setup.R)



install.packages("remotes")

pacman::p_load("remotes")
remotes::install_deps()
rmarkdown::render("cws_shiny_workshop.Rmd", "all")
