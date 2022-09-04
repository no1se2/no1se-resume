#!/bin/bash

#colors
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

##################################################################################################################################

logo() {
echo 		"$WHITE ███▄    █  ▒█████    ██████ ▓█████     ██▀███  ▓█████   ██████  █    ██  ███▄ ▄███▓▓█████ "
sleep 0.1
echo 		"$WHITE ██ ▀█   █ ▒██▒  ██▒▒██    ▒ ▓█   ▀    ▓██ ▒ ██▒▓█   ▀ ▒██    ▒  ██  ▓██▒▓██▒▀█▀ ██▒▓█   ▀ "
sleep 0.1
echo 		"$WHITE▓██  ▀█ ██▒▒██░  ██▒░ ▓██▄   ▒███      ▓██ ░▄█ ▒▒███   ░ ▓██▄   ▓██  ▒██░▓██    ▓██░▒███   "
sleep 0.1
echo 		"$WHITE▓██▒  ▐▌██▒▒██   ██░  ▒   ██▒▒▓█  ▄    ▒██▀▀█▄  ▒▓█  ▄   ▒   ██▒▓▓█  ░██░▒██    ▒██ ▒▓█  ▄ "
sleep 0.1
echo 		"$WHITE▒██░   ▓██░░ ████▓▒░▒██████▒▒░▒████▒   ░██▓ ▒██▒░▒████▒▒██████▒▒▒▒█████▓ ▒██▒   ░██▒░▒████▒"
sleep 0.1
echo 		"$RED░ ▒░   ▒ ▒ ░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░░░ ▒░ ░   ░ ▒▓ ░▒▓░░░ ▒░ ░▒ ▒▓▒ ▒ ░░▒▓▒ ▒ ▒ ░ ▒░   ░  ░░░ ▒░ ░"
sleep 0.1
echo 		"$RED░ ░░   ░ ▒░  ░ ▒ ▒░ ░ ░▒  ░ ░ ░ ░  ░     ░▒ ░ ▒░ ░ ░  ░░ ░▒  ░ ░░░▒░ ░ ░ ░  ░      ░ ░ ░  ░"
sleep 0.1
echo 		"$RED   ░   ░ ░ ░ ░ ░ ▒  ░  ░  ░     ░        ░░   ░    ░   ░  ░  ░   ░░░ ░ ░ ░      ░      ░   "
sleep 0.1
echo 		"         ░     ░ ░        ░     ░  ░      ░        ░  ░      ░     ░            ░      ░  ░"
}

menu() {
clear
logo
echo "$WHITE Welcome $RED $USER"|pv -qL 50
sleep 0.2
echo ""
echo "$RED>$WHITE 1: MY RESUME"|pv -qL 30
sleep 0.2
echo ""
echo "$RED>$WHITE 2: MY SOCIAL MEDIA LINKS"|pv -qL 30
echo ""
sleep 0.2
read -p "$RED>>$WHITE Please Select an Option: $RED>>>> $WHITE"
case $REPLY in
	1 | 01)
clear
option1;;
	2 | 02)
clear
option2;;
*)
esac
}

#starting building the options
option1() {
clear
logo
echo ""
echo "$WHITE About Me"|pv -qL 100
echo "----------------------------------------"|pv -qL 50
echo ""
sleep 0.2
echo "$RED I'm an editor (Ae, Pr, Ps),  I know $WHITE HTML/Python/Bash/Linux/fucking with tryhackme"|pv -qL 10
echo "$WHITE And Learning Cyber security $RED playing a lot of plane simulators"|pv -qL 10
echo "$RED The language I speak $WHITE English/Hebrew"|pv -qL 10
echo ""
read -p "$WHITE Do you want to go back to the menu? (Y)/(N) "
case $REPLY in
	Y | y)
clear
menu;;
	N | n)
clear
exit;;
*)
esac
}
#the making of option 2
option2() {
clear
logo
echo ""
echo "$WHITE Social media"|pv -qL 100
echo "-----------------------------------------"|pv -qL 50
echo ""
sleep 0.2
echo "$RED Youtube Channel $WHITE https://www.youtube.com/channel/UCfBQbNKVeCHtwNP5fzXeBRg"|pv -qL 20
echo ""
echo "$GREEN Spotify $WHITE https://open.spotify.com/user/216qj22voibtcje2ripi7peay"|pv -qL 20
echo ""
echo "$BLUE Github $WHITE https://github.com/no1se2"|pv -qL 20
echo ""
echo "$MAGENTA Instagram $WHITE https://www.instagram.com/mika_and_no1se"|pv -qL 20
echo ""
echo "$CYAN My Website $WHITE https://no1seplayground.netlify.app"|pv -qL 20
echo ""
read -p "$WHITE Do you want to go back to the menu? (Y)/(N) "
case $REPLY in
	Y | y)
clear
menu;;
	N | n)
clear
exit;;
*)
esac
}
menu
