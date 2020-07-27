using Test, CommonTests

include("example.jl")
using Main.Example

@testset "MyTypeA test" begin
    global TERGET = MyTypeA
    include("common.jl")

    @testset "greet test" begin
        @runcommon

        @test startswith(greet(MyTypeA), "Hello, ")
    end

end

@testset "MyTypeB test" begin
    global TERGET = MyTypeB
    include("common.jl")

    @testset "greet test" begin
        @runcommon

        @test startswith(greet(MyTypeB), "Hi, ")
    end

end
