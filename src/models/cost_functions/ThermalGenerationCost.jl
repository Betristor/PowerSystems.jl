"""
    mutable struct ThermalGenerationCost <: OperationalCost
        variable::ProductionVariableCost
        fixed::Float64
        start_up::NamedTuple{(:hot, :warm, :cold), NTuple{3, Float64}}
        shut_down::Float64
    end

Data Structure Operational Cost Data which includes fixed, variable cost, multiple start up cost and stop costs.

# Arguments
- `variable::ProductionVariableCost`: Production Variable Cost. Can take fuel curves or cost curve represenations
- `fixed::Union{Nothing, Float64}`: Fixed cost of keeping the unit online. For some cost represenations this field can be duplicative.
- `start_up::Union{NamedTuple{(:hot, :warm, :cold), NTuple{3, Float64}}, Float64}`: start-up cost can take linear of multi-stage costs
- `shut_down::Float64`: cost of turning the unit offline.
"""
@kwdef mutable struct ThermalGenerationCost <: OperationalCost
    "variable cost"
    variable::ProductionVariableCost
    "fixed cost"
    fixed::Float64
    "start-up cost"
    start_up::Union{StartUpStages, Float64}
    "shut-down cost"
    shut_down::Float64
end

ThermalGenerationCost(variable, fixed, start_up::Integer, shut_down) =
    ThermalGenerationCost(variable, fixed, convert(Float64, start_up), shut_down)

# Constructor for demo purposes; non-functional.
function ThermalGenerationCost(::Nothing)
    ThermalGenerationCost(;
        variable = zero(CostCurve),
        fixed = 0.0,
        start_up = 0.0,
        shut_down = 0.0,
    )
end

"""Get [`ThermalGenerationCost`](@ref) `variable`."""
get_variable(value::ThermalGenerationCost) = value.variable
"""Get [`ThermalGenerationCost`](@ref) `fixed`."""
get_fixed(value::ThermalGenerationCost) = value.fixed
"""Get [`ThermalGenerationCost`](@ref) `start_up`."""
get_start_up(value::ThermalGenerationCost) = value.start_up
"""Get [`ThermalGenerationCost`](@ref) `shut_down`."""
get_shut_down(value::ThermalGenerationCost) = value.shut_down

"""Set [`ThermalGenerationCost`](@ref) `variable`."""
set_variable!(value::ThermalGenerationCost, val) = value.variable = val
"""Set [`ThermalGenerationCost`](@ref) `fixed`."""
set_fixed!(value::ThermalGenerationCost, val) = value.fixed = val
"""Set [`ThermalGenerationCost`](@ref) `start_up`."""
set_start_up!(value::ThermalGenerationCost, val) = value.start_up = val
"""Set [`ThermalGenerationCost`](@ref) `shut_down`."""
set_shut_down!(value::ThermalGenerationCost, val) = value.shut_down = val
