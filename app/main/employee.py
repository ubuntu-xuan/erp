# -*- coding:utf-8 -*-
__author__ = 'xuan'

from flask import render_template,request,current_app,redirect,url_for,send_from_directory
from  . import  main
from flask.ext.login import login_required,current_user,login_user,logout_user
import json,MySQLdb,sys
from  manage import  db  #不添加这个会不能更新数据库
from ..models import Performance_Related
import json
import time
import string
from manage import app
import os
import simplejson
from config import config

reload(sys) 
sys.setdefaultencoding('utf8') 


get_time = time.strftime('%Y-%m-%d',time.localtime(time.time()))
get_year = time.strftime('%Y',time.localtime(time.time()))
get_month = time.strftime('%m',time.localtime(time.time()))



def getCon():
    try:
        '''warning:这里需要设置为环境获取'''
        conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
        return conn  

    except:
        print 'MySQL connect fail...'
        import traceback
        traceback.print_exc()
        # 发生错误时会滚
        conn.rollback()


 
#一月
@main.route('/employee/performance_related_Jan',methods = ['GET','POST'])
@login_required
def performance_related_Jan():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'


    """建立表格ID与数据表ID的关联"""  




    # 连接数据库
    cursor = getCon().cursor() 
    cursor.execute("SELECT * from performance_related where month='01'  and name='%s' "%username)
    data = cursor.fetchall()
       
    if len(data) !=0:
	
        input_get=[]
        output_get=[]

        get_data=[]
        for i,w in enumerate(data):
            get_data.append(w[0])
      
        id_from_table = []
        id_from_mysql = []
	for i,datas in enumerate(get_data):
            id_from_table.append(i+1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table,id_from_mysql))
        print id_concect

    # 返回工作内容
    get_performance_number_data = request.form.get('get_performance_data', '')
    if any(get_performance_number_data):
        performance_number = json.loads(get_performance_number_data)["performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if performance_number != " ":

            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['content'] = row[4]

                jsonData.append(result)

	
        return json.dumps(jsonData)

    # 返回需协助工作内容
    get_assist_performance_number_data = request.form.get('get_assist_performance_data', '')
    if any(get_assist_performance_number_data):
        assist_performance_number = json.loads(get_assist_performance_number_data)["assist_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if assist_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(assist_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['assist_content'] = row[10]

                jsonData.append(result)

        return json.dumps(jsonData)


    # 完成情况
    get_complete_performance_number_data = request.form.get('get_complete_performance_data', '')
    if any(get_complete_performance_number_data):
        complete_performance_number = json.loads(get_complete_performance_number_data)["complete_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if complete_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(complete_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['complete'] = row[5]

                jsonData.append(result)

        return json.dumps(jsonData)

    # 备注
    get_remarks_performance_number_data = request.form.get('get_remarks_performance_data', '')
    if any(get_remarks_performance_number_data):
        remarks_performance_number = json.loads(get_remarks_performance_number_data)["remarks_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if remarks_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(remarks_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['remarks'] = row[9]

                jsonData.append(result)

        return json.dumps(jsonData)





    id = request.form.get('row[id]', '')
    date = request.form.get('row[date]', '')
    name= request.form.get('row[name]', '')
    place= request.form.get('row[place]', '')
    integration= request.form.get('row[integration]', '')
 
    year= request.form.get('row[year]', '') 
    month= request.form.get('row[month]', '') 



    if id !='':
        old_Value = Performance_Related.query.filter_by(id=id_concect[int(id)]).first()
        if  old_Value is not None:
            print "更新数据"
            Performance_Related.query.filter_by(id=id_concect[int(id)]).update({"date":date,"name":name,"place":place,"integration":integration,"year":year,"month":month}) 
        db.session.commit()    

    #增加  
    add =request.form.get('add','')
   
    if add == 'add_true':
        add_item = Performance_Related(date=get_time,name=username,place='',content='',complete='',assist_content='',chief_reply='',integration='',remarks='',year=get_year,month='01')

        db.session.add(add_item)
        db.session.commit() 


    '''删除记录'''
    def reset_delete(ids):
        #连接数据库
        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'
            import traceback
            traceback.print_exc()
            # 发生错误时会滚
            conn.rollback()

        print '删除记录',id_concect[int(ids)]
        cursor.execute("DELETE FROM performance_related WHERE id=%s"%id_concect[int(ids)])   
  
        cursor.close()
        conn.commit()
        conn.close()


    #删除数据
    ids = request.form.get('ids[]','')

    if ids != "":
        reset_delete(ids)


    # 接收表单传回的信息
    if request.method == 'POST':
        # 保存工作内容
        if "content_textarea" in request.form:
            work_content = request.form['content_textarea']
        else:
	        work_content = ""

        if "performance_number" in request.form:
            performance_number = request.form['performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(performance_number)]).update({"content":work_content })
	    	    db.session.commit()
        else:
			performance_number = ""



        # 保存需协助工作内容
        if "assist_content_textarea" in request.form:
            assist_work_content = request.form['assist_content_textarea']
        else:
	        assist_work_content = ""

        if "assist_performance_number" in request.form:
            assist_performance_number = request.form['assist_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]).update({"assist_content":assist_work_content })
	    	    db.session.commit()
        else:
			assist_performance_number = ""

        # 完成情况
        if "complete_content_textarea" in request.form:
            complete_content = request.form['complete_content_textarea']
        else:
	        complete_content = ""

        if "complete_performance_number" in request.form:
            complete_performance_number = request.form['complete_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]).update({"complete":complete_content })
	    	    db.session.commit()
        else:
			complete_performance_number = ""

        # 备注
        if "remarks_content_textarea" in request.form:
            remarks_content = request.form['remarks_content_textarea']
        else:
	        remarks_content = ""

        if "remarks_performance_number" in request.form:
            remarks_performance_number = request.form['remarks_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]).update({"remarks":remarks_content })
	    	    db.session.commit()
        else:
			remarks_performance_number = ""




    return render_template("employee/performance-related-Jan.html")



@main.route('/employee/performance_related_Jan/return_json',methods = ['GET','POST'])
@login_required
def performance_related_Jan_return_json():
    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'
    #连接数据库
    cursor = getCon().cursor()

    cursor.execute("SELECT * from performance_related where month='01' and name='%s' "%username)
    data = cursor.fetchall()

    cursor.close()
    getCon().close() 

    jsonData = []

    for n,row  in enumerate(data):
        #print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['date'] = row[1].strftime('%Y-%m-%d')
        result['name'] = row[2]
        result['place'] = row[3]
        result['content'] = row[4]
        result['complete'] = row[5]
        result['integration'] = row[6]
        result['year'] = row[7]
        result['month'] = row[8]
        result['remarks'] = row[9]
        result['assist_content'] = row[10]
        result['chief_reply'] = row[11]
    
        jsonData.append(result)

    return json.dumps(jsonData)


#二月
@main.route('/employee/performance_related_Feb',methods = ['GET','POST'])
@login_required
def performance_related_Feb():
    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    """建立表格ID与数据表ID的关联"""  

    #连接数据库
    cursor = getCon().cursor() 
    cursor.execute("SELECT * from performance_related where month='02' and name='%s' "%username)
    data = cursor.fetchall()
       
    if len(data) !=0:
	
        input_get=[]
        output_get=[]

        get_data=[]
        for i,w in enumerate(data):
            get_data.append(w[0])
      
        id_from_table = []
        id_from_mysql = []
	for i,datas in enumerate(get_data):
            id_from_table.append(i+1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table,id_from_mysql))
        print id_concect

    # 返回工作内容
    get_performance_number_data = request.form.get('get_performance_data', '')
    if any(get_performance_number_data):
        performance_number = json.loads(get_performance_number_data)["performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if performance_number != " ":

            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['content'] = row[4]

                jsonData.append(result)

	
        return json.dumps(jsonData)

    # 返回需协助工作内容
    get_assist_performance_number_data = request.form.get('get_assist_performance_data', '')
    if any(get_assist_performance_number_data):
        assist_performance_number = json.loads(get_assist_performance_number_data)["assist_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if assist_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(assist_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['assist_content'] = row[10]

                jsonData.append(result)

        return json.dumps(jsonData)


    # 完成情况
    get_complete_performance_number_data = request.form.get('get_complete_performance_data', '')
    if any(get_complete_performance_number_data):
        complete_performance_number = json.loads(get_complete_performance_number_data)["complete_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if complete_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(complete_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['complete'] = row[5]

                jsonData.append(result)

        return json.dumps(jsonData)

    # 备注
    get_remarks_performance_number_data = request.form.get('get_remarks_performance_data', '')
    if any(get_remarks_performance_number_data):
        remarks_performance_number = json.loads(get_remarks_performance_number_data)["remarks_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if remarks_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(remarks_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['remarks'] = row[9]

                jsonData.append(result)

        return json.dumps(jsonData)


    id = request.form.get('row[id]', '')
    date = request.form.get('row[date]', '')
    name= request.form.get('row[name]', '')
    place= request.form.get('row[place]', '')
    integration= request.form.get('row[integration]', '') 
    year= request.form.get('row[year]', '') 
    month= request.form.get('row[month]', '') 
 


    #cursor.close()
    #getCon().close()

    if id !='':
        old_Value = Performance_Related.query.filter_by(id=id_concect[int(id)]).first()
        if  old_Value is not None:
            print "更新数据"
            Performance_Related.query.filter_by(id=id_concect[int(id)]).update({"date":date,"name":name,"place":place,"integration":integration,"year":year,"month":month}) 
        db.session.commit()   

    #增加  
    add =request.form.get('add','')
   
    if add == 'add_true':
        add_item = Performance_Related(date=get_time,name=username,place='',content='',complete='',assist_content='',chief_reply='',integration='',remarks='',year=get_year,month='02')

        db.session.add(add_item)
        db.session.commit() 


    '''删除记录'''
    def reset_delete(ids):
        #连接数据库
        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'
            import traceback
            traceback.print_exc()
            # 发生错误时会滚
            conn.rollback()

        print '删除记录',id_concect[int(ids)]
        cursor.execute("DELETE FROM performance_related WHERE id=%s"%id_concect[int(ids)])   
  
        cursor.close()
        conn.commit()
        conn.close()


    #删除数据
    ids = request.form.get('ids[]','')

    if ids != "":
        reset_delete(ids)

    # 接收表单传回的信息
    if request.method == 'POST':
        # 保存工作内容
        if "content_textarea" in request.form:
            work_content = request.form['content_textarea']
        else:
	        work_content = ""

        if "performance_number" in request.form:
            performance_number = request.form['performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(performance_number)]).update({"content":work_content })
	    	    db.session.commit()
        else:
			performance_number = ""



        # 保存需协助工作内容
        if "assist_content_textarea" in request.form:
            assist_work_content = request.form['assist_content_textarea']
        else:
	        assist_work_content = ""

        if "assist_performance_number" in request.form:
            assist_performance_number = request.form['assist_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]).update({"assist_content":assist_work_content })
	    	    db.session.commit()
        else:
			assist_performance_number = ""

        # 完成情况
        if "complete_content_textarea" in request.form:
            complete_content = request.form['complete_content_textarea']
        else:
	        complete_content = ""

        if "complete_performance_number" in request.form:
            complete_performance_number = request.form['complete_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]).update({"complete":complete_content })
	    	    db.session.commit()
        else:
			complete_performance_number = ""

        # 备注
        if "remarks_content_textarea" in request.form:
            remarks_content = request.form['remarks_content_textarea']
        else:
	        remarks_content = ""

        if "remarks_performance_number" in request.form:
            remarks_performance_number = request.form['remarks_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]).update({"remarks":remarks_content })
	    	    db.session.commit()
        else:
			remarks_performance_number = ""


    return render_template("employee/performance-related-Feb.html")

@main.route('/employee/performance_related_Feb/return_json',methods = ['GET','POST'])
@login_required
def performance_related_Feb_return_json():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    #连接数据库
    cursor = getCon().cursor()

    cursor.execute("SELECT * from performance_related where month='02' and name='%s' "%username)
    data = cursor.fetchall()

    cursor.close()
    getCon().close() 

    jsonData = []

    for n,row  in enumerate(data):
        #print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['date'] = row[1].strftime('%Y-%m-%d')
        result['name'] = row[2]
        result['place'] = row[3]
        result['content'] = row[4]
        result['complete'] = row[5]
        result['integration'] = row[6]
        result['year'] = row[7]
        result['month'] = row[8]
        result['remarks'] = row[9]
        result['assist_content'] = row[10]
        result['chief_reply'] = row[11]

    
        jsonData.append(result)

    return json.dumps(jsonData)


#三月
@main.route('/employee/performance_related_Mar',methods = ['GET','POST'])
@login_required
def performance_related_Mar():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    #连接数据库
    cursor = getCon().cursor() 
    cursor.execute("SELECT * from performance_related where month='03' and name='%s' "%username)
    data = cursor.fetchall()
       
    if len(data) !=0:
	
        input_get=[]
        output_get=[]

        get_data=[]
        for i,w in enumerate(data):
            get_data.append(w[0])
      
        id_from_table = []
        id_from_mysql = []
	for i,datas in enumerate(get_data):
            id_from_table.append(i+1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table,id_from_mysql))
        print id_concect


    # 返回工作内容
    get_performance_number_data = request.form.get('get_performance_data', '')
    if any(get_performance_number_data):
        performance_number = json.loads(get_performance_number_data)["performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if performance_number != " ":

            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['content'] = row[4]

                jsonData.append(result)

	
        return json.dumps(jsonData)

    # 返回需协助工作内容
    get_assist_performance_number_data = request.form.get('get_assist_performance_data', '')
    if any(get_assist_performance_number_data):
        assist_performance_number = json.loads(get_assist_performance_number_data)["assist_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if assist_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(assist_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['assist_content'] = row[10]

                jsonData.append(result)

        return json.dumps(jsonData)


    # 完成情况
    get_complete_performance_number_data = request.form.get('get_complete_performance_data', '')
    if any(get_complete_performance_number_data):
        complete_performance_number = json.loads(get_complete_performance_number_data)["complete_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if complete_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(complete_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['complete'] = row[5]

                jsonData.append(result)

        return json.dumps(jsonData)

    # 备注
    get_remarks_performance_number_data = request.form.get('get_remarks_performance_data', '')
    if any(get_remarks_performance_number_data):
        remarks_performance_number = json.loads(get_remarks_performance_number_data)["remarks_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if remarks_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(remarks_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['remarks'] = row[9]

                jsonData.append(result)

        return json.dumps(jsonData)

    id = request.form.get('row[id]', '')
    date = request.form.get('row[date]', '')
    name= request.form.get('row[name]', '')
    place= request.form.get('row[place]', '')
    integration= request.form.get('row[integration]', '') 
    year= request.form.get('row[year]', '') 
    month= request.form.get('row[month]', '') 
 
    """建立表格ID与数据表ID的关联"""  


    if id !='':
        old_Value = Performance_Related.query.filter_by(id=id_concect[int(id)]).first()
        if  old_Value is not None:
            print "更新数据"
            Performance_Related.query.filter_by(id=id_concect[int(id)]).update({"date":date,"name":name,"place":place,"integration":integration,"year":year,"month":month}) 
        db.session.commit()    

    #增加  
    add =request.form.get('add','')
   
    if add == 'add_true':
        add_item = Performance_Related(date=get_time,name=username,place='',content='',complete='',assist_content='',chief_reply='',integration='',remarks='',year=get_year,month='03')

        db.session.add(add_item)
        db.session.commit() 


    '''删除记录'''
    def reset_delete(ids):
        #连接数据库
        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'
            import traceback
            traceback.print_exc()
            # 发生错误时会滚
            conn.rollback()

        print '删除记录',id_concect[int(ids)]
        cursor.execute("DELETE FROM performance_related WHERE id=%s"%id_concect[int(ids)])   
  
        cursor.close()
        conn.commit()
        conn.close()


    #删除数据
    ids = request.form.get('ids[]','')

    if ids != "":
        reset_delete(ids)

    # 接收表单传回的信息
    if request.method == 'POST':
        # 保存工作内容
        if "content_textarea" in request.form:
            work_content = request.form['content_textarea']
        else:
	        work_content = ""

        if "performance_number" in request.form:
            performance_number = request.form['performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(performance_number)]).update({"content":work_content })
	    	    db.session.commit()
        else:
			performance_number = ""



        # 保存需协助工作内容
        if "assist_content_textarea" in request.form:
            assist_work_content = request.form['assist_content_textarea']
        else:
	        assist_work_content = ""

        if "assist_performance_number" in request.form:
            assist_performance_number = request.form['assist_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]).update({"assist_content":assist_work_content })
	    	    db.session.commit()
        else:
			assist_performance_number = ""

        # 完成情况
        if "complete_content_textarea" in request.form:
            complete_content = request.form['complete_content_textarea']
        else:
	        complete_content = ""

        if "complete_performance_number" in request.form:
            complete_performance_number = request.form['complete_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]).update({"complete":complete_content })
	    	    db.session.commit()
        else:
			complete_performance_number = ""

        # 备注
        if "remarks_content_textarea" in request.form:
            remarks_content = request.form['remarks_content_textarea']
        else:
	        remarks_content = ""

        if "remarks_performance_number" in request.form:
            remarks_performance_number = request.form['remarks_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]).update({"remarks":remarks_content })
	    	    db.session.commit()
        else:
			remarks_performance_number = ""


    return render_template("employee/performance-related-Mar.html")



@main.route('/employee/performance_related_Mar/return_json',methods = ['GET','POST'])
@login_required
def performance_related_Mar_return_json():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    #连接数据库
    cursor = getCon().cursor()

    cursor.execute("SELECT * from performance_related where month='03' and name='%s' "%username)
    data = cursor.fetchall()

    cursor.close()
    getCon().close() 

    jsonData = []

    for n,row  in enumerate(data):
        #print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['date'] = row[1].strftime('%Y-%m-%d')
        result['name'] = row[2]
        result['place'] = row[3]
        result['content'] = row[4]
        result['complete'] = row[5]
        result['integration'] = row[6]
        result['year'] = row[7]
        result['month'] = row[8]
        result['remarks'] = row[9]
        result['assist_content'] = row[10]
        result['chief_reply'] = row[11]
    
        jsonData.append(result)

    return json.dumps(jsonData)


#四月
@main.route('/employee/performance_related_Apr',methods = ['GET','POST'])
@login_required
def performance_related_Apr():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    """建立表格ID与数据表ID的关联"""  

    #连接数据库
    cursor = getCon().cursor() 
    cursor.execute("SELECT * from performance_related where month='04' and name='%s' "%username)
    data = cursor.fetchall()
       
    if len(data) !=0:
	
        input_get=[]
        output_get=[]

        get_data=[]
        for i,w in enumerate(data):
            get_data.append(w[0])
      
        id_from_table = []
        id_from_mysql = []
	for i,datas in enumerate(get_data):
            id_from_table.append(i+1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table,id_from_mysql))
        print id_concect

    # 返回工作内容
    get_performance_number_data = request.form.get('get_performance_data', '')
    if any(get_performance_number_data):
        performance_number = json.loads(get_performance_number_data)["performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if performance_number != " ":

            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['content'] = row[4]

                jsonData.append(result)

	
        return json.dumps(jsonData)

    # 返回需协助工作内容
    get_assist_performance_number_data = request.form.get('get_assist_performance_data', '')
    if any(get_assist_performance_number_data):
        assist_performance_number = json.loads(get_assist_performance_number_data)["assist_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if assist_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(assist_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['assist_content'] = row[10]

                jsonData.append(result)

        return json.dumps(jsonData)


    # 完成情况
    get_complete_performance_number_data = request.form.get('get_complete_performance_data', '')
    if any(get_complete_performance_number_data):
        complete_performance_number = json.loads(get_complete_performance_number_data)["complete_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if complete_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(complete_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['complete'] = row[5]

                jsonData.append(result)

        return json.dumps(jsonData)

    # 备注
    get_remarks_performance_number_data = request.form.get('get_remarks_performance_data', '')
    if any(get_remarks_performance_number_data):
        remarks_performance_number = json.loads(get_remarks_performance_number_data)["remarks_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if remarks_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(remarks_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['remarks'] = row[9]

                jsonData.append(result)

        return json.dumps(jsonData)

    id = request.form.get('row[id]', '')
    date = request.form.get('row[date]', '')
    name= request.form.get('row[name]', '')
    place= request.form.get('row[place]', '') 
    integration= request.form.get('row[integration]', '')  
    year= request.form.get('row[year]', '') 
    month= request.form.get('row[month]', '') 
 



    if id !='':
        old_Value = Performance_Related.query.filter_by(id=id_concect[int(id)]).first()
        if  old_Value is not None:
            print "更新数据"
            Performance_Related.query.filter_by(id=id_concect[int(id)]).update({"date":date,"name":name,"place":place,"integration":integration,"year":year,"month":month}) 
        db.session.commit()    

    #增加  
    add =request.form.get('add','')
   
    if add == 'add_true':
        add_item = Performance_Related(date=get_time,name=username,place='',content='',complete='',assist_content='',chief_reply='',integration='',remarks='',year=get_year,month='04')

        db.session.add(add_item)
        db.session.commit() 


    '''删除记录'''
    def reset_delete(ids):
        #连接数据库
        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'
            import traceback
            traceback.print_exc()
            # 发生错误时会滚
            conn.rollback()

        print '删除记录',id_concect[int(ids)]
        cursor.execute("DELETE FROM performance_related WHERE id=%s"%id_concect[int(ids)])   
  
        cursor.close()
        conn.commit()
        conn.close()


    #删除数据
    ids = request.form.get('ids[]','')

    if ids != "":
        reset_delete(ids)

    # 接收表单传回的信息
    if request.method == 'POST':
        # 保存工作内容
        if "content_textarea" in request.form:
            work_content = request.form['content_textarea']
        else:
	        work_content = ""

        if "performance_number" in request.form:
            performance_number = request.form['performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(performance_number)]).update({"content":work_content })
	    	    db.session.commit()
        else:
			performance_number = ""



        # 保存需协助工作内容
        if "assist_content_textarea" in request.form:
            assist_work_content = request.form['assist_content_textarea']
        else:
	        assist_work_content = ""

        if "assist_performance_number" in request.form:
            assist_performance_number = request.form['assist_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]).update({"assist_content":assist_work_content })
	    	    db.session.commit()
        else:
			assist_performance_number = ""

        # 完成情况
        if "complete_content_textarea" in request.form:
            complete_content = request.form['complete_content_textarea']
        else:
	        complete_content = ""

        if "complete_performance_number" in request.form:
            complete_performance_number = request.form['complete_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]).update({"complete":complete_content })
	    	    db.session.commit()
        else:
			complete_performance_number = ""

        # 备注
        if "remarks_content_textarea" in request.form:
            remarks_content = request.form['remarks_content_textarea']
        else:
	        remarks_content = ""

        if "remarks_performance_number" in request.form:
            remarks_performance_number = request.form['remarks_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]).update({"remarks":remarks_content })
	    	    db.session.commit()
        else:
			remarks_performance_number = ""



    return render_template("employee/performance-related-Apr.html")


@main.route('/employee/performance_related_Apr/return_json',methods = ['GET','POST'])
@login_required
def performance_related_Apr_return_json():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    #连接数据库
    cursor = getCon().cursor()

    cursor.execute("SELECT * from performance_related where month='04' and name='%s' "%username)
    data = cursor.fetchall()

    cursor.close()
    getCon().close() 

    jsonData = []

    for n,row  in enumerate(data):
        #print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['date'] = row[1].strftime('%Y-%m-%d')
        result['name'] = row[2]
        result['place'] = row[3]
        result['content'] = row[4]
        result['complete'] = row[5]
        result['integration'] = row[6]
        result['year'] = row[7]
        result['month'] = row[8]
        result['remarks'] = row[9]
        result['assist_content'] = row[10]
        result['chief_reply'] = row[11]
    
        jsonData.append(result)

    return json.dumps(jsonData)


#五月
@main.route('/employee/performance_related_May',methods = ['GET','POST'])
@login_required
def performance_related_May():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    """建立表格ID与数据表ID的关联"""  

    #连接数据库
    cursor = getCon().cursor() 
    cursor.execute("SELECT * from performance_related where month='05' and name='%s' "%username)
    data = cursor.fetchall()
       
    if len(data) !=0:
	
        input_get=[]
        output_get=[]

        get_data=[]
        for i,w in enumerate(data):
            get_data.append(w[0])
      
        id_from_table = []
        id_from_mysql = []
	for i,datas in enumerate(get_data):
            id_from_table.append(i+1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table,id_from_mysql))

    # 返回工作内容
    get_performance_number_data = request.form.get('get_performance_data', '')
    if any(get_performance_number_data):
        performance_number = json.loads(get_performance_number_data)["performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if performance_number != " ":

            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['content'] = row[4]

                jsonData.append(result)

	
        return json.dumps(jsonData)

    # 返回需协助工作内容
    get_assist_performance_number_data = request.form.get('get_assist_performance_data', '')
    if any(get_assist_performance_number_data):
        assist_performance_number = json.loads(get_assist_performance_number_data)["assist_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if assist_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(assist_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['assist_content'] = row[10]

                jsonData.append(result)

        return json.dumps(jsonData)


    # 完成情况
    get_complete_performance_number_data = request.form.get('get_complete_performance_data', '')
    if any(get_complete_performance_number_data):
        complete_performance_number = json.loads(get_complete_performance_number_data)["complete_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if complete_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(complete_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['complete'] = row[5]

                jsonData.append(result)

        return json.dumps(jsonData)

    # 备注
    get_remarks_performance_number_data = request.form.get('get_remarks_performance_data', '')
    if any(get_remarks_performance_number_data):
        remarks_performance_number = json.loads(get_remarks_performance_number_data)["remarks_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if remarks_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(remarks_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['remarks'] = row[9]

                jsonData.append(result)

        return json.dumps(jsonData)


    id = request.form.get('row[id]', '')
    date = request.form.get('row[date]', '')
    name= request.form.get('row[name]', '')
    place= request.form.get('row[place]', '') 
    integration= request.form.get('row[integration]', '') 
    year= request.form.get('row[year]', '') 
    month= request.form.get('row[month]', '') 
 



    if id !='':
        old_Value = Performance_Related.query.filter_by(id=id_concect[int(id)]).first()
        if  old_Value is not None:
            print "更新数据"
            Performance_Related.query.filter_by(id=id_concect[int(id)]).update({"date":date,"name":name,"place":place,"integration":integration,"year":year,"month":month}) 
        db.session.commit() 
    #增加  
    add =request.form.get('add','')
   
    if add == 'add_true':
        add_item = Performance_Related(date=get_time,name=username,place='',content='',complete='',assist_content='',chief_reply='',integration='',remarks='',year=get_year,month='05')

        db.session.add(add_item)
        db.session.commit() 


    '''删除记录'''
    def reset_delete(ids):
        #连接数据库
        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'
            import traceback
            traceback.print_exc()
            # 发生错误时会滚
            conn.rollback()

        print '删除记录',id_concect[int(ids)]
        cursor.execute("DELETE FROM performance_related WHERE id=%s"%id_concect[int(ids)])   
  
        cursor.close()
        conn.commit()
        conn.close()


    #删除数据
    ids = request.form.get('ids[]','')

    if ids != "":
        reset_delete(ids)
    # 接收表单传回的信息
    if request.method == 'POST':
        # 保存工作内容
        if "content_textarea" in request.form:
            work_content = request.form['content_textarea']
        else:
	        work_content = ""

        if "performance_number" in request.form:
            performance_number = request.form['performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(performance_number)]).update({"content":work_content })
	    	    db.session.commit()
        else:
			performance_number = ""



        # 保存需协助工作内容
        if "assist_content_textarea" in request.form:
            assist_work_content = request.form['assist_content_textarea']
        else:
	        assist_work_content = ""

        if "assist_performance_number" in request.form:
            assist_performance_number = request.form['assist_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]).update({"assist_content":assist_work_content })
	    	    db.session.commit()
        else:
			assist_performance_number = ""

        # 完成情况
        if "complete_content_textarea" in request.form:
            complete_content = request.form['complete_content_textarea']
        else:
	        complete_content = ""

        if "complete_performance_number" in request.form:
            complete_performance_number = request.form['complete_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]).update({"complete":complete_content })
	    	    db.session.commit()
        else:
			complete_performance_number = ""

        # 备注
        if "remarks_content_textarea" in request.form:
            remarks_content = request.form['remarks_content_textarea']
        else:
	        remarks_content = ""

        if "remarks_performance_number" in request.form:
            remarks_performance_number = request.form['remarks_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]).update({"remarks":remarks_content })
	    	    db.session.commit()
        else:
			remarks_performance_number = ""


    return render_template("employee/performance-related-May.html")


@main.route('/employee/performance_related_May/return_json',methods = ['GET','POST'])
@login_required
def performance_related_May_return_json():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    #连接数据库
    cursor = getCon().cursor()

    cursor.execute("SELECT * from performance_related where month='05' and name='%s' "%username)
    data = cursor.fetchall()

    cursor.close()
    getCon().close() 

    jsonData = []

    for n,row  in enumerate(data):
        #print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['date'] = row[1].strftime('%Y-%m-%d')
        result['name'] = row[2]
        result['place'] = row[3]
        result['content'] = row[4]
        result['complete'] = row[5]
        result['integration'] = row[6]
        result['year'] = row[7]
        result['month'] = row[8]
        result['remarks'] = row[9]
        result['assist_content'] = row[10]
        result['chief_reply'] = row[11]
    
        jsonData.append(result)

    return json.dumps(jsonData)

#六月
@main.route('/employee/performance_related_Jun',methods = ['GET','POST'])
@login_required
def performance_related_Jun():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    """建立表格ID与数据表ID的关联"""  

    #连接数据库
    cursor = getCon().cursor() 
    cursor.execute("SELECT * from performance_related where month='06' and name='%s' "%username)
    data = cursor.fetchall()
       
    if len(data) !=0:
	
        input_get=[]
        output_get=[]

        get_data=[]
        for i,w in enumerate(data):
            get_data.append(w[0])
      
        id_from_table = []
        id_from_mysql = []
	for i,datas in enumerate(get_data):
            id_from_table.append(i+1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table,id_from_mysql))
        print id_concect

    # 返回工作内容
    get_performance_number_data = request.form.get('get_performance_data', '')
    if any(get_performance_number_data):
        performance_number = json.loads(get_performance_number_data)["performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if performance_number != " ":

            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['content'] = row[4]

                jsonData.append(result)

	
        return json.dumps(jsonData)

    # 返回需协助工作内容
    get_assist_performance_number_data = request.form.get('get_assist_performance_data', '')
    if any(get_assist_performance_number_data):
        assist_performance_number = json.loads(get_assist_performance_number_data)["assist_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if assist_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(assist_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['assist_content'] = row[10]

                jsonData.append(result)

        return json.dumps(jsonData)


    # 完成情况
    get_complete_performance_number_data = request.form.get('get_complete_performance_data', '')
    if any(get_complete_performance_number_data):
        complete_performance_number = json.loads(get_complete_performance_number_data)["complete_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if complete_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(complete_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['complete'] = row[5]

                jsonData.append(result)

        return json.dumps(jsonData)

    # 备注
    get_remarks_performance_number_data = request.form.get('get_remarks_performance_data', '')
    if any(get_remarks_performance_number_data):
        remarks_performance_number = json.loads(get_remarks_performance_number_data)["remarks_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if remarks_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(remarks_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['remarks'] = row[9]

                jsonData.append(result)

        return json.dumps(jsonData)


    id = request.form.get('row[id]', '')
    date = request.form.get('row[date]', '')
    name= request.form.get('row[name]', '')
    place= request.form.get('row[place]', '')
    integration= request.form.get('row[integration]', '') 
    year= request.form.get('row[year]', '') 
    month= request.form.get('row[month]', '') 
 



    if id !='':
        old_Value = Performance_Related.query.filter_by(id=id_concect[int(id)]).first()
        if  old_Value is not None:
            print "更新数据"
            Performance_Related.query.filter_by(id=id_concect[int(id)]).update({"date":date,"name":name,"place":place,"integration":integration,"year":year,"month":month}) 
        db.session.commit() 

    # 增加  
    add =request.form.get('add','')
   
    if add == 'add_true':
	print('add_true')
        add_item = Performance_Related(date=get_time,name=username,place='',content='',complete='',assist_content='',chief_reply='',integration='',remarks='',year=get_year,month='06')

        db.session.add(add_item)
        db.session.commit() 


    '''删除记录'''
    def reset_delete(ids):
        #连接数据库
        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'
            import traceback
            traceback.print_exc()
            # 发生错误时会滚
            conn.rollback()

        print '删除记录',id_concect[int(ids)]
        cursor.execute("DELETE FROM performance_related WHERE id=%s"%id_concect[int(ids)])   
  
        cursor.close()
        conn.commit()
        conn.close()


    #删除数据
    ids = request.form.get('ids[]','')

    if ids != "":
        reset_delete(ids)

    # 接收表单传回的信息
    if request.method == 'POST':
        # 保存工作内容
        if "content_textarea" in request.form:
            work_content = request.form['content_textarea']
        else:
	        work_content = ""

        if "performance_number" in request.form:
            performance_number = request.form['performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(performance_number)]).update({"content":work_content })
	    	    db.session.commit()
        else:
			performance_number = ""



        # 保存需协助工作内容
        if "assist_content_textarea" in request.form:
            assist_work_content = request.form['assist_content_textarea']
        else:
	        assist_work_content = ""

        if "assist_performance_number" in request.form:
            assist_performance_number = request.form['assist_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]).update({"assist_content":assist_work_content })
	    	    db.session.commit()
        else:
			assist_performance_number = ""

        # 完成情况
        if "complete_content_textarea" in request.form:
            complete_content = request.form['complete_content_textarea']
        else:
	        complete_content = ""

        if "complete_performance_number" in request.form:
            complete_performance_number = request.form['complete_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]).update({"complete":complete_content })
	    	    db.session.commit()
        else:
			complete_performance_number = ""

        # 备注
        if "remarks_content_textarea" in request.form:
            remarks_content = request.form['remarks_content_textarea']
        else:
	        remarks_content = ""

        if "remarks_performance_number" in request.form:
            remarks_performance_number = request.form['remarks_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]).update({"remarks":remarks_content })
	    	    db.session.commit()
        else:
			remarks_performance_number = ""


    return render_template("employee/performance-related-Jun.html")


@main.route('/employee/performance_related_Jun/return_json',methods = ['GET','POST'])
@login_required
def performance_related_Jun_return_json():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    #连接数据库
    cursor = getCon().cursor()

    cursor.execute("SELECT * from performance_related where month='06' and name='%s' "%username)
    data = cursor.fetchall()

    cursor.close()
    getCon().close() 

    jsonData = []

    for n,row  in enumerate(data):
        #print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['date'] = row[1].strftime('%Y-%m-%d')
        result['name'] = row[2]
        result['place'] = row[3]
        result['content'] = row[4]
        result['complete'] = row[5]
        result['integration'] = row[6]
        result['year'] = row[7]
        result['month'] = row[8]
        result['remarks'] = row[9]
        result['assist_content'] = row[10]
        result['chief_reply'] = row[11]
    
        jsonData.append(result)

    return json.dumps(jsonData)


#七月
@main.route('/employee/performance_related_Jul',methods = ['GET','POST'])
@login_required
def performance_related_Jul():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    """建立表格ID与数据表ID的关联"""  

    #连接数据库
    cursor = getCon().cursor() 
    cursor.execute("SELECT * from performance_related where month='07' and name='%s' "%username)
    data = cursor.fetchall()
       
    if len(data) !=0:
	
        input_get=[]
        output_get=[]

        get_data=[]
        for i,w in enumerate(data):
            get_data.append(w[0])
      
        id_from_table = []
        id_from_mysql = []
	for i,datas in enumerate(get_data):
            id_from_table.append(i+1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table,id_from_mysql))
        print id_concect


    # 返回工作内容
    get_performance_number_data = request.form.get('get_performance_data', '')
    if any(get_performance_number_data):
        performance_number = json.loads(get_performance_number_data)["performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if performance_number != " ":

            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['content'] = row[4]

                jsonData.append(result)

	
        return json.dumps(jsonData)

    # 返回需协助工作内容
    get_assist_performance_number_data = request.form.get('get_assist_performance_data', '')
    if any(get_assist_performance_number_data):
        assist_performance_number = json.loads(get_assist_performance_number_data)["assist_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if assist_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(assist_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['assist_content'] = row[10]

                jsonData.append(result)

        return json.dumps(jsonData)


    # 完成情况
    get_complete_performance_number_data = request.form.get('get_complete_performance_data', '')
    if any(get_complete_performance_number_data):
        complete_performance_number = json.loads(get_complete_performance_number_data)["complete_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if complete_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(complete_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['complete'] = row[5]

                jsonData.append(result)

        return json.dumps(jsonData)

    # 备注
    get_remarks_performance_number_data = request.form.get('get_remarks_performance_data', '')
    if any(get_remarks_performance_number_data):
        remarks_performance_number = json.loads(get_remarks_performance_number_data)["remarks_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if remarks_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(remarks_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['remarks'] = row[9]

                jsonData.append(result)

        return json.dumps(jsonData)

    id = request.form.get('row[id]', '')
    date = request.form.get('row[date]', '')
    name= request.form.get('row[name]', '')
    place= request.form.get('row[place]', '') 
    integration= request.form.get('row[integration]', '') 
    year= request.form.get('row[year]', '') 
    month= request.form.get('row[month]', '') 
 



    if id !='':
        old_Value = Performance_Related.query.filter_by(id=id_concect[int(id)]).first()
        if  old_Value is not None:
            print "更新数据"
            Performance_Related.query.filter_by(id=id_concect[int(id)]).update({"date":date,"name":name,"place":place,"integration":integration,"year":year,"month":month}) 
        db.session.commit()   

    #增加  
    add =request.form.get('add','')
   
    if add == 'add_true':
        add_item = Performance_Related(date=get_time,name=username,place='',content='',complete='',assist_content='',chief_reply='',integration='',remarks='',year=get_year,month='07')

        db.session.add(add_item)
        db.session.commit() 


    '''删除记录'''
    def reset_delete(ids):
        #连接数据库
        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'
            import traceback
            traceback.print_exc()
            # 发生错误时会滚
            conn.rollback()

        print '删除记录',id_concect[int(ids)]
        cursor.execute("DELETE FROM performance_related WHERE id=%s"%id_concect[int(ids)])   
  
        cursor.close()
        conn.commit()
        conn.close()


    #删除数据
    ids = request.form.get('ids[]','')

    if ids != "":
        reset_delete(ids)

    # 接收表单传回的信息
    if request.method == 'POST':
        # 保存工作内容
        if "content_textarea" in request.form:
            work_content = request.form['content_textarea']
        else:
	        work_content = ""

        if "performance_number" in request.form:
            performance_number = request.form['performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(performance_number)]).update({"content":work_content })
	    	    db.session.commit()
        else:
			performance_number = ""

        # 保存需协助工作内容
        if "assist_content_textarea" in request.form:
            assist_work_content = request.form['assist_content_textarea']
        else:
	        assist_work_content = ""

        if "assist_performance_number" in request.form:
            assist_performance_number = request.form['assist_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]).update({"assist_content":assist_work_content })
	    	    db.session.commit()
        else:
			assist_performance_number = ""

        # 完成情况
        if "complete_content_textarea" in request.form:
            complete_content = request.form['complete_content_textarea']
        else:
	        complete_content = ""

        if "complete_performance_number" in request.form:
            complete_performance_number = request.form['complete_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]).update({"complete":complete_content })
	    	    db.session.commit()
        else:
			complete_performance_number = ""

        # 备注
        if "remarks_content_textarea" in request.form:
            remarks_content = request.form['remarks_content_textarea']
        else:
	        remarks_content = ""

        if "remarks_performance_number" in request.form:
            remarks_performance_number = request.form['remarks_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]).update({"remarks":remarks_content })
	    	    db.session.commit()
        else:
			remarks_performance_number = ""


    return render_template("employee/performance-related-Jul.html")



@main.route('/employee/performance_related_Jul/return_json',methods = ['GET','POST'])
@login_required
def performance_related_Jul_return_json():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    #连接数据库
    cursor = getCon().cursor()

    cursor.execute("SELECT * from performance_related where month='07' and name='%s' "%username)
    data = cursor.fetchall()

    cursor.close()
    getCon().close() 

    jsonData = []

    for n,row  in enumerate(data):
        #print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['date'] = row[1].strftime('%Y-%m-%d')
        result['name'] = row[2]
        result['place'] = row[3]
        result['content'] = row[4]
        result['complete'] = row[5]
        result['integration'] = row[6]
        result['year'] = row[7]
        result['month'] = row[8]
        result['remarks'] = row[9]
        result['assist_content'] = row[10]
        result['chief_reply'] = row[11]
    
        jsonData.append(result)

    return json.dumps(jsonData)

#八月
@main.route('/employee/performance_related_Aug',methods = ['GET','POST'])
@login_required
def performance_related_Aug():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

 
 
    """建立表格ID与数据表ID的关联"""  

    #连接数据库
    cursor = getCon().cursor() 
    cursor.execute("SELECT * from performance_related where month='08' and name='%s' "%username)
    data = cursor.fetchall()
       
    if len(data) !=0:
	
        input_get=[]
        output_get=[]

        get_data=[]
        for i,w in enumerate(data):
            get_data.append(w[0])
      
        id_from_table = []
        id_from_mysql = []
	for i,datas in enumerate(get_data):
            id_from_table.append(i+1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table,id_from_mysql))

    # 返回工作内容
    get_performance_number_data = request.form.get('get_performance_data', '')
    if any(get_performance_number_data):
        performance_number = json.loads(get_performance_number_data)["performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if performance_number != " ":

            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['content'] = row[4]

                jsonData.append(result)

	
        return json.dumps(jsonData)

    # 返回需协助工作内容
    get_assist_performance_number_data = request.form.get('get_assist_performance_data', '')
    if any(get_assist_performance_number_data):
        assist_performance_number = json.loads(get_assist_performance_number_data)["assist_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if assist_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(assist_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['assist_content'] = row[10]

                jsonData.append(result)

        return json.dumps(jsonData)


    # 完成情况
    get_complete_performance_number_data = request.form.get('get_complete_performance_data', '')
    if any(get_complete_performance_number_data):
        complete_performance_number = json.loads(get_complete_performance_number_data)["complete_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if complete_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(complete_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['complete'] = row[5]

                jsonData.append(result)

        return json.dumps(jsonData)

    # 备注
    get_remarks_performance_number_data = request.form.get('get_remarks_performance_data', '')
    if any(get_remarks_performance_number_data):
        remarks_performance_number = json.loads(get_remarks_performance_number_data)["remarks_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if remarks_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(remarks_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['remarks'] = row[9]

                jsonData.append(result)

        return json.dumps(jsonData)

    id = request.form.get('row[id]', '')
    date = request.form.get('row[date]', '')
    name= request.form.get('row[name]', '')
    place= request.form.get('row[place]', '')
    integration= request.form.get('row[integration]', '')  
    year= request.form.get('row[year]', '') 
    month= request.form.get('row[month]', '')


    if id !='':
        old_Value = Performance_Related.query.filter_by(id=id_concect[int(id)]).first()
        if  old_Value is not None:
            print "更新数据"
            Performance_Related.query.filter_by(id=id_concect[int(id)]).update({"date":date,"name":name,"place":place,"integration":integration,"year":year,"month":month}) 
        db.session.commit()   

    #增加  
    add =request.form.get('add','')
   
    if add == 'add_true':
        add_item = Performance_Related(date=get_time,name=username,place='',content='',complete='',assist_content='',chief_reply='',integration='',remarks='',year=get_year,month='08')

        db.session.add(add_item)
        db.session.commit() 


    '''删除记录'''
    def reset_delete(ids):
        #连接数据库
        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'
            import traceback
            traceback.print_exc()
            # 发生错误时会滚
            conn.rollback()

        print '删除记录',id_concect[int(ids)]
        cursor.execute("DELETE FROM performance_related WHERE id=%s"%id_concect[int(ids)])   
  
        cursor.close()
        conn.commit()
        conn.close()


    #删除数据
    ids = request.form.get('ids[]','')

    if ids != "":
        reset_delete(ids)

    # 接收表单传回的信息
    if request.method == 'POST':
        # 保存工作内容
        if "content_textarea" in request.form:
            work_content = request.form['content_textarea']
        else:
	        work_content = ""

        if "performance_number" in request.form:
            performance_number = request.form['performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(performance_number)]).update({"content":work_content })
	    	    db.session.commit()
        else:
			performance_number = ""



        # 保存需协助工作内容
        if "assist_content_textarea" in request.form:
            assist_work_content = request.form['assist_content_textarea']
        else:
	        assist_work_content = ""

        if "assist_performance_number" in request.form:
            assist_performance_number = request.form['assist_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]).update({"assist_content":assist_work_content })
	    	    db.session.commit()
        else:
			assist_performance_number = ""

        # 完成情况
        if "complete_content_textarea" in request.form:
            complete_content = request.form['complete_content_textarea']
        else:
	        complete_content = ""

        if "complete_performance_number" in request.form:
            complete_performance_number = request.form['complete_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]).update({"complete":complete_content })
	    	    db.session.commit()
        else:
			complete_performance_number = ""

        # 备注
        if "remarks_content_textarea" in request.form:
            remarks_content = request.form['remarks_content_textarea']
        else:
	        remarks_content = ""

        if "remarks_performance_number" in request.form:
            remarks_performance_number = request.form['remarks_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]).update({"remarks":remarks_content })
	    	    db.session.commit()
        else:
			remarks_performance_number = ""


    return render_template("employee/performance-related-Aug.html")



@main.route('/employee/performance_related_Aug/return_json',methods = ['GET','POST'])
@login_required
def performance_related_Aug_return_json():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    #连接数据库
    cursor = getCon().cursor()

    cursor.execute("SELECT * from performance_related where month='08' and name='%s' "%username)
    data = cursor.fetchall()

    cursor.close()
    getCon().close() 

    jsonData = []

    for n,row  in enumerate(data):
        #print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['date'] = row[1].strftime('%Y-%m-%d')
        result['name'] = row[2]
        result['place'] = row[3]
        result['content'] = row[4]
        result['complete'] = row[5]
        result['integration'] = row[6]
        result['year'] = row[7]
        result['month'] = row[8]
        result['remarks'] = row[9]
        result['assist_content'] = row[10]
        result['chief_reply'] = row[11]
    
        jsonData.append(result)

    return json.dumps(jsonData)

#九月
@main.route('/employee/performance_related_Sep',methods = ['GET','POST'])
@login_required
def performance_related_Sep():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

 
 
    """建立表格ID与数据表ID的关联"""  

    #连接数据库
    cursor = getCon().cursor() 
    cursor.execute("SELECT * from performance_related where month='09' and name='%s' "%username)
    data = cursor.fetchall()
       
    if len(data) !=0:
	
        input_get=[]
        output_get=[]

        get_data=[]
        for i,w in enumerate(data):
            get_data.append(w[0])
      
        id_from_table = []
        id_from_mysql = []
	for i,datas in enumerate(get_data):
            id_from_table.append(i+1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table,id_from_mysql))

    # 返回工作内容
    get_performance_number_data = request.form.get('get_performance_data', '')
    if any(get_performance_number_data):
        performance_number = json.loads(get_performance_number_data)["performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if performance_number != " ":

            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['content'] = row[4]

                jsonData.append(result)

	
        return json.dumps(jsonData)

    # 返回需协助工作内容
    get_assist_performance_number_data = request.form.get('get_assist_performance_data', '')
    if any(get_assist_performance_number_data):
        assist_performance_number = json.loads(get_assist_performance_number_data)["assist_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if assist_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(assist_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['assist_content'] = row[10]

                jsonData.append(result)

        return json.dumps(jsonData)


    # 完成情况
    get_complete_performance_number_data = request.form.get('get_complete_performance_data', '')
    if any(get_complete_performance_number_data):
        complete_performance_number = json.loads(get_complete_performance_number_data)["complete_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if complete_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(complete_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['complete'] = row[5]

                jsonData.append(result)

        return json.dumps(jsonData)

    # 备注
    get_remarks_performance_number_data = request.form.get('get_remarks_performance_data', '')
    if any(get_remarks_performance_number_data):
        remarks_performance_number = json.loads(get_remarks_performance_number_data)["remarks_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if remarks_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(remarks_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['remarks'] = row[9]

                jsonData.append(result)

        return json.dumps(jsonData)


    id = request.form.get('row[id]', '')
    date = request.form.get('row[date]', '')
    name= request.form.get('row[name]', '')
    place= request.form.get('row[place]', '') 
    integration= request.form.get('row[integration]', '') 
    year= request.form.get('row[year]', '') 
    month= request.form.get('row[month]', '')

    if id !='':
        old_Value = Performance_Related.query.filter_by(id=id_concect[int(id)]).first()
        if  old_Value is not None:
            print "更新数据"
            Performance_Related.query.filter_by(id=id_concect[int(id)]).update({"date":date,"name":name,"place":place,"integration":integration,"year":year,"month":month}) 
        db.session.commit()   

    #增加  
    add =request.form.get('add','')
   
    if add == 'add_true':
        add_item = Performance_Related(date=get_time,name=username,place='',content='',complete='',assist_content='',chief_reply='',integration='',remarks='',year=get_year,month='09')

        db.session.add(add_item)
        db.session.commit() 


    '''删除记录'''
    def reset_delete(ids):
        #连接数据库
        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'
            import traceback
            traceback.print_exc()
            # 发生错误时会滚
            conn.rollback()

        print '删除记录',id_concect[int(ids)]
        cursor.execute("DELETE FROM performance_related WHERE id=%s"%id_concect[int(ids)])   
  
        cursor.close()
        conn.commit()
        conn.close()


    #删除数据
    ids = request.form.get('ids[]','')

    if ids != "":
        reset_delete(ids)
    # 接收表单传回的信息
    if request.method == 'POST':
        # 保存工作内容
        if "content_textarea" in request.form:
            work_content = request.form['content_textarea']
        else:
	        work_content = ""

        if "performance_number" in request.form:
            performance_number = request.form['performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(performance_number)]).update({"content":work_content })
	    	    db.session.commit()
        else:
			performance_number = ""



        # 保存需协助工作内容
        if "assist_content_textarea" in request.form:
            assist_work_content = request.form['assist_content_textarea']
        else:
	        assist_work_content = ""

        if "assist_performance_number" in request.form:
            assist_performance_number = request.form['assist_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]).update({"assist_content":assist_work_content })
	    	    db.session.commit()
        else:
			assist_performance_number = ""

        # 完成情况
        if "complete_content_textarea" in request.form:
            complete_content = request.form['complete_content_textarea']
        else:
	        complete_content = ""

        if "complete_performance_number" in request.form:
            complete_performance_number = request.form['complete_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]).update({"complete":complete_content })
	    	    db.session.commit()
        else:
			complete_performance_number = ""

        # 备注
        if "remarks_content_textarea" in request.form:
            remarks_content = request.form['remarks_content_textarea']
        else:
	        remarks_content = ""

        if "remarks_performance_number" in request.form:
            remarks_performance_number = request.form['remarks_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]).update({"remarks":remarks_content })
	    	    db.session.commit()
        else:
			remarks_performance_number = ""


    return render_template("employee/performance-related-Sep.html")



@main.route('/employee/performance_related_Sep/return_json',methods = ['GET','POST'])
@login_required
def performance_related_Sep_return_json():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    #连接数据库
    cursor = getCon().cursor()

    cursor.execute("SELECT * from performance_related where month='09' and name='%s' "%username)
    data = cursor.fetchall()

    cursor.close()
    getCon().close() 

    jsonData = []

    for n,row  in enumerate(data):
        #print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['date'] = row[1].strftime('%Y-%m-%d')
        result['name'] = row[2]
        result['place'] = row[3]
        result['content'] = row[4]
        result['complete'] = row[5]
        result['integration'] = row[6]
        result['year'] = row[7]
        result['month'] = row[8]
        result['remarks'] = row[9]
        result['assist_content'] = row[10]
        result['chief_reply'] = row[11]
    
        jsonData.append(result)

    return json.dumps(jsonData)

#十月
@main.route('/employee/performance_related_Oct',methods = ['GET','POST'])
@login_required
def performance_related_Oct():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'
 
    """建立表格ID与数据表ID的关联"""  

    #连接数据库
    cursor = getCon().cursor() 
    cursor.execute("SELECT * from performance_related where month='10' and name='%s' "%username)
    data = cursor.fetchall()
       
    if len(data) !=0:
	
        input_get=[]
        output_get=[]

        get_data=[]
        for i,w in enumerate(data):
            get_data.append(w[0])
      
        id_from_table = []
        id_from_mysql = []
	for i,datas in enumerate(get_data):
            id_from_table.append(i+1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table,id_from_mysql))
        print id_concect

    # 返回工作内容
    get_performance_number_data = request.form.get('get_performance_data', '')
    if any(get_performance_number_data):
        performance_number = json.loads(get_performance_number_data)["performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if performance_number != " ":

            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['content'] = row[4]

                jsonData.append(result)

	
        return json.dumps(jsonData)

    # 返回需协助工作内容
    get_assist_performance_number_data = request.form.get('get_assist_performance_data', '')
    if any(get_assist_performance_number_data):
        assist_performance_number = json.loads(get_assist_performance_number_data)["assist_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if assist_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(assist_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['assist_content'] = row[10]

                jsonData.append(result)

        return json.dumps(jsonData)


    # 完成情况
    get_complete_performance_number_data = request.form.get('get_complete_performance_data', '')
    if any(get_complete_performance_number_data):
        complete_performance_number = json.loads(get_complete_performance_number_data)["complete_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if complete_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(complete_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['complete'] = row[5]

                jsonData.append(result)

        return json.dumps(jsonData)

    # 备注
    get_remarks_performance_number_data = request.form.get('get_remarks_performance_data', '')
    if any(get_remarks_performance_number_data):
        remarks_performance_number = json.loads(get_remarks_performance_number_data)["remarks_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if remarks_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(remarks_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['remarks'] = row[9]

                jsonData.append(result)

        return json.dumps(jsonData)


    id = request.form.get('row[id]', '')
    date = request.form.get('row[date]', '')
    name= request.form.get('row[name]', '')
    place= request.form.get('row[place]', '') 
    integration= request.form.get('row[integration]', '') 
    year= request.form.get('row[year]', '') 
    month= request.form.get('row[month]', '') 


    if id !='':
        old_Value = Performance_Related.query.filter_by(id=id_concect[int(id)]).first()
        if  old_Value is not None:
            print "更新数据"
            Performance_Related.query.filter_by(id=id_concect[int(id)]).update({"date":date,"name":name,"place":place,"integration":integration,"year":year,"month":month}) 
        db.session.commit()       

    #增加  
    add =request.form.get('add','')
   
    if add == 'add_true':
        add_item = Performance_Related(date=get_time,name=username,place='',content='',complete='',assist_content='',chief_reply='',integration='',remarks='',year=get_year,month='10')

        db.session.add(add_item)
        db.session.commit() 


    '''删除记录'''
    def reset_delete(ids):
        #连接数据库
        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'
            import traceback
            traceback.print_exc()
            # 发生错误时会滚
            conn.rollback()

        print '删除记录',id_concect[int(ids)]
        cursor.execute("DELETE FROM performance_related WHERE id=%s"%id_concect[int(ids)])   
  
        cursor.close()
        conn.commit()
        conn.close()


    #删除数据
    ids = request.form.get('ids[]','')

    if ids != "":
        reset_delete(ids)

    # 接收表单传回的信息
    if request.method == 'POST':
        # 保存工作内容
        if "content_textarea" in request.form:
            work_content = request.form['content_textarea']
        else:
	        work_content = ""

        if "performance_number" in request.form:
            performance_number = request.form['performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(performance_number)]).update({"content":work_content })
	    	    db.session.commit()
        else:
			performance_number = ""



        # 保存需协助工作内容
        if "assist_content_textarea" in request.form:
            assist_work_content = request.form['assist_content_textarea']
        else:
	        assist_work_content = ""

        if "assist_performance_number" in request.form:
            assist_performance_number = request.form['assist_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]).update({"assist_content":assist_work_content })
	    	    db.session.commit()
        else:
			assist_performance_number = ""

        # 完成情况
        if "complete_content_textarea" in request.form:
            complete_content = request.form['complete_content_textarea']
        else:
	        complete_content = ""

        if "complete_performance_number" in request.form:
            complete_performance_number = request.form['complete_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]).update({"complete":complete_content })
	    	    db.session.commit()
        else:
			complete_performance_number = ""

        # 备注
        if "remarks_content_textarea" in request.form:
            remarks_content = request.form['remarks_content_textarea']
        else:
	        remarks_content = ""

        if "remarks_performance_number" in request.form:
            remarks_performance_number = request.form['remarks_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]).update({"remarks":remarks_content })
	    	    db.session.commit()
        else:
			remarks_performance_number = ""


    return render_template("employee/performance-related-Oct.html")



@main.route('/employee/performance_related_Oct/return_json',methods = ['GET','POST'])
@login_required
def performance_related_Oct_return_json():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    #连接数据库
    cursor = getCon().cursor()

    cursor.execute("SELECT * from performance_related where month='10' and name='%s' "%username)
    data = cursor.fetchall()

    cursor.close()
    getCon().close() 

    jsonData = []

    for n,row  in enumerate(data):
        #print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['date'] = row[1].strftime('%Y-%m-%d')
        result['name'] = row[2]
        result['place'] = row[3]
        result['content'] = row[4]
        result['complete'] = row[5]
        result['integration'] = row[6]
        result['year'] = row[7]
        result['month'] = row[8]
        result['remarks'] = row[9]
        result['assist_content'] = row[10]
        result['chief_reply'] = row[11]
    
        jsonData.append(result)

    return json.dumps(jsonData)

#十一月
@main.route('/employee/performance_related_Nov',methods = ['GET','POST'])
@login_required
def performance_related_Nov():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    """建立表格ID与数据表ID的关联"""  

    #连接数据库
    cursor = getCon().cursor() 
    cursor.execute("SELECT * from performance_related where month='11' and name='%s' "%username)
    data = cursor.fetchall()
       
    if len(data) !=0:
	
        input_get=[]
        output_get=[]

        get_data=[]
        for i,w in enumerate(data):
            get_data.append(w[0])
      
        id_from_table = []
        id_from_mysql = []
	for i,datas in enumerate(get_data):
            id_from_table.append(i+1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table,id_from_mysql))

    # 返回工作内容
    get_performance_number_data = request.form.get('get_performance_data', '')
    if any(get_performance_number_data):
        performance_number = json.loads(get_performance_number_data)["performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if performance_number != " ":

            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['content'] = row[4]

                jsonData.append(result)

	
        return json.dumps(jsonData)

    # 返回需协助工作内容
    get_assist_performance_number_data = request.form.get('get_assist_performance_data', '')
    if any(get_assist_performance_number_data):
        assist_performance_number = json.loads(get_assist_performance_number_data)["assist_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if assist_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(assist_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['assist_content'] = row[10]

                jsonData.append(result)

        return json.dumps(jsonData)


    # 完成情况
    get_complete_performance_number_data = request.form.get('get_complete_performance_data', '')
    if any(get_complete_performance_number_data):
        complete_performance_number = json.loads(get_complete_performance_number_data)["complete_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if complete_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(complete_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['complete'] = row[5]

                jsonData.append(result)

        return json.dumps(jsonData)

    # 备注
    get_remarks_performance_number_data = request.form.get('get_remarks_performance_data', '')
    if any(get_remarks_performance_number_data):
        remarks_performance_number = json.loads(get_remarks_performance_number_data)["remarks_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if remarks_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(remarks_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['remarks'] = row[9]

                jsonData.append(result)

        return json.dumps(jsonData)

    id = request.form.get('row[id]', '')
    date = request.form.get('row[date]', '')
    name= request.form.get('row[name]', '')
    place= request.form.get('row[place]', '')
    integration= request.form.get('row[integration]', '')   
    year= request.form.get('row[year]', '') 
    month= request.form.get('row[month]', '') 

    if id !='':
        old_Value = Performance_Related.query.filter_by(id=id_concect[int(id)]).first()
        if  old_Value is not None:
            print "更新数据"
            Performance_Related.query.filter_by(id=id_concect[int(id)]).update({"date":date,"name":name,"place":place,"integration":integration,"year":year,"month":month}) 
        db.session.commit()  

    #增加  
    add =request.form.get('add','')
   
    if add == 'add_true':
        add_item = Performance_Related(date=get_time,name=username,place='',content='',complete='',assist_content='',chief_reply='',integration='',remarks='',year=get_year,month='11')

        db.session.add(add_item)
        db.session.commit() 


    '''删除记录'''
    def reset_delete(ids):
        #连接数据库
        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'
            import traceback
            traceback.print_exc()
            # 发生错误时会滚
            conn.rollback()

        print '删除记录',id_concect[int(ids)]
        cursor.execute("DELETE FROM performance_related WHERE id=%s"%id_concect[int(ids)])   
  
        cursor.close()
        conn.commit()
        conn.close()


    #删除数据
    ids = request.form.get('ids[]','')

    if ids != "":
        reset_delete(ids)

    # 接收表单传回的信息
    if request.method == 'POST':
        # 保存工作内容
        if "content_textarea" in request.form:
            work_content = request.form['content_textarea']
        else:
	        work_content = ""

        if "performance_number" in request.form:
            performance_number = request.form['performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(performance_number)]).update({"content":work_content })
	    	    db.session.commit()
        else:
			performance_number = ""



        # 保存需协助工作内容
        if "assist_content_textarea" in request.form:
            assist_work_content = request.form['assist_content_textarea']
        else:
	        assist_work_content = ""

        if "assist_performance_number" in request.form:
            assist_performance_number = request.form['assist_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]).update({"assist_content":assist_work_content })
	    	    db.session.commit()
        else:
			assist_performance_number = ""

        # 完成情况
        if "complete_content_textarea" in request.form:
            complete_content = request.form['complete_content_textarea']
        else:
	        complete_content = ""

        if "complete_performance_number" in request.form:
            complete_performance_number = request.form['complete_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]).update({"complete":complete_content })
	    	    db.session.commit()
        else:
			complete_performance_number = ""

        # 备注
        if "remarks_content_textarea" in request.form:
            remarks_content = request.form['remarks_content_textarea']
        else:
	        remarks_content = ""

        if "remarks_performance_number" in request.form:
            remarks_performance_number = request.form['remarks_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]).update({"remarks":remarks_content })
	    	    db.session.commit()
        else:
			remarks_performance_number = ""


    return render_template("employee/performance-related-Nov.html")



@main.route('/employee/performance_related_Nov/return_json',methods = ['GET','POST'])
@login_required
def performance_related_Nov_return_json():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    #连接数据库
    cursor = getCon().cursor()

    cursor.execute("SELECT * from performance_related where month='11' and name='%s' "%username)
    data = cursor.fetchall()

    cursor.close()
    getCon().close() 

    jsonData = []

    for n,row  in enumerate(data):
        #print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['date'] = row[1].strftime('%Y-%m-%d')
        result['name'] = row[2]
        result['place'] = row[3]
        result['content'] = row[4]
        result['complete'] = row[5]
        result['integration'] = row[6]
        result['year'] = row[7]
        result['month'] = row[8]
        result['remarks'] = row[9]
        result['assist_content'] = row[10]
        result['chief_reply'] = row[11]
    
        jsonData.append(result)

    return json.dumps(jsonData)

#十二月
@main.route('/employee/performance_related_Dec',methods = ['GET','POST'])
@login_required
def performance_related_Dec():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    """建立表格ID与数据表ID的关联"""  

    #连接数据库
    cursor = getCon().cursor() 
    cursor.execute("SELECT * from performance_related where month='12' and name='%s' "%username)
    data = cursor.fetchall()
       
    if len(data) !=0:
	
        input_get=[]
        output_get=[]

        get_data=[]
        for i,w in enumerate(data):
            get_data.append(w[0])
      
        id_from_table = []
        id_from_mysql = []
	for i,datas in enumerate(get_data):
            id_from_table.append(i+1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table,id_from_mysql))
        print id_concect

    # 返回工作内容
    get_performance_number_data = request.form.get('get_performance_data', '')
    if any(get_performance_number_data):
        performance_number = json.loads(get_performance_number_data)["performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if performance_number != " ":

            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['content'] = row[4]

                jsonData.append(result)

	
        return json.dumps(jsonData)

    # 返回需协助工作内容
    get_assist_performance_number_data = request.form.get('get_assist_performance_data', '')
    if any(get_assist_performance_number_data):
        assist_performance_number = json.loads(get_assist_performance_number_data)["assist_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if assist_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(assist_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['assist_content'] = row[10]

                jsonData.append(result)

        return json.dumps(jsonData)


    # 完成情况
    get_complete_performance_number_data = request.form.get('get_complete_performance_data', '')
    if any(get_complete_performance_number_data):
        complete_performance_number = json.loads(get_complete_performance_number_data)["complete_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if complete_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(complete_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['complete'] = row[5]

                jsonData.append(result)

        return json.dumps(jsonData)

    # 备注
    get_remarks_performance_number_data = request.form.get('get_remarks_performance_data', '')
    if any(get_remarks_performance_number_data):
        remarks_performance_number = json.loads(get_remarks_performance_number_data)["remarks_performance_number"]  

        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'


        if remarks_performance_number != " ":
            cursor.execute("SELECT * from performance_related where id='%s'"%id_concect[int(remarks_performance_number)])
            data = cursor.fetchall()
            cursor.close()

            conn.close()
            jsonData = []
	
            for n,row  in enumerate(data):
                result = {}
                result['remarks'] = row[9]

                jsonData.append(result)

        return json.dumps(jsonData)

    id = request.form.get('row[id]', '')
    date = request.form.get('row[date]', '')
    name= request.form.get('row[name]', '')
    place= request.form.get('row[place]', '')  
    integration= request.form.get('row[integration]', '') 
    year= request.form.get('row[year]', '') 
    month= request.form.get('row[month]', '') 

    if id !='':
        old_Value = Performance_Related.query.filter_by(id=id_concect[int(id)]).first()
        if  old_Value is not None:
            print "更新数据"
            Performance_Related.query.filter_by(id=id_concect[int(id)]).update({"date":date,"name":name,"place":place,"integration":integration,"year":year,"month":month}) 
        db.session.commit()     

    #增加  
    add =request.form.get('add','')
   
    if add == 'add_true':
        add_item = Performance_Related(date=get_time,name=username,place='',content='',complete='',assist_content='',chief_reply='',integration='',remarks='',year=get_year,month='12')

        db.session.add(add_item)
        db.session.commit() 


    '''删除记录'''
    def reset_delete(ids):
        #连接数据库
        try:
            '''warning:这里需要设置为环境获取'''
            conn = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = conn.cursor()
        except:
            print 'MySQL connect fail...'
            import traceback
            traceback.print_exc()
            # 发生错误时会滚
            conn.rollback()

        print '删除记录',id_concect[int(ids)]
        cursor.execute("DELETE FROM performance_related WHERE id=%s"%id_concect[int(ids)])   
  
        cursor.close()
        conn.commit()
        conn.close()


    #删除数据
    ids = request.form.get('ids[]','')

    if ids != "":
        reset_delete(ids)
    # 接收表单传回的信息
    if request.method == 'POST':
        # 保存工作内容
        if "content_textarea" in request.form:
            work_content = request.form['content_textarea']
        else:
	        work_content = ""

        if "performance_number" in request.form:
            performance_number = request.form['performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(performance_number)]).update({"content":work_content })
	    	    db.session.commit()
        else:
			performance_number = ""



        # 保存需协助工作内容
        if "assist_content_textarea" in request.form:
            assist_work_content = request.form['assist_content_textarea']
        else:
	        assist_work_content = ""

        if "assist_performance_number" in request.form:
            assist_performance_number = request.form['assist_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(assist_performance_number)]).update({"assist_content":assist_work_content })
	    	    db.session.commit()
        else:
			assist_performance_number = ""

        # 完成情况
        if "complete_content_textarea" in request.form:
            complete_content = request.form['complete_content_textarea']
        else:
	        complete_content = ""

        if "complete_performance_number" in request.form:
            complete_performance_number = request.form['complete_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(complete_performance_number)]).update({"complete":complete_content })
	    	    db.session.commit()
        else:
			complete_performance_number = ""

        # 备注
        if "remarks_content_textarea" in request.form:
            remarks_content = request.form['remarks_content_textarea']
        else:
	        remarks_content = ""

        if "remarks_performance_number" in request.form:
            remarks_performance_number = request.form['remarks_performance_number']
            if Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]) is not None:
	    	    Performance_Related.query.filter_by(id=id_concect[int(remarks_performance_number)]).update({"remarks":remarks_content })
	    	    db.session.commit()
        else:
			remarks_performance_number = ""


    return render_template("employee/performance-related-Dec.html")



@main.route('/employee/performance_related_Dec/return_json',methods = ['GET','POST'])
@login_required
def performance_related_Dec_return_json():

    username = current_user.username
    if username == "liangzhixuan":
        username = '梁智轩'
    elif username == "mark":
        username = '梁嘉惠'
    elif username == "jerry":
        username = '黄德欣'
    elif username == "tommy":
        username = '梁嘉和'
    elif username == "yangmujiao":
        username = '杨木娇'
    elif username == "lixiurong":
        username = '李秀荣'
    elif username == "oujie":
        username = '欧捷'
    elif username == "zhuxiaoping":
        username = '朱晓平'

    #连接数据库
    cursor = getCon().cursor()

    cursor.execute("SELECT * from performance_related where month='12' and name='%s' "%username)
    data = cursor.fetchall()

    cursor.close()
    getCon().close() 

    jsonData = []

    for n,row  in enumerate(data):
        result = {}
        result['id'] = n + 1
        result['date'] = row[1].strftime('%Y-%m-%d')
        result['name'] = row[2]
        result['place'] = row[3]
        result['content'] = row[4]
        result['complete'] = row[5]
        result['integration'] = row[6]
        result['year'] = row[7]
        result['month'] = row[8]
        result['remarks'] = row[9]
        result['assist_content'] = row[10]
        result['chief_reply'] = row[11]
    
        jsonData.append(result)

    return json.dumps(jsonData)




