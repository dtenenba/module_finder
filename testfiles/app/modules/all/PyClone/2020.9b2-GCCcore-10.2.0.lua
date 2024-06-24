help([==[

Description
===========
PyClone is a Python package that wraps rclone and provides a threaded interface for
 an installation at the host or container level.


More information
================
 - Homepage: https://gitlab.com/ltgiv/pyclone


Included extensions
===================
arrow-0.17.0, Logbook-1.5.3, PyClone-2020.9b2
]==])

whatis([==[Description: PyClone is a Python package that wraps rclone and provides a threaded interface for
 an installation at the host or container level.]==])
whatis([==[Homepage: https://gitlab.com/ltgiv/pyclone]==])
whatis([==[URL: https://gitlab.com/ltgiv/pyclone]==])
whatis([==[Extensions: arrow-0.17.0, Logbook-1.5.3, PyClone-2020.9b2]==])

local root = "/app/software/PyClone/2020.9b2-GCCcore-10.2.0"

conflict("PyClone")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTPYCLONE", root)
setenv("EBVERSIONPYCLONE", "2020.9b2")
setenv("EBDEVELPYCLONE", pathJoin(root, "logs/PyClone-2020.9b2-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.2
setenv("EBEXTSLISTPYCLONE", "Logbook-1.5.3,arrow-0.17.0,PyClone-2020.9b2")
