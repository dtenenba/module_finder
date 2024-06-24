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
whatis([==[URL: http://tmux.sourceforge.net/]==])

local root = "/app/software/tmux/3.0-GCCcore-8.3.0"

conflict("tmux")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("binutils/2.32-GCCcore-8.3.0") ) then
    load("binutils/2.32-GCCcore-8.3.0")
end

if not ( isloaded("ncurses/6.1-GCCcore-8.3.0") ) then
    load("ncurses/6.1-GCCcore-8.3.0")
end

if not ( isloaded("libevent/2.1.11-GCCcore-8.3.0") ) then
    load("libevent/2.1.11-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTTMUX", root)
setenv("EBVERSIONTMUX", "3.0")
setenv("EBDEVELTMUX", pathJoin(root, "logs/tmux-3.0-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
