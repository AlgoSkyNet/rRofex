% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{trading_new_order}
\alias{trading_new_order}
\title{Send Order to the Market}
\usage{
trading_new_order(
  connection,
  symbol,
  side,
  quantity,
  price,
  order_type = "Limit",
  time_in_force = "Day",
  iceberg = FALSE,
  expire_date = NULL,
  display_quantity = NULL,
  account
)
}
\arguments{
\item{connection}{S4. \strong{Mandaroty} Formal rRofexConnection class object}

\item{symbol}{String. Use \code{\link{trading_instruments}} to see which symbols are available.}

\item{side}{String. Either 'Buy' or 'Sell'.}

\item{quantity}{Numeric. Quantity of the order.}

\item{price}{Numeric. Price of the order.}

\item{order_type}{String. Type of order.
\itemize{
\item Limit. Limit order sets the maximum or minimum price at which you are willing to buy or sell.
\item MLL. Market with Leftover as Limit (market order then unexecuted quantity becomes limit order at last price).
}}

\item{time_in_force}{String. Specifies how long the order remains in effect. Absence of this field is interpreted as 'Day':
\itemize{
\item Day. Day or session.
\item IOC. Immediate or Cancel.
\item FOK. Fill or Kill.
\item GTD. Good Till Date.
}}

\item{iceberg}{Logical: if TRUE, then the order is 'iceberg'. FALSE as default.}

\item{expire_date}{String. \strong{Only for GDT orders}. Maturity date of the order, With format '\%Y-\%m-\%d'.}

\item{display_quantity}{Numeric. \strong{Only for Iceberg orders}. Indicate the disclosed quantity for the 'iceberg' order.}

\item{account}{String. Account Number / Account ID.}
}
\value{
List with outputs like state of the order.
}
\description{
The method \code{trading_new_order} is use to send orders.
}
\seealso{
Other order placements functions: 
\code{\link{trading_cancel_order}()}
}
\concept{order placements functions}
