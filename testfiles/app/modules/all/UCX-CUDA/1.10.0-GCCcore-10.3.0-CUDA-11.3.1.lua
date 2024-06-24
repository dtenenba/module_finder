help([==[

Description
===========
Unified Communication X
An open-source production grade communication framework for data centric
and high-performance applications

This module adds the UCX CUDA support.


More information
================
 - Homepage: http://www.openucx.org/
]==])

whatis([==[Description: Unified Communication X
An open-source production grade communication framework for data centric
and high-performance applications

This module adds the UCX CUDA support.
]==])
whatis([==[Homepage: http://www.openucx.org/]==])
whatis([==[URL: http://www.openucx.org/]==])

local root = "/app/software/UCX-CUDA/1.10.0-GCCcore-10.3.0-CUDA-11.3.1"

conflict("UCX-CUDA")

if not ( isloaded("GCCcore/10.3.0") ) then
    load("GCCcore/10.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.3.0") ) then
    load("zlib/1.2.11-GCCcore-10.3.0")
end

if not ( isloaded("UCX/1.10.0-GCCcore-10.3.0") ) then
    load("UCX/1.10.0-GCCcore-10.3.0")
end

if not ( isloaded("CUDA/11.3.1") ) then
    load("CUDA/11.3.1")
end

if not ( isloaded("GDRCopy/2.2-GCCcore-10.3.0") ) then
    load("GDRCopy/2.2-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTUCXMINCUDA", root)
setenv("EBVERSIONUCXMINCUDA", "1.10.0")
setenv("EBDEVELUCXMINCUDA", pathJoin(root, "logs/UCX-CUDA-1.10.0-GCCcore-10.3.0-CUDA-11.3.1-easybuild-devel"))

prepend_path("UCX_MODULE_DIR", pathJoin(root, "ucx"))
setenv("EB_UCX_ucm_MODULES", ":cuda")
setenv("EB_UCX_uct_MODULES", ":ib:cma:cuda")
setenv("EB_UCX_ucx_perftest_MODULES", ":cuda")
setenv("EB_UCX_uct_cuda_MODULES", ":gdrcopy")
-- Built with EasyBuild version 4.6.1
