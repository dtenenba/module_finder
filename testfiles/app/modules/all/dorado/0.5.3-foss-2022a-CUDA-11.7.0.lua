help([==[

Description
===========
Dorado is a high-performance, easy-to-use, open source basecaller for Oxford Nanopore reads.


More information
================
 - Homepage: https://github.com/nanoporetech/dorado
]==])

whatis([==[Description: Dorado is a high-performance, easy-to-use, open source basecaller for Oxford Nanopore reads.]==])
whatis([==[Homepage: https://github.com/nanoporetech/dorado]==])
whatis([==[URL: https://github.com/nanoporetech/dorado]==])

local root = "/app/software/dorado/0.5.3-foss-2022a-CUDA-11.7.0"

conflict("dorado")

if not ( isloaded("foss/2022a") ) then
    load("foss/2022a")
end

if not ( isloaded("CUDA/11.7.0") ) then
    load("CUDA/11.7.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

if not ( isloaded("PyTorch/1.12.1-foss-2022a-CUDA-11.7.0") ) then
    load("PyTorch/1.12.1-foss-2022a-CUDA-11.7.0")
end

if not ( isloaded("HDF5/1.12.2-gompi-2022a") ) then
    load("HDF5/1.12.2-gompi-2022a")
end

if not ( isloaded("zstd/1.5.2-GCCcore-11.3.0") ) then
    load("zstd/1.5.2-GCCcore-11.3.0")
end

if not ( isloaded("HTSlib/1.15.1-GCC-11.3.0") ) then
    load("HTSlib/1.15.1-GCC-11.3.0")
end

if not ( isloaded("kineto/0.4.0-GCC-11.3.0") ) then
    load("kineto/0.4.0-GCC-11.3.0")
end

if not ( isloaded("libaec/1.0.6-GCCcore-11.3.0") ) then
    load("libaec/1.0.6-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDORADO", root)
setenv("EBVERSIONDORADO", "0.5.3")
setenv("EBDEVELDORADO", pathJoin(root, "logs/dorado-0.5.3-foss-2022a-CUDA-11.7.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
