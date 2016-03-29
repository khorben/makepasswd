TARGETS	= $(OBJDIR)makepasswd.1 $(OBJDIR)makepasswd.html
OBJDIR	=
PREFIX	= /usr/local
DESTDIR	=
RM	= rm -f
LN	= ln -f
MKDIR	= mkdir -m 0755 -p
INSTALL	= install


all: $(TARGETS)

$(OBJDIR)makepasswd.1: makepasswd.xml
	./docbook.sh -P "$(PREFIX)" -- "$(OBJDIR)makepasswd.1"

$(OBJDIR)makepasswd.html: makepasswd.xml
	./docbook.sh -P "$(PREFIX)" -- "$(OBJDIR)makepasswd.html"

clean:
	$(RM) -- $(makepasswd.1_OBJS) $(makepasswd.html_OBJS)
	./docbook.sh -c -P "$(PREFIX)" -- "$(OBJDIR)makepasswd.1"
	./docbook.sh -c -P "$(PREFIX)" -- "$(OBJDIR)makepasswd.html"

distclean: clean
	$(RM) -- $(TARGETS)

install: $(TARGETS)
	./docbook.sh -P "$(DESTDIR)$(PREFIX)" -i -- "$(OBJDIR)makepasswd.1"
	./docbook.sh -P "$(DESTDIR)$(PREFIX)" -i -- "$(OBJDIR)makepasswd.html"

uninstall:
	./docbook.sh -P "$(DESTDIR)$(PREFIX)" -u -- "makepasswd.1"
	./docbook.sh -P "$(DESTDIR)$(PREFIX)" -u -- "makepasswd.html"

.PHONY: all clean distclean install uninstall
