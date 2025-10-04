## Script to render Quarto to pdf
# Author: Tyler Pollard
# Date: 22Aug2024

# library(rmarkdown)

# render(
#        input = "assets/Resume/Resume.Rmd",
#        output_format = "pdf_document",
#        output_dir = "assets/download",
#        output_file = "resume.pdf"
# )

library(quarto)

quarto_render(
       input = "assets/Resume/Resume.qmd",
       output_format = "pdf",
       output_file = "resume.pdf",
       quarto_args = c("--output-dir", "../download")
)

quarto_render(
       input = "assets/Resume/ResumeATS.qmd",
       output_format = "pdf",
       output_file = "resumeATS.pdf",
       quarto_args = c("--output-dir", "../download")
)

quarto_render(
       input = "assets/Resume/ResumeAwsCV.qmd",
       output_format = "awesomecv-typst",
       output_file = "resumeCV.pdf",
       quarto_args = c("--output-dir", "../download")
)
