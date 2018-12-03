#Makefile for hw 3 -Richard M. Vook
CC = gcc
CFLAGS = -zexecstack 
CFLAGS2 = -fno-stack-protector -zexecstack 

all: funcptr ret2bss ret2esp ret2espexploit ret2got ret2pop ret2popexploit ret2text strptr exploit_ret2pop

#figure 7
ret2text: ret2text.c
	$(CC) $(CFLAGS2) -o ret2text ret2text.c
#figure 8	
ret2bss: ret2bss.c
	$(CC) $(CFLAGS2) -o ret2bss ret2bss.c
	#$(CC) $(CFLAGSS) -o ret2bss ret2bss.c
#figure 10
strptr: strptr.c
	$(CC) $(CFLAGS2) -o strptr strptr.c
#figuere 11	
funcptr: funcptr.c
	$(CC) $(CFLAGS2) -o funcptr funcptr.c 
#figure 20
ret2pop: ret2pop.c
	$(CC) $(CFLAGS2) -o ret2pop ret2pop.c
ret2popexploit: ret2popExploit.c
	$(CC) -o ret2popExploit ret2popExploit.c
exploit_ret2pop: exploit_ret2pop.c
	$(CC) -02 -o exploit_ret2pop exploit_ret2pop.c
#figure 23
ret2esp: ret2esp.c
	$(CC) $(CFLAGS2) -o ret2esp ret2esp.c
ret2espexploit: ret2espExploit.c
	$(CC) $(CFLAGS) -o ret2espExploit ret2espExploit.c
#figure 29
ret2got: ret2got.c
	$(CC) $(CFLAGS2) -o ret2got ret2got.c

clean:
	rm -f *.o funcptr ret2bss ret2esp ret2got ret2pop ret2text strptr 