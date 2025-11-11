#**Program to check if a person is a child (0-12), teenager (13-19), adult(below 65) or senior citizen based on age.**
with entry {
age = int(input("Enter your age: "));

    if age >= 13 {
        if age <= 19 {
        print("Teenager");
        } else {
            if age <= 65 {
            print("Adult");
            } else {
            print("Senior Citizen");
        }
    }
    } else {
    print("Child");
    }
}