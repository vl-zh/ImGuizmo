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

    -- Redefine to keep paths relative
    ImGuizmoIncludeDir = prependPath("../", get_viewer_include_dirs())

    files
    {
        "*.h",
        "*.cpp",
    }

    includedirs
    {
        "%{ImGuizmoIncludeDir.GLFW}",
        "%{ImGuizmoIncludeDir.IMGUI}",
        "."
    }
