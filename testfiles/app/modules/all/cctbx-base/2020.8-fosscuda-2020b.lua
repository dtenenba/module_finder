help([==[

Description
===========
The Computational Crystallography Toolbox (cctbx) is being developed as the open source component of the Phenix
project. The goal of the Phenix project is to advance automation of macromolecular structure determination.
Phenix depends on the cctbx, but not vice versa. This hierarchical approach enforces a clean design as a reusable
library. The cctbx is therefore also useful for small-molecule crystallography and even general scientific
applications.


More information
================
 - Homepage: https://github.com/cctbx/cctbx_project


Included extensions
===================
cctbx-base-2020.8, reportlab-3.5.66
]==])

whatis([==[Description: 
The Computational Crystallography Toolbox (cctbx) is being developed as the open source component of the Phenix
project. The goal of the Phenix project is to advance automation of macromolecular structure determination.
Phenix depends on the cctbx, but not vice versa. This hierarchical approach enforces a clean design as a reusable
library. The cctbx is therefore also useful for small-molecule crystallography and even general scientific
applications.
]==])
whatis([==[Homepage: https://github.com/cctbx/cctbx_project]==])
whatis([==[URL: https://github.com/cctbx/cctbx_project]==])
whatis([==[Extensions: cctbx-base-2020.8, reportlab-3.5.66]==])

local root = "/app/software/cctbx-base/2020.8-fosscuda-2020b"

conflict("cctbx-base")

if not ( isloaded("fosscuda/2020b") ) then
    load("fosscuda/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

if not ( isloaded("HDF5/1.10.7-gompic-2020b") ) then
    load("HDF5/1.10.7-gompic-2020b")
end

if not ( isloaded("libGLU/9.0.1-GCCcore-10.2.0") ) then
    load("libGLU/9.0.1-GCCcore-10.2.0")
end

if not ( isloaded("LIBSVM/3.25-GCCcore-10.2.0") ) then
    load("LIBSVM/3.25-GCCcore-10.2.0")
end

if not ( isloaded("LibTIFF/4.1.0-GCCcore-10.2.0") ) then
    load("LibTIFF/4.1.0-GCCcore-10.2.0")
end

if not ( isloaded("matplotlib/3.3.3-fosscuda-2020b") ) then
    load("matplotlib/3.3.3-fosscuda-2020b")
end

if not ( isloaded("mrcfile/1.3.0-fosscuda-2020b") ) then
    load("mrcfile/1.3.0-fosscuda-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCCTBXMINBASE", root)
setenv("EBVERSIONCCTBXMINBASE", "2020.8")
setenv("EBDEVELCCTBXMINBASE", pathJoin(root, "logs/cctbx-base-2020.8-fosscuda-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.8.1
setenv("EBEXTSLISTCCTBXMINBASE", "reportlab-3.5.66,cctbx-base-2020.8")
