#=
This file is auto-generated. Do not edit.
=#

#! format: off

"""
    mutable struct Line <: ACBranch
        name::String
        available::Bool
        active_power_flow::Float64
        reactive_power_flow::Float64
        arc::Arc
        r::Float64
        x::Float64
        b::FromTo
        rate::Float64
        angle_limits::MinMax
        services::Vector{Service}
        ext::Dict{String, Any}
        time_series_container::InfrastructureSystems.TimeSeriesContainer
        supplemental_attributes_container::InfrastructureSystems.SupplementalAttributesContainer
        internal::InfrastructureSystemsInternal
    end



# Arguments
- `name::String`: Name of the component. Components of the same type (e.g., `PowerLoad`) must have unique names, but components of different types (e.g., `PowerLoad` and `ACBus`) can have the same name.
- `available::Bool`: Indicator of whether the component is connected and online (`true`) or disconnected, offline, or down (`false`). For example, a time-series of availability can be attached here to include planned or un-planned outages over a simulation horizon.
- `active_power_flow::Float64`
- `reactive_power_flow::Float64`
- `arc::Arc`: Used internally to represent network topology. **Do not modify.**
- `r::Float64`: System per-unit value, validation range: `(0, 4)`, action if invalid: `warn`
- `x::Float64`: System per-unit value, validation range: `(0, 4)`, action if invalid: `warn`
- `b::FromTo`: System per-unit value, validation range: `(0, 100)`, action if invalid: `warn`
- `rate::Float64`
- `angle_limits::MinMax`, validation range: `(-1.571, 1.571)`, action if invalid: `error`
- `services::Vector{Service}`: Services that this device contributes to
- `ext::Dict{String, Any}`: An empty *ext*ra dictionary for users to add metadata that are not used in simulation, such as latitude and longitude. See [Adding additional fields](@ref).
- `time_series_container::InfrastructureSystems.TimeSeriesContainer`: Contains references to the time-series data linked to this component, such as forecast time-series of `active_power` for a renewable generator or a single time-series of component availability to model line outages. See [`Time Series Data`](@ref ts_data).
- `supplemental_attributes_container::InfrastructureSystems.SupplementalAttributesContainer`: container for supplemental attributes
- `internal::InfrastructureSystemsInternal`: PowerSystems.jl internal reference. **Do not modify.**
"""
mutable struct Line <: ACBranch
    "Name of the component. Components of the same type (e.g., `PowerLoad`) must have unique names, but components of different types (e.g., `PowerLoad` and `ACBus`) can have the same name."
    name::String
    "Indicator of whether the component is connected and online (`true`) or disconnected, offline, or down (`false`). For example, a time-series of availability can be attached here to include planned or un-planned outages over a simulation horizon."
    available::Bool
    active_power_flow::Float64
    reactive_power_flow::Float64
    "Used internally to represent network topology. **Do not modify.**"
    arc::Arc
    "System per-unit value"
    r::Float64
    "System per-unit value"
    x::Float64
    "System per-unit value"
    b::FromTo
    rate::Float64
    angle_limits::MinMax
    "Services that this device contributes to"
    services::Vector{Service}
    "An empty *ext*ra dictionary for users to add metadata that are not used in simulation, such as latitude and longitude. See [Adding additional fields](@ref)."
    ext::Dict{String, Any}
    "Contains references to the time-series data linked to this component, such as forecast time-series of `active_power` for a renewable generator or a single time-series of component availability to model line outages. See [`Time Series Data`](@ref ts_data)."
    time_series_container::InfrastructureSystems.TimeSeriesContainer
    "container for supplemental attributes"
    supplemental_attributes_container::InfrastructureSystems.SupplementalAttributesContainer
    "PowerSystems.jl internal reference. **Do not modify.**"
    internal::InfrastructureSystemsInternal
end

function Line(name, available, active_power_flow, reactive_power_flow, arc, r, x, b, rate, angle_limits, services=Device[], ext=Dict{String, Any}(), time_series_container=InfrastructureSystems.TimeSeriesContainer(), supplemental_attributes_container=InfrastructureSystems.SupplementalAttributesContainer(), )
    Line(name, available, active_power_flow, reactive_power_flow, arc, r, x, b, rate, angle_limits, services, ext, time_series_container, supplemental_attributes_container, InfrastructureSystemsInternal(), )
end

