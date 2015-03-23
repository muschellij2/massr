files= file.path("lib/", c('mass-fillHoles', "mass-morpho", 
                             "mass-registrations", "mass-skullstripping"))
files = c(files, file.path("bin/", 
                           c('mass', "mass-chooseTemplates", 
                             "mass-thresholdJacobian", "uninstall-mass")))
### Get directory of installing
install_dir = path.expand("../inst/mass")
files = file.path(install_dir, files)
### change that to the mass dir
pkgdir = file.path(.libPaths(), "mass")
changedir = function(file){
  if (!file.exists(file)){
    cat(paste0(file, " does not exist!\n"))
  }
  x = readLines(file)
  xx = gsub(install_dir, pkgdir, xx)
  writeLines(xx, con = file)
}

sapply(files, changedir)