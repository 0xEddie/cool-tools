import pyperclip
import openai
import keyboard
import json
import configparser

# Set up OpenAI API credentials
config = configparser.ConfigParser()
config.read('config.ini')

openai.api_key = config['openai']['api_key']

# Define the GPT-3.5-Turbo prompt
prompt = "Please break down the task into subtasks for someone with ADHD:"

# Define the function to submit the clipboard contents to GPT-3.5-Turbo
def submit_to_gpt():
    # Get the contents of the clipboard
    clipboard_text = pyperclip.paste()

    # Set up the prompt for GPT-3.5-Turbo
    prompt_text = prompt + "\n" + clipboard_text

    # Submit the prompt to GPT-3.5-Turbo
    response = openai.Completion.create(
        engine="davinci-002",
        prompt=prompt_text,
        max_tokens=1024,
        n=1,
        stop=None,
        temperature=0.7,
    )

    # Get the response text from GPT-3.5-Turbo
    response_text = response.choices[0].text.strip()

    # Parse the response JSON
    response_json = json.loads(response_text)

    # Get the subtasks from the response JSON
    subtasks = response_json["choices"][0]["text"].strip()

    # Put the subtasks into the clipboard
    pyperclip.copy(subtasks)

# Define the hotkey to trigger the function
keyboard.add_hotkey('ctrl+alt+2', submit_to_gpt)

# Wait for the hotkey to be pressed
keyboard.wait()
