@testset "Test Dynamic Source" begin
    sys = System(100)
    bus = Bus(nothing)
    set_bustype!(bus, BusTypes.SLACK)
    add_component!(sys, bus)
    source = Source(nothing)
    set_bus!(source, bus)
    add_component!(sys, source)
    pvs = PeriodicVariableSource(nothing)
    add_component!(sys, pvs, source)
    @test get_components(PeriodicVariableSource, sys) !== nothing
end

@testset "Test Dynamic Source" begin
    sys = System(100)
    bus = Bus(nothing)
    set_bustype!(bus, BusTypes.SLACK)
    add_component!(sys, bus)
    source = Source(nothing)
    set_bus!(source, bus)
    add_component!(sys, source)
    pvs = PeriodicVariableSource(nothing)
    add_component!(sys, pvs, source)
    @test get_components(PeriodicVariableSource, sys) !== nothing
    sys2, result = validate_serialization(sys)
    @test result
end
