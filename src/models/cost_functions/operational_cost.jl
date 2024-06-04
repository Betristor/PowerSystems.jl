""" Supertype for operational cost representation in the model"""
abstract type OperationalCost <: DeviceParameter end

IS.serialize(val::OperationalCost) = IS.serialize_struct(val)
IS.deserialize(T::Type{<:OperationalCost}, val::Dict) = IS.deserialize_struct(T, val)
# NOTE MarketBidCost serialization is handled in serialization.jl
