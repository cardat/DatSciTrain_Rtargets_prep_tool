library(targets)
tar_source()
load_packages(pkg = c("data.table"), do_it = T, force_install = F)
tar_visnetwork(targets_only = T)
# If using the tool then you only have a skeleton.  You need to write code then:
# tar_make()
