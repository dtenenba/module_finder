help([==[

Description
===========
pytest plugin to support parallelism across multiple machines.

Shards tests based on a hash of their test name enabling easy parallelism across machines,
suitable for a wide variety of continuous integration services.
Tests are split at the finest level of granularity, individual test cases,
enabling parallelism even if all of your tests are in a single file
(or even single parameterized test method).


More information
================
 - Homepage: https://github.com/AdamGleave/pytest-shard
]==])

whatis([==[Description: pytest plugin to support parallelism across multiple machines.

Shards tests based on a hash of their test name enabling easy parallelism across machines,
suitable for a wide variety of continuous integration services.
Tests are split at the finest level of granularity, individual test cases,
enabling parallelism even if all of your tests are in a single file
(or even single parameterized test method).
]==])
whatis([==[Homepage: https://github.com/AdamGleave/pytest-shard]==])
whatis([==[URL: https://github.com/AdamGleave/pytest-shard]==])

local root = "/app/software/pytest-shard/0.1.2-GCCcore-12.2.0"

conflict("pytest-shard")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYTESTMINSHARD", root)
setenv("EBVERSIONPYTESTMINSHARD", "0.1.2")
setenv("EBDEVELPYTESTMINSHARD", pathJoin(root, "logs/pytest-shard-0.1.2-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.1
