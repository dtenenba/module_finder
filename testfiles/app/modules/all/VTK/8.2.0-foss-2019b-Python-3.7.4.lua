help([==[

Description
===========
The Visualization Toolkit (VTK) is an open-source, freely available software system for
 3D computer graphics, image processing and visualization. VTK consists of a C++ class library and several
 interpreted interface layers including Tcl/Tk, Java, and Python. VTK supports a wide variety of visualization
 algorithms including: scalar, vector, tensor, texture, and volumetric methods; and advanced modeling techniques
 such as: implicit modeling, polygon reduction, mesh smoothing, cutting, contouring, and Delaunay triangulation.


More information
================
 - Homepage: https://www.vtk.org
]==])

whatis([==[Description: The Visualization Toolkit (VTK) is an open-source, freely available software system for
 3D computer graphics, image processing and visualization. VTK consists of a C++ class library and several
 interpreted interface layers including Tcl/Tk, Java, and Python. VTK supports a wide variety of visualization
 algorithms including: scalar, vector, tensor, texture, and volumetric methods; and advanced modeling techniques
 such as: implicit modeling, polygon reduction, mesh smoothing, cutting, contouring, and Delaunay triangulation.]==])
whatis([==[Homepage: https://www.vtk.org]==])
whatis([==[URL: https://www.vtk.org]==])

local root = "/app/software/VTK/8.2.0-foss-2019b-Python-3.7.4"

conflict("VTK")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("XZ/5.2.4-GCCcore-8.3.0") ) then
    load("XZ/5.2.4-GCCcore-8.3.0")
end

if not ( isloaded("HDF5/1.10.5-gompi-2019b") ) then
    load("HDF5/1.10.5-gompi-2019b")
end

if not ( isloaded("netCDF/4.7.1-gompi-2019b") ) then
    load("netCDF/4.7.1-gompi-2019b")
end

if not ( isloaded("libGLU/9.0.1-GCCcore-8.3.0") ) then
    load("libGLU/9.0.1-GCCcore-8.3.0")
end

if not ( isloaded("X11/20190717-GCCcore-8.3.0") ) then
    load("X11/20190717-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTVTK", root)
setenv("EBVERSIONVTK", "8.2.0")
setenv("EBDEVELVTK", pathJoin(root, "logs/VTK-8.2.0-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
