# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    tester.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nors <nors@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/13 11:59:30 by nors              #+#    #+#              #
#    Updated: 2022/07/13 20:24:16 by nors             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/usr/bin/bash

GREEN="\033[38;2;57;181;74m"
RED="\033[38;2;222;56;43m"
BLUE="\033[38;2;34;183;235m"
YELLOW="\033[38;2;255;176;0m"
PURPLE="\033[38;2;255;105;180m"
WHITE="\033[1;37m"
RESET="\033[0m"

echo "Please select a letter bellow:"
echo "a) shell00"


read -p "> " CHOSEN_LETTER

if [ -z $CHOSEN_LETTER ]; then 
	exit 1
fi

if [ $CHOSEN_LETTER = "a" ]; then
	bash shell00/shell00_tester.sh
else
	echo "Invalid input"
fi
