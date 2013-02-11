##
## Makefile for ocaml in /home/souche_a//Ocaml/1_interface
## 
## Made by aurelien souchet
## Login   <souche_a@epitech.net>
## 
## Started on  Tue Mar 27 07:19:29 2012 aurelien souchet
## Last update Tue Mar 27 08:21:10 2012 aurelien souchet
##

NAME	= exemple

FLAGS	= -w Aelz -warn-error A

ML 	= ChainedList.ml	  
MLI	= ChainedList.mli

CMI	= $(MLI:.mli=.cmi)
CMO	= $(ML:.ml=.cmo)
CMX	= $(ML:.ml=.cmx)

OCAMLDPE	= ocamldep

OCAMLC		= ocamlc 
OCAMLOPT	= ocamlopt $(CAMLFLAGS)


all:		.depend $(CMI) $(NAME)

byte:		.depend $(CMI) $(NAME).byte


$(NAME):	$(CMX)
		@$(OCAMLOPT) $(CAMLFLAGS) -o $@ $(CMX)
		@echo "[OK] $(NAME) linked"

$(NAME).byte:	$(CMO)
		@$(OCAMLC) $(CAMLFLAGS) -o $@ $(CMO)
		@echo "[OK] $(NAME).byte linked"

%.cmx:		%.ml
		@$(OCAMLOPT)  $(CAMLFLAGS) -c $<
		@echo "[OK] [$<] builded"

%.cmo:		%.ml
		@$(OCAMLC) $(CAMLFLAGS) -c $<
		@echo "[OK] [$<] builded"

%.cmi:		%.mli
		@$(OCAMLC) $(CAMLFLAGS) -c $<
		@echo "[OK] [$<] builded"

re:		fclean all

clean:
		@/bin/rm -f *.cm* *.o .depend *~
		@echo "[OK] clean"

fclean: 	clean
		@/bin/rm -f $(NAME) $(NAME).byte
		@echo "[OK] fclean"

.depend:
		@/bin/rm -f .depend
		@$(OCAMLDPE) $(MLI) $(ML) > .depend
		@echo "[OK] dependencies"
