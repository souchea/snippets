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
NASM	= nasm
LD	= ld

CFLAGS	= --shared -fPIC
NFLAGS	= -f elf64

RM	= rm -rf
PRINT	= printf

RESET	= \033[00m
GREEN	= \033[32m
RED	= \033[31m

NAME	= example
LIB	= libasm.so

SRC 	= strlen.S \
	  strchr.S \
	  rindex.S \
	  strcmp.S

OBJ	= $(SRC:.S=.o)

%.o:	%.S
	$(NASM) $(NFLAGS) $^

all:	$(OBJ)
	@$(PRINT) "$(GREEN)[OK]$(RESET) Assembly done\n"
	$(LD) -o $(NAME) $(OBJ)
	@$(PRINT) "$(GREEN)[OK]$(RESET) Program $(NAME) assembled\n"
	$(CC) $(CFLAGS) -o $(LIB) $(OBJ)
	@$(PRINT) "$(GREEN)[OK]$(RESET) Dynamic librairy done\n"

clean: 
	$(RM) $(OBJ)
	@$(PRINT) "$(RED)[OK]$(RESET) Directory cleaned\n"

fclean: clean
	$(RM) $(LIB)
	@$(PRINT) "$(RED)[OK]$(RESET) Lib erased\n"
	$(RM) $(NAME)
	@$(PRINT) "$(RED)[OK]$(RESET) Executable erased\n"

re: fclean all

.PHONY: all clean fclean re
