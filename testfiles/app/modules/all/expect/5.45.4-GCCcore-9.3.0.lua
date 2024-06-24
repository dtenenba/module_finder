help([==[

Description
===========
Expect is a tool for automating interactive applications 
  such as telnet, ftp, passwd, fsck, rlogin, tip, etc. 
  Expect really makes this stuff trivial. 
  Expect is also useful for testing these same applications.


More information
================
 - Homepage: https://core.tcl.tk/expect/index
]==])

whatis([==[Description: Expect is a tool for automating interactive applications 
  such as telnet, ftp, passwd, fsck, rlogin, tip, etc. 
  Expect really makes this stuff trivial. 
  Expect is also useful for testing these same applications.]==])
whatis([==[Homepage: https://core.tcl.tk/expect/index]==])
whatis([==[URL: https://core.tcl.tk/expect/index]==])

local root = "/app/software/expect/5.45.4-GCCcore-9.3.0"

conflict("expect")

if not ( isloaded("GCCcore/9.3.0") ) then
    load("GCCcore/9.3.0")
end

if not ( isloaded("Tcl/8.6.10-GCCcore-9.3.0") ) then
    load("Tcl/8.6.10-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTEXPECT", root)
setenv("EBVERSIONEXPECT", "5.45.4")
setenv("EBDEVELEXPECT", pathJoin(root, "logs/expect-5.45.4-GCCcore-9.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
