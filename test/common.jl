using Test, CommonTests

@common @testset "greet test" begin
    @test occursin("this is $TERGET.", greet(TERGET))
end
