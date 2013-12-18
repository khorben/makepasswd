TARGETS	= makepasswd
PREFIX	= /usr/local
DESTDIR	=
BINDIR	= $(PREFIX)/bin
SBINDIR	= $(PREFIX)/sbin
CC	= cc
CPPFLAGSF=
CPPFLAGS=
CFLAGSF	= -W
CFLAGS	= -Wall -g -O2 -pedantic
LDFLAGS	= -lcrypt -lcrypto
RM	= rm -f
LN	= ln -f
MKDIR	= mkdir -m 0755 -p
INSTALL	= install


all: $(TARGETS)

makepasswd_OBJS = makepasswd.o
makepasswd_CFLAGS = $(CPPFLAGSF) $(CPPFLAGS) $(CFLAGSF) $(CFLAGS)
makepasswd_LDFLAGS = $(LDFLAGSF) $(LDFLAGS)

makepasswd: $(makepasswd_OBJS)
	$(CC) -o makepasswd $(makepasswd_OBJS) $(makepasswd_LDFLAGS)

makepasswd.o: makepasswd.c ../config.h
	$(CC) $(makepasswd_CFLAGS) -c makepasswd.c

clean:
	$(RM) -- $(makepasswd_OBJS)

distclean: clean
	$(RM) -- $(TARGETS)

install: $(TARGETS)
	$(MKDIR) $(DESTDIR)$(BINDIR)
	$(INSTALL) -m 0755 makepasswd $(DESTDIR)$(BINDIR)/makepasswd

uninstall:
	$(RM) -- $(DESTDIR)$(BINDIR)/makepasswd

.PHONY: all clean distclean install uninstall
