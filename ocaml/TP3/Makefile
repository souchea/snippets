##
## Makefile for nibbler in /home/souche_a//Cpp/nibbler/nibbler-2015-souche_a/openGL
## 
## Made by aurelien souchet
## Login   <souche_a@epitech.net>
## 
## Started on  Mon Mar 12 14:25:57 2012 aurelien souchet
## Last update Wed Mar 14 19:36:09 2012 aurelien souchet
##

CC		= ocamlopt
CC_BYTE		= ocamlc
CFLAGS		= Aelz

BYTE		= byte

RM		= rm -rf
PRINT		= printf

RESET           = \033[00m
GREEN           = \033[32m
BLUE            = \033[36m
RED             = \033[31m
YELLOW          = \033[33m
PURPLE          = \033[35m

NAME		= test
SRC		= test.ml

all: $(NAME)

$(NAME): 
	$(CC) -w $(CFLAGS) -o $(NAME) $(SRC)
	@$(PRINT) "$(PURPLE)[executable done (natif) :)]$(RESET)\n"

$(BYTE):
	$(CC_BYTE) -w $(CFLAGS) -o $(NAME) $(SRC)
	@$(PRINT) "$(PURPLE)[executable done (bytecode) :)]$(RESET)\n"

clean:
	$(RM) ./*.o ./*.cm*{x,i,o} ./*~ ./\#*\# *~ 
	@$(PRINT) "$(BLUE)[files deleted :(]$(RESET)\n"

fclean: clean
	$(RM) $(NAME)
	@$(PRINT) "$(RED)[executable deleted :(]$(RESET)\n"

re: fclean all

.PHONY: all clean fclean re