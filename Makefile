# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: npaolett <npaolett@42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/15 17:44:12 by npaolett          #+#    #+#              #
#    Updated: 2023/05/19 15:30:59 by npaolett         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 	= libftprintf.a
CC 		= gcc
CFLAGS 	= -Wall -Wextra -Werror 
AR		= ar -rc 
RM 		= rm -f

SRC = 	ft_eval_format.c \
        ft_print_char.c \
		ft_print_int.c \
		ft_print_ptr.c \
		ft_print_str.c \
		ft_print_hex.c \
		ft_printf.c\
		ft_print_uns_int.c\

SRC_LIBFT = ft_atoi.c\
		ft_bzero.c \
		ft_calloc.c\
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c\
		ft_itoa.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_memset.c \
		ft_putchar_fd.c \
		ft_putendl_fd.c\
		ft_putnbr_fd.c\
		ft_putstr_fd.c\
		ft_split.c\
		ft_strchr.c\
		ft_strdup.c\
		ft_strjoin.c\
		ft_strlcat.c \
		ft_strlcpy.c\
		ft_strlen.c\
		ft_strncmp.c \
		ft_strrchr.c\
		ft_strtrim.c\
		ft_substr.c\
		ft_tolower.c\
		ft_toupper.c\
		ft_strmapi.c\
		ft_striteri.c\
		ft_cntdgt.c \
		ft_nblen.c \

PATH_LIB = libft/

PRFEC = ${addprefix $(PATH_LIB), $(SRC_LIBFT)}

OBJ	= 	${SRC:.c=.o}
OBJ_LIBFT = ${PRFEC:.c=.o}

%.o%.c: ${SRC} 
		$(CC) ${CFLAGS} -c -o $@ $< 

${NAME}:	${OBJ} $(OBJ_LIBFT)
			${AR} ${NAME} ${OBJ_LIBFT}
			${AR} ${NAME} ${OBJ}
		
all: 	${NAME}

clean:
		${RM} ${OBJ} ${OBJ_LIBFT}

fclean: clean
		${RM} ${NAME}

re: fclean  all  

.PHONY: bonus all clean fclean re
