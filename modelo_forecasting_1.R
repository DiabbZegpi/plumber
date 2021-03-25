# Crear serie de tiempo
x <- 1:100
set.seed(123)
serie <- sin(x/2) + rnorm(100, mean = 0, sd = 0.5)
serie_ts <- ts(serie, start = 2021, frequency = 12)

library(forecast)

#' @title Holt's linear damped model
#' @param horizon
#' @post /forecast

function(horizon) {
  horizon <- as.numeric(horizon)
  model_fc <- holt(serie_ts, h = horizon, damped = TRUE)
  attach(model_fc)
  return(list(
    method = model_fc$method,
    upper_interval = as.vector(as.data.frame(model_fc$upper)$`95%`),
    lower_interval = as.vector(as.data.frame(model_fc$lower)$`95%`),
    prediction = model_fc$mean)
  )
}