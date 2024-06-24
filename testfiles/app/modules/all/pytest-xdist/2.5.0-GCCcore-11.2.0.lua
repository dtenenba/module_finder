help([==[

Description
===========
xdist: pytest distributed testing plugin

The pytest-xdist plugin extends pytest with some unique test execution modes:

    * test run parallelization: if you have multiple CPUs or hosts you
      can use those for a combined test run. This allows to speed up
      development or to use special resources of remote machines.

    * --looponfail: run your tests repeatedly in a subprocess. After
        each run pytest waits until a file in your project changes and
        then re-runs the previously failing tests. This is repeated
        until all tests pass after which again a full run is
        performed.

    * Multi-Platform coverage: you can specify different Python
      interpreters or different platforms and run tests in parallel on
      all of them.

Before running tests remotely, pytest efficiently “rsyncs” your
program source code to the remote place. All test results are reported
back and displayed to your local terminal. You may specify different
Python versions and interpreters.


More information
================
 - Homepage: https://github.com/pytest-dev/pytest-xdist


Included extensions
===================
apipkg-1.5, execnet-1.9.0, pytest-forked-1.4.0, pytest-xdist-2.5.0
]==])

whatis([==[Description: xdist: pytest distributed testing plugin

The pytest-xdist plugin extends pytest with some unique test execution modes:

    * test run parallelization: if you have multiple CPUs or hosts you
      can use those for a combined test run. This allows to speed up
      development or to use special resources of remote machines.

    * --looponfail: run your tests repeatedly in a subprocess. After
        each run pytest waits until a file in your project changes and
        then re-runs the previously failing tests. This is repeated
        until all tests pass after which again a full run is
        performed.

    * Multi-Platform coverage: you can specify different Python
      interpreters or different platforms and run tests in parallel on
      all of them.

Before running tests remotely, pytest efficiently “rsyncs” your
program source code to the remote place. All test results are reported
back and displayed to your local terminal. You may specify different
Python versions and interpreters.]==])
whatis([==[Homepage: https://github.com/pytest-dev/pytest-xdist]==])
whatis([==[URL: https://github.com/pytest-dev/pytest-xdist]==])
whatis([==[Extensions: apipkg-1.5, execnet-1.9.0, pytest-forked-1.4.0, pytest-xdist-2.5.0]==])

local root = "/app/software/pytest-xdist/2.5.0-GCCcore-11.2.0"

conflict("pytest-xdist")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTPYTESTMINXDIST", root)
setenv("EBVERSIONPYTESTMINXDIST", "2.5.0")
setenv("EBDEVELPYTESTMINXDIST", pathJoin(root, "logs/pytest-xdist-2.5.0-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.0
setenv("EBEXTSLISTPYTESTMINXDIST", "apipkg-1.5,execnet-1.9.0,pytest-forked-1.4.0,pytest-xdist-2.5.0")
