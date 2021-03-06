# -*- coding:utf-8 -*-
__author__ = 'xuan'

from flask import render_template,request,current_app,redirect,url_for,send_from_directory
from  . import  main
from flask.ext.login import login_required,current_user,login_user,logout_user
import json,MySQLdb,sys
from  manage import  db  #不添加这个会不能更新数据库
from ..models import Clients
import json
import time
import string
from manage import app
import os
import simplejson
from config import config
from ..permissions import admin_permission,moderator_permission

reload(sys) 
sys.setdefaultencoding('utf8') 

@main.route('/regular_clients',methods = ['GET','POST'])
@login_required
#@moderator_permission.require(http_exception=403)
def regular_clients():
    '''更新返回的信息'''
    id = request.form.get('row[id]', '')
    client_no = request.form.get('row[client_no]', '')
    service_no = request.form.get('row[service_no]', '')
    company_name = request.form.get('row[company_name]', '')
    license= request.form.get('row[license]', '')
    contact= request.form.get('row[contact]', '')
    position = request.form.get('row[position]', '')
    cellphone = request.form.get('row[cellphone]', '')
    telephone = request.form.get('row[telephone]', '')
    email = request.form.get('row[email]', '')
    qq = request.form.get('row[qq]', '') 
    adress = request.form.get('row[adress]', '')
    saler = request.form.get('row[saler]', '')
    status = request.form.get('row[status]', '')
    oldValue = request.form.get('oldValue', '')

    '''获取登录名'''
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
    elif username == "wangbin":
        username = '汪斌'
    print 'username:',username




    """建立表格ID与数据表ID的关联"""  
    try:
        '''warning:这里需要设置为环境获取'''
        database = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
        cursor = database.cursor()
    except:
        print 'MySQL connect fail...'

    cursor.execute("SELECT id from clients where status='成交' and saler='%s' "%username)
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
        print "正式表关联",id_concect
   
    if id !='':
        old_Value = Clients.query.filter_by(id=id_concect[int(id)]).first()
        if  old_Value is not None:
            print "更新数据"
            Clients.query.filter_by(id=id_concect[int(id)]).update({"client_no":client_no,"service_no":service_no,"company_name":company_name,
"license":license,"contact":contact,"position":position,"cellphone":cellphone,"telephone":telephone,"email":email,"qq":qq,"adress":adress,"status":status}) 
            
            db.session.commit()

    #增加  
    add =request.form.get('add','')
   
    if add == 'add_true':
        add_client = Clients(client_no='',service_no='',company_name='',license='',contact='',position='',cellphone='',telephone='',email='',qq='',adress='',saler=username,status='选择')
        db.session.add(add_client)
        db.session.commit()  


    '''删除记录'''
    def reset_delete(id):
        
        app = current_app._get_current_object()
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("DELETE FROM clients WHERE id=%s"%id)

        #cursor.execute("ALTER TABLE orders DROP id")
        #cursor.execute("ALTER TABLE orders ADD id INT( 8 ) NOT NULL FIRST")
        #cursor.execute("ALTER TABLE orders MODIFY COLUMN id INT( 8 ) NOT NULL AUTO_INCREMENT,ADD PRIMARY KEY(id)")
        

        
        cursor.close()
        database.commit()
        database.close()


    if request.method == 'POST':
        #删除数据
        remove_id = request.form.get('remove_id[]','')
        print 'remove_id',type(remove_id)
        #remove_name = request.form.get('remove_name[]','')
    
        if remove_id  !="":
            print "不为空"
            """建立表格ID与数据表ID的关联"""  
            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

    	    cursor.execute("SELECT id from clients where status='成交' and saler='%s' "%username)
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


                reset_delete(id_concect[int(remove_id)])
    '''
    #查询客户与跟踪关联信息
    try:

        database = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
        cursor = database.cursor()
    except:
        print 'MySQL connect fail...'

    cursor.execute("select a.id,a.company_name,b.situation from clients a,clients_traces b where a.id=b.client_id")

        #cursor.execute("ALTER TABLE orders DROP id")
        #cursor.execute("ALTER TABLE orders ADD id INT( 8 ) NOT NULL FIRST")
        #cursor.execute("ALTER TABLE orders MODIFY COLUMN id INT( 8 ) NOT NULL AUTO_INCREMENT,ADD PRIMARY KEY(id)")
        
    data = cursor.fetchall()
    jsonData = []

    for n,row  in enumerate(data):   
        print '信息为：'
            ##print row[1]
        result = {}
        result['id'] = row[0]
        result['company_name'] = row[1]
       
        result['situation'] = row[1]

    print result

        #jsonData.append(result)

    cursor.close()
    database.commit()
    database.close() 
    '''    



  
    if request.method == 'POST':        
        data = request.form.get('data','')
        print "get data"



        if data !='':

            print  "建立表格ID与数据表ID的关联"  
            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

    	    cursor.execute("SELECT id from clients where status='成交' and saler='%s' "%username)
    	    clients_data = cursor.fetchall()
     
    	    if len(clients_data) !=0:
	
                input_get=[]
                output_get=[]

                get_data=[]
                for i,w in enumerate(clients_data):
                    get_data.append(w[0])

        
            	id_from_table = []
            	id_from_mysql = []
	    	for i,datas in enumerate(get_data):
                    id_from_table.append(i+1)
                    id_from_mysql.append(datas)


                id_concect = dict(zip(id_from_table,id_from_mysql))
                print 'id关联',id_concect
                print "JSOn:::",json.loads(data)['trace_no'],json.loads(data)['company_name']


                #获取跟踪信息
                if Clients.query.filter_by(id=id_concect[json.loads(data)["trace_no"]]).first() is not None:
                    tracts = Clients.query.filter_by(id=id_concect[json.loads(data)["trace_no"]]).first().tract
                else:
                    tracts = ''


                #获取服务编号
                if Clients.query.filter_by(id=id_concect[json.loads(data)["trace_no"]]).first() is not None:
                    service_no = Clients.query.filter_by(id=id_concect[json.loads(data)["trace_no"]]).first().service_no
                else:
                    service_no = ''



                print '返回json ',tracts,service_no   
                
                #获取跟踪text框输入文字


                #if "trace_textarea" in request.form:
                    #trace_textarea = request.form['trace_textarea']
                #else:
                    #trace_textarea = ""

                #print 'trace_textarea',trace_textarea

                return simplejson.dumps({"tracts": tracts,"service_no":service_no})    


            else:     
                return simplejson.dumps({"tracts": '',"service_no":''})

        else:     

            trace_textarea = request.form.get('trace_textarea','')
            trace_id = request.form.get('trace_id','')
            trace_company = request.form.get('trace_company','')
            print 'id_concect:::::',id_concect
            print 'trace_textarea:::',trace_id,trace_textarea,trace_company
            #保存跟踪信息
            if trace_id and trace_company !='':
                if Clients.query.filter_by(id=id_concect[int(trace_id)],company_name=trace_company).first() is not None: 
                    Clients.query.filter_by(id=id_concect[int(trace_id)],company_name=trace_company).update({"tract":trace_textarea})
            
            #保存服务编号
            service_textarea = request.form.get('service_textarea','')
            service_id = request.form.get('service_id','')
            service_company = request.form.get('service_company','')
            print 'id_concect:::::',id_concect
            print 'service_textarea:::',service_id,service_textarea,service_company

            if service_id and service_company !='':
                if Clients.query.filter_by(id=id_concect[int(service_id)],company_name=service_company).first() is not None: 
                    Clients.query.filter_by(id=id_concect[int(service_id)],company_name=service_company).update({"service_no":service_textarea})

            db.session.commit()

            return redirect(url_for('main.regular_clients')) 





   
    else:
        return render_template('clients/regular_clients.html')


