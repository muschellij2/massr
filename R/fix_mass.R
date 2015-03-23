#' @title Fix MASS Functions if installed incorrectly
#'
#' @description Resets correct paths for MASS fucntions
#' @export
#' @return Logical
fix_mass <- function(){
  files= file.path("lib/", c('mass-fillHoles', "mass-morpho", 
                             "mass-registrations", "mass-skullstripping"))
  files = c(files, file.path("bin/", 
                             c('mass', "mass-chooseTemplates", 
                               "mass-thresholdJacobian", "uninstall-mass")))
  pkgdir = file.path(system.file(package="massr"), "mass")
  files = file.path(pkgdir, files)
  ### Get directory of installing
  root_temp = dirname(tempdir())
  install_dir = paste0(root_temp, ".*/inst/mass")
  
  ### change that to the mass dir
  changedir = function(file){
    if (!file.exists(file)){
      cat(paste0(file, " does not exist!\n"))
      return(FALSE)
    } else {
      x = readLines(file)
      xx = gsub(install_dir, pkgdir, x)
      writeLines(xx, con = file)
      return(TRUE)
    }
  }
  
  all(sapply(files, changedir))
}