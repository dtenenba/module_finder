help([==[

Description
===========
A deep learning based protein sequence design method is 
described that is widely applicable to current design challenges and shows 
outstanding performance in both in silico and experimental tests.


More information
================
 - Homepage: https://github.com/dauparas/ProteinMPNN
]==])

whatis([==[Description: A deep learning based protein sequence design method is 
described that is widely applicable to current design challenges and shows 
outstanding performance in both in silico and experimental tests.
]==])
whatis([==[Homepage: https://github.com/dauparas/ProteinMPNN]==])
whatis([==[URL: https://github.com/dauparas/ProteinMPNN]==])

local root = "/app/software/ProteinMPNN/1.0.1-20230627-foss-2022a-CUDA-11.7.0"

conflict("ProteinMPNN")

if not ( isloaded("foss/2022a") ) then
    load("foss/2022a")
end

if not ( isloaded("CUDA/11.7.0") ) then
    load("CUDA/11.7.0")
end

if not ( isloaded("PyTorch/1.12.0-foss-2022a-CUDA-11.7.0") ) then
    load("PyTorch/1.12.0-foss-2022a-CUDA-11.7.0")
end

if not ( isloaded("torchvision/0.13.1-foss-2022a-CUDA-11.7.0") ) then
    load("torchvision/0.13.1-foss-2022a-CUDA-11.7.0")
end

if not ( isloaded("torchaudio/0.12.0-foss-2022a-PyTorch-1.12.0-CUDA-11.7.0") ) then
    load("torchaudio/0.12.0-foss-2022a-PyTorch-1.12.0-CUDA-11.7.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPROTEINMPNN", root)
setenv("EBVERSIONPROTEINMPNN", "1.0.1-20230627")
setenv("EBDEVELPROTEINMPNN", pathJoin(root, "logs/ProteinMPNN-1.0.1-20230627-foss-2022a-CUDA-11.7.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.9.2
