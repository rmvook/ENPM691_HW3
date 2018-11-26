CC = gcc 
CFLAGS = -O2 -Wall -I .

all: funcptr ret2bss ret2esp ret2got ret2pop ret2text strptr

funcptr: funcptr.c
	$(CC) $(CFLAGS) -o funcptr funcptr.c 
ret2bss: ret2bss.c
	$(CC) $(CFLAGS) -o ret2bss ret2bss.c

ret2esp: ret2esp.c
	$(CC) $(CFLAGS) -o ret2esp ret2esp.c

ret2got: ret2got.c
	$(CC) $(CFLAGS) -o ret2got ret2got.c

ret2pop: ret2pop.c
	$(CC) $(CFLAGS) -o ret2pop ret2pop.c

ret2text: ret2text.c
	$(CC) $(CFLAGS) -o ret2text ret2text.c

strptr: strptr.c
	$(CC) $(CFLAGS) -o strptr strptr.c

clean:
	rm -f *.o funcptr ret2bss ret2esp ret2got ret2pop ret2text strptr *~