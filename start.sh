# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: groberto <groberto@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/10 11:34:31 by groberto          #+#    #+#              #
#    Updated: 2019/12/10 11:50:46 by groberto         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NOCOLOR='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'

echo "${LIGHTCYAN}---------------------------------------${NOCOLOR}"
echo "${LIGHTPURPLE}---------------------------------------${NOCOLOR}"
echo "${LIGHTBLUE}Welcome to Matcha!${NOCOLOR}, ${LIGHTRED}Loading project...${NOCOLOR}"
echo "${LIGHTGRAY}---------------------------------------${NOCOLOR}"
echo "${LIGHTGREEN}---------------------------------------${NOCOLOR}"
sleep 3
cd front-end && npm i
sleep 3
echo "${DARKGRAY}---------------------------------------${NOCOLOR}"
echo "${LIGHTRED}---------------------------------------${NOCOLOR}"
echo "${DARKGRAY}Front-End Done !${NOCOLOR}, ${LIGHTRED}Loading project...${NOCOLOR}"
echo "${LIGHTGRAY}---------------------------------------${NOCOLOR}"
echo "${LIGHTGREEN}---------------------------------------${NOCOLOR}"
sleep 3
echo "${LIGHTBLUE}Fixing${NOCOLOR} ${LIGHTGREEN}vulnerabilities! ...${NOCOLOR}"
npm audit fix
sleep 3
cd ../back-end && npm i
sleep 3 
echo "${LIGHTGREEN}---------------------------------------${NOCOLOR}"
echo "${LIGHTGRAY}---------------------------------------${NOCOLOR}"
echo "${DARKGRAY}Back-End Done !${NOCOLOR}, ${LIGHTRED}Loading project...${NOCOLOR}"
echo "${WHITE}---------------------------------------${NOCOLOR}"
echo "${DARKGRAY}---------------------------------------${NOCOLOR}"
sleep 3
echo "${LIGHTBLUE}Fixing${NOCOLOR} ${LIGHTGREEN}vulnerabilities! ...${NOCOLOR}"
npm audit fix
sleep 3
cd ../ && npm i
sleep 3
echo "${LIGHTBLUE}Fixing${NOCOLOR} ${LIGHTGREEN}vulnerabilities! ...${NOCOLOR}"
npm audit fix
sleep 3
echo "${LIGHTGREEN}---------------------------------------${NOCOLOR}"
echo "${LIGHTRED}---------------------------------------${NOCOLOR}"
echo "${LIGHTGREEN}---------------------------------------${NOCOLOR}"
echo "${WHITE}---------------------------------------${NOCOLOR}"
echo "${LIGHTGRAY}Almost Done !${NOCOLOR}, ${LIGHTRED}Opening project...${NOCOLOR}"
echo "${LIGHTGREEN}---------------------------------------${NOCOLOR}"
echo "${WHITE}---------------------------------------${NOCOLOR}"
echo "${LIGHTGREEN}---------------------------------------${NOCOLOR}"
echo "${LIGHTRED}---------------------------------------${NOCOLOR}"
npm run dev