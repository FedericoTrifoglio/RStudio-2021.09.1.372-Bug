renv::init(bare = TRUE, restart = FALSE)
install.packages(c("rstudioapi", "dplyr"), type = "win.binary")
renv::snapshot(prompt = FALSE)