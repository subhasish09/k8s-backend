from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/send', methods=['POST'])
def send_message():
    message = request.form.get('message', '')
    return jsonify({"response": f"welcome from Backend: {message}"})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=6000)
