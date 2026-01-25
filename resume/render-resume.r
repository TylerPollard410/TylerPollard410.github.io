# scripts/render-resume.R
library(quarto)
library(yaml)

get_script_dir <- function() {
  args <- commandArgs(trailingOnly = FALSE)
  file_arg <- grep("^--file=", args, value = TRUE)
  if (length(file_arg) > 0) {
    return(dirname(normalizePath(sub("^--file=", "", file_arg))))
  }
  NULL
}

find_project_root <- function(start_dir) {
  dir <- normalizePath(start_dir)
  while (TRUE) {
    if (file.exists(file.path(dir, "_quarto.yml"))) {
      return(dir)
    }
    parent <- dirname(dir)
    if (parent == dir) {
      stop("Could not find _quarto.yml; run from inside the project.")
    }
    dir <- parent
  }
}

start_dir <- get_script_dir()
if (is.null(start_dir)) {
  start_dir <- getwd()
}
project_root <- find_project_root(start_dir)
resume_dir <- file.path(project_root, "resume")

date <- format(Sys.Date(), "%Y-%m-%d")
pdf_name <- sprintf("%s_resume.pdf", date)
input_path <- file.path(resume_dir, "_resume.qmd")
pdf_path <- pdf_name

# Render using the root project (so it can see _extensions/)
quarto_render(
  input = input_path,
  output_file = pdf_name,
  execute_dir = resume_dir,
  quiet = FALSE
)

# Update resume/index.qmd metadata to match the new PDF/date
index_path <- file.path(resume_dir, "index.qmd")
lines <- readLines(index_path, warn = FALSE)
meta_end <- which(lines == "---")[2]

meta <- yaml::yaml.load(paste(lines[2:(meta_end - 1)], collapse = "\n"))
meta$resume$pdf <- pdf_name
meta$resume$date <- date
meta$date <- date

new_yaml <- c("---", strsplit(yaml::as.yaml(meta), "\n")[[1]], "---")
writeLines(c(new_yaml, lines[(meta_end + 1):length(lines)]), index_path)

invisible(list(pdf = file.path(resume_dir, pdf_path), date = date))
