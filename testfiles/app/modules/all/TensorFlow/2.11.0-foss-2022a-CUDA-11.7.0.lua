help([==[

Description
===========
An open-source software library for Machine Intelligence


More information
================
 - Homepage: https://www.tensorflow.org/


]==])

whatis([==[Description: An open-source software library for Machine Intelligence]==])
whatis([==[Homepage: https://www.tensorflow.org/]==])
whatis([==[URL: https://www.tensorflow.org/]==])

local root = "/app/software/TensorFlow/2.11.0-foss-2022a-CUDA-11.7.0"

conflict("TensorFlow")

if not ( isloaded("foss/2022a") ) then
    load("foss/2022a")
end

if not ( isloaded("CUDA/11.7.0") ) then
    load("CUDA/11.7.0")
end

if not ( isloaded("cuDNN/8.4.1.50-CUDA-11.7.0") ) then
    load("cuDNN/8.4.1.50-CUDA-11.7.0")
end

if not ( isloaded("NCCL/2.12.12-GCCcore-11.3.0-CUDA-11.7.0") ) then
    load("NCCL/2.12.12-GCCcore-11.3.0-CUDA-11.7.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("h5py/3.7.0-foss-2022a") ) then
    load("h5py/3.7.0-foss-2022a")
end

if not ( isloaded("cURL/7.83.0-GCCcore-11.3.0") ) then
    load("cURL/7.83.0-GCCcore-11.3.0")
end

if not ( isloaded("dill/0.3.6-GCCcore-11.3.0") ) then
    load("dill/0.3.6-GCCcore-11.3.0")
end

if not ( isloaded("double-conversion/3.2.0-GCCcore-11.3.0") ) then
    load("double-conversion/3.2.0-GCCcore-11.3.0")
end

if not ( isloaded("flatbuffers/2.0.7-GCCcore-11.3.0") ) then
    load("flatbuffers/2.0.7-GCCcore-11.3.0")
end

if not ( isloaded("giflib/5.2.1-GCCcore-11.3.0") ) then
    load("giflib/5.2.1-GCCcore-11.3.0")
end

if not ( isloaded("hwloc/2.7.1-GCCcore-11.3.0") ) then
    load("hwloc/2.7.1-GCCcore-11.3.0")
end

if not ( isloaded("ICU/71.1-GCCcore-11.3.0") ) then
    load("ICU/71.1-GCCcore-11.3.0")
end

if not ( isloaded("JsonCpp/1.9.5-GCCcore-11.3.0") ) then
    load("JsonCpp/1.9.5-GCCcore-11.3.0")
end

if not ( isloaded("libjpeg-turbo/2.1.3-GCCcore-11.3.0") ) then
    load("libjpeg-turbo/2.1.3-GCCcore-11.3.0")
end

if not ( isloaded("LMDB/0.9.29-GCCcore-11.3.0") ) then
    load("LMDB/0.9.29-GCCcore-11.3.0")
end

if not ( isloaded("NASM/2.15.05-GCCcore-11.3.0") ) then
    load("NASM/2.15.05-GCCcore-11.3.0")
end

if not ( isloaded("nsync/1.25.0-GCCcore-11.3.0") ) then
    load("nsync/1.25.0-GCCcore-11.3.0")
end

if not ( isloaded("SQLite/3.38.3-GCCcore-11.3.0") ) then
    load("SQLite/3.38.3-GCCcore-11.3.0")
end

if not ( isloaded("protobuf-python/3.19.4-GCCcore-11.3.0") ) then
    load("protobuf-python/3.19.4-GCCcore-11.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.3.0") ) then
    load("libpng/1.6.37-GCCcore-11.3.0")
end

if not ( isloaded("snappy/1.1.9-GCCcore-11.3.0") ) then
    load("snappy/1.1.9-GCCcore-11.3.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-11.3.0") ) then
    load("zlib/1.2.12-GCCcore-11.3.0")
end

if not ( isloaded("networkx/2.8.4-foss-2022a") ) then
    load("networkx/2.8.4-foss-2022a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTENSORFLOW", root)
setenv("EBVERSIONTENSORFLOW", "2.11.0")
setenv("EBDEVELTENSORFLOW", pathJoin(root, "logs/TensorFlow-2.11.0-foss-2022a-CUDA-11.7.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
