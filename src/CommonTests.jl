module CommonTests

using Test

export @common, @runcommon

macro common(expr)
    description = expr.args[findfirst(x -> x isa String, expr.args)]
    quote
        @eval function _common_testset(::Val{Symbol($description)}); $expr; end
    end
end

macro runcommon(expr...)
    quote
        @eval _common_testset(Val(Symbol(Test.get_testset().description)))
    end
end

end # module
