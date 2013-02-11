##
## Makefile for Makefile in /home/souche_a//Asm
## 
## Made by aurelien souchet
## Login   <souche_a@epitech.net>
## 
## Started on  Tue Mar 20 16:58:31 2012 aurelien souchet
## Last update Sun Mar 25 22:16:51 2012 aurelien souchet
##

CC	= gcc

NASM	= nasm -f elf64

RM	= rm  -rf

ASMLIB	= libasm.so

ASM_SRC = strlen.S \
	  strchr.S \
	  rindex.S \
	  strcmp.S

OBJ_ASM	= strlen.o \
	  strchr.o \
	  rindex.o \
	  strcmp.o

all:
	$(NASM) strlen.S
	$(NASM) strchr.S
	$(NASM) rindex.S
	$(NASM) strcmp.S
	$(CC) --shared -fPIC -o $(ASMLIB) $(OBJ_ASM)

clean: 
	$(RM) $(OBJ_ASM) /*.o /*~ /\#*\# *~

fclean: clean
	$(RM) $(ASMLIB)

re: fclean all