function Line(; name, available, active_power_flow, reactive_power_flow, arc, r, x, b, rate, angle_limits, services=Device[], ext=Dict{String, Any}(), time_series_container=InfrastructureSystems.TimeSeriesContainer(), supplemental_attributes_container=InfrastructureSystems.SupplementalAttributesContainer(), internal=InfrastructureSystemsInternal(), )
    Line(name, available, active_power_flow, reactive_power_flow, arc, r, x, b, rate, angle_limits, services, ext, time_series_container, supplemental_attributes_container, internal, )
end

# Constructor for demo purposes; non-functional.
function Line(::Nothing)
    Line(;
        name="init",
        available=false,
        active_power_flow=0.0,
        reactive_power_flow=0.0,
        arc=Arc(ACBus(nothing), ACBus(nothing)),
        r=0.0,
        x=0.0,
        b=(from=0.0, to=0.0),
        rate=0.0,
        angle_limits=(min=-1.571, max=1.571),
        services=Device[],
        ext=Dict{String, Any}(),
        time_series_container=InfrastructureSystems.TimeSeriesContainer(),
        supplemental_attributes_container=InfrastructureSystems.SupplementalAttributesContainer(),
    )
end

"""Get [`Line`](@ref) `name`."""
get_name(value::Line) = value.name
"""Get [`Line`](@ref) `available`."""
get_available(value::Line) = value.available
"""Get [`Line`](@ref) `active_power_flow`."""
get_active_power_flow(value::Line) = get_value(value, value.active_power_flow)
"""Get [`Line`](@ref) `reactive_power_flow`."""
get_reactive_power_flow(value::Line) = get_value(value, value.reactive_power_flow)
"""Get [`Line`](@ref) `arc`."""
get_arc(value::Line) = value.arc
"""Get [`Line`](@ref) `r`."""
get_r(value::Line) = value.r
"""Get [`Line`](@ref) `x`."""
get_x(value::Line) = value.x
"""Get [`Line`](@ref) `b`."""
get_b(value::Line) = value.b
"""Get [`Line`](@ref) `rate`."""
get_rate(value::Line) = get_value(value, value.rate)
"""Get [`Line`](@ref) `angle_limits`."""
get_angle_limits(value::Line) = value.angle_limits
"""Get [`Line`](@ref) `services`."""
get_services(value::Line) = value.services
"""Get [`Line`](@ref) `ext`."""
get_ext(value::Line) = value.ext
"""Get [`Line`](@ref) `time_series_container`."""
get_time_series_container(value::Line) = value.time_series_container
"""Get [`Line`](@ref) `supplemental_attributes_container`."""
get_supplemental_attributes_container(value::Line) = value.supplemental_attributes_container
"""Get [`Line`](@ref) `internal`."""
get_internal(value::Line) = value.internal

"""Set [`Line`](@ref) `available`."""
set_available!(value::Line, val) = value.available = val
"""Set [`Line`](@ref) `active_power_flow`."""
set_active_power_flow!(value::Line, val) = value.active_power_flow = set_value(value, val)
"""Set [`Line`](@ref) `reactive_power_flow`."""
set_reactive_power_flow!(value::Line, val) = value.reactive_power_flow = set_value(value, val)
"""Set [`Line`](@ref) `arc`."""
set_arc!(value::Line, val) = value.arc = val
"""Set [`Line`](@ref) `r`."""
set_r!(value::Line, val) = value.r = val
"""Set [`Line`](@ref) `x`."""
set_x!(value::Line, val) = value.x = val
"""Set [`Line`](@ref) `b`."""
set_b!(value::Line, val) = value.b = val
"""Set [`Line`](@ref) `rate`."""
set_rate!(value::Line, val) = value.rate = set_value(value, val)
"""Set [`Line`](@ref) `angle_limits`."""
set_angle_limits!(value::Line, val) = value.angle_limits = val
"""Set [`Line`](@ref) `services`."""
set_services!(value::Line, val) = value.services = val
"""Set [`Line`](@ref) `ext`."""
set_ext!(value::Line, val) = value.ext = val
"""Set [`Line`](@ref) `time_series_container`."""
set_time_series_container!(value::Line, val) = value.time_series_container = val
"""Set [`Line`](@ref) `supplemental_attributes_container`."""
set_supplemental_attributes_container!(value::Line, val) = value.supplemental_attributes_container = val
