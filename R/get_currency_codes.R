library(jsonlite)

#get currency codes
get_currency_codes <- function() {
  base_url <- "http://bank.gov.ua/NBUStatService/v1/statdirectory?exchange&json"
  currency_codes <- fromJSON(base_url, simplifyDataFrame = TRUE)[,c(2, 4)]
  return(currency_codes)
}
