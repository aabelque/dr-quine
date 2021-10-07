# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zizou </var/mail/zizou>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/03 22:17:17 by zizou             #+#    #+#              #
#    Updated: 2021/10/07 11:41:36 by zizou            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

MAKE = make

C_DIR = src/
O_DIR = obj/

NAME = Sully

NASM = nasm -f elf64
CC = gcc

SRC = Sully.s

all: $(NAME)

OBJS = $(addprefix $(O_DIR),$(SRC:.s=.o))

$(NAME): $(OBJS)
	@$(CC) -o $(NAME) $(OBJS)
	@tput dl; tput el1; tput cub 100; echo "\033[33mBuilt:\033[0m \033[32;1;4m$(notdir $@)\033[0m"

$(OBJS): $(O_DIR)%.o: $(C_DIR)%.s
	@mkdir -p $(O_DIR) 2> /dev/null || echo "" > /dev/null
	@$(NASM) -o $@ $<

clean:
	@rm -rf $(O_DIR) 2> /dev/null || echo "" > /dev/null

fclean: clean
	@rm -rf $(NAME) 2> /dev/null || echo "" > /dev/null
	@rm -rf Sully_* peda-*
	@echo "\033[33mRemoved: \033[32;1;4m$(NAME)\033[0m"

re: fclean all

.PHONY: all clean fclean re
