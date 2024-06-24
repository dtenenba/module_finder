help([==[

Description
===========
Supermicro Update Manager (SUM)

More information
================
 - Homepage: https://www.supermicro.com/en/solutions/management-software/supermicro-update-manager 
]==])

whatis([==[Supermicro Update Manager (SUM) is used for managing and configuring the BIOS/BMC
firmware for Supermicro X9 generation motherboards and above.  ]==])
whatis([==[Homepage: https://www.supermicro.com/en/solutions/management-software/supermicro-update-manager ]==]) 
whatis([==[URL: https://www.supermicro.com/en/solutions/management-software/supermicro-update-manager ]==]) 

local root = "/app/lib/SUM/sum_2.5.2_Linux_x86_64"

conflict("SUM")

if not ( isloaded("SUM/2.5.2") ) then
    load("SUM/2.5.2")
end

prepend_path("PATH", root)

-- hand-built with vim by John Dey   Mar 9, 2021
