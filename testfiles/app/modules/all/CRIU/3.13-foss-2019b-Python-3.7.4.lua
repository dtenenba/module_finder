help([==[

Description
===========
Checkpoint/Restore In Userspace (CRIU) is a Linux software which can freeze a running container
(or an individual application) and checkpoint its state to disk. The data saved can be used to restore the 
application and run it exactly as it was during the time of the freeze. Using this functionality, application 
or container live migration, snapshots, remote debugging, and many other things are now possible.


More information
================
 - Homepage: https://github.com/checkpoint-restore/criu
]==])

whatis([==[Description: Checkpoint/Restore In Userspace (CRIU) is a Linux software which can freeze a running container
(or an individual application) and checkpoint its state to disk. The data saved can be used to restore the 
application and run it exactly as it was during the time of the freeze. Using this functionality, application 
or container live migration, snapshots, remote debugging, and many other things are now possible.]==])
whatis([==[Homepage: https://github.com/checkpoint-restore/criu]==])
whatis([==[URL: https://github.com/checkpoint-restore/criu]==])

local root = "/app/software/CRIU/3.13-foss-2019b-Python-3.7.4"

conflict("CRIU")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("future/0.16.0-foss-2019b-Python-3.7.4") ) then
    load("future/0.16.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("protobuf-c/1.3.3-GCCcore-8.3.0") ) then
    load("protobuf-c/1.3.3-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib64/pkgconfig"))
setenv("EBROOTCRIU", root)
setenv("EBVERSIONCRIU", "3.13")
setenv("EBDEVELCRIU", pathJoin(root, "logs/CRIU-3.13-foss-2019b-Python-3.7.4-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
