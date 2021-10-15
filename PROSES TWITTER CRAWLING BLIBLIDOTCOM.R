library(twitteR)
library(ROAuth)
library(RCurl)
library(xlsx)
library(stringr)


# mendefinisikan key & token Twitter API
consumer_key = "EDSQWpkScTep6jzC6JULEZwyx"
consumer_secret = "nIqrFEcCuOr9zeJZ8QvFporTrEuo7JT4bJS5Dsfre0b2VNJdGd"
access_token = "1670474000-ptm3Oj7ezCcWWRkFpT4Qd0eLBzxdeXBGxhq4G8O"
access_secret = "9YwMkJHjFLiTLk1iKcBpbnHmya0SdowB5u4xpuSL2fyc3"

# setup twitter 
setup_twitter_oauth(consumer_key, 
                    consumer_secret, 
                    access_token, 
                    access_secret)

# Twitter Crawling berdasarkan Username
tweets = userTimeline("bliblidotcom", n = 3200, includeRts = FALSE, excludeReplies = TRUE)
blibli =  do.call("rbind", lapply(tweets, as.data.frame))
View(blibli)

# menyimpan hasil twitter crawling
write.xlsx(blibli, file = 'F:/R SCRIPT/BLIBLIDOTCOM NEW.xlsx')
