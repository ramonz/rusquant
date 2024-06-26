% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getSymbolList.r
\name{getSymbolList}
\alias{getSymbolList}
\title{Get a list of symbols for a given stock exchange}
\usage{
getSymbolList(
  src = "poloniex",
  verbose = FALSE,
  auto.assign = FALSE,
  country = "",
  api.key = "",
  type = "Shares",
  env = globalenv(),
  user_agent = NULL
)
}
\arguments{
\item{src}{character indicating the source of the symbol list.
Possible values are "poloniex", "rusquant", "tinkoff", "mfd", "finam", "alor", and "kraken".}

\item{verbose}{logical indicating whether or not to print additional information.
The default is FALSE.}

\item{auto.assign}{logical indicating whether or not to automatically assign the data.table object to the global environment.
The default is FALSE.}

\item{country}{character indicating the country of the exchange. The default is an empty string.}

\item{api.key}{character indicating the API key to be used for accessing the source.
The default is an empty string.}

\item{type}{character indicating the type of financial instruments to retrieve.
Applicable for the "tinkoff", "gigapack","moex". Possible values are "Bonds", "Currencies", "Etfs", "Futures", "Options", and "Shares".}

\item{env}{The environment where the data should be assigned. Defaults to the global environment.}

\item{user_agent}{The special headers for parsing}
}
\value{
Returns a data.table object containing the symbol information for the specified exchange.
}
\description{
This function retrieves a list of symbols for a specified stock exchange from a variety of sources.
The available sources are poloniex, rusquant, tinkoff, mfd, finam, alor, and kraken.
The function returns a data.table object containing the symbol information for the requested exchange.
}
\note{
Not for the faint of heart. All profits and losses related are yours and yours alone. If you don't like it, write it yourself.
}
\examples{
getSymbolList()
#getSymbolList(src='moex')
#getSymbolList(src='moex',type='Forts')
}
\author{
Vyacheslav Arbuzov
}
