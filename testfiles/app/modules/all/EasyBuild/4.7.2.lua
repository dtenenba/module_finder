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

local root = "/app/software/EasyBuild/4.7.2"

conflict("EasyBuild")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTEASYBUILD", root)
setenv("EBVERSIONEASYBUILD", "4.7.2")
setenv("EBDEVELEASYBUILD", pathJoin(root, "logs/EasyBuild-4.7.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
setenv("EB_INSTALLPYTHON", "/usr/bin/python")
-- Built with EasyBuild version 4.7.1
local ebDir = "/app"
setenv("EASYBUILD_SOURCEPATH", ebDir .. "/sources")
setenv("EASYBUILD_BUILDPATH", ebDir .. "/build")
setenv("EASYBUILD_INSTALLPATH_SOFTWARE", ebDir .. "/software")
setenv("EASYBUILD_INSTALLPATH_MODULES", ebDir .. "/modules")
setenv("EASYBUILD_REPOSITORYPATH", ebDir .. "/ebfiles_repo")
setenv("EASYBUILD_LOGFILE_FORMAT", "logs,easybuild-%(name)s-%(version)s-%(date)s.%(time)s.log")
setenv("EASYBUILD_CONFIGFILES", ebDir .. "/easybuild/config.cfg")
setenv("EASYBUILD_GROUP_WRITABLE_INSTALLDIR", 1)
setenv("EASYBUILD_UMASK", "002")
setenv("EASYBUILD_MODULES_TOOL", "Lmod")
--
