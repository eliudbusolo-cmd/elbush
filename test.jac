import jaclang
from byllm.lib import Model, by
from enum import Enum

llm = Model(model_name="gemini/gemini-2.0-flash")

class Personality(Enum):
    INTROVERT
    EXTROVERT
    AMBIVERT

@by(model=llm)
def get_personality(name: str) -> Personality: ...

name = "Albert Einstein"
result = get_personality(name)
print(f"{result} personality detected for {name}")