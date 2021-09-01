
# Use pacman to load add-on packages as desired
pacman::p_load(pacman, rio) 

# CSV
eco_ind <- import("Output/compiled_z_scores.csv")
head(eco_ind)

# eco_ind <- read.csv("economic_indicators.csv",header=True)
devtools::install_github("nickpoison/astsa/astsa_build")


# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)

install.Rtools(check=TRUE, check_r_update=TRUE)