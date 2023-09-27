# Copyright (c) 1991 Bell Communications Research, Inc. (Bellcore)
# 
# Permission to use, copy, modify, and distribute this material 
# for any purpose and without fee is hereby granted, provided 
# that the above copyright notice and this permission notice 
# appear in all copies, and that the name of Bellcore not be 
# used in advertising or publicity pertaining to this 
# material without the specific, prior written permission 
# of an authorized representative of Bellcore.  BELLCORE 
# MAKES NO REPRESENTATIONS ABOUT THE ACCURACY OR SUITABILITY 
# OF THIS MATERIAL FOR ANY PURPOSE.  IT IS PROVIDED "AS IS", 
# WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
#

MAKE = make
RM = rm
INSTALL = install -D

INSTROOT = /usr
LOCALBINDIR = ${INSTROOT}/bin
MAN1DIR = ${INSTROOT}/share/man/man1

all:
	@(cd src; $(MAKE))

install: all
	@(cd src; for file in mimencode; \
	do \
	    target=$(LOCALBINDIR)/$$file; \
	    echo "installing binary $$target"; \
	    ${INSTALL} $$file $$target; \
	done)
	@(cd man; for file in mimencode.1; \
	do \
	    target=$(MAN1DIR)/mimencode.1; \
	    echo "installing man page $$target";\
	    ${INSTALL} -m 0644 $$file $$target; \
	done)

uninstall:
	@(cd src; for file in mimencode; \
	do \
	    target=$(LOCALBINDIR)/$$file; \
	    echo "removing binary $$target"; \
	    ${RM} $$target; \
	done)
	@(cd man; for file in mimencode.1; \
	do \
	    target=$(MAN1DIR)/mimencode.1; \
	    echo "removing man page $$target";\
	    ${RM} $$target; \
	done)

clean:
	@(cd src; $(MAKE) clean)
