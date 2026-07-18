# Load packages
library(shiny)
library(shinythemes)
library(igraph)
library(readr)
library(tidyverse)
library(ggnetwork)

# Import data
players <- read_rds("players.rds")
sjs_network <- read_rds("sjs_network.rds")
mtl_network <- read_rds("mtl_network.rds")
car_network <- read_rds("car_network.rds")
edm_network <- read_rds("edm_network.rds")
tbl_network <- read_rds("tbl_network.rds")
buf_network <- read_rds("buf_network.rds")
cbj_network <- read_rds("cbj_network.rds")
pit_network <- read_rds("pit_network.rds")
phi_network <- read_rds("phi_network.rds")
ana_network <- read_rds("ana_network.rds")
bos_network <- read_rds("bos_network.rds")
veg_network <- read_rds("veg_network.rds")
uta_network <- read_rds("uta_network.rds")
col_network <- read_rds("col_network.rds")
nsh_network <- read_rds("nsh_network.rds")
van_network <- read_rds("van_network.rds")
wsh_network <- read_rds("wsh_network.rds")
nyi_network <- read_rds("nyi_network.rds")
njd_network <- read_rds("njd_network.rds")
nyr_network <- read_rds("nyr_network.rds")
min_network <- read_rds("min_network.rds")
lak_network <- read_rds("lak_network.rds")
cgy_network <- read_rds("cgy_network.rds")
chi_network <- read_rds("chi_network.rds")
dal_network <- read_rds("dal_network.rds")
det_network <- read_rds("det_network.rds")
fla_network <- read_rds("fla_network.rds")
ott_network <- read_rds("ott_network.rds")
sea_network <- read_rds("sea_network.rds")
stl_network <- read_rds("stl_network.rds")
tor_network <- read_rds("tor_network.rds")
wpg_network <- read_rds("wpg_network.rds")

# Define choices
choice_values <- c("auth_score", "hub_score")
choice_names <- c("Authority", "Hub")
names(choice_values) <- choice_names

