library(plumber)

r <- plumb(file = "modelo_forecasting_1.R")
r$run(port = 8080)

# curl --data "horizon=12" http://localhost:8080/forecast
# curl http://localhost:8080/plot --output plot.png