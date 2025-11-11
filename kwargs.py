def fav_subjects(**subjects):
    for key, value in subjects.items():
        print(f"I loved in {key}: {value}")

# Call the function outside the definition
fav_subjects(Math="Algebra", Science="Biology", English="Literature")