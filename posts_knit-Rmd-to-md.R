myjekyllsite = c("http://bateyt.github.io/Soc101/")

KnitPost <- function(input, base.url = myjekyllsite) {
  require(knitr)
  opts_knit$set(base.url = base.url)
  fig.path <- paste0("figs/", sub(".Rmd$", "", basename(input)), "/")
  opts_chunk$set(fig.path = fig.path)
  opts_chunk$set(fig.cap = "center")
  render_jekyll()
  knit(input, envir = parent.frame())
}

# be sure to edit file name for the original RMarkdown file
KnitPost("~/GitHub/Soc101/_drafts/SOC101N_SyllabusF2015.Rmd")

