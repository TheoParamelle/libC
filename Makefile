##
## EPITECH PROJECT, 2021
## tek2
## File description:
## Makefile
##

SRC		=	source/memcpy.asm	\
			source/memmove.asm	\
			source/memset.asm	\
			source/strchr.asm	\
			source/strcmp.asm	\
			source/strlen.asm	\
			source/strncmp.asm

OBJS	=	$(SRC:.asm=.o)

NAME	=	libasm.so

%.o: %.asm
	nasm -f elf64 $<

all:	$(NAME)

$(NAME): $(OBJS)
	ld -fPIC -shared -o $(NAME) $(OBJS)

clean:
	rm -rf $(OBJS)

fclean:	clean
	rm -f $(NAME)

re:	fclean all