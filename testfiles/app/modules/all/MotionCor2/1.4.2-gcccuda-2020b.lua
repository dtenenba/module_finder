help([==[

Description
===========
MotionCor2 correct anisotropic image motion at the
single pixel level across the whole frame, suitable for both single
particle and tomographic images. Iterative, patch-based motion detection
is combined with spatial and temporal constraints and dose weighting.

Cite publication: Shawn Q. Zheng, Eugene Palovcak, Jean-Paul Armache,
Yifan Cheng and David A. Agard (2016) Anisotropic Correction of
Beam-induced Motion for Improved Single-particle Electron
Cryo-microscopy, Nature Methods, submitted.
BioArxiv: https://biorxiv.org/content/early/2016/07/04/061960


More information
================
 - Homepage: https://msg.ucsf.edu/
]==])

whatis([==[Description: MotionCor2 correct anisotropic image motion at the
single pixel level across the whole frame, suitable for both single
particle and tomographic images. Iterative, patch-based motion detection
is combined with spatial and temporal constraints and dose weighting.

Cite publication: Shawn Q. Zheng, Eugene Palovcak, Jean-Paul Armache,
Yifan Cheng and David A. Agard (2016) Anisotropic Correction of
Beam-induced Motion for Improved Single-particle Electron
Cryo-microscopy, Nature Methods, submitted.
BioArxiv: https://biorxiv.org/content/early/2016/07/04/061960
]==])
whatis([==[Homepage: https://msg.ucsf.edu/]==])
whatis([==[URL: https://msg.ucsf.edu/]==])

local root = "/app/software/MotionCor2/1.4.2-gcccuda-2020b"

conflict("MotionCor2")

if not ( isloaded("gcccuda/2020b") ) then
    load("gcccuda/2020b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.5-GCCcore-10.2.0") ) then
    load("libjpeg-turbo/2.0.5-GCCcore-10.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-10.2.0") ) then
    load("XZ/5.2.5-GCCcore-10.2.0")
end

if not ( isloaded("LibTIFF/4.1.0-GCCcore-10.2.0") ) then
    load("LibTIFF/4.1.0-GCCcore-10.2.0")
end

if not ( isloaded("jbigkit/2.1-GCCcore-10.2.0") ) then
    load("jbigkit/2.1-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMOTIONCOR2", root)
setenv("EBVERSIONMOTIONCOR2", "1.4.2")
setenv("EBDEVELMOTIONCOR2", pathJoin(root, "logs/MotionCor2-1.4.2-gcccuda-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
