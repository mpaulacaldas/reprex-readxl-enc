#' ---
#' output:
#'   md_document:
#'     variant: markdown_github
#' ---
#+ reprex-setup, include = FALSE
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", error = TRUE)
knitr::opts_knit$set(upload.fun = knitr::imgur_upload)


#+ reprex-body
library(readxl)

sinoe <- read_excel("sinoe.xlsx", skip = 2, col_names = FALSE, col_types = "text")

(vect <- head(sinoe$X__7))

Encoding(vect)

(val <- vect[1])

any(vect == "Biocombustibles - Cintheaux")
any(vect == val)

Sys.getlocale()


#'<details><summary>Session info</summary>

devtools::session_info()

#'</details>

