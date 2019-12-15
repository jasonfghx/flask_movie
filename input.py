from flask import Flask, render_template
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField
from wtforms.validators import DataRequired
import datetime

app = Flask(__name__)
app.config['SECRET_KEY'] = str(datetime.datetime)
# -------------------------------------------------
# CSRF是一種Web的攻擊手法，全稱是 Cross Site Request
# Forgery，跨站請求偽造，因此需要設定金鑰，而在Form表
# 單中需要構建一個隱藏欄位名為{{ runForm.csrf_token }}
# 此SECRET_KEY一定要設定，加上HTML Form表單亦要加上
# {{ runForm.csrf_token }}隱藏欄位，否則網頁出現錯誤：
# KeyError: 'A secret key is required to use CSRF.'
# -------------------------------------------------


class MyForm(FlaskForm):
   name = StringField("姓名：", validators=[DataRequired()])
   submit = SubmitField("確認")
   # ----------------------------------------------------------
   # 透過StringField及SubmitField分別渲染出Form中的
   # ＜input type="text"..＞以及＜input type="submit" value="確認"＞
   # ----------------------------------------------------------


@app.route('/')
def index():
   return render_template("index.html")
   # -------------------------------------------------
   # 利用@app.route('/')修飾詞來設定網址的路由機制。
   # 當連線到網址的根路徑時，ex：http://127.0.0.1:5000/
   # 則直接調用函式index()處理，而藉由render_template
   # 渲染模板綁定到index.html。index.html路徑位於專案
   # 根路徑之templates資料夾下
   # -------------------------------------------------


@app.route('/loginForm', methods=['GET', 'POST'])
def login():
   form = MyForm()
   if form.validate_on_submit():
      outStr = "＜h1＞輸入：{}".format(form.name.data) + "＜BR＞"
      outStr += "剖析分割字串結果：＜BR＞"
      for item in form.name.data:
         outStr += item + "＜BR＞"
      outStr += "＜/h1＞"
      return outStr
   else:
      return render_template('submit.html', runForm=form)
   # --------------------------------------------------
   # 由HTML之Form表單取得欄位資料被綁定在form.name
   # --------------------------------------------------
   # runForm是指要render渲染對應到submit.html文件中的
   # {{ runForm... }}，這個runForm名稱可以自訂
   # form是副程式login()範圍內運作所綁定的名稱，而runForm
   # 則是用來渲染HTML參數傳遞之使用，也就是說runForm生存
   # 範圍在HTML文件中，form生存在目前的login()副程式
   # --------------------------------------------------

if __name__ == '__main__':
   app.run(debug=True)