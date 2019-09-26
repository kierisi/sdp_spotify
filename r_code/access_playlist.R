#  ###  #%##  ##%#
# #   # #   # #   #
# #     #   # #   #
#  ###  #   # ##%#
#     # #   # #
# #   # #   # #
#  ###  ####  #
 
 
# install missing packages -------------------------------------------------------------------------

### Uncomment packages you need to install

# install.packages("spotifyr")
# install.packages("tidyverse")
# install.packages("janitor")

# library to get started -------------------------------------------------------------------------

library(tidyverse)
library(janitor)
library(spotifyr)

# getting started with the API -------------------------------------------------------------------------

# https://developer.spotify.com/dashboard/login

# Go to that website and get your own key to explore

id <- 'yourkeyhere'
secret <- 'yoursecrethere'


#I suggest creating a separate R file that sets your id and secret, then add that file to your gitignore and source it.
source("kris_spotify_key.r")

Sys.setenv(SPOTIFY_CLIENT_ID = id)
Sys.setenv(SPOTIFY_CLIENT_SECRET = secret)
access_token <- get_spotify_access_token()


# pull in the playlist ----------------------------------------------------

sdp_playlist <- get_playlist("2bEvimoCgWbqvqe1eF7h0H")


