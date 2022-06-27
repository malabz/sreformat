###############################################################
# Makefile for SQUID library
# CVS $Id: Makefile.in,v 1.53 2003/06/13 20:05:31 eddy Exp $
#
# Note: The autoconf variables in this file must be coordinated
#       with HMMER. HMMER creates a Makefile from this 
#       Makefile.in using its own configure script, not SQUID's.
#################################################################
# HMMER - Biological sequence analysis with profile HMMs
# Copyright (C) 1992-2003 Washington University School of Medicine
# All Rights Reserved
# 
#     This source code is distributed under the terms of the
#     GNU General Public License. See the files COPYING and LICENSE
#     for details.
#################################################################
# Separate from raw SQUID
# by wym6912
#################################################################

### Installation points
###
prefix      = /usr/local
exec_prefix = ${prefix}
BINDIR      = ${exec_prefix}/bin
MANDIR      = ${prefix}/man

## your compiler and compiler flags
#
CC = gcc
CFLAGS = -g -O3 -D _GNU_SOURCE -m64 -Wall -lm

## instructions for installing man pages
#
INSTMAN   = cp
MANSUFFIX = 1

#######
## You should not need to modify below this line
#######
SHELL       = /bin/sh
BASENAME    = squid
PACKAGE     = SQUID
RELEASE     = 1.9g
RELCODE     = squid1_9g
RELEASEDATE = "January 2003"
SEEALSO     = "http:\/\/www.genetics.wustl.edu\/eddy\/software\/\#squid"
FTPDIR      = /nfs/ftp/eddy/software/
LICENSETAG  = gnu
COMPRESS    = gzip

PROGS =	sreformat

MANS = $(PROGS)

SCRIPTS = 

HDRS = sqfuncs.h\
	gki.h\
	msa.h\
	sre_random.h\
	ssi.h\
	stockholm.h\
	vectorops.h\
	sre_random.h

OBJS = sreformat.o\
	a2m.o\
	aligneval.o\
	alignio.o\
	cluster.o\
	file.o\
	getopt.o\
	gki.o\
	msa.o\
	msf.o\
	phylip.o\
	ssi.o\
	vectorops.o\
	types.o\
	sre_string.o\
	sqio.o\
	sqerror.o\
	selex.o\
	stockholm.o\
	clustal.o\
	squidcore.o\
	hsregex.o\
	sre_random.o\
	stack.o\
	eps.o\
	sre_math.o\
	sre_ctype.o

sreformat: $(OBJS)
	$(CC) -o $@ $(OBJS) $(CFLAGS) $(DEFS) $(LIBS)

.c.o:
	$(CC) $(CFLAGS) $(DEFS) -c $<

clean:
	rm -f *.o $(PROGS) 

all: $(PROGS)
	@echo done.

install: all
	mkdir -p $(prefix) $(BINDIR) $(MANDIR)/man1
	cp sreformat.man $(MANDIR)/man1/sreformat.1
	cp sreformat $(BINDIR)
	@echo Program has installed in $(prefix)/bin/sreformat, and man file is in $(MANDIR)/man1/sreformat.1 .