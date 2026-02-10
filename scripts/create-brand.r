library(shiny)
library(bslib)
library(brand.yml)
library(sass)
library(quarto)

# get brands
# bs_current_theme()
# bs_get_variables()
# bs_global_theme()
# bs_remove()

# bs_theme_preview(theme = bs_theme(version = 5, brand = FALSE))

# 1. Read the brand file to get the correct color value dynamically
my_brand <- read_brand_yml("_brand.yml")
brand_pluck(my_brand, "color", "tertiary")
brand_sass_defaults_bootstrap(my_brand)
brand_sass_fonts(my_brand)

# create using bslib replciaitng brand
bslib_theme <- bs_theme(
  version = 5,
  preset = "shiny",
  brand = FALSE,
  bg = NULL,
  fg = NULL,
  primary = brand_pluck(my_brand, "color", "primary"),
  secondary = brand_pluck(my_brand, "color", "secondary"),
  success = "#6fff00ff",
  info = brand_pluck(my_brand, "color", "info"),
  warning = brand_pluck(my_brand, "color", "warning"),
  danger = brand_pluck(my_brand, "color", "danger"),
  base_font = font_google("Space Grotesk", wght = 400, ital = 0),
  code_font = NULL,
  heading_font = NULL,
  font_scale = NULL,
  bootswatch = NULL
)
bs_theme_preview(bslib_theme)


light_theme <- bs_theme(
  version = 5,
  bootswatch = "flatly",
  brand = "_brand.yml"
) |>
  bs_add_rules(
    sass_file("styles.scss")
  )
bs_theme_preview(light_theme)

dark_theme <- bs_theme(
  version = 5,
  bootswatch = "darkly",
  brand = "_brand.yml"
) |>
  bs_add_rules(
    sass_file("styles.scss")
  )
bs_theme_preview(dark_theme)
