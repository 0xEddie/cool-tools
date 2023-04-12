import openai
import clipboard
import keyboard
import configparser

config = configparser.ConfigParser()
config.read('config.ini')

api_key = config['openai']['api_key']

openai.api_key = api_key

def submit_clipboard():
    prompt = "Consider this statement.\n'" + clipboard.paste() + "'\nExplain what the statement means concisely. Include an example or analogy."
    response = openai.Completion.create(
        engine="davinci",
        prompt=prompt,
        max_tokens=1024,
        n=1,
        stop=None,
        temperature=0.5,
    )
    explanation = response.choices[0].text.strip()
    clipboard.copy(explanation)

keyboard.add_hotkey('ctrl+alt+f1', submit_clipboard)

keyboard.wait('ctrl+esc')