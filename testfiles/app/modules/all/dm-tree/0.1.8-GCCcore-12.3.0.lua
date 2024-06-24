help([==[

Description
===========
dm-tree provides tree, a library for working with nested data structures. In a way,
tree generalizes the builtin map function which only supports flat sequences, and
allows to apply a function to each "leaf" preserving the overall structure.


More information
================
 - Homepage: https://github.com/deepmind/tree
]==])

whatis([==[Description: dm-tree provides tree, a library for working with nested data structures. In a way,
tree generalizes the builtin map function which only supports flat sequences, and
allows to apply a function to each "leaf" preserving the overall structure.]==])
whatis([==[Homepage: https://github.com/deepmind/tree]==])
whatis([==[URL: https://github.com/deepmind/tree]==])

local root = "/app/software/dm-tree/0.1.8-GCCcore-12.3.0"

conflict("dm-tree")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTDMMINTREE", root)
setenv("EBVERSIONDMMINTREE", "0.1.8")
setenv("EBDEVELDMMINTREE", pathJoin(root, "logs/dm-tree-0.1.8-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
