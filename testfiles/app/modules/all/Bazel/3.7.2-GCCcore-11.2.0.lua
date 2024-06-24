help([==[

Description
===========
Bazel is a build tool that builds code quickly and reliably.
It is used to build the majority of Google's software.


More information
================
 - Homepage: https://bazel.io/
]==])

whatis([==[Description: Bazel is a build tool that builds code quickly and reliably.
It is used to build the majority of Google's software.]==])
whatis([==[Homepage: https://bazel.io/]==])
whatis([==[URL: https://bazel.io/]==])

local root = "/app/software/Bazel/3.7.2-GCCcore-11.2.0"

conflict("Bazel")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBAZEL", root)
setenv("EBVERSIONBAZEL", "3.7.2")
setenv("EBDEVELBAZEL", pathJoin(root, "logs/Bazel-3.7.2-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
