library(jsonlite)
#' get currency codes
#'
#' gets currency codes from nbu website
#' @param None
#' @return data.frame with currency codes
#' @export

get_currency_codes <- function() {
  base_url <- "http://bank.gov.ua/NBUStatService/v1/statdirectory?exchange&json"
  currency_codes <- fromJSON(base_url, simplifyDataFrame = TRUE)[,c(2, 4)]
  return(currency_codes)
}
