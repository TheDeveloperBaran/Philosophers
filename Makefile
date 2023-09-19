# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bakilic <bakilic@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/17 15:22:18 by bakilic           #+#    #+#              #
#    Updated: 2023/09/17 15:24:52 by bakilic          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = 	main.c   \
		init_prog.c   \
		status.c \
		dining.c \
		sleep_n_check.c
		
OBJ = $(SRC:.c=.o)
CC = gcc
CFLAG = -Wall -Wextra -Werror  -fsanitize=thread -g
RM = rm -rf
NAME = philo

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(SRC) -pthread -o $(NAME)

clean:
	$(RM) *.o

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY:		all clean fclean re