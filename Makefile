# Requires:
# e2fsprogs-devel

CC	=gcc -march=native
CFLAGS	=-Os -Wall -Werror -pedantic
LDFLAGS	=
LDLIBS	=-lext2fs

PREFIX	=/opt
BINDIR	=${PREFIX}/bin

FILES	=sparsify zerofree

all::	${FILES}

clean::
	${RM} *.o *~

distclean clobber:: clean
	${RM} ${FILES}

install:: ${FILES}
	for x in ${FILES}; do install -Dsc $$x ${BINDIR}/$$x; done

uninstall::
	cd ${BINDIR} && ${RM} ${FILES}
