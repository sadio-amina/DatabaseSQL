from flask import Flask, request , render_template
import pymysql
from pprint import pprint 


app = Flask(__name__)

database_name = 'CarbonFootprint'
database_host = 'localhost'
database_user = 'root'
password = ''

def get_data():
    connexion = pymysql.connect(host = database_host, user= database_user, password = password, db = database_name )
    cursor = connexion.cursor()
    query = "select * from c_carbone limit 20 "
    cursor.execute(query)
    
    data = cursor.fetchall()
    cursor.close()
    return data


@app.route('/')
def home():
    data = get_data()
    return render_template("index.html",  data= data)


if __name__ == '__main__':
    app.run(debug=True)

    
    
