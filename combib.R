combine.bib <- function(){
  library(magrittr)
  files <- list.files("biblio", pattern = ".bib") %>% paste0("biblio/",.)
  fmr <- grep("biblio/references.bib", files)
  if(length(fmr) > 0) files <- files[-fmr]
  bibdata <- lapply(files, readLines)
  write(unlist(bibdata), file = "biblio/references.bib")
}
