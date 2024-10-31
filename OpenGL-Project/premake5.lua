PROJECT_NAME = "OpenGL-Project"
project(PROJECT_NAME)
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"

    targetdir ("%{wks.location}/build/bin/" .. outputdir)
    objdir ("%{wks.location}/build/obj/" .. outputdir)

    files { 
        "%{prj.location}/**.h", 
        "%{prj.location}/**.c", 
        "%{prj.location}/**.hpp", 
        "%{prj.location}/**.cpp",
        "%{prj.location}/**.lua",
        "%{prj.location}/**.txt",

        "%{prj.location}/vendor/glm/glm/**.hpp",
        "%{prj.location}/vendor/glm/glm/**.inl",
        "%{prj.location}/vendor/stb_image/**.h",
        "%{prj.location}/vendor/freetype/**.h"
    }

    defines {
		"_CRT_SECURE_NO_WARNINGS"
	}

    includedirs{
        "%{prj.location}/src",
        
        "%{prj.location}/vendor/Glad/include",
        "%{prj.location}/vendor/GLFW/include", 
        "%{prj.location}/vendor/glm",
        "%{prj.location}/vendor/stb_image",
        "%{prj.location}/vendor/freetype/include"
    }

    links{
        "Glad",
        "GLFW"
    }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"