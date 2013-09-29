##
# Makefile
#
# @author Aurelien Souchet <souchet.aurelien@gmail.com>
# @file Makefile
# @date 29/2092013
# 

NAME		=	singleton

SRC_DIR		=	.

SRCS		=	$(SRC_DIR)/Singleton.cpp	\
			$(SRC_DIR)/main.cpp

OBJS		=	$(SRCS:.cpp=.o)

CXX		=	g++
CXXFLAGS	=	##-O3 -W -Wall -std=c++0x
HXFILES		=	-I.
RM		=	rm -rf
ECHO		=	echo -e


all		:	$(NAME)

$(NAME)	: $(OBJS)
	@$(CXX) -o $(NAME) $(OBJS)
	@$(ECHO) '\033[0;32m> Compiled\033[0m'

clean :
	@$(RM) $(OBJS)
	@$(ECHO) '\033[0;35m> Directory(s) cleaned\033[0m'

fclean	: clean
	@$(RM) $(NAME)
	@$(ECHO) '\033[0;35m> Binary(s) removed\033[0m'

re : fclean all

.cpp.o :
	@$(CXX) $(CXXFLAGS) -c $< -o $(<:.cpp=.o) $(HXFILES)

