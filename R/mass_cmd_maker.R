
#' @title Create MASS command
#'
#' @description Create header for MASS command
#' @param cmd Command to be executed
#' @param args Arguments to be added to the command.
#' @export
#' @return character string of command
mass_cmd_maker <- function(
  cmd = NULL,
  args = NULL
){
  if (is.null(cmd)){
    return("")
  }
  progdir = system.file("mass", package="massr")  
  bindir = file.path(progdir, "bin")
  cmd = file.path(bindir, cmd)
  args = mass_parse_args(args)
  cmd = paste0(cmd, " ", args)
  return(cmd)
}



#' @title Parse MASS Argument
#'
#' @description Create argument character for MASS command
#' @param args Arguments to be evaluated
#' @export
#' @return character string of arguments
mass_parse_args = function(args){
  name_args = names(args)
  if (is.null(name_args)){
    name_args = rep("", length(args))
  }
  stopifnot(length(name_args) == length(args))
  args = paste(name_args, args)
  args = paste(args, sep = "", collapse = " ")
  return(args)
}