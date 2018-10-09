``` r
library(readxl)
library(dplyr)
#> Warning: package 'dplyr' was built under R version 3.5.1
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union

sinoe <- read_excel(
  "sinoe.xlsx",
  skip = 2,
  col_names = FALSE,
  col_types = "text"
  ) %>% 
  mutate_all(~ gsub("\\s", " ", .))

(vect <- head(sinoe$X__7))
#> [1] "Biocombustibles - Cintheaux"                   
#> [2] "Boa - Fabrication de Combustibles - Honfleur"  
#> [3] "Broyage Bois Braley Sébazac"                   
#> [4] "Broyage pour Ve - Suez Rv Bois"                
#> [5] "Centre de Valorisation énergétique de Maubeuge"
#> [6] "Chaudiere Utilisant du Bois de Palettes"

Encoding(vect)
#> [1] "unknown" "unknown" "UTF-8"   "unknown" "UTF-8"   "unknown"

(val <- vect[1])
#> [1] "Biocombustibles - Cintheaux"

any(vect == "Biocombustibles - Cintheaux")
#> [1] TRUE
any(vect == val)
#> [1] TRUE

Sys.getlocale()
#> [1] "LC_COLLATE=French_France.1252;LC_CTYPE=French_France.1252;LC_MONETARY=French_France.1252;LC_NUMERIC=C;LC_TIME=French_France.1252"
```

<details><summary>Session info</summary>

``` r
devtools::session_info()
#> Session info -------------------------------------------------------------
#>  setting  value                       
#>  version  R version 3.5.0 (2018-04-23)
#>  system   x86_64, mingw32             
#>  ui       RTerm                       
#>  language (EN)                        
#>  collate  French_France.1252          
#>  tz       Europe/Paris                
#>  date     2018-10-09
#> Packages -----------------------------------------------------------------
#>  package    * version date       source        
#>  assertthat   0.2.0   2017-04-11 CRAN (R 3.5.0)
#>  backports    1.1.2   2017-12-13 CRAN (R 3.5.0)
#>  base       * 3.5.0   2018-04-23 local         
#>  bindr        0.1.1   2018-03-13 CRAN (R 3.5.0)
#>  bindrcpp   * 0.2.2   2018-03-29 CRAN (R 3.5.0)
#>  cellranger   1.1.0   2016-07-27 CRAN (R 3.5.0)
#>  compiler     3.5.0   2018-04-23 local         
#>  datasets   * 3.5.0   2018-04-23 local         
#>  devtools     1.13.5  2018-02-18 CRAN (R 3.5.0)
#>  digest       0.6.15  2018-01-28 CRAN (R 3.5.0)
#>  dplyr      * 0.7.6   2018-06-29 CRAN (R 3.5.1)
#>  evaluate     0.10.1  2017-06-24 CRAN (R 3.5.0)
#>  glue         1.3.0   2018-07-17 CRAN (R 3.5.1)
#>  graphics   * 3.5.0   2018-04-23 local         
#>  grDevices  * 3.5.0   2018-04-23 local         
#>  htmltools    0.3.6   2017-04-28 CRAN (R 3.5.0)
#>  knitr        1.20    2018-02-20 CRAN (R 3.5.0)
#>  magrittr     1.5     2014-11-22 CRAN (R 3.5.0)
#>  memoise      1.1.0   2017-04-21 CRAN (R 3.5.0)
#>  methods    * 3.5.0   2018-04-23 local         
#>  pillar       1.2.2   2018-04-26 CRAN (R 3.5.0)
#>  pkgconfig    2.0.1   2017-03-21 CRAN (R 3.5.0)
#>  purrr        0.2.5   2018-05-29 CRAN (R 3.5.1)
#>  R6           2.2.2   2017-06-17 CRAN (R 3.5.0)
#>  Rcpp         0.12.19 2018-10-01 CRAN (R 3.5.1)
#>  readxl     * 1.1.0   2018-04-20 CRAN (R 3.5.0)
#>  rlang        0.2.0   2018-02-20 CRAN (R 3.5.0)
#>  rmarkdown    1.10    2018-06-11 CRAN (R 3.5.0)
#>  rprojroot    1.3-2   2018-01-03 CRAN (R 3.5.0)
#>  stats      * 3.5.0   2018-04-23 local         
#>  stringi      1.1.7   2018-03-12 CRAN (R 3.5.0)
#>  stringr      1.3.1   2018-05-10 CRAN (R 3.5.0)
#>  tibble       1.4.2   2018-01-22 CRAN (R 3.5.0)
#>  tidyselect   0.2.4   2018-02-26 CRAN (R 3.5.0)
#>  tools        3.5.0   2018-04-23 local         
#>  utils      * 3.5.0   2018-04-23 local         
#>  withr        2.1.2   2018-03-15 CRAN (R 3.5.0)
#>  yaml         2.1.19  2018-05-01 CRAN (R 3.5.0)
```

</details>
