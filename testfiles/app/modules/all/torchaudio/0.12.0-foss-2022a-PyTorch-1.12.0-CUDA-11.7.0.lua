help([==[

Description
===========
Data manipulation and transformation for audio signal
processing, powered by PyTorch


More information
================
 - Homepage: https://github.com/pytorch/audio
]==])

whatis([==[Description:  Data manipulation and transformation for audio signal
processing, powered by PyTorch ]==])
whatis([==[Homepage: https://github.com/pytorch/audio]==])
whatis([==[URL: https://github.com/pytorch/audio]==])

local root = "/app/software/torchaudio/0.12.0-foss-2022a-PyTorch-1.12.0-CUDA-11.7.0"

conflict("torchaudio")

if not ( isloaded("foss/2022a") ) then
    load("foss/2022a")
end

if not ( isloaded("CUDA/11.7.0") ) then
    load("CUDA/11.7.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("SciPy-bundle/2022.05-foss-2022a") ) then
    load("SciPy-bundle/2022.05-foss-2022a")
end

if not ( isloaded("PyTorch/1.12.0-foss-2022a-CUDA-11.7.0") ) then
    load("PyTorch/1.12.0-foss-2022a-CUDA-11.7.0")
end

if not ( isloaded("SoX/14.4.2-GCCcore-11.3.0") ) then
    load("SoX/14.4.2-GCCcore-11.3.0")
end

if not ( isloaded("FFmpeg/4.4.2-GCCcore-11.3.0") ) then
    load("FFmpeg/4.4.2-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTTORCHAUDIO", root)
setenv("EBVERSIONTORCHAUDIO", "0.12.0")
setenv("EBDEVELTORCHAUDIO", pathJoin(root, "logs/torchaudio-0.12.0-foss-2022a-PyTorch-1.12.0-CUDA-11.7.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.2
