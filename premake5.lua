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

    -- Remap Configurations to avoid rebuilding
    configmap {
        ["Debug_DLL"] = "Release_DLL",
        ["Dist_DLL"] = "Release_DLL",
        ["None"] = "Release_DLL",
        ["Omniverse"] = "Release_DLL",
        ["Rhino"] = "Release_DLL",
        ["Both"] = "Release_DLL",
    }

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
