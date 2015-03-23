#' @title Run MASS
#'
#' @description Runs MASS on source and target
#' @param file Filename (or nifti) to match to target
#' @param outdir Output directory for results
#' @param nregs Number of registrations to do (default is 6)
#' @param template_directory Directory 
#' @param retimg return nifti object versus output image
#' @import fslr 
#' @export
#' @return Result of \code{\link{system}} command
#' @examples \dontrun{
#' require(fslr)
#' temp = file.path(fsldir(), "data", "standard", "MNI152_T1_1mm.nii.gz")
#' res = mass(file = temp)
#' }
mass <- function(
  file, # Filename (or nifti) to match to target
  outdir = dirname(file),
  nregs = NULL, # number of template to use, default 6
  template_directory = 
    system.file(file.path("mass/share/data/Templates", 
                          ifelse(cerebellum, "WithCerebellum", 
                                 "WithoutCerebellum")),
                          package="massr"), 
  cerebellum =TRUE # use templates with cerebellum
  ){
  x = fix_mass()
  file = checkimg(file)
  outdir = path.expand(outdir)
  if (!is.null(template_directory)){
    template_directory = path.expand(template_directory)
  }
  if (outdir %in% c(".", "./")){
    outdir = shQuote(getwd())
  }
  args = c("-in"=file, 
           "-ref"=template_directory,
           "-dest"=outdir,
           "-regs"=nregs,
           ifelse(!cerebellum, "-noCere", ""))
  cmd = "mass"
  cmd = mass_cmd_maker(cmd=cmd, args = args)

  res = system(cmd)
  if (res != 0){
    stop("MASS command failed")
  }
  return(outimg)
}
