println("Making sure Pluto is installed")
import Pkg; 
Pkg.offline(); 
Pkg.add(name="Pluto", version="0.20.4");
import Pluto; 

println("Installing ex1.jl")
Pluto.activate_notebook_environment("../ex1.jl"); 
Pkg.instantiate(); 

println("Installing ex2.jl")
Pluto.activate_notebook_environment("../ex2.jl"); 
Pkg.instantiate(); 

