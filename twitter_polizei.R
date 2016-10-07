rm(list = ls()); gc(); gc()
# options(java.parameters = "-Xmx4096m")#8192
# options(java.parameters = "-XX:-UseConcMarkSweepGC")
# options(java.parameters = "-XX:-UseGCOverheadLimit")
options(bitmapType='cairo')
options(scipen = 999)

library(dplyr)
#library(tidyr)
library(rtweet)
#library(ggplot2)

# Define your workspace: "X:/xxx/"
#wd <- "D:/github/statistics101/"
wd <- path.expand("~/Documents/github/twitter_polizei")
setwd(wd)

# options(httr_oauth_cache=TRUE)
# setup_twitter_oauth(
#   Sys.getenv("twitter.key"), 
#   Sys.getenv("twitter.secret"), 
#   # OAuth setup to not bother with browser-based auth
#   Sys.getenv("twitter.access.token"), 
#   Sys.getenv("twitter.access.secret")
# )

twitter.token <- create_token(
  app = "twitter-R-connect",
  consumer_key = Sys.getenv("twitter.key"),
  consumer_secret = Sys.getenv("twitter.secret")
)

search_tweets("polizei", n=10)



# https://dev.twitter.com/rest/reference/get/users/search
# GET https://api.twitter.com/1.1/users/search.json?q=Twitter%20API&page=1&count=3

















