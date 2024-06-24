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

local root = "/app/software/Bazel/0.29.1-GCCcore-8.3.0"

conflict("Bazel")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBAZEL", root)
setenv("EBVERSIONBAZEL", "0.29.1")
setenv("EBDEVELBAZEL", pathJoin(root, "logs/Bazel-0.29.1-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
