"""A Number Guessing Game"""

walker GuessGame {
    has guess: int;
    can start with `root entry;
    can process_guess with turn entry;
}

node turn {
    has correct_number: int;
}

with entry(correct_number: int) {
    root spawn GuessGame(3);
    root spawn GuessGame(4);
    root spawn GuessGame(5);
    root spawn GuessGame(6);
}