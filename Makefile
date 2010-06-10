CC	=gcc -march=native
CFLAGS	=-Os -Wall -Werror -pedantic
LDFLAGS	=
LDLIBS	=

all::	zerofree

clean::
	${RM} *.o *~

distclean clobber:: clean
	${RM} zerofree
