# Aplicação principal - CodeFactory Solutions
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Conflito B - Mensagem do Dev 2"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)