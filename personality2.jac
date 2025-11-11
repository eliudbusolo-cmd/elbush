import from byllm.lib {Model}

glob llm = Model(model_name="gemini/gemini-2.5-flash");

def get_personality(name: str) -> Personality by llm();

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