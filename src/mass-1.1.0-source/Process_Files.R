files= file.path("lib/", c('mass-fillHoles', "mass-morpho", 
                             "mass-registrations", "mass-skullstripping"))
files = c(files, file.path("lib/", 
                           c('mass', "mass-chooseTemplates", 
                             "mass-thresholdJacobian", "uninstall-mass")))
root_temp = tempdir()
pkgdir = file.path(.libPaths(), "mass")
changedir = function(file){
  x = readLines(file)
  xx = gsub(paste0(root_temp, ".*/inst/mass"), pkgdir, xx)
  writeLines(xx, con = file)
}

sapply(files, changedir)