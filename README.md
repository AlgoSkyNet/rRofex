
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rRofex <img src='man/figures/r-rofex.png' align="right" height="139"/>

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
<!-- badges: end -->

This package lets you access ROFEX APIs using R. Having this will enable
to integrate ROFEX data easily into R workflows.

## Installation

At the moment `rRofex` is only available through GitHub usind
`devtools`.

#### Installing with `devtools`

``` r
# 1. In R install the package `devtools`.
install.packages("devtools")

# 2. Once `devtools` is installed, install `rRofex`
library(devtools)
devtools::install_github("gruporofex/rRofex")
```

## References

We provide a convinient wrapper for consuming data from ROFEX APIs:

  - **Trading API (in development)**
  - Back Office API (See [acyRsa](https://github.com/matbarofex/acyrsa))

### Trading API (in development)

These are the currently available methods:

  - Log-in method
  - Request for Reference Data
  - Market Data Real Time
  - Historical Market Data
  - Send Orders
  - Lookup Orders

Available environments:

  - *Demo environrment*: go to
    [reMarkets](https://remarkets.primary.ventures/) to get credentials.
  - *Production*: it needs credetentials. Please contact:
    <mpi@primary.com.ar> for more information.
  - *xOMS*: contact your broker for credentials.

## Examples

``` r
library(rRofex)

# Once you have cretencials, you'll be able to get a token when you login
conn <- trading_login(username = XXX, password = XXX, base_url ='http://api.remarkets.primary.com.ar')

# You can get a complete Reference Data list with details
trading_instruments(connection = conn, request = "securities", sec_detailed = T)

# Real Time Prices using the REST APP
trading_md(connection = conn, symbol = "DODic20")

# Historical Trades
trading_mdh(connection = conn, symbol = "DOJul20", date = "2020-02-06")
```

## Acknowledgements

Development of this software was driven by
[Primary](https://www.primary.com.ar/) as part of an Open Source
initiative of [Grupo Rofex](https://www.rofex.com.ar/).

#### Author/Maintainer

  - [Augusto Hassel](https://github.com/augustohassel)

#### Internal Contributors

  - [Juan Francisco Gomez](https://github.com/jfgomezok)
