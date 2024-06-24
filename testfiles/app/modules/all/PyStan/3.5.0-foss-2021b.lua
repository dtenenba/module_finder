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
httpstan-4.8.2, marshmallow-3.17.1, pysimdjson-3.2.0, PyStan-3.5.0,
webargs-8.2.0
]==])

whatis([==[Description: Python interface to Stan, a package for Bayesian inference
 using the No-U-Turn sampler, a variant of Hamiltonian Monte Carlo.]==])
whatis([==[Homepage: https://github.com/stan-dev/pystan]==])
whatis([==[URL: https://github.com/stan-dev/pystan]==])
whatis([==[Extensions: httpstan-4.8.2, marshmallow-3.17.1, pysimdjson-3.2.0, PyStan-3.5.0, webargs-8.2.0]==])

local root = "/app/software/PyStan/3.5.0-foss-2021b"

conflict("PyStan")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("aiohttp/3.8.1-GCCcore-11.2.0") ) then
    load("aiohttp/3.8.1-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTPYSTAN", root)
setenv("EBVERSIONPYSTAN", "3.5.0")
setenv("EBDEVELPYSTAN", pathJoin(root, "logs/PyStan-3.5.0-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.0
setenv("EBEXTSLISTPYSTAN", "marshmallow-3.17.1,webargs-8.2.0,httpstan-4.8.2,pysimdjson-3.2.0,PyStan-3.5.0")
