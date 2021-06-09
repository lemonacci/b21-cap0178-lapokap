from flask import Flask, request, redirect, url_for, flash, jsonify
import numpy as np
import pickle as p
import json

from interface import chat

app = Flask(__name__)
modelfile = 'Model/tokenizer.pickle'
model = p.load(open(modelfile, 'rb'))

@app.route('/api/', methods=['POST'])
def chat():
    data = request.get_json()
    prediction = model.predict(np.array(data))
    output = prediction[0]

    return jsonify(output)

if __name__ == '__main__':
    app.run(debug=True, host='localhost', port='5000')