# Glossary and Acronyms

[A](@ref) | [D](@ref) | [E](@ref) | [F](@ref) | [H](@ref) | [I](@ref) | [P](@ref) | [R](@ref) | [S](@ref) | 
[V](@ref)

## A

* *AC*: Alternating current

* *AVR*: Automatic Voltage Regulator 

## D

* *DC*: Direct current

* *Dynamic*:

## E

* *EMF*: 

* *ESAC*:

* *ESDC*:

* *EXAC*:

* *EXPIC*:

* *EXST*:

* *EX4VSA*:

## F

* *Fixed*: 

* *Forecast*: Predicted values of a time-varying quantity that commonly features
  a look-ahead and can have multiple data values representing each time period.
  This data is used in simulation with receding horizons or data generated from
  forecasting algorithms. See the article on [`Time Series Data`](@ref ts_data). 

* *Forecast window*: Represents the forecasted value starting at a particular initial time.
    See the article on [`Time Series Data`](@ref ts_data).

## H

* *Horizon*: Is the count of discrete values in a forecast, all horizons in `PowerSystems.jl`
  are represented with `Int`. For instance, many Day-ahead markets will have a forecast with a
  horizon 24. See the article on [`Time Series Data`](@ref ts_data).

* *HVDC*: High-voltage DC

## I

* *IEEET*:

* *Injection*: 

* *Interval*: The period of time between forecast initial times. In `PowerSystems.jl` all
  intervals are represented using `Dates.Period` types. For instance, in a Day-Ahead market
  simulation, the forecast is usually `Hour(24)`, in the example above, the
  interval is `Hour(1)`.

* *Initial time*: The first time-stamp in a forecast. See the article on [`Time Series Data`](@ref ts_data).

## P

* *PSS*: [found under DynamicGeneratorComponent]

* *PSSE* or *PSS/E*: Siemen's PSS&reg;E Power Simulator

* *PPA*: Power purchase agreement

## R

* *Resolution*: The period of time between each discrete value in a time series. All resolutions
  are represented using `Dates.Period` types. For instance, a Day-ahead market data set usually
  has a resolution of `Hour(1)`, a Real-Time market data set usually has a resolution of `Minute(5)`. 

## S

* *SCRX*:

* *SEXS*: Simplified Excitation Systems model from PSS/E

* *Static*:  [](@ref)

* *STAB*:

## V

* *VSCDC*: