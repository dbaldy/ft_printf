# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dbaldy <mail>                              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/07 16:13:53 by dbaldy            #+#    #+#              #
#    Updated: 2016/01/22 15:39:03 by dbaldy           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = args.c ft_printf.c tr_data.c conforme.c basic_fct.c s_fct.c longchar.c\
	  o_fct.c o2_fct.c d_fct.c d2_fct.c d3_fct.c x_fct.c x2_fct.c format.c \
	  u_fct.c u2_fct.c p_fct.c c_fct.c b_fct.c b2_fct.c k_fct.c\
	  ft_toupper.c ft_itoa_adv.c ft_itoa_adv_u.c ft_strrchr.c ft_tolower.c\
	  ft_strdup.c ft_strlen.c ft_putendl.c ft_strsub.c ft_strchr.c ft_putchar.c\
	  ft_putnbr.c ft_putstr.c ft_atoi.c ft_strjoin.c ft_strcmp.c

BIN = $(SRC:.c=.o)

FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME):
	@echo "\x1b[0;01mproceeding"
	@gcc $(FLAGS) -c $(SRC)
	@ar rc $(NAME) $(BIN)
	@ranlib $(NAME)
	@echo "\x1b[32;02mlibftprintf.a done\x1b[0;m"

clean:
	@/bin/rm -rf $(BIN)
	@echo "\x1b[0;00mclean done"

fclean: clean
	@/bin/rm -rf $(NAME) ft_printf
	@echo "\x1b[0;01mfclean done"

re: fclean all
