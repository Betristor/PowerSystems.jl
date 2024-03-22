"""
    mutable struct HydroGenerationCost <: OperationalCost
        variable::ProductionVariableCost
        fixed::Float64
    end

Data Structure for the Operational Cost of Hydro Power Plants which includes fixed and
variable cost. Variable Costs can be used to represent the cost of curtailment if negative
values are used or the opportunity cost of water if the costs are positive. It also supports
fuel curves to model specific water intake.

# Arguments
- `variable::ProductionVariableCost`: Production Variable Cost. Can take fuel curves or cost curve represenations
- `fixed::Union{Nothing, Float64}`: Fixed cost of keeping the unit online. For some cost represenations this field can be duplicative.
"""
mutable struct HydroGenerationCost <: OperationalCost
    "variable cost"
    variable::ProductionVariableCost
    "fixed cost"
    fixed::Float64
end

function HydroGenerationCost(; variable, fixed)
    HydroGenerationCost(variable, fixed)
end

# Constructor for demo purposes; non-functional.
function HydroGenerationCost(::Nothing)
    HydroGenerationCost(;
        variable = InputOutputCostCurve(LinearFunctionData(0.0)),
        fixed = 0.0,
    )
end

"""Get [`HydroGenerationCost`](@ref) `variable`."""
get_variable(value::HydroGenerationCost) = value.variable
"""Get [`HydroGenerationCost`](@ref) `fixed`."""
get_fixed(value::HydroGenerationCost) = value.fixed

"""Set [`HydroGenerationCost`](@ref) `variable`."""
set_variable!(value::HydroGenerationCost, val) = value.variable = val
"""Set [`HydroGenerationCost`](@ref) `fixed`."""
set_fixed!(value::HydroGenerationCost, val) = value.fixed = val
