from flask import Flask, request, redirect, url_for, flash, jsonify
import numpy as np
import pickle as p
import json

from interface import chat

app = Flask(__name__)

@app.route('/api/', methods=['GET','POST'])
def chatBot():
    global chatInput
    if request.method == 'POST':
        chatInput = (request.get_json(force=True))
        print(chatInput)
        global chatBotReply
        chatBotReply = chat(chatInput)
    return jsonify(chatBotReply)

if __name__ == '__main__':
    app.run(debug=True, host='192.168.1.6', port='5000')
    modelfile = 'tokenizer.pickle'
    model = p.load(open(modelfile, 'rb'))