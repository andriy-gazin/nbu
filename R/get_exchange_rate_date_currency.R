library(jsonlite)

#' get exchange rate for specific date (in YYYYMMDD format) and currency
#'
#' @param date - date in yyyymmdd format
#' @param currency - currency code
#' @return data.frame with currency exchange rate
#' @export

get_exchange_rate_date_currency <- function(date, currency) {
  base_url <-paste("http://bank.gov.ua/NBUStatService/v1/statdirectory?exchange&valcode=", currency, "&date=", date, "&json",sep="")
  exchange_rate <- fromJSON(base_url, simplifyDataFrame = TRUE)
  return(exchange_rate)
}
