PACKAGE	= makepasswd
VERSION	= 0.4.2
SUBDIRS	= src
TAR	= tar cfzv


all: subdirs

subdirs:
	@for i in $(SUBDIRS); do (cd $$i && $(MAKE)) || exit; done

clean:
	@for i in $(SUBDIRS); do (cd $$i && $(MAKE) clean) || exit; done

distclean:
	@for i in $(SUBDIRS); do (cd $$i && $(MAKE) distclean) || exit; done

dist: distclean
	@$(TAR) $(PACKAGE)-$(VERSION).tar.gz \
		src/makepasswd.c \
		src/md5.c \
		src/global.h \
		src/md5.h \
		src/project.conf \
		src/Makefile \
		project.conf \
		Makefile
