help([==[

Description
===========
Illumina bcl2fastq 1.8.4
bcl2fastq read and convert BCL basecall files and translates them into FASTQ files.

More information
================
 - Homepage: https://support.illumina.com/sequencing/sequencing_software/bcl2fastq-conversion-software/documentation.html 
]==])

whatis([==[bcl2fastq read and convert BCL basecall files and translates them into FASTQ files.]==])
whatis([==[Homepage: http://www.iodbc.org/]==])

local root = "/app/software/bcl2fastq"

conflict("bcl2fastq")

if not isloaded("libxslt/1.1.34-GCCcore-8.3.0") then
    load("libxslt/1.1.34-GCCcore-8.3.0")
end

-- Use Perl-5.14.4 
prepend_path("PATH", "/app/perl/5.14.4/bin")
prepend_path("LD_LIBRARY_PATH", "/app/perl/5.14.4/lib")
prepend_path("PERL5LIB", "/app/perl/5.14.4/lib")

-- if not isloaded("zlib/1.2.11-GCCcore-7.3.0") then
--     load("zlib/1.2.11-GCCcore-7.3.0")
-- end

prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PERL5LIB", pathJoin(root, "lib/bcl2fastq-1.8.4/perl"))

-- hand-built with vim by john dey 
