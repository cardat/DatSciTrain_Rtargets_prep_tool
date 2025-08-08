---
output:
  html_document: default
---
# DatSciTrain_Rtargets_prep_tool

Anh Han

------------------------------------------------------------------------

## Introduction

The `Rtargets_prep_tool` is a lightweight template for starting small R projects. It uses an Excel-based planning interface to help structure workflows and streamline project setup with the `targets` package.

This tool was developed to:

-   Support researchers and analysts in planning data pipelines before coding;

-   Simplify management of complex data analysis workflows in R;

-   Automate the generation of `targets` blocks and utility function shells;

-   Promote good data management practice;

-   Integrate with **version control** for track changes and collaborative development.

## Contents

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

## How to use
1. Download or clone this repository by clicking the green `<> Code` button at the top right of this Github repository file listing. You will need to create your R working folder and rename the folder and `.Rproj` file as needed.

2. Launch `Rtergats_prep_tool.xlsx` and enter each pipeline step in the yellow-highlighted rows. Use the `verb_noun` naming convention (e.g., `load_ap_monitors`) and specify any required input files or upstream targets.

``` text
Column D: Generates target code snippets for _targets.R

Column E: Creates utility functions in the R/ folder 
```

3. Paste the content from **Column D** into `_targets.R`, inside the `list(...)` block. Then copy and run the code from **Column E** in the R console to generate `.R` files inside the `R/` folder. Each `.R` file corresponds to one pipeline step and will contain a scaffolded function ready for you to fill in.

4. To implement the logic inside  each function, open each generated `.R` file in the `R/` folder and fill in your data processing or analysis logic. Remember to use proper `return()` statements to return objects, passing through the pipe.

> NOTE: if you are woking with spatial objects (like `terra` and `sf`), wrap the object with `return(wrap(spatial_object))` and unwrap in the downstream function: `spatial_object <- unwrap(name_of_previous_target)`.

5. Run and inspect the pipeline by using `run.R` as your main control script. It typically includes `source(run.R)`. Inside `run.R`, you can run the pipeline with `tar_make()`, load targets with `tar_load("target_name")`, and visualise dependencies with `tar_visnetwork()`. 

> Remember to update `config.R` with file paths or constants. You can also use `load_packages.R` to load required libraries in interactive sessions.

6. Revisit the Excel file to add or modify targets and use Git to track and version updates made to `_targets.R`, `R/`, and `config.R`.

## Example application: GIS analysis of air pollution monitor coverage
An example of this tool is demonstrated in the project [DatSci_ap_monitors_and_postcodes](https://github.com/cardat/DatSci_ap_monitors_and_postcodes), which use buffer analysis around monitoring stations and spatial joins with postcode boundaries. 

Training sessions applying the `Rtarget_prep_tool` for this analysis are documented in the [transcript](https://github.com/cardat/DatSci_ap_monitors_and_postcodes/blob/main/working_anh/transcript.pdf).

