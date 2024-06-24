help([==[

Description
===========
Python interface to Stan, a package for Bayesian inference
 using the No-U-Turn sampler, a variant of Hamiltonian Monte Carlo.


More information
================
 - Homepage: https://github.com/stan-dev/pystan


Included extensions
===================
PyStan-2.19.1.1
]==])

whatis([==[Description: Python interface to Stan, a package for Bayesian inference
 using the No-U-Turn sampler, a variant of Hamiltonian Monte Carlo.]==])
whatis([==[Homepage: https://github.com/stan-dev/pystan]==])
whatis([==[URL: https://github.com/stan-dev/pystan]==])
whatis([==[Extensions: PyStan-2.19.1.1]==])

local root = "/app/software/PyStan/2.19.1.1-foss-2020b"

conflict("PyStan")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTPYSTAN", root)
setenv("EBVERSIONPYSTAN", "2.19.1.1")
setenv("EBDEVELPYSTAN", pathJoin(root, "logs/PyStan-2.19.1.1-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTPYSTAN", "PyStan-2.19.1.1")
