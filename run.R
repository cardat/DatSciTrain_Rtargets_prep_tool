library(targets)
tar_source()
load_packages(pkg = c("targets"), do_it = T, force_install = F)
# this is to help running in interactive mode
# make sure you also add packages to the _targets.R file as well 
tar_visnetwork(targets_only = T)
# for very dense pipelines use this layout
# library(visNetwork)
# visIgraphLayout(tar_visnetwork(targets_only = T), layout = 'layout.kamada.kawai', physics = T)
# If using the tool then you only have a skeleton.  You need to write code then:
tar_make()

# # useful tools
# tar_meta(fields = error, complete_only = TRUE)
# tar_invalidate()
# tar_objects()
# tar_load_everything()
