help([==[

Description
===========
Clamp 1.6.4
CLAMP is a comprehensive clinical Natural Language Processing (NLP) software that enables recognition and automatic encoding of clinical information in narrative patient reports.

More information
================
 - Homepage: https://clamp.uth.edu/index.php
]==])

whatis([==[CLAMP comprehensive clinical Natural Language Processing]==])
whatis([==[Homepage: http://www.clamp.uth.edu/]==])

local root = "/app/lib/Clamp/ClampCmd_1.6.4"

conflict("Clamp")

if not isloaded("Java/11") then
    load("Java/11")
end


prepend_path("PATH", root)
prepend_path("CLASSPATH", pathJoin(root, "bin"))

-- hand-built with vim by john dey 
