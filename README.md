# Tic-Tac-Toe (Command Line Edition)

## Overview
This is a simple implementation of the classic Tic-Tac-Toe game, written in Bash. The game is designed for two players and runs entirely in the command line. It’s a great way to practice scripting, handle user input, and make your terminal gaming a bit more nostalgic and fun.

## Features
- Two-player Tic-Tac-Toe.
- Command-line interface for a retro gaming experience.
- Fun additional outputs if `cowsay` or `banner` are installed.
- Displays the current board after each move.
- Simple win detection and tie handling.

## Getting Started
### Prerequisites
- A Unix-like system with Bash installed (e.g., Linux or macOS).
- Optional: `cowsay` and `banner` for enhanced game experience.

### Installation
Clone the repository to your local system:

```bash
git clone git@github.com:wdcallahan/ttt.git
cd ttt
```

### Running the Game
To play, simply execute the script in your terminal:

```bash
./ttt.sh
```

Make sure the script has execution permissions. You may need to set it using:

```bash
chmod +x ttt.sh
```

## How to Play
1. The game starts by asking Player X to make their move.
2. Players take turns selecting a spot on the board by entering the corresponding number (1-9).
3. The first player to align three of their symbols (horizontally, vertically, or diagonally) wins.
4. If all spots are filled and there is no winner, the game declares a tie.

### Controls
- Enter a number from 1 to 9 to place your symbol in the corresponding spot on the board.
- The board layout is as follows:

  ```
   1 | 2 | 3
  ---------
   4 | 5 | 6
  ---------
   7 | 8 | 9
  ```

## Dependencies
- **Bash**: The script is written in Bash and requires it to run.
- **cowsay (Optional)**: If installed, `cowsay` adds fun messages when the game ends in a tie.
- **banner (Optional)**: If installed, `banner` prints a celebratory message when a player wins.

## Known Issues / Future Improvements
- **Single Player Mode**: Currently, the game is for two players only. Adding AI for single-player mode could be a fun enhancement.
- **Validation Improvements**: Improve user input validation to handle edge cases more gracefully.
- **Code Refactoring**: Refactor some of the repeated logic using arrays for a more concise implementation.
- **British Mode**: Add an option to play the game as "Noughts and Crosses" instead of "Tic-Tac-Toe" for a fun cultural twist.

## Contributing
This is a practice project, so contributions are welcome! Feel free to fork the repository, make improvements, and submit pull requests.

## License
This project is licensed under the GNU General Public License, version 3 or later (GPL-3.0+).

## Acknowledgments
- Inspired by the classic Tic-Tac-Toe game, and motivated by the desire to practice Bash scripting in a fun and creative way.

