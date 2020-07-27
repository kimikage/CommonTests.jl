module Example

export MyTypeA, MyTypeB
export greet

abstract type AbstractMyType end

struct MyTypeA <: AbstractMyType end

struct MyTypeB <: AbstractMyType end

greet(::Type{MyTypeA}) = "Hello, this is MyTypeA."
greet(::Type{MyTypeB}) = "Hi, this is MyTypeB!"

end # module