@main.route('/regular_clients/return_json',methods = ['GET','POST'])
@login_required
def regular_clients_return_json():

        '''获取登录名'''
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
        elif username == "wangbin":
            username = '汪斌'
        print 'username:',username

        app = current_app._get_current_object()
        try:
            '''warning:这里需要设置为环境获取'''
            db = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = db.cursor()
        except:
            print 'MySQL connect fail...'
        cursor.execute("SELECT * from clients where status='成交' and saler='%s' "%username)
        data = cursor.fetchall()
        cursor.close()
        db.close()
        jsonData = []

        for n,row  in enumerate(data):
            #print data[0]
            ##print row[1]
            result = {}
            result['id'] = n+1
            result['company_name'] = row[1]
            result['license'] = row[2]
            result['contact'] = row[3]
            result['position'] = row[4]
            result['cellphone'] = row[5]
            result['telephone'] = row[6]
            result['email'] = row[7]
            result['qq'] = row[8]
            result['adress'] = row[9]
            result['saler'] = row[10]
            result['status'] = row[11]
            result['client_no'] = row[13]
            result['service_no'] = row[14]

            jsonData.append(result)

        return json.dumps(jsonData)




@main.route('/temporary_clients',methods = ['GET','POST'])
@login_required
def temporary_clients():
    '''更新返回的信息'''
    id = request.form.get('row[id]', '')
    client_no = request.form.get('row[client_no]', '')
    service_no = request.form.get('row[service_no]', '')
    company_name = request.form.get('row[company_name]', '')
    license= request.form.get('row[license]', '')
    contact= request.form.get('row[contact]', '')
    position = request.form.get('row[position]', '')
    cellphone = request.form.get('row[cellphone]', '')
    telephone = request.form.get('row[telephone]', '')
    email = request.form.get('row[email]', '')
    qq = request.form.get('row[qq]', '') 
    adress = request.form.get('row[adress]', '')
    status = request.form.get('row[status]', '')
    oldValue = request.form.get('oldValue', '')

    '''获取登录名'''
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
    elif username == "wangbin":
        username = '汪斌'
    print '!!',username


    """建立表格ID与数据表ID的关联"""  
    try:
        '''warning:这里需要设置为环境获取'''
        database = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
        cursor = database.cursor()
    except:
        print 'MySQL connect fail...'

    cursor.execute("SELECT id from clients where status!='成交' and saler='%s' "%username)
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
        print "正式表关联",id_concect
   
    if id !='':
        old_Value = Clients.query.filter_by(id=id_concect[int(id)]).first()
        if  old_Value is not None:
            print "更新数据"
            Clients.query.filter_by(id=id_concect[int(id)]).update({"client_no":client_no,"service_no":service_no,"company_name":company_name,"license":license,"contact":contact,"position":position,"cellphone":cellphone,"telephone":telephone,
"email":email,"qq":qq,"adress":adress,"status":status}) 
            
            db.session.commit()

    #增加  
    add =request.form.get('add','')
   
    if add == 'add_true':
        add_client = Clients(client_no='',service_no='',company_name='',license='',contact='',position='',cellphone='',telephone='',email='',qq='',adress='',saler=username,status='选择')
        db.session.add(add_client)
        db.session.commit()  


    '''删除记录'''
    def reset_delete(id):
        
        app = current_app._get_current_object()
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("DELETE FROM clients WHERE id=%s"%id)

        #cursor.execute("ALTER TABLE orders DROP id")
        #cursor.execute("ALTER TABLE orders ADD id INT( 8 ) NOT NULL FIRST")
        #cursor.execute("ALTER TABLE orders MODIFY COLUMN id INT( 8 ) NOT NULL AUTO_INCREMENT,ADD PRIMARY KEY(id)")
        

        
        cursor.close()
        database.commit()
        database.close()


    if request.method == 'POST':
        #删除数据
        remove_id = request.form.get('remove_id[]','')
        print 'remove_id',type(remove_id)
        #remove_name = request.form.get('remove_name[]','')
    
        if remove_id  !="":
            print "不为空"
            """建立表格ID与数据表ID的关联"""  
            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

    	    cursor.execute("SELECT id from clients where status!='成交' and saler='%s' "%username)
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


                reset_delete(id_concect[int(remove_id)])
 

  
    if request.method == 'POST':        
        data = request.form.get('data','')
        print "get data"



        if data !='':

            print  "建立表格ID与数据表ID的关联"  
            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

    	    cursor.execute("SELECT id from clients where status!='成交' and saler='%s' "%username)
    	    clients_data = cursor.fetchall()
     
    	    if len(clients_data) !=0:
	
                input_get=[]
                output_get=[]

                get_data=[]
                for i,w in enumerate(clients_data):
                    get_data.append(w[0])

        
            	id_from_table = []
            	id_from_mysql = []
	    	for i,datas in enumerate(get_data):
                    id_from_table.append(i+1)
                    id_from_mysql.append(datas)


                id_concect = dict(zip(id_from_table,id_from_mysql))
                print 'id关联',id_concect
                print "JSOn:::",json.loads(data)['trace_no'],json.loads(data)['company_name']


                #获取跟踪信息
                if Clients.query.filter_by(id=id_concect[json.loads(data)["trace_no"]]).first() is not None:
                    tracts = Clients.query.filter_by(id=id_concect[json.loads(data)["trace_no"]]).first().tract
                else:
                    tracts = ''


                #获取服务编号
                if Clients.query.filter_by(id=id_concect[json.loads(data)["trace_no"]]).first() is not None:
                    service_no = Clients.query.filter_by(id=id_concect[json.loads(data)["trace_no"]]).first().service_no
                else:
                    service_no = ''



                print '返回json ',tracts,service_no   
                
                #获取跟踪text框输入文字


                #if "trace_textarea" in request.form:
                    #trace_textarea = request.form['trace_textarea']
                #else:
                    #trace_textarea = ""

                #print 'trace_textarea',trace_textarea

                return simplejson.dumps({"tracts": tracts,"service_no":service_no})    


            else:     
                return simplejson.dumps({"tracts": '',"service_no":''})

        else:     

            trace_textarea = request.form.get('trace_textarea','')
            trace_id = request.form.get('trace_id','')
            trace_company = request.form.get('trace_company','')
            print 'id_concect:::::',id_concect
            print 'trace_textarea:::',trace_id,trace_textarea,trace_company
            #保存跟踪信息
            if trace_id and trace_company !='':
                if Clients.query.filter_by(id=id_concect[int(trace_id)],company_name=trace_company).first() is not None: 
                    Clients.query.filter_by(id=id_concect[int(trace_id)],company_name=trace_company).update({"tract":trace_textarea})
            
            #保存服务编号
            service_textarea = request.form.get('service_textarea','')
            service_id = request.form.get('service_id','')
            service_company = request.form.get('service_company','')
            print 'id_concect:::::',id_concect
            print 'service_textarea:::',service_id,service_textarea,service_company

            if service_id and service_company !='':
                if Clients.query.filter_by(id=id_concect[int(service_id)],company_name=service_company).first() is not None: 
                    Clients.query.filter_by(id=id_concect[int(service_id)],company_name=service_company).update({"service_no":service_textarea})

            db.session.commit()

            return redirect(url_for('main.temporary_clients')) 
   
    else:
        return render_template('clients/temporary_clients.html')

