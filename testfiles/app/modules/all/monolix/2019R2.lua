help([==[

Description
===========
Monolix is the most advanced and simple solution for non-linear mixed effects modeling (NLME) for pharmacometrics. It is based on the SAEM algorithm and provides robust, global convergence even for complex PK/PD models. Monolix is used for preclinical and clinical population PK/PD modeling and for Systems Pharmacology.

More information
================
 - Homepage: http://lixoft.com/products/monolix/
]==])

whatis([==[Description: Monolix performs non-linear mixed effects modeling (NLME) for pharmacometrics.]==])
whatis([==[Homepage: http://lixoft.com/products/monolix]==])

local root = "/app/lib/Lixoft/MonolixSuite2019R2"

conflict("monolix")

if not isloaded("Mesa/19.2.1-GCCcore-8.3.0") then
    load("Mesa/19.2.1-GCCcore-8.3.0")
end

if not isloaded("libglvnd/1.2.0-GCCcore-8.3.0") then
    load("libglvnd/1.2.0-GCCcore-8.3.0")
end

if not isloaded("libasound/1.2.2-GCCcore-8.3.0") then
    load("libasound/1.2.2-GCCcore-8.3.0")
end

append_path("PATH", pathJoin(root, "bin"))
setenv("LIXOFT_HOME", root)

-- hand Built with vi by John Dey
