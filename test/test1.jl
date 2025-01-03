using Test
import Pkg, Pluto


@testset "Testing solution to Exercise 1" begin
   Pluto.activate_notebook_environment("../ex1.jl")
   Pkg.instantiate() 

@testset "Running ex1.jl" begin
   include("../ex1.jl")
end;

@testset "Testing that variables exist" begin 
   @test @isdefined student_name
   @test @isdefined student_dept
   @test @isdefined student_year 
end;
@testset "Testing double" begin 
   @test @isdefined double
   @test typeof(square) <: Function
   @test square(1) == 1
   @test square(π) ≈ π^2
   @test isinf(square(-Inf))
   @test_throws MethodError square("hello")
end;

end; # Exercise 1

