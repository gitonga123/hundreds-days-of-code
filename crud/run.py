# run.py

# import from external
from flask import Flask, render_template

app = Flask(__name__)
app.debug = True

@app.route('/')
def index():
    return render_template('app/templates/index.html')

if __name__ == '__main__':
    app.run()
