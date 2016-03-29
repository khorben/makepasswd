TARGETS	= $(OBJDIR)makepasswd$(EXEEXT)
OBJDIR	=
PREFIX	= /usr/local
DESTDIR	=
BINDIR	= $(PREFIX)/bin
SBINDIR	= $(PREFIX)/sbin
CC	= cc
CPPFLAGSF=
CPPFLAGS=
CFLAGSF	= `pkg-config --cflags openssl`
CFLAGS	= -W -Wall -g -O2 -pedantic
LDFLAGSF= `pkg-config --libs openssl`
LDFLAGS	= -lcrypt
EXEEXT	=
RM	= rm -f
LN	= ln -f
MKDIR	= mkdir -m 0755 -p
INSTALL	= install


all: $(TARGETS)

makepasswd_OBJS = $(OBJDIR)makepasswd.o
makepasswd_CFLAGS = $(CPPFLAGSF) $(CPPFLAGS) $(CFLAGSF) $(CFLAGS)
makepasswd_LDFLAGS = $(LDFLAGSF) $(LDFLAGS)

$(OBJDIR)makepasswd$(EXEEXT): $(makepasswd_OBJS)
	$(CC) -o $(OBJDIR)makepasswd$(EXEEXT) $(makepasswd_OBJS) $(makepasswd_LDFLAGS)

$(OBJDIR)makepasswd.o: makepasswd.c ../config.h
	$(CC) $(makepasswd_CFLAGS) -o $(OBJDIR)makepasswd.o -c makepasswd.c

clean:
	$(RM) -- $(makepasswd_OBJS)

distclean: clean
	$(RM) -- $(TARGETS)

install: $(TARGETS)
	$(MKDIR) $(DESTDIR)$(BINDIR)
	$(INSTALL) -m 0755 $(OBJDIR)makepasswd$(EXEEXT) $(DESTDIR)$(BINDIR)/makepasswd$(EXEEXT)

uninstall:
	$(RM) -- $(DESTDIR)$(BINDIR)/makepasswd$(EXEEXT)

.PHONY: all clean distclean install uninstall
