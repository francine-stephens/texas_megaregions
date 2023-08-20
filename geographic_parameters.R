## Geography Parameters
### For extraction, analysis, and visualization scripts

# Mega Region Counties
saa <- c("Bexar",
         "Comal",
         "Hays",
         "Guadalupe",
         "Caldwell",
         "Bastrop",
         "Travis",
         "Williamson"
)

dfw <- c("Dallas",
         "Collin", 
         "Denton",
         "Ellis",
         "Hunt",
         "Johnson",
         "Kaufman",
         "Parker",
         "Rockwall",
         "Tarrant",
         "Wise")

all_counties <- c(saa, dfw)
county_seats <- c("San Antonio",
                  "New Braunfels",
                  "San Marcos",
                  "Seguin",
                  "Lockhart",
                  "Bastrop",
                  "Austin",
                  "Georgetown",
                  "Dallas",
                  "McKinney",
                  "Denton",
                  "Waxahachie",
                  "Greenville",
                  "Cleburne",
                  "Kaufman",
                  "Weatherford",
                  "Rockwall",
                  "Fort Worth",
                  "Decatur"
)


# Table of county names
county_table <- data.frame(all_counties, county_seats)

county_table <- county_table %>% 
  mutate(megaregion = ifelse(all_counties %in% saa, 
                             "San Antonio-Austin", 
                             "Dallas-Fort Worth"))
