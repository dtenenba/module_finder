help([==[

Description
===========
Stack is a cross-platform program for developing Haskell projects. It is aimed at Haskellers both new and experienced.

More information
================
 - Documentation: https://docs.haskellstack.org/en/stable/README/#the-haskell-tool-stack
  ]==])

local root = "/app/lib/haskellstack/2.3.1"

conflict("stack")

prepend_path("PATH", pathJoin(root, "bin"))
-- Built by hand with Vim!
