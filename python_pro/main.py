import requests
import json

items = json.loads('[{"id":1, "text": "Item 1"}, {"id":2, "text": "Item 2"}]')

for item in items:
    print(item['text'])

response = requests.get('https://randomuser.me/api/?results = 10')

data = response.json()

for user in data['results']:
    print(user['name']['first'])


def greet(greeting, name):
    """Returns a greeting
    
    Arguments:
        greeting {string} -- A greet word
        name {string} -- A persons name
    
    Returns:
        string -- A greeting with a persons name
    """
    return f'{greeting} {name}'

print(greet("morning", "daniel"))