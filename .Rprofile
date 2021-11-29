# Set up renv if not already
if (any(list.dirs(recursive = FALSE) %in% "./renv")) {
  # Activate renv
  source("renv/activate.R")

  # Initialize project
  setHook("rstudio.sessionInit", function(newSession) {
    if (newSession) {
      rstudioapi::sendToConsole("rstudioapi::navigateToFile(\"foo.R\")")
      rstudioapi::sendToConsole("source(\"init.R\")")
    }
  }, action = "append")
} else {
  # Install rstudioapi and renv if not present
  packages_mx <- utils::installed.packages()
  if (!("rstudioapi" %in% packages_mx[, 1])) {
    utils::install.packages("rstudioapi", type = "win.binary")
  }
  if (!("renv" %in% packages_mx[, 1])) {
    utils::install.packages("renv", type = "win.binary")
  }
  options(renv.consent = TRUE)
  
  # Load up setup
  setHook("rstudio.sessionInit", function(newSession) {
    if (newSession) {
      rstudioapi::sendToConsole("rstudioapi::navigateToFile(\"renv-setup.R\")")
    }
  }, action = "append")
}