# Define UI
ui <- navbarPage(theme = shinytheme("flatly"),
                 title = "Hockey Networks for the 2025-2026 NHL Season",
                 navbarMenu("Metropolitan Division",
                    tabPanel(title = "Carolina Hurricanes",
                             sidebarLayout(
                               sidebarPanel(
                                 selectInput(inputId = "car",
                                             label = "Choose authority or hub score:",
                                             choices = choice_values,
                                             selected = "auth_score"),
                                 helpText("The colors of the arrows indicate which player an assist is from, 
                                          with each unique player having their own specific color. 
                                            Click a player to bring up information on them!")
                               ),
                               
                               # Plot
                               mainPanel(
                                 plotOutput("car_network",
                                            click = "car_click",
                                            width = "950px",
                                            height = "675px"),
                                 DT::dataTableOutput(outputId = "car_player")
                               )
                             )
                    ),
                    tabPanel(title = "Columbus Blue Jackets",
                             sidebarLayout(
                               sidebarPanel(
                                 selectInput(inputId = "cbj",
                                             label = "Choose authority or hub score:",
                                             choices = choice_values,
                                             selected = "auth_score"),
                                 helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                               ),
                               
                               # Plot
                               mainPanel(
                                 plotOutput("cbj_network",
                                            click = "cbj_click",
                                            width = "950px",
                                            height = "675px"),
                                 DT::dataTableOutput(outputId = "cbj_player")
                               )
                             )
                    ),
                    tabPanel(title = "New Jersey Devils",
                             sidebarLayout(
                               sidebarPanel(
                                 selectInput(inputId = "njd",
                                             label = "Choose authority or hub score:",
                                             choices = choice_values,
                                             selected = "auth_score"),
                                 helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                               ),
                               
                               # Plot
                               mainPanel(
                                 plotOutput("njd_network",
                                            click = "njd_click",
                                            width = "950px",
                                            height = "675px"),
                                 DT::dataTableOutput(outputId = "njd_player")
                               )
                             )
                    ),
                    tabPanel(title = "New York Islanders",
                             sidebarLayout(
                               sidebarPanel(
                                 selectInput(inputId = "nyi",
                                             label = "Choose authority or hub score:",
                                             choices = choice_values,
                                             selected = "auth_score"),
                                 helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                               ),
                               
                               # Plot
                               mainPanel(
                                 plotOutput("nyi_network",
                                            click = "nyi_click",
                                            width = "950px",
                                            height = "675px"),
                                 DT::dataTableOutput(outputId = "nyi_player")
                               )
                             )
                    ),
                    tabPanel(title = "New York Rangers",
                             sidebarLayout(
                               sidebarPanel(
                                 selectInput(inputId = "nyr",
                                             label = "Choose authority or hub score:",
                                             choices = choice_values,
                                             selected = "auth_score"),
                                 helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                          Click a player to bring up information on them!")
                               ),
                               
                               # Plot
                               mainPanel(
                                 plotOutput("nyr_network",
                                            click = "nyr_click",
                                            width = "950px",
                                            height = "675px"),
                                 DT::dataTableOutput(outputId = "nyr_player")
                               )
                             )
                    ),
                    tabPanel(title = "Philidelphia Flyers",
                             sidebarLayout(
                               sidebarPanel(
                                 selectInput(inputId = "phi",
                                             label = "Choose authority or hub score:",
                                             choices = choice_values,
                                             selected = "auth_score"),
                                 helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                               ),
                               
                               # Plot
                               mainPanel(
                                 plotOutput("phi_network",
                                            click = "phi_click",
                                            width = "950px",
                                            height = "675px"),
                                 DT::dataTableOutput(outputId = "phi_player")
                               )
                             )
                    ),
                    tabPanel(title = "Pittsburgh Penguins",
                             sidebarLayout(
                               sidebarPanel(
                                 selectInput(inputId = "pit",
                                             label = "Choose authority or hub score:",
                                             choices = choice_values,
                                             selected = "auth_score"),
                                 helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                               ),
                               
                               # Plot
                               mainPanel(
                                 plotOutput("pit_network",
                                            click = "pit_click",
                                            width = "950px",
                                            height = "675px"),
                                 DT::dataTableOutput(outputId = "pit_player")
                               )
                             )
                    ),
                    tabPanel(title = "Washington Capitals",
                             sidebarLayout(
                               sidebarPanel(
                                 selectInput(inputId = "wsh",
                                             label = "Choose authority or hub score:",
                                             choices = choice_values,
                                             selected = "auth_score"),
                                 helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                               ),
                               
                               # Plot
                               mainPanel(
                                 plotOutput("wsh_network",
                                            click = "wsh_click",
                                            width = "950px",
                                            height = "675px"),
                                 DT::dataTableOutput(outputId = "wsh_player")
                               )
                             )
                    )
    ),
    navbarMenu("Atlantic Division",
               tabPanel(title = "Boston Bruins",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "bos",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("bos_network",
                                       click = "bos_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "bos_player")
                          )
                        )
               ),
               tabPanel(title = "Buffalo Sabres",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "buf",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("buf_network",
                                       click = "buf_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "buf_player")
                          )
                        )
               ),
               tabPanel(title = "Detroit Red Wings",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "det",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("det_network",
                                       click = "det_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "det_player")
                          )
                        )
               ),
               tabPanel(title = "Florida Panthers",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "fla",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("fla_network",
                                       click = "fla_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "fla_player")
                          )
                        )
               ),
               tabPanel(title = "Montréal Canadiens",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "mtl",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                          Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("mtl_network",
                                       click = "mtl_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "mtl_player")
                          )
                        )
               ),
               tabPanel(title = "Ottawa Senators",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "ott",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                          Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("ott_network",
                                       click = "ott_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "ott_player")
                          )
                        )
               ),
               tabPanel(title = "Tampa Bay Lightning",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "tbl",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("tbl_network",
                                       click = "tbl_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "tbl_player")
                          )
                        )
               ),
               tabPanel(title = "Toronto Maple Leafs",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "tor",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("tor_network",
                                       click = "tor_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "tor_player")
                          )
                        )
               )
    ),
    navbarMenu("Central Division",
               tabPanel(title = "Chicago Blackhawks",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "chi",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("chi_network",
                                       click = "chi_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "chi_player")
                          )
                        )
               ),
               tabPanel(title = "Colorado Avalanche",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "col",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("col_network",
                                       click = "col_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "col_player")
                          )
                        )
               ),
               tabPanel(title = "Dallas Stars",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "dal",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("dal_network",
                                       click = "dal_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "dal_player")
                          )
                        )
               ),
               tabPanel(title = "Minnesota Wild",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "min",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                          Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("min_network",
                                       click = "min_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "min_player")
                          )
                        )
               ),
               tabPanel(title = "Nashville Predators",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "nsh",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("nsh_network",
                                       click = "nsh_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "nsh_player")
                          )
                        )
               ),
               tabPanel(title = "St. Louis Blues",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "stl",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("stl_network",
                                       click = "stl_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "stl_player")
                          )
                        )
               ),
               tabPanel(title = "Utah Mammoth",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "uta",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("uta_network",
                                       click = "uta_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "uta_player")
                          )
                        )
               ),
               tabPanel(title = "Winnipeg Jets",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "wpg",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("wpg_network",
                                       click = "wpg_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "wpg_player")
                          )
                        )
               )
    ),
    navbarMenu("Pacific Division",
               tabPanel(title = "Anaheim Ducks",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "ana",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("ana_network",
                                       click = "ana_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "ana_player")
                          )
                        )
               ),
               tabPanel(title = "Calgary Flames",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "cgy",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("cgy_network",
                                       click = "cgy_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "cgy_player")
                          )
                        )
               ),
               tabPanel(title = "Edmonton Oilers",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "edm",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                          Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("edm_network",
                                       click = "edm_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "edm_player")
                          )
                        )
               ),
               tabPanel(title = "Los Angeles Kings",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "lak",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                          Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("lak_network",
                                       click = "lak_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "lak_player")
                          )
                        )
               ),
               tabPanel(title = "San Jose Sharks",
                       sidebarLayout(
                         sidebarPanel(
                           selectInput(inputId = "sjs",
                                       label = "Choose authority or hub score:",
                                       choices = choice_values,
                                       selected = "auth_score"),
                           helpText("The colors of the arrows indicate which player an assist is from, 
                           with each unique player having their own specific color. 
                             Click a player to bring up information on them!")
                         ),
                         
                         # Plot
                         mainPanel(
                           plotOutput("sjs_network",
                                      click = "sjs_click",
                                      width = "950px",
                                      height = "675px"),
                           DT::dataTableOutput(outputId = "sjs_player")
                         )
                       )
               ),
               tabPanel(title = "Seattle Kraken",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "sea",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                           with each unique player having their own specific color. 
                             Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("sea_network",
                                       click = "sea_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "sea_player")
                          )
                        )
               ),
               tabPanel(title = "Vancouver Canucks",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "van",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("van_network",
                                       click = "van_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "van_player")
                          )
                        )
               ),
               tabPanel(title = "Vegas Golden Knights",
                        sidebarLayout(
                          sidebarPanel(
                            selectInput(inputId = "veg",
                                        label = "Choose authority or hub score:",
                                        choices = choice_values,
                                        selected = "auth_score"),
                            helpText("The colors of the arrows indicate which player an assist is from, 
                        with each unique player having their own specific color. 
                         Click a player to bring up information on them!")
                          ),
                          
                          # Plot
                          mainPanel(
                            plotOutput("veg_network",
                                       click = "veg_click",
                                       width = "950px",
                                       height = "675px"),
                            DT::dataTableOutput(outputId = "veg_player")
                          )
                        )
               )
    ),
    tabPanel(
      title = "App Information",
      h1("General format"),
      "Points (nodes) are unique players on the team, and the lines (edges) indicate an assist 
        that led to a goal between 2 players. Wherever an arrow originates from is the assister, 
        and the arrow points towards who scored the goal.",
      h1("Context for some variables"),
      h2("Number of goals scored"),
      "The number of goals scored between any given pair of players is indicated by 
        the thickness of a line, or their edge weights. These are relative to each team, they
        cannot be compared across 2 different teams.",
      h2("Hub and Authority Scores"),
      "Hub scores indicate if a player has more assists, authority scores indicate
        if a player has more goals. Both scores rank players from 0-1, with a score of 1
        indicating that player is the best hub/authority on the team. Scores are indicated
        by the size of the nodes. Bigger nodes are closer to a score of one, and vice versa.
        These are scores relative to each team, they cannot be compared across 2 different teams.",
      h2("Traded Players"),
      "Clicking on a node generates a table with information on the player's name, their total goals/assists, 
        their position, and their total games played this NHL season. An additional column for team 
        was added for traded players. If a player was traded twice, they will appear 3 times in the 
        table. The first time, indicated under team as '2TM,' shows their stats for the season overall
        across both teams. The second time shows their stats for their original team in the season.
        The third time shows their stats for the team they were traded to. A few players were traded
        3 times this season, indicated with '3TM,' following a similar logic to players only traded
        twice.",
      h2("Team Names"),
      "Team names are in their abbreviated forms except for VGK which is VEG in this dataset for some reason. 
        Full team names can be found here: 
        https://en.wikipedia.org/wiki/Wikipedia:WikiProject_Ice_Hockey/NHL_team_abbreviations",
      h2("Positions"),
      "Offensive positions are categorized 5 ways in this data. Forwards, centers, left wingers,
        right wingers, and wingers are all offensive positions.",
      h2("Total Goals/Assists"),
      "Player data captures the total goals/assists from the 2025-2026 NHL season. Not every goal/assist
        from a player is captured in the networks because unassisted goals were removed and secondary assists
        were not included in the networks.",
    ),
    
    tabPanel(title = "Data",
             h2("Goal Data"),
             "Goal data to generate networks was taken from Sport Reference's Stathead Goal Finder,
             filtered for the 2025-2026 season.",
             br(),
             "https://www.sports-reference.com/stathead/tiny/FtM4c. Accessed April 15 & 17, 2026",
             h2("Player Data"),
             "Data to generate player information tables was taken from Sports Reference.",
             br(),
             "https://www.hockey-reference.com/leagues/NHL_2026_skaters.html. Accessed May 1, 2026"
    )
)

