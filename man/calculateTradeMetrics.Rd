% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/performance_analysis.R
\name{calculateTradeMetrics}
\alias{calculateTradeMetrics}
\title{Calculate trading performance metrics}
\usage{
calculateTradeMetrics(bt, initial_equity, risk_free_rate, start, end)
}
\arguments{
\item{bt}{Backtest results object (output from backtest function)}

\item{initial_equity}{Starting capital}

\item{risk_free_rate}{Data.table with date and adjusted columns (e.g., from tq_get("^TNX"))}

\item{start}{Start date for metric calculation}

\item{end}{End date for metric calculation}
}
\value{
A data.table with columns:
  - profit_factor: Sum of winning trades / abs(sum of losing trades)
  - net_profit: Total profit/loss
  - sharpe: Sharpe ratio
  - sortino: Sortino ratio
}
\description{
Computes key performance metrics including profit factor, Sharpe ratio,
and Sortino ratio from backtest results.
}
\examples{
\dontrun{
# Get risk-free rate
rf_rate <- data.table(tq_get("^TNX"))

# Calculate metrics
metrics <- calculateTradeMetrics(bt,
                               initial_equity = 10000,
                               risk_free_rate = rf_rate,
                               start = "2020-01-01",
                               end = "2021-12-31")
}
}
