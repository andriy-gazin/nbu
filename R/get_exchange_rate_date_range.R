#' get exchange rate for all currencies and given date range
#'
#' @param start - date in yyyymmdd format
#' @param end - date in yyyymmdd format
#' @return data.frame with exchange rates
#' @export

get_exchange_rate_date_range <- function(start, end){
  #generate sequence of dates in format YYYYMMDD
  start <- as.Date(start, format = "%Y%m%d")
  end <- as.Date(end, format = "%Y%m%d")
  date.range <- seq.Date(start, end, by="day")
  date.range <- format(date.range, "%Y%m%d")

  #create empty dataframe
  rate <- data.frame()

  #loop over the sequence of dates
  for (date in date.range){
    base_url <- paste("http://bank.gov.ua/NBUStatService/v1/statdirectory?exchange&date=", date, "&json", sep="")
    exchange_rate <- fromJSON(base_url, simplifyDataFrame = TRUE)
    exchange_rate <- cbind(date, exchange_rate)
    rate <- rbind(rate, exchange_rate, deparse.level = 0)
  }
  return(rate)
}