# Define server logic 
server <- function(input, output) {
  # Reproducibility
  set.seed(231)
  
  # SJS Tab
  output$sjs_network <- renderPlot({
    ggplot(sjs_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$sjs)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") +
      labs(title = choice_names[choice_values == input$sjs],
           linewidth = "Number of Goals") + 
      theme_blank() +
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })
  ## Player stats
  output$sjs_player <- DT::renderDataTable({
    sjs_network %>%
      nearPoints(input$sjs_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # MTL Tab
  output$mtl_network <- renderPlot({
    ggplot(mtl_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$mtl)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$mtl]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })
  ## Player stats
  output$mtl_player <- DT::renderDataTable({
    mtl_network %>%
      nearPoints(input$mtl_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # CAR Tab
  output$car_network <- renderPlot({
    ggplot(car_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$car)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$car]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })
  ## Player stats
  output$car_player <- DT::renderDataTable({
    car_network %>%
      nearPoints(input$car_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # EDM Tab
  output$edm_network <- renderPlot({
    ggplot(edm_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$edm)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$edm]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })
  ## Player stats
  output$edm_player <- DT::renderDataTable({
    edm_network %>%
      nearPoints(input$edm_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # TBL Tab
  output$tbl_network <- renderPlot({
    ggplot(tbl_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$tbl)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$tbl]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })
  ## Player stats
  output$tbl_player <- DT::renderDataTable({
    tbl_network %>%
      nearPoints(input$tbl_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # BUF Tab
  output$buf_network <- renderPlot({
    ggplot(buf_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$buf)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$buf]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$buf_player <- DT::renderDataTable({
    buf_network %>%
      nearPoints(input$buf_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # CBJ Tab
  output$cbj_network <- renderPlot({
    ggplot(cbj_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$cbj)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$cbj]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$cbj_player <- DT::renderDataTable({
    cbj_network %>%
      nearPoints(input$cbj_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # PIT Tab
  output$pit_network <- renderPlot({
    ggplot(pit_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$pit)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$pit]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$pit_player <- DT::renderDataTable({
    pit_network %>%
      nearPoints(input$pit_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # PHI Tab
  output$phi_network <- renderPlot({
    ggplot(phi_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$phi)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$phi]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$phi_player <- DT::renderDataTable({
    phi_network %>%
      nearPoints(input$phi_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # ANA Tab
  output$ana_network <- renderPlot({
    ggplot(ana_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$ana)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$ana]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$ana_player <- DT::renderDataTable({
    ana_network %>%
      nearPoints(input$ana_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # BOS Tab
  output$bos_network <- renderPlot({
    ggplot(bos_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$bos)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$bos]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$bos_player <- DT::renderDataTable({
    bos_network %>%
      nearPoints(input$bos_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # VEG Tab
  output$veg_network <- renderPlot({
    ggplot(veg_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$veg)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$veg]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$veg_player <- DT::renderDataTable({
    veg_network %>%
      nearPoints(input$veg_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # UTA Tab
  output$uta_network <- renderPlot({
    ggplot(uta_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$uta)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$uta]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$uta_player <- DT::renderDataTable({
    uta_network %>%
      nearPoints(input$uta_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # COL Tab
  output$col_network <- renderPlot({
    ggplot(col_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$col)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$col]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$col_player <- DT::renderDataTable({
    col_network %>%
      nearPoints(input$col_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # NSH Tab
  output$nsh_network <- renderPlot({
    ggplot(nsh_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$nsh)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$nsh]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$nsh_player <- DT::renderDataTable({
    nsh_network %>%
      nearPoints(input$nsh_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # VAN Tab
  output$van_network <- renderPlot({
    ggplot(van_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$van)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$van]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$van_player <- DT::renderDataTable({
    van_network %>%
      nearPoints(input$van_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # WSH Tab
  output$wsh_network <- renderPlot({
    ggplot(wsh_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$wsh)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$wsh]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$wsh_player <- DT::renderDataTable({
    wsh_network %>%
      nearPoints(input$wsh_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # NYI Tab
  output$nyi_network <- renderPlot({
    ggplot(nyi_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$nyi)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$nyi]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$nyi_player <- DT::renderDataTable({
    nyi_network %>%
      nearPoints(input$nyi_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # NJD Tab
  output$njd_network <- renderPlot({
    ggplot(njd_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$njd)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$njd]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$njd_player <- DT::renderDataTable({
    njd_network %>%
      nearPoints(input$njd_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # NYR Tab
  output$nyr_network <- renderPlot({
    ggplot(nyr_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$nyr)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$nyr]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$nyr_player <- DT::renderDataTable({
    nyr_network %>%
      nearPoints(input$nyr_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # MIN Tab
  output$min_network <- renderPlot({
    ggplot(min_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$min)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$min]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$min_player <- DT::renderDataTable({
    min_network %>%
      nearPoints(input$min_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # LAK Tab
  output$lak_network <- renderPlot({
    ggplot(lak_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$lak)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$lak]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$lak_player <- DT::renderDataTable({
    lak_network %>%
      nearPoints(input$lak_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # CGY Tab
  output$cgy_network <- renderPlot({
    ggplot(cgy_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$cgy)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$cgy]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$cgy_player <- DT::renderDataTable({
    cgy_network %>%
      nearPoints(input$cgy_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # CHI Tab
  output$chi_network <- renderPlot({
    ggplot(chi_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$chi)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$chi]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$chi_player <- DT::renderDataTable({
    chi_network %>%
      nearPoints(input$chi_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # DAL Tab
  output$dal_network <- renderPlot({
    ggplot(dal_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$dal)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$dal]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$dal_player <- DT::renderDataTable({
    dal_network %>%
      nearPoints(input$dal_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # DET Tab
  output$det_network <- renderPlot({
    ggplot(det_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$det)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$det]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$det_player <- DT::renderDataTable({
    det_network %>%
      nearPoints(input$det_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # FLA Tab
  output$fla_network <- renderPlot({
    ggplot(fla_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$fla)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$fla]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$fla_player <- DT::renderDataTable({
    fla_network %>%
      nearPoints(input$fla_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # OTT Tab
  output$ott_network <- renderPlot({
    ggplot(ott_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$ott)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$ott]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$ott_player <- DT::renderDataTable({
    ott_network %>%
      nearPoints(input$ott_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # SEA Tab
  output$sea_network <- renderPlot({
    ggplot(sea_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$sea)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$sea]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$sea_player <- DT::renderDataTable({
    sea_network %>%
      nearPoints(input$sea_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # STL Tab
  output$stl_network <- renderPlot({
    ggplot(stl_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$stl)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$stl]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$stl_player <- DT::renderDataTable({
    stl_network %>%
      nearPoints(input$stl_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # TOR Tab
  output$tor_network <- renderPlot({
    ggplot(tor_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$tor)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$tor]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$tor_player <- DT::renderDataTable({
    tor_network %>%
      nearPoints(input$tor_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
  
  # WPG Tab
  output$wpg_network <- renderPlot({
    ggplot(wpg_network, aes(x = x, y = y, xend = xend, yend = yend)) +
      geom_edges(arrow = arrow(type = "closed", length = unit(2, "pt")), 
                 curvature = 0.2,
                 alpha = 0.5,
                 aes(linewidth = goals, color = name)) +
      geom_nodes(aes_string(size = input$wpg)) +
      scale_color_hue(l = 60) + 
      guides(color = "none",
             size = "none") + 
      theme_blank() +
      labs(linewidth = "Number of Goals",
           title = choice_names[choice_values == input$wpg]) +  
      theme(legend.key.size = unit(2, "cm"),
            title = element_text(size = 14))
  })  
  ## Player stats
  output$wpg_player <- DT::renderDataTable({
    wpg_network %>%
      nearPoints(input$wpg_click, xvar = "x", yvar = "y") %>%
      group_by(name) %>% 
      summarize(.groups = "rowwise") %>% 
      left_join(players, by = "name") 
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
