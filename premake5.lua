project "imgui"
    kind "StaticLib"
    language "C++"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    debugdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }

    filter "system:windows"
        cppdialect "Default"
        staticruntime "off"
        systemversion "latest"

        filter { "system:windows", "configurations:Debug" }
            symbols "On"

        filter { "system:windows", "configurations:Release" }
            optimize "On"
        
        filter { "system:windows", "configurations:Distribution" }
            optimize "On"