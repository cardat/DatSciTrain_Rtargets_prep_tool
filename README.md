---
output:
  html_document: default
  pdf_document: default
---
# DatSciTrain_Rtargets_prep_tool

Anh Han

20250807

------------------------------------------------------------------------

## Introduction

The `Rtargets_prep_tool` is a lightweight template for starting small R projects. It uses an Excel-based planning interface to help structure workflows and streamline project setup with the `targets` package.

This tool was developed to:

-   Support researchers and analysts in planning data pipelines before coding;

-   Simplify management of complex data analysis workflows in R;

-   Automate the generation of `targets` blocks and utility function shells;

-   Promote good data management practice;

-   Integrate with **version control** for track changes and collaborative development.

## Structure of this tool

The repository contains the following core components:

``` plaintext
Rtargets_prep_tool/
├── Rtargets_prep_tool.xlsx      # Excel spreadsheet for defining targets, inputs, and utilities
├── _targets.R                   # Main pipeline file (insert code snippets here)
├── config.R                     # Centralised configuration (e.g., file paths, global settings)
├── run.R                        # Script for running, debugging, and inspecting the pipeline
├── R/                           # Folder where utility functions are generated
├── load_packages.R              # Script for loading required R packages
```
### File descriptions
`Rtarget_prep_tool.xlsx`: a primary  interface for designing your analysis pipeline. Fill in target names, data inputs and logic. The tool generates:

- Column D -> code snippets for `_targets.R`

- Column E -> function scaffolds to be placed in `R/`

`_targets.R`: insert your list of targets here. Place generated blocks between `list(...)`.

`run.R`: use this to 

- run the pipeline with `tar_make()`

- load and inspect outputs interactively

- generate pipeline visualisation with `tar_visnetwork()`

`config.R`: declare and manage key variables and file paths (i.e. data directories). This keeps the `_targets.R` script clean and makes it easier to manage environmental variables.

`R/` folder: automatically populated with one `.R` file per utility function. You fill in the logic.

`load_packages.R`: load required packages for the analysis.
