#  ###  #%##  ##%#
# #   # #   # #   #
# #     #   # #   #
#  ###  #   # ##%#
#     # #   # #
# #   # #   # #
#  ###  ####  #
 
 
# install missing packages -------------------------------------------------------------------------


install.packages("spotifyr")
install.packages("tidyverse")
install.packages("janitor")

# library to get started -------------------------------------------------------------------------

library(tidyverse)
library(janitor)
library(spotifyr)

# getting started with the API

# https://developer.spotify.com/dashboard/login

# Go to that website and get your own key to explore

id <- 'yourkeyhere'
secret <- 'yoursecrethere'

source("kris_spotify_key.r")

Sys.setenv(SPOTIFY_CLIENT_ID = id)
Sys.setenv(SPOTIFY_CLIENT_SECRET = secret)
access_token <- get_spotify_access_token()

sdp_playlist <- get_playlist("2bEvimoCgWbqvqe1eF7h0H")


