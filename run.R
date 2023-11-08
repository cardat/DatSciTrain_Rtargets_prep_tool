library(targets)
tar_source()
load_packages(pkg = c("data.table"), do_it = T, force_install = F)
tar_visnetwork(targets_only = T)
# for very dense pipelines use this layout
# library(visNetwork)
# visIgraphLayout(tar_visnetwork(targets_only = T), layout = 'layout.kamada.kawai', physics = T)
# If using the tool then you only have a skeleton.  You need to write code then:
# tar_make()

# useful
tar_invalidate()
tar_objects()
tar_load_everything()
