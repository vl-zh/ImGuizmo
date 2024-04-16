project "ImGuizmo"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("bin/")
    objdir ("bin-int/")

    flags {"MultiProcessorCompile"}

    optimize "Full"
    warnings "Off"

    files
    {
        "*.h",
        "*.cpp",
    }

    includedirs
    {
        "%{IncludeDir.GLFW}",
        "%{IncludeDir.IMGUI}"
    }