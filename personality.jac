enum Personality {
    INTROVERT,
    EXTROVERT,
    AMBIVERT
}

def get_personality(name: str) -> Personality {
    # Traditional approach: manual algorithm, prompt-engineered LLM call, etc.
}

with entry {
    name = "Albert Einstein";
    result = get_personality(name);
    print(f"{result} personality detected for {name}");
}