@main.route('/temporary_clients/return_json',methods = ['GET','POST'])
@login_required
def temporary_clients_return_json():

        '''获取登录名'''
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
        elif username == "wangbin":
            username = '汪斌'
        print 'username:',username


        app = current_app._get_current_object()
        try:
            '''warning:这里需要设置为环境获取'''
            db = MySQLdb.connect("localhost","root","uroot012","erp_development",charset='utf8')
            cursor = db.cursor()
        except:
            print 'MySQL connect fail...'
        cursor.execute("SELECT * from clients where status!='成交' and saler='%s' "%username)
        data = cursor.fetchall()
        cursor.close()
        db.close()
        jsonData = []

        for n,row  in enumerate(data):
            #print data[0]
            ##print row[1]
            result = {}
            result['id'] = n+1
            result['company_name'] = row[1]
            result['license'] = row[2]
            result['contact'] = row[3]
            result['position'] = row[4]
            result['cellphone'] = row[5]
            result['telephone'] = row[6]
            result['email'] = row[7]
            result['qq'] = row[8]
            result['adress'] = row[9]
            result['saler'] = row[10]
            result['status'] = row[11]
            result['client_no'] = row[13]
            result['service_no'] = row[14]



            jsonData.append(result)

        return json.dumps(jsonData)





#客户信息跟踪
@main.route('/client_traces',methods = ['GET','POST'])
@login_required
def client_traces():
    '''更新返回的信息'''


 


    return render_template('clients/client_traces.html')












