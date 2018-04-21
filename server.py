from flask import Flask, jsonify, request, json
import MySQLdb


data = json.load(open('config.json'))
dbCred = data["dbCred"]
conn = MySQLdb.connect(host=dbCred["host"], user=dbCred["user"], passwd=dbCred["passwd"], db=dbCred["db"])
a = conn.cursor()

app = Flask(__name__) #define app using flask


@app.route('/bank_details_ifsc', methods=['GET'])
def getBranchDetailsIFSC():
    ifsc = request.args.get("ifsc")
    sql = "SELECT * from `banks` where ifsc = '%s'" % ifsc
    a.execute(sql)
    data = a.fetchall()
    print("VVV ", ifsc, data)
    response = ""
    if len(data):
        response = app.response_class(response=json.dumps({"data":data}), status=200, mimetype='application/json')
    else:
        response = app.response_class(response=json.dumps({"message" : "Something Went wrong data not found"}), status=400, mimetype='application/json')
    return response


@app.route('/bank_details_city', methods=['POST'])
def getBankDetail():
    bank_name = request.json["bank_name"]
    city = request.json["city"]
    sql = "SELECT * from `banks` where bank_name = '%s' and city = '%s'" % (bank_name, city)
    a.execute(sql)
    data = a.fetchall()
    response = ""
    if len(data):
        response = app.response_class(response=json.dumps({"data":data}), status=200, mimetype='application/json')
    else:
        response = app.response_class(response=json.dumps({"message" : "Something Went wrong data not found"}), status=400, mimetype='application/json')
    return response



if __name__ == '__main__':
    app.run(host="0.0.0.0", debug=True, port=8080)