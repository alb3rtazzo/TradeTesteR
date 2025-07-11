% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optimization.R
\name{analyzeParameterStability}
\alias{analyzeParameterStability}
\title{Analyze parameter stability across walk-forward windows}
\usage{
analyzeParameterStability(optimization_output, optimize_on = "net_profit")
}
\arguments{
\item{optimization_output}{Output from optimizeStrategy() with return_optimization_details = TRUE}

\item{optimize_on}{The metric that was used for optimization (default: "net_profit")}
}
\value{
A list containing:
  - selected_parameters: data.table showing selected parameters for each window
  - stability_metrics: data.table with stability statistics for each parameter
  - plots: List of plotly visualizations showing parameter evolution
  - summary: Summary statistics including most/least stable parameters
}
\description{
Examines which parameters were selected in each optimization window
to assess consistency and robustness of parameter selection.
}
\examples{
\dontrun{
# First run optimization
opt_results <- optimizeStrategy(price_data, opt_params)

# Analyze parameter stability
stability <- analyzeParameterStability(opt_results, optimize_on = "sharpe")

# View stability metrics
print(stability$stability_metrics)

# Display parameter evolution plot
stability$plots$combined
}
}
