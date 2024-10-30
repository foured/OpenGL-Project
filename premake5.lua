workspace "OpenGL-Project"
    configurations { "Debug", "Release" }
    architecture "x64"

    flags { "MultiProcessorCompile" }   
    
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "Dependencies"
    include "vendor/Glad"
    include "vendor/GLFW"
group ""

include "OpenGL-Project"
