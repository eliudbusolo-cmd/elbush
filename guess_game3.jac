"""A Number Guessing Game"""
import random;


obj Game {
    has attempts: int, won: bool = False;

    def play() {
        print("Welcome to the Number Guessing Game!");

    }
}

obj GuessTheNumberGame (Game) {
    has attempts: int;
    has won: bool = False;
    has correct_number: int =0;

    def init() {
        self.correct_number:randint = (0,10)[0];
        self.attempts = 0;
        self.won = False;
    }
    override def play() {
        print("Welcome to the Number Guessing Game!");
    
        while(not self.won) {
        guess = input("Enter your guess: ");
        self.process_guess(int(guess));
        }
    }
    def process_guess(guess: int) {
        self.attempts += 1;
        if(guess == self.correct_number) {
            print("Congratulations! You've guessed the correct number in " + str(self.attempts) + " attempts.");
            self.won = True;
        } elif(guess < self.correct_number) {
            print("Too low! Try again.");
        } else {
            print("Too high! Try again.");
        }
    }
}

# Run the game
 with entry {
    game = GuessTheNumberGame();
    game.play();
}
