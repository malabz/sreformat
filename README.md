# RAW README From Sean Eddy

SQUID - library of functions for biological sequence analysis
Copyright (C) 1992-2002 Washington University School of Medicine

SQUID is a freely redistributable library of C code functions for
sequence analysis. SQUID also includes a number of small utility
programs.

To install squid, see the file:
  INSTALL      -- instructions for installing the programs

If you have any questions about redistributing squid or using
squid code in your own work, see the files:
  COPYRIGHT    -- copyright notice, and information on my distribution policy
  LICENSE      -- version 2 of the GNU Public License (see COPYRIGHT)

For a web page with more information on squid, see:
  http://www.genetics.wustl.edu/eddy/software/#squid

You can always download the latest stable release of squid from:
  ftp://ftp.genetics.wustl.edu/pub/eddy/software/squid.tar.gz

The development codebase is available by anonymous CVS:
  cvs -d :pserver:anonymous@skynet.wustl.edu:/repository/sre login
   (password "anonymous")
  cvs -d :pserver:anonymous@skynet.wustl.edu:/repository/sre checkout squid

If you encounter any bugs in this library, or you have any questions
or comments, please e-mail me at the address below. Due to limited
personal time, I may not respond, but I do read all my mail.

   Sean Eddy
   eddy@genetics.wustl.edu

   HHMI/Dept. of Genetics
   Washington University School of Medicine
   660 South Euclid Box 8232
   Saint Louis Missouri 63110
   USA

## Changes with this program

I only keep the program named `sreformat`, which can convert various file formats like `fasta`, `a2m(aligned fasta)` and so on.

### Help information in `sreformat`

```bash
  Output format choices: Unaligned      Aligned
                         -----------    -------
                         fasta          stockholm
                         embl           msf
                         genbank        a2m
                         gcg            phylip
                         gcgdata        clustal
                         pir            selex
                         raw            eps

  Available options are:
    -h : help; print brief help on version and usage
    -d : force DNA alphabet for nucleic acid sequence
    -r : force RNA alphabet for nucleic acid sequence
    -l : force lower case
    -u : force upper case
    -x : convert non-IUPAC chars in DNA to N's for IUPAC/BLAST compatibility
```

## Install this program

Please follow these commands:

```bash
make -j16
make install prefix=/path/to/you/wish
```

Then the program will generate two files: `/path/to/you/wish/bin/sreformat` and `/path/to/you/wish/man/man1/sreformat.1`.

If you want to see manual file, you can use this command:

```bash
man /path/to/you/wish/man/man1/sreformat.1
```