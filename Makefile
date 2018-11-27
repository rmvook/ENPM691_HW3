#Makefile for hw 3 -Richard M. Vook
CC = gcc
CFLAGS = -fno-stack-protector -zexecstack#-O2 -Wall -I .
CFLAGSS = -fno-stack-protector -mpreferred-stack-boundary=2 -zexecstack #-O2 -Wall -I .

all: funcptr ret2bss ret2esp ret2got ret2pop ret2popexploit ret2text strptr

#figure 7
ret2text: ret2text.c
	$(CC) $(CFLAGS) -o ret2text ret2text.c
#figure 8	
ret2bss: ret2bss.c
	$(CC) $(CFLAGSS) -o ret2bss ret2bss.c
#figure 10
strptr: strptr.c
	$(CC) $(CFLAGS) -o strptr strptr.c
#figuere 11	
funcptr: funcptr.c
	$(CC) $(CFLAGS) -o funcptr funcptr.c 
#figure 20
ret2pop: ret2pop.c
	$(CC) $(CFLAGS) -o ret2pop ret2pop.c
ret2popexploit: ret2popExploit.c
	$(CC) $(CFLAGS) -o ret2popExploit ret2popExploit.c
#figure 23
ret2esp: ret2esp.c
	$(CC) $(CFLAGS) -o ret2esp ret2esp.c
ret2espexploit: ret2espExploit.c
	$(CC) $(CFLAGS) -o ret2espExploit ret2espExploit.c
#figure 29
ret2got: ret2got.c
	$(CC) $(CFLAGS) -o ret2got ret2got.c

clean:
	rm -f *.o funcptr ret2bss ret2esp ret2got ret2pop ret2text strptr 