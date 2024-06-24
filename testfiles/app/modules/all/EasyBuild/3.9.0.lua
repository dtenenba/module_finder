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

local root = "/app/software/EasyBuild/3.9.0"

conflict("EasyBuild")

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTEASYBUILD", root)
setenv("EBVERSIONEASYBUILD", "3.9.0")
setenv("EBDEVELEASYBUILD", "/app/logs/EasyBuild-3.9.0-easybuild-devel")

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.8.1
-- Fred Hutch environment settings
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
-- add our own easyconfig directory to robot paths
setenv("EASYBUILD_ROBOT_PATHS", ebDir .. "/fh_easyconfigs" .. ":")
-- using Lmod
setenv("EASYBUILD_MODULES_TOOL", "Lmod")
