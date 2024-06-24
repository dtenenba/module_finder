help([==[

Description
===========
EasyBuild is a software build and installation framework
written in Python that allows you to install software in a structured,
repeatable and robust way.


More information
================
 - Homepage: http://easybuilders.github.com/easybuild/
]==])

whatis([==[Description: EasyBuild is a software build and installation framework
written in Python that allows you to install software in a structured,
repeatable and robust way.]==])
whatis([==[Homepage: http://easybuilders.github.com/easybuild/]==])

local root = "/app/software/EasyBuild/3.7.1"

conflict("EasyBuild")

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTEASYBUILD", root)
setenv("EBVERSIONEASYBUILD", "3.7.1")
setenv("EBDEVELEASYBUILD", pathJoin(root, "easybuild/EasyBuild-3.7.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 3.7.1
-- ensure packages and modules end up where we expect
local ebDir = "/app"
setenv("EASYBUILD_SOURCEPATH", ebDir .. "/sources")
setenv("EASYBUILD_BUILDPATH", ebDir .. "/build")
setenv("EASYBUILD_INSTALLPATH_SOFTWARE", ebDir .. "/software")
setenv("EASYBUILD_INSTALLPATH_MODULES", ebDir .. "/modules")
setenv("EASYBUILD_REPOSITORYPATH", ebDir .. "/ebfiles_repo")
setenv("EASYBUILD_LOGFILE_FORMAT", ebDir .. "/logs,easybuild-%(name)s-%(version)s-%(date)s.%(time)s.log")
-- keep group writable bit
setenv("EASYBUILD_GROUP_WRITABLE_INSTALLDIR", 1)
-- set umask to preserve group write permissions on modulefiles
setenv("EASYBUILD_UMASK", "002")
-- add our own easyconfig directory to robot paths
setenv("EASYBUILD_ROBOT_PATHS", ":" .. ebDir .. "/fh_easyconfigs")
-- Our licenses
setenv("LM_LICENSE_FILE", ebDir .. "/etc/licenses/intel.lic")
-- using Lmod
setenv("EASYBUILD_MODULES_TOOL", "Lmod")

