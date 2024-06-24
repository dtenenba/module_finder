help([==[

Description
===========
GISTIC is a tool to identify genes targeted by somatic copy-number alterations (SCNAs) that drive cancer growth. By separating SCNA profiles into underlying arm-level and focal alterations, GISTIC estimates the background rates for each category as well as defines the boundaries of SCNA regions.


More information
================
 - Homepage: www.broadinstitute.org/cancer/cga/gistc
]==])

whatis([==[Description: GISTIC is a tool to identify genes targeted by somatic copy-number alterations (SCNAs) that drive cancer growth. By separating SCNA profiles into underlying arm-level and focal alterations, GISTIC estimates the background rates for each category as well as defines the boundaries of SCNA regions.]==])
whatis([==[Homepage: www.broadinstitute.org/cancer/cga/gistc]==])
whatis([==[URL: www.broadinstitute.org/cancer/cga/gistc]==])

local root = "/app/software/GISTIC/2.0.23-GCCcore-8.3.0"

conflict("GISTIC")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("X11/20190717-GCCcore-8.3.0") ) then
    load("X11/20190717-GCCcore-8.3.0")
end

if not ( isloaded("MCR/R2014a") ) then
    load("MCR/R2014a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTGISTIC", root)
setenv("EBVERSIONGISTIC", "2.0.23")
setenv("EBDEVELGISTIC", pathJoin(root, "logs/GISTIC-2.0.23-GCCcore-8.3.0-easybuild-devel"))

prepend_path("PATH", root)

if mode() == "load" then
io.stderr:write([==[To use gistic copy "run_gistic_example" to your home directoy.
cp $EBROOTGISTIC/run_gistic_example .
Edit as needed.  Do not change $EBROOTGISTIC or $MCR_ROOT.
Edit the section below "running GISTIC" to change seg and markersfiles.
Running gistic will change your LD_LIBRARY_PATH. Your environment will have to
be reset after using gistic. Unloading or purging the module in insufficient.

]==])
end
-- Built with EasyBuild version 4.2.2
