help([==[

Description
===========
Emacs Speaks Statistics (ESS) is an add-on package for emacs
 text editors such as GNU Emacs and XEmacs. It is designed to support editing
 of scripts and interaction with various statistical analysis programs such as
 R, S-Plus, SAS, Stata and OpenBUGS/JAGS.


More information
================
 - Homepage: http://ess.r-project.org/
]==])

whatis([==[Description: Emacs Speaks Statistics (ESS) is an add-on package for emacs
 text editors such as GNU Emacs and XEmacs. It is designed to support editing
 of scripts and interaction with various statistical analysis programs such as
 R, S-Plus, SAS, Stata and OpenBUGS/JAGS.]==])
whatis([==[Homepage: http://ess.r-project.org/]==])
whatis([==[URL: http://ess.r-project.org/]==])

local root = "/app/software/ESS/18.10.2"

conflict("ESS")

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTESS", root)
setenv("EBVERSIONESS", "18.10.2")
setenv("EBDEVELESS", pathJoin(root, "logs/ESS-18.10.2-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[To use ESS, you must add to your emacs config:

(load "ess-site")

]==])
end
-- Built with EasyBuild version 4.2.1
