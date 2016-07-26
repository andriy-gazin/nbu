library(jsonlite)

#' get exchange rate for all currencies for current date
#'
#' @param none
#' @return dataframe with exchange rate for all available currencies for current date
#' @export

get_current_exchange_rate <- function() {
  base_url <- "http://bank.gov.ua/NBUStatService/v1/statdirectory?exchange&json"
  exchange_rate <- fromJSON(base_url, simplifyDataFrame = TRUE)
  return(exchange_rate)
}
