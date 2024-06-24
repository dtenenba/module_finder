help([==[

Description
===========
This library implements expect tests (also known as "golden" tests). Expect tests are a method of
 writing tests where instead of hard-coding the expected output of a test, you run the test to get the output, and
 the test framework automatically populates the expected output. If the output of the test changes, you can rerun
 the test with the environment variable EXPECTTEST_ACCEPT=1 to automatically update the expected output.


More information
================
 - Homepage: https://github.com/ezyang/expecttest
]==])

whatis([==[Description: This library implements expect tests (also known as "golden" tests). Expect tests are a method of
 writing tests where instead of hard-coding the expected output of a test, you run the test to get the output, and
 the test framework automatically populates the expected output. If the output of the test changes, you can rerun
 the test with the environment variable EXPECTTEST_ACCEPT=1 to automatically update the expected output.]==])
whatis([==[Homepage: https://github.com/ezyang/expecttest]==])
whatis([==[URL: https://github.com/ezyang/expecttest]==])

local root = "/app/software/expecttest/0.1.3-GCCcore-11.2.0"

conflict("expecttest")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTEXPECTTEST", root)
setenv("EBVERSIONEXPECTTEST", "0.1.3")
setenv("EBDEVELEXPECTTEST", pathJoin(root, "logs/expecttest-0.1.3-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.1
