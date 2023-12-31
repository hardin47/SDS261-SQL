# _common.R based on R4DS: https://github.com/hadley/r4ds/blob/master/_common.R
set.seed(25)
options(digits = 3)

# packages ---------------------------------------------------------------------

suppressMessages(library(tidymodels))
suppressMessages(library(gghighlight))
suppressMessages(library(glue))
suppressMessages(library(ggmosaic))
suppressMessages(library(ggridges))
suppressMessages(library(gridExtra))
suppressMessages(library(infer))
suppressMessages(library(janitor))
suppressMessages(library(knitr))
suppressMessages(library(kableExtra))
suppressMessages(library(maps))
suppressMessages(library(measurements))
suppressMessages(library(openintro))
suppressMessages(library(patchwork))
suppressMessages(library(quantreg))
suppressMessages(library(tidyverse))
suppressMessages(library(scales))
suppressMessages(library(skimr))
suppressMessages(library(caret))
suppressMessages(library(palmerpenguins))
suppressMessages(library(survival))
suppressMessages(library(waffle))
suppressMessages(library(ggrepel))
suppressMessages(library(ggpubr))
suppressMessages(library(unvotes))
suppressMessages(library(ukbabynames))
suppressMessages(library(Stat2Data))
suppressMessages(library(GGally))
suppressMessages(library(mosaicData))
suppressMessages(library(fontawesome))
suppressMessages(library(DBI))
suppressMessages(library(dbplyr))
suppressMessages(library(RMariaDB))
suppressMessages(library(duckdb))

# knitr chunk options ----------------------------------------------------------

#knitr::opts_chunk$set(
#  #eval = TRUE,
#  #comment = "#>",
#  #collapse = TRUE,
#  #message = FALSE,
#  #warning = FALSE,
#  #cache = FALSE, # only use TRUE for quick testing!
#  #echo = FALSE, # hide code unless otherwise noted in chunk options
#  #fig.align = "center",
#  #fig.width = 6,
#  #fig-asp = 0.618,  # 1 / phi
#  #fig.show = "hold",
#  #dpi = 300,
#  #fig.pos = "h"
#)

if (knitr::is_html_output()) {
  knitr::opts_chunk$set(out.width = "90%")
} else if (knitr::is_latex_output()) {
  knitr::opts_chunk$set(out.width = "80%")
}

# knit options -----------------------------------------------------------------

options(knitr.kable.NA = "")

# kableExtra options -----------------------------------------------------------

options(kableExtra.html.bsTable = TRUE)

# dplyr options ----------------------------------------------------------------

options(dplyr.print_min = 6, dplyr.print_max = 6)

# ggplot2 theme and colors -----------------------------------------------------

if (knitr::is_html_output()) {
  ggplot2::theme_set(ggplot2::theme_minimal(base_size = 13))
} else if (knitr::is_latex_output()) {
  ggplot2::theme_set(ggplot2::theme_minimal(base_size = 11))
}

# function: caption helper -----------------------------------------------------

caption_helper <- function(txt) {
  if (knitr::is_latex_output())
    stringr::str_replace_all(txt, "([^`]*)`(.*?)`", "\\1\\\\texttt{\\2}") %>%
    stringr::str_replace_all("_", "\\\\_")
  else
    txt
}
