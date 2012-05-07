--- Load extensions
dofile './util/utils.lua'

--- Definition of default targets per OS
defaultaction('linux', 'gmake')
defaultaction('windows', 'vs2010')


--- Find boost
local BOOST_LIB_DIR = os.findlib("boost_system")

if BOOST_LIB_DIR == nil then
     print( "\nWARNING: Couldn't find required boost libraries directory.\n" )
end

--- Solution
solution "html5"
    configurations { "Debug", "Release" }

    --- The library flingo definition
    project "html5"
        kind "StaticLib"
        language "C++"
        files { "../include/**.hh", "../source/**.cc" }
        includedirs { "../include" }
 
        configuration "gmake or codelite"
            buildoptions { "-std=c++0x" }

        configuration "Debug"
            defines { "DEBUG" }
            flags { "Symbols" }
 
        configuration "Release"
            defines { "NDEBUG" }
            flags { "Optimize" }

	project "html5app"
		kind "ConsoleApp"
		language "C++"
		links { "html5" }
		files { "../app/html5_app.cc" }
        includedirs { "../include" }
		
        --- Configuration 
        configuration "gmake or codelite"
            buildoptions { "-std=c++0x" }

        configuration "Debug"
            defines { "DEBUG" }
            flags { "Symbols" }
 
        configuration "Release"
            defines { "NDEBUG" }
            flags { "Optimize" }


    --- Unit test project
    project "html5test"
        kind "ConsoleApp"
        language "C++"
        files { "../unittest/**.hh", "../unittest/**.cc" }
        includedirs { "../unittest", "../include", "../external/tut" }
		links { "html5" }

        --- Configuration 
        configuration "gmake or codelite"
            buildoptions { "-std=c++0x" }

        configuration "Debug"
            defines { "DEBUG" }
            flags { "Symbols" }
 
        configuration "Release"
            defines { "NDEBUG" }
            flags { "Optimize" }

        --- Auto run the unit tests
        configuration { "windows" }
            postbuildcommands { "html5test regression" }
        configuration { "not windows" }
            postbuildcommands { "./html5test regression" }

