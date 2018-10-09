library(readxl)
library(dplyr)

sinoe <- read_excel(
  "sinoe.xlsx",
  skip = 2,
  col_names = FALSE,
  col_types = "text"
  ) %>% 
  mutate_all(~ gsub("\\s", " ", .))

(vect <- head(sinoe$X__7))

Encoding(vect)

(val <- vect[1])

any(vect == "Biocombustibles - Cintheaux")
any(vect == val)

Sys.getlocale()
