help([==[

Description
===========
Euclidean neural networks (e3nn) is a python library based on pytorch to create equivariant 
neural networks for the group O(3).


More information
================
 - Homepage: https://e3nn.org/


Included extensions
===================
e3nn-0.3.3, opt_einsum-3.3.0, opt_einsum_fx-0.1.4
]==])

whatis([==[Description: 
Euclidean neural networks (e3nn) is a python library based on pytorch to create equivariant 
neural networks for the group O(3).
]==])
whatis([==[Homepage: https://e3nn.org/]==])
whatis([==[URL: https://e3nn.org/]==])
whatis([==[Extensions: e3nn-0.3.3, opt_einsum-3.3.0, opt_einsum_fx-0.1.4]==])

local root = "/app/software/e3nn/0.3.3-foss-2022a-CUDA-11.7.0"

conflict("e3nn")

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

if not ( isloaded("sympy/1.10.1-foss-2022a") ) then
    load("sympy/1.10.1-foss-2022a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTE3NN", root)
setenv("EBVERSIONE3NN", "0.3.3")
setenv("EBDEVELE3NN", pathJoin(root, "logs/e3nn-0.3.3-foss-2022a-CUDA-11.7.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.2
setenv("EBEXTSLISTE3NN", "opt_einsum-3.3.0,opt_einsum_fx-0.1.4,e3nn-0.3.3")
