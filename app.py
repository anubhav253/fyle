from flask import Flask, jsonify, request, json
import MySQLdb


data = json.load(open('config.json'))
dbCred = data["dbCred"]
conn = MySQLdb.connect(host=dbCred["host"], user=dbCred["user"], passwd=dbCred["passwd"], db=dbCred["db"])
a = conn.cursor()

app = Flask(__name__) #define app using flask


@app.route('/', methods=['GET'])
def getDetails():
    response = app.response_class(response=json.dumps({
        "github":"Follow this for use cases: https://github.com/anubhav253/fyle",
        "postman":"https://www.getpostman.com/collections/f928eb10ab7dac53a150"}), status=200, mimetype='application/json')
    return response


@app.route('/bank_details_ifsc', methods=['GET'])
def getBranchDetailsIFSC():
    ifsc = request.args.get("ifsc")
    sql = "SELECT * from `banks` where ifsc = '%s'" % ifsc
    a.execute(sql)
    data = a.fetchall()
    response = ""
    if len(data):
        result = {}
        col_names = [i[0] for i in a.description]
        for i in range(len(data[0])):
            result[col_names[i]] = data[0][i]
        response = app.response_class(response=json.dumps({"data":result}), status=200, mimetype='application/json')
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
        result = []
        col_names = [i[0] for i in a.description]
        for j in range(len(data)):
            r = {}
            for i in range(len(data[j])):
                r[col_names[i]] = data[j][i]
            result.append(r)
        response = app.response_class(response=json.dumps({"data":result}), status=200, mimetype='application/json')
    else:
        response = app.response_class(response=json.dumps({"message" : "Something Went wrong data not found"}), status=400, mimetype='application/json')
    return response



if __name__ == '__main__':
    app.run(host="0.0.0.0", debug=True, port=8080)