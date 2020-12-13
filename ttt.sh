#!/bin/bash

function print_board { # do not call until init'd by new_game
	echo " "
	echo "               ${spot1}|${spot2}|${spot3}"
	echo "               -+-+-"
	echo "               ${spot4}|${spot5}|${spot6}"
	echo "               -+-+-"
	echo "               ${spot7}|${spot8}|${spot9}"
	echo " "
	
}



function check_win { # only call this after someone makes their move
if [[ "$spot1" == "$current_player" && "$spot2" == "$current_player" && "$spot3" == "$current_player" ]] || [[ "$spot4" == "$current_player" && "$spot5" == "$current_player" && "$spot6" == "$current_player" ]] || [[ "$spot7" == "$current_player" && "$spot8" == "$current_player" && "$spot9" == "$current_player" ]] || [[ "$spot1" == "$current_player" && "$spot4" == "$current_player" && "$spot7" == "$current_player" ]] || [[ "$spot2" == "$current_player" && "$spot5" == "$current_player" && "$spot8" == "$current_player" ]] || [[ "$spot3" == "$current_player" && "$spot6" == "$current_player" && "$spot9" == "$current_player" ]] || [[ "$spot1" == "$current_player" && "$spot5" == "$current_player" && "$spot9" == "$current_player" ]] || [[ "$spot3" == "$current_player" && "$spot5" == "$current_player" && "$spot7" == "$current_player" ]]
	then win=true
fi

}


function new_game {
clear
# init win variable to make playtime function work

win=false

# init board spots to make first print_board function work
# Would love to roll this up into a loop. Dunno how to do that in bash.
spot1=1
spot2=2 
spot3=3 
spot4=4 
spot5=5 
spot6=6 
spot7=7 
spot8=8 
spot9=9 


echo "Welcome to tic-tac-toe!"
while true; do
    read -p "How many players (1-2)? " number_of_players
    case $number_of_players in
        1 ) echo "Only two players currently supported. Let's do two players."; break;;
        2 ) echo "Ok! Let's have a two player game!"; break;;
        * ) echo "Please answer 1 or 2 players.";;
    esac
done

while true; do
    read -p "Who will go first (X or O)? " current_player
    case $current_player in
        [Xx] ) current_player=X; break;;
        [oO] ) current_player=O; break;;
        * ) echo "Please answer X or O to go first.";;
    esac
done


# right now, we assume two

}



function playtime {

# start each turn by 
print_board

mark_valid=false

while [[ $mark_valid == false ]]; do
	read -p "Where do you want to put your $current_player (1-9)? " mark
	case $mark in 
		1) if [ $spot1 == 1 ]; then spot1=$current_player; mark_valid=true; else echo "There is already an $spot1 on the top left."; fi; break;;
		2) if [ $spot2 == 2 ]; then spot2=$current_player; mark_valid=true; else echo "There is already an $spot2 on the top center."; fi; break;;
		3) if [ $spot3 == 3 ]; then spot3=$current_player; mark_valid=true; else echo "Top right is already taken by $spot3."; fi; break;;
		4) if [ $spot4 == 4 ]; then spot4=$current_player; mark_valid=true; else echo "The left center space is already $spot4."; fi; break;;
		5) if [ $spot5 == 5 ]; then spot5=$current_player; mark_valid=true; else echo "$spot5 already has the center."; fi; break;;
		6) if [ $spot6 == 6 ]; then spot6=$current_player; mark_valid=true; else echo "There's already an $spot6 on the center right."; fi; break;;
		7) if [ $spot7 == 7 ]; then spot7=$current_player; mark_valid=true; else echo "Bottom left is already $spot7."; fi; break;;
		8) if [ $spot8 == 8 ]; then spot8=$current_player; mark_valid=true; else echo "Middle bottom is already an $spot8."; fi; break;;
		9) if [ $spot9 == 9 ]; then spot9=$current_player; mark_valid=true; else echo "The bottom right already has an $spot9 on it."; fi; break;;
		*) echo "Choose a space from 1 to 9."
	esac
done

check_win

# valid move, but no win, so switch players
if [ $win == false ] && [ $mark_valid == true ]
	then if [ $current_player == X ]
		then current_player=O
		else current_player=X
	fi
fi
}

# END FUNCTIONS
# START PROGRAM
new_game # init the game

while [[ $win == "false" ]] # run the game until we have a winner
	do playtime
done

# Declare the winner!
clear

echo " "
echo "   TIC-TAC-TOE! Three in a row!!"

if [ $current_player == X ]
	then  banner " XXX"
	else banner " OOO"
fi

print_board
exit
