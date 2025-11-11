node Person {
    has name: str;
    has age: int;
}

# Create node instances
with entry {
    alice = Person(name="Alice", age=25);
    bob = Person(name="Bob", age=30);
    charlie = Person(name="Charlie", age=28);

    #connecting nodes
    alice ++> bob;      #Alice -> Bob
    alice ++> charlie;  #Alice -> Charlie
    bob ++> charlie;    #Bob -> Charlie

   root ++> alice;
}