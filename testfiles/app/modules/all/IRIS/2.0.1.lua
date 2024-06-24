help([==[

Description
===========
IRIS
Isoform peptides from RNA splicing for Immunotherapy target Screening

More information
================
 - Homepage: https://github.com/Xinglab/IRIS
]==])

whatis([==[Description: IRIS 
Isoform peptides from RNA splicing for Immunotherapy target Screening ]==])
whatis([==[Homepage: https://github.com/Xinglab/IRIS ]==])
whatis([==[URL:https://github.com/Xinglab/IRIS ]==])

local root = "/app/software/IRIS/IRIS-2.0.1"

conflict("IRIS")

if not ( isloaded("fhPython/3.9.6-foss-2021b") ) then
    load("fhPython/3.9.6-foss-2021b")
end

if not ( isloaded("rMATS-turbo/4.1.2-foss-2021b") ) then
    load("rMATS-turbo/4.1.2-foss-2021b")
end

if not ( isloaded("SAMtools/1.15.1-GCC-11.2.0") ) then
    loaded("SAMtools/1.15.1-GCC-11.2.0")
end

prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("RMATS_PATH", "$EBROOTRMATSMINTURBO/bin") 
prepend_path("PYTHONPATH", root)
prepend_path("PYTHONPATH", pathJoin(root, "lib"))

-- handmade handbuilt with vim - Jul 12, 2023 - jfdey
