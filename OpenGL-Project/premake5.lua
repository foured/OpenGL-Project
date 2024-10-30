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

        "%{wks.location}/vendor/glm/glm/**.hpp",
        "%{wks.location}/vendor/glm/glm/**.inl",
        "%{wks.location}/vendor/stb_image/**.h",
        "%{wks.location}/vendor/freetype/**.h"
    }

    defines {
		"_CRT_SECURE_NO_WARNINGS"
	}

    includedirs{
        "src",
        "%{wks.location}/vendor/Glad/include",
        "%{wks.location}/vendor/GLFW/include", 
        "%{wks.location}/vendor/glm",
        "%{wks.location}/vendor/stb_image",
        "%{wks.location}/vendor/freetype/include"
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