SRCS	= ft_printf.c \
		ft_printf_s.c \
		ft_printf_c.c \
		ft_printf_di.c\
		ft_printf_u.c\
		ft_printf_hex.c

OBJS	= ${SRCS:.c=.o}

NAME	= libftprintf.a

LIBFT	= ./libft

LIBFT_NAME = libft.a

CC	= gcc

RM	= rm -f

CFLAGS	= -Wall -Wextra -Werror

.c.o:
		${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
		make -C ${LIBFT}
		cp ${LIBFT}/${LIBFT_NAME} ${NAME}
		ar rc ${NAME} ${OBJS}

all:		${NAME}

clean:
		make clean -C ${LIBFT} 
		${RM} ${OBJS}

fclean:		clean
		make fclean -C ${LIBFT} 
		${RM} ${NAME}

re:		clean all

.PHONY:		all clean fclean re
