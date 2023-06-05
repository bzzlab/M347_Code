from flask import Flask, request, jsonify

app = Flask(__name__)


@app.route("/", methods=["GET"])
def homepage():
    if request.method == "GET":
        return jsonify({"message": "Willkommen in unserer Tierpaxis!"})


@app.route("/api/termine", methods=["GET"])
def get_termine():
    if request.method == "GET":
        return jsonify({"message": "Termine abrufen ist noch nicht implementiert!"})

@app.route("/api/termin", methods=["POST"])
def set_termin():
    data = request.json
    if request.method == "POST":
        content_type = request.headers.get('Content-Type')
        if content_type == 'application/json':
            st = data.get('salutation')
            fN = data.get('firstname')
            lN = data.get('lastname')
            ap = data.get('appointment')
            return jsonify({"message": "Dear %s %s %s. You got an appointment on %s. Kind regards Tierpraxis-Team." % (st, fN, lN, ap)})
        else:
            return "Content type is not supported."


if __name__ == '__main__':
    app.run(threaded=True, host='0.0.0.0')


