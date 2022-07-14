# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    c00_tester.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nors <nors@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/14 18:58:08 by nors              #+#    #+#              #
#    Updated: 2022/07/14 19:01:43 by nors             ###   ########.fr        #
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

printf $YELLOW"_______________  C00  _______________\n"$RESET
printf "\n"

sleep 1

printf $PURPLE"-------------> [TESTING_EX00...] <-------------\n"$RESET
printf "\n"

TESTER_OUTPUT=$(ls c00/tester_c00/ex00)
USER_OUTPUT=$(ls c00/user_c00/ex00)

if [ "$TESTER_OUTPUT" = "$USER_OUTPUT" ]; then
	printf $GREEN"--> Expected Files [OK]\n"$RESET
else
	printf $RED"--> Expected Files [KO]\n"$RESET
fi
printf "\n"