% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tota.R
\name{tota}
\alias{tota}
\title{Total Area Estimation}
\usage{
tota(x, p, n, sh = c(0.25, 9.5))
}
\arguments{
\item{x}{The spectrum of which you want to calculate the total area}

\item{p}{The matched ppm variable to x}

\item{n}{The noise estimation from the pproc}

\item{sh}{The chemical shift of the region you want to calculate total area of}
}
\value{
A value of the total area estimation
}
\description{
This function gets all values that reside within the given upper and lower bounds of an x variable and sums them to give a reasonably accurate estimation of the total area of the spectrum
}
\details{
\code{tota()} finds the ppm values between the upper and lower bounds provided by the sh parameter.
Then it removes all values below the estimated noise level provided by \code{pproc()} to increase accuracy.
Finally the remaining values are summed and is the value returned by the function.
}
\examples{
data(x,p,n)
ta <- tota(x, p, n)
}
\author{
Kyle Bario \email{kylebario1@gmail.com}
}
