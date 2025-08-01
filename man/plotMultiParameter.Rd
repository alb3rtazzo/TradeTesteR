% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualization.R
\name{plotMultiParameter}
\alias{plotMultiParameter}
\title{Create 3D surface and 2D heatmap for parameter optimization}
\usage{
plotMultiParameter(
  opt_params,
  metric_values,
  param1,
  param2,
  metric_name = "Net Profit"
)
}
\arguments{
\item{opt_params}{Data frame with parameter combinations (must have at least 2 parameters)}

\item{metric_values}{Numeric vector of metric values corresponding to each parameter combination}

\item{param1}{Name of first parameter (x-axis)}

\item{param2}{Name of second parameter (y-axis)}

\item{metric_name}{Name of the metric being plotted (default: "Net Profit")}
}
\value{
A list containing:
  - surface: 3D surface plot (plotly object)
  - heatmap: 2D heatmap (plotly object)
}
\description{
Visualizes optimization results for two parameters, showing how
performance metrics vary across the parameter space.
}
\examples{
\dontrun{
# After optimization
first_window <- optimization_output$optimization_history[[1]]

# Plot optimization surface
plots <- plotMultiParameter(first_window,
                          first_window$net_profit,
                          "fast_ma", "slow_ma",
                          "Net Profit")

# Display plots
plots$surface
plots$heatmap
}
}
