import from byllm { Model }
glob llm = Model(model_name="gpt-4o");

enum Personality {
    INTROVERT,
    EXTROVERT,
    AMBIVERT
}

def get_personality(name: str) -> Personality by llm();

with entry {
    name = "Albert Einstein";
    result = get_personality(name);
    print(f"{result} detected for {name}");
}