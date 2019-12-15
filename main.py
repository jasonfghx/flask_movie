import logging
from flask import render_template
from flask import Flask, request
import datetime
import decimal
import pymysql
import json
import config
from flask_cors import CORS
from flask import Flask,render_template,redirect,url_for
app = Flask(__name__)
# app.config.from_pyfile('settings.cfg')
"""
CORS function is to avoid No 'Access-Control-Allow-Origin' error
"""
CORS(app)


# @app.route("/")
# def home():
#     return render_template("home.html")

@app.route('/', methods=['GET', 'POST'])
def index():
    return render_template('gov_pred.html')

@app.route('/sql', methods=['GET', 'POST'])
def pred_content():
    data = {'subject': ''}
    if request.method == 'POST':  
        subject = request.values['subject']
        # zh_pattern = re.compile(u'[\u4e00-\u9fa5]+')
        # content = request.values['content']
        data['subject'] = subject
        # data['content'] = content
        # match_subject = zh_pattern.search(subject)
        # match_content = zh_pattern.search(content)
        if data['subject'] == '' :
            data['predict'] = '主旨或內容請勿空白'
    print(subject)
    a=test_get((subject))
        # return render_template('gov_pred.html', **data)
        # return render_template('test_get', sub1=subject)
        # return redirect(url_for("/test"))
    # return render_template('gov_pred.html')
    return (a)



def type_handler(x):
    """type Serialization function.

    Args:
        x:

    Returns:
        Serialization format of data, add more isinstance(x,type) if needed
    """
    if isinstance(x, datetime.date):
        return x.isoformat()
    if isinstance(x, decimal.Decimal):
        return '$%.2f'%(x)
    raise TypeError("Unknown type")

def rows_to_json(cols,rows):
    """type Serialization function.
    Args:
        cols: column descriptions
        rows: sql query result rows

    Returns:
        Array of json string with combination of columns and rows
        [
          {"column0":row[0], "column1":row[1], "column2":row[2], .......},
          {"column0":row[0], "column1":row[1], "column2":row[2], .......},
          {"column0":row[0], "column1":row[1], "column2":row[2], .......},
          {"column0":row[0], "column1":row[1], "column2":row[2], .......},
          {"column0":row[0], "column1":row[1], "column2":row[2], .......}
        ]
    """
    result = []
    for row in rows:
        data = dict(zip(cols, row))
        result.append(data)
    # return json.dumps(result, default=type_handler)
    return str(result)
    


@app.route('/')
def hello():
    """webserice test method
    """
    return 'Welcome Mysql Flask Demo'

@app.route('/test')
def test_get(date1):
    """ mysql test webservice '/test'
    """
    # create mysql connection
    
    conn = pymysql.connect(host=config._DB_CONF['host'], 
                           port=config._DB_CONF['port'], 
                           user=config._DB_CONF['user'], 
                           passwd=config._DB_CONF['passwd'], 
                           db=config._DB_CONF['db'],
                           charset='big5')
    cur = conn.cursor()
    
    sql="select * from maintain where `日期` =%s"
    cur.execute(sql,date1)
    
    # get all column names
    columns = [desc[0] for desc in cur.description]
    # get all data
    rows=cur.fetchall()
    
    # build json 
    result = rows_to_json(columns,rows)
    # print(result)
    
    cur.close()
    conn.close()

    return result
	
@app.errorhandler(500)
def server_error(e):
    logging.exception('An error occurred during a request.')
    return """
    An internal error occurred: <pre>{}</pre>
    See logs for full stacktrace.
    """.format(e), 500

if __name__ == '__main__':
    # This is used when running locally. Gunicorn is used to run the
    #app.run(host='0.0.0.0', port=8080, debug=True, processes=4, threaded=True)
    app.config['JSON_AS_ASCII'] = False
    app.run(threaded=True,debug=True)
    # app.run(host='127.0.0.1', port=8080, debug=True)
## [END app]

