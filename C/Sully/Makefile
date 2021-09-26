# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: azziz <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/06 15:53:21 by azziz             #+#    #+#              #
#    Updated: 2021/05/06 16:01:49 by azziz            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

MAKE = make

C_DIR = src/
O_DIR = obj/

NAME = Sully

CC = gcc

SRC = Sully.c

all: $(NAME)

OBJ = $(addprefix $(O_DIR),$(SRC:.c=.o))

$(NAME): $(OBJ)
	@$(CC) -o $(NAME) $(OBJ)
	@tput dl; tput el1; tput cub 100; echo "\033[33mBuilt:\033[0m \033[32;1;4m$(notdir $@)\033[0m"

$(OBJ): $(O_DIR)%.o: $(C_DIR)%.c
	@mkdir -p $(O_DIR) 2> /dev/null || echo "" > /dev/null
	@$(CC) -o $@ -c $< -fPIC

clean:
	@rm -rf $(O_DIR) 2> /dev/null || echo "" > /dev/null

fclean: clean
	@rm -rf $(NAME) 2> /dev/null || echo "" > /dev/null
	@echo "\033[33mRemoved: \033[32;1;4m$(NAME)\033[0m"

re: fclean all

.PHONY: all clean fclean re
