# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: npaolett <npaolett@42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/27 11:11:08 by npaolett          #+#    #+#              #
#    Updated: 2023/05/19 15:31:41 by npaolett         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 	= libft.a
CC 		= gcc
CFLAGS 	= -Wall -Wextra -Werror 
AR		= ar rc
RM 		= rm -f

SRC = 	ft_atoi.c\
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
		ft_cntdgt.c 

SRC_BONUS = ft_lstnew.c \
			ft_lstadd_front.c \
			ft_lstsize.c \
			ft_lstlast.c \
			ft_lstadd_back.c\
			ft_lstdelone.c \
			ft_lstclear.c \
			ft_lstiter.c \

OBJ			= ${SRC:.c=.o}

OBJBONUS 	= ${SRC_BONUS:.c=.o}

%.o%.c: ${SRC}
		$(CC) ${CFLAGS} -c -o $@ $< 

${NAME}:	${OBJ}
			${AR} $@ ${OBJ}

bonus:	${OBJBONUS}
		${AR} ${NAME} ${OBJBONUS}
		
all: 	${NAME}

clean:
		${RM} ${OBJ} ${OBJBONUS}

fclean: clean
		${RM} ${NAME}

re: fclean  all  

.PHONY: bonus all clean fclean re