# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ihermell <ihermell@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/21 17:14:32 by ihermell          #+#    #+#              #
#    Updated: 2015/05/21 21:31:44 by ihermell         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_bzero.s \
	  ft_strcat.s \
	  ft_strdup.s \
	  ft_cat.s \
	  ft_puts.s \
	  ft_puts_fd.s \
	  ft_isalpha.s \
	  ft_isdigit.s \
	  ft_isprint.s \
	  ft_isascii.s \
	  ft_isalnum.s \
	  ft_isspace.s \
	  ft_toupper.s \
	  ft_tolower.s \
	  ft_memcpy.s \
	  ft_memset.s \
	  ft_strlen.s \
	  ft_strcpy.s \
	  ft_streq.s \
	  ft_strcmp.s \
	  ft_strchr.s \
	  ft_exit.s
OBJ = $(SRC:%.s=%.o)
NAME = libfts.a

all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "          _____                    _____                    _____          "
	@echo "         /\\    \\                  /\\    \\                  /\\    \\         "
	@echo "        /::\\    \\                /::\\    \\                /::\\____\\        "
	@echo "       /::::\\    \\              /::::\\    \\              /::::|   |        "
	@echo "      /::::::\\    \\            /::::::\\    \\            /:::::|   |        "
	@echo "     /:::/\\:::\\    \\          /:::/\\:::\\    \\          /::::::|   |        "
	@echo "    /:::/__\\:::\\    \\        /:::/__\\:::\\    \\        /:::/|::|   |        "
	@echo "   /::::\\   \\:::\\    \\       \\:::\\   \\:::\\    \\      /:::/ |::|   |        "
	@echo "  /::::::\\   \\:::\\    \\    ___\\:::\\   \\:::\\    \\    /:::/  |::|___|______  "
	@echo " /:::/\\:::\\   \\:::\\    \\  /\\   \\:::\\   \\:::\\    \\  /:::/   |::::::::\\    \\ "
	@echo "/:::/  \\:::\\   \\:::\\____\\/::\\   \\:::\\   \\:::\\____\\/:::/    |:::::::::\\____\\"
	@echo "\\::/    \\:::\\  /:::/    /\\:::\\   \\:::\\   \\::/    /\\::/    / ~~~~~/:::/    /"
	@echo " \\/____/ \\:::\\/:::/    /  \\:::\\   \\:::\\   \\/____/  \\/____/      /:::/    / "
	@echo "          \\::::::/    /    \\:::\\   \\:::\\    \\                  /:::/    /  "
	@echo "           \\::::/    /      \\:::\\   \\:::\\____\\                /:::/    /   "
	@echo "           /:::/    /        \\:::\\  /:::/    /               /:::/    /    "
	@echo "          /:::/    /          \\:::\\/:::/    /               /:::/    /     "
	@echo "         /:::/    /            \\::::::/    /               /:::/    /      "
	@echo "        /:::/    /              \\::::/    /               /:::/    /       "
	@echo "        \\::/    /                \\::/    /                \\::/    /        "
	@echo "         \\/____/                  \\/____/                  \\/____/         "
	@echo "                                                                           "
	@echo "Done."

%.o: %.s libfts.h
	@nasm -f macho64 $<

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all