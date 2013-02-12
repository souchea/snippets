##
## Makefile for hexdum
##
## @author Aurelien Souchet <souchet.aurelien@gmaill.com>
## @file Makefile
## @date 12/02/2013
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

NAME	= hexdump
LIB	= libasm.so

SRC 	= hexdump.S

OBJ	= $(SRC:.S=.o)

%.o:	%.S
	$(NASM) $(NFLAGS) $^

all:	$(OBJ)
	@$(PRINT) "$(GREEN)[OK]$(RESET) Assembly done\n"
	$(LD) -o $(NAME) $(OBJ)
	@$(PRINT) "$(GREEN)[OK]$(RESET) Program $(NAME) assembled\n"

clean: 
	$(RM) $(OBJ)
	@$(PRINT) "$(RED)[OK]$(RESET) Directory cleaned\n"

fclean: clean
	$(RM) $(NAME)
	@$(PRINT) "$(RED)[OK]$(RESET) Executable erased\n"

re: fclean all

.PHONY: all clean fclean re

