import json

items = json.loads(
    '[{"id": 1, "text": "Item 1"}, {"id": 2, "text": "Item 2"}, {"id": 3, "text": "Item 3"}]')

for item in items:
    print(item['text'])

if True:
    print("Hello World")
