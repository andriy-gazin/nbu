library(jsonlite)

#get exchange rate for specific date (in YYYYMMDD format)
get_exchange_rate_date <- function(date){
  base_url <- paste("http://bank.gov.ua/NBUStatService/v1/statdirectory?exchange&date=", date, "&json", sep="")
  exchange_rate <- fromJSON(base_url, simplifyDataFrame = TRUE)
  return(exchange_rate)
}
