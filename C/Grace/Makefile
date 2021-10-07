# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: azziz <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/06 15:53:21 by azziz             #+#    #+#              #
#    Updated: 2021/10/07 11:46:59 by zizou            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

MAKE = make

C_DIR = src/
O_DIR = obj/

NAME = Grace

CC = gcc

SRC = Grace.c

all: $(NAME)

OBJ = $(addprefix $(O_DIR),$(SRC:.c=.o))

$(NAME): $(OBJ)
	@$(CC) -g3 -o $(NAME) $(OBJ)
	@tput dl; tput el1; tput cub 100; echo "\033[33mBuilt:\033[0m \033[32;1;4m$(notdir $@)\033[0m"

$(OBJ): $(O_DIR)%.o: $(C_DIR)%.c
	@mkdir -p $(O_DIR) 2> /dev/null || echo "" > /dev/null
	@$(CC) -g3 -o $@ -c $< -fPIC

clean:
	@rm -rf $(O_DIR) 2> /dev/null || echo "" > /dev/null

fclean: clean
	@rm -rf $(NAME) Grace_kid.c 2> /dev/null || echo "" > /dev/null
	@echo "\033[33mRemoved: \033[32;1;4m$(NAME)\033[0m"

re: fclean all

.PHONY: all clean fclean re
