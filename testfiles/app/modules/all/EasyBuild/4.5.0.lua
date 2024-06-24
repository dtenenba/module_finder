help([==[

Description
===========
EasyBuild is a software build and installation framework
 written in Python that allows you to install software in a structured,
 repeatable and robust way.


More information
================
 - Homepage: https://easybuilders.github.io/easybuild
]==])

whatis([==[Description: EasyBuild is a software build and installation framework
 written in Python that allows you to install software in a structured,
 repeatable and robust way.]==])
whatis([==[Homepage: https://easybuilders.github.io/easybuild]==])
whatis([==[URL: https://easybuilders.github.io/easybuild]==])

local root = "/app/software/EasyBuild/4.5.0"

conflict("EasyBuild")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTEASYBUILD", root)
setenv("EBVERSIONEASYBUILD", "4.5.0")
setenv("EBDEVELEASYBUILD", pathJoin(root, "logs/EasyBuild-4.5.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
setenv("EB_INSTALLPYTHON", "/usr/bin/python3")
-- Built with EasyBuild version 4.4.2
-- ensure packages and modules end up where we expect 18.04
-- This file is appended to the EasyBuild Modules file
local ebDir = "/app"
setenv("EASYBUILD_SOURCEPATH", ebDir .. "/sources")
setenv("EASYBUILD_BUILDPATH", ebDir .. "/build")
setenv("EASYBUILD_INSTALLPATH_SOFTWARE", ebDir .. "/software")
setenv("EASYBUILD_INSTALLPATH_MODULES", ebDir .. "/modules")
setenv("EASYBUILD_REPOSITORYPATH", ebDir .. "/ebfiles_repo")
setenv("EASYBUILD_LOGFILE_FORMAT", "logs,easybuild-%(name)s-%(version)s-%(date)s.%(time)s.log")
-- keep group writable bit
setenv("EASYBUILD_GROUP_WRITABLE_INSTALLDIR", 1)
-- set umask to preserve group write permissions on modulefiles
setenv("EASYBUILD_UMASK", "002")
-- using Lmod
setenv("EASYBUILD_MODULES_TOOL", "Lmod")
--
