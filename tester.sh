# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    tester.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nors <nors@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/13 11:59:30 by nors              #+#    #+#              #
#    Updated: 2022/07/14 19:00:17 by nors             ###   ########.fr        #
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

printf "\n"
printf $PURPLE" ██████╗ ██████╗ ██╗███████╗ ██████╗██╗███╗   ██╗███████╗ ████████╗███████╗███████╗████████╗███████╗██████╗ \n"$RESET
printf $PURPLE"██╔════╝ ██╔══██╗██║██╔════╝██╔════╝██║████╗  ██║██╔════╝ ╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██╔════╝██╔══██╗\n"$RESET
printf $PURPLE"██║      ██████╔╝██║███████╗██║     ██║██╔██╗ ██║█████╗█████╗██║   █████╗  ███████╗   ██║   █████╗  ██████╔╝\n"$RESET
printf $PURPLE"██║      ██╔═══╝ ██║╚════██║██║     ██║██║╚██╗██║██╔══╝╚════╝██║   ██╔══╝  ╚════██║   ██║   ██╔══╝  ██╔══██╗\n"$RESET
printf $PURPLE"╚██████╗ ██║     ██║███████║╚██████╗██║██║ ╚████║███████╗    ██║   ███████╗███████║   ██║   ███████╗██║  ██║\n"$RESET
printf $PURPLE" ╚═════╝ ╚═╝     ╚═╝╚══════╝ ╚═════╝╚═╝╚═╝  ╚═══╝╚══════╝    ╚═╝   ╚══════╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝\n"$RESET
printf "\n"
printf $PURPLE"=============================================================================================================\n"$RESET
printf "\n"

printf $BLUE"Please select a letter bellow:\n"$RESET
printf $YELLOW"a) shell00\n"$RESET
printf $YELLOW"b) shell01\n"$RESET
printf $YELLOW"c) c00\n"$RESET
printf $PURPLE"Other days comming soon...\n"$RESET

read -p "> " CHOSEN_LETTER

if [ -z $CHOSEN_LETTER ]; then
	exit 1
fi

if [ $CHOSEN_LETTER = "a" ]; then
	chmod +x shell00/shell00_tester.sh
	bash shell00/shell00_tester.sh
elif [ $CHOSEN_LETTER = "b" ]; then
	chmod +x shell01/shell01_tester.sh
	bash shell01/shell01_tester.sh
elif [ $CHOSEN_LETTER = "c" ]; then
	chmod +x c00/c00_tester.sh
	bash c00/c00_tester.sh
else
	printf $RED"Invalid input\n"$RESET
fi
