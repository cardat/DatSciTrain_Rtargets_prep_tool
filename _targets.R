library(targets)

lapply(list.files("R", full.names = TRUE), source)

tar_option_set(
  packages =
    c("targets",
      "data.table"
    )
)

# Load config settings
config <-source("config.R")

list(
#### INSERT YOUR RTARGETS_PREP_TOOL RESULT HERE ####
)
