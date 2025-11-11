py import os;
py import byllm;

glob llm = byllm.Model(model_name=os.getenv("JAC_MODEL", "gemini/gemini-1.5-flash-8b-latest"));

def generate_password() -> str by llm();

sem generate_password = """
Generate a strong password (>=12 chars) with upper, lower, digit, and symbol.
""";

with entry {
    print(generate_password());
}
