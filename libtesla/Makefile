CC=gcc
DTRACE=dtrace

CFLAGS=-g -Wall -I..
ALL=tesla_state.o tesla_state_global.o tesla_state_perthread.o \
    tesla_registration.o tesla_util.o

all: ${ALL}

tesla_state.o: tesla_state.c
	$(CC) -c ${CFLAGS} -o tesla_state.o tesla_state.c
tesla_state_global.o: tesla_state_global.c
	$(CC) -c ${CFLAGS} -o tesla_state_global.o tesla_state_global.c
tesla_state_perthread.o: tesla_state_perthread.c
	$(CC) -c ${CFLAGS} -o tesla_state_perthread.o tesla_state_perthread.c
tesla_registration.o: tesla_registration.c
	$(CC) -c ${CFLAGS} -o tesla_registration.o tesla_registration.c
tesla_util.o: tesla_util.c
	$(CC) -c ${CFLAGS} -o tesla_util.o tesla_util.c

tesla_dtrace_u.h: tesla_dtrace_u.d
	$(DTRACE) -h -s $^ -o ../tesla/tesla_dtrace_u.h

clean:
	rm -f ${ALL}
	rm -f ../tesla/tesla_dtrace_u.h

