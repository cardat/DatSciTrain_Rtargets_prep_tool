library(targets)

lapply(list.files("R", full.names = TRUE), source)

tar_option_set(
  packages =
    c("targets",
      "data.table"
    )
)

# Load config.yaml
config <- yaml::read_yaml("config.yaml")

list(
#### INSERT YOUR RTARGETS_PREP_TOOL RESULT HERE ####
)
