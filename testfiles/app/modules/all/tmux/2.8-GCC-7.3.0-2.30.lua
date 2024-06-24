help([==[

Description
===========
tmux is a terminal multiplexer. It lets you switch easily 
between several programs in one terminal, detach them (they keep running in the background) and reattach them to a different terminal.


More information
================
 - Homepage: http://tmux.sourceforge.net/
]==])

whatis([==[Description: tmux is a terminal multiplexer. It lets you switch easily 
between several programs in one terminal, detach them (they keep running in the background) and reattach them to a different terminal.]==])
whatis([==[Homepage: http://tmux.sourceforge.net/]==])

local root = "/app/software/tmux/2.8-GCC-7.3.0-2.30"

conflict("tmux")

if not isloaded("GCC/7.3.0-2.30") then
    load("GCC/7.3.0-2.30")
end

if not isloaded("ncurses/6.1-GCCcore-7.3.0") then
    load("ncurses/6.1-GCCcore-7.3.0")
end

if not isloaded("libevent/2.1.8-GCCcore-7.3.0") then
    load("libevent/2.1.8-GCCcore-7.3.0")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTMUX", root)
setenv("EBVERSIONTMUX", "2.8")
setenv("EBDEVELTMUX", pathJoin(root, "/app/logs/tmux-2.8-GCC-7.3.0-2.30-easybuild-devel"))

-- Built with EasyBuild version 3.8.0
