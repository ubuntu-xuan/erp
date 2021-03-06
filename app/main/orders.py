# -*- coding:utf-8 -*-
__author__ = 'xuan'

from flask import render_template, request, current_app, redirect, url_for, send_from_directory
from . import main
from flask.ext.login import login_required, current_user, login_user, logout_user
import json, MySQLdb, sys
from  manage import db  # 不添加这个会不能更新数据库
from ..models import Orders, Production_Orders, Delivery_Orders, Delivery_Productions, Payment, Semi_finished, \
    End_product, Fittings, Fittings_Outputs, Price_Storage, Contract,ContractAccountant

import json
import time
import string
from manage import app
import os
import simplejson
from config import config
import PIL
from PIL import Image

import traceback
from werkzeug.utils import secure_filename
from lib.upload_file import uploadfile

reload(sys)
sys.setdefaultencoding('utf8')

ALLOWED_EXTENSIONS = set(['gif', 'png', 'jpg', 'jpeg', 'bmp', 'pdf', 'PDF', 'xls', 'docx'])
IGNORED_FILES = set(['.gitignore'])


# 上传文件允许的类型
def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


# 生成文件名
def gen_file_name(filename):
    """
    If file was exist already, rename it and return a new name
    """
    print '生成文件名', os.path.join(app.config['UPLOAD_FOLDER'], filename)
    i = 1
    while os.path.exists(os.path.join(app.config['UPLOAD_FOLDER'], filename)):
        name, extension = os.path.splitext(filename)
        filename = '%s_%s%s' % (name, str(i), extension)
        i = i + 1

    return filename


# 生成缩略图
def create_thumbnai(image):
    try:
        basewidth = 24
        print "生成缩略图", os.path.join(app.config['UPLOAD_FOLDER'], image)
        img = Image.open(os.path.join(app.config['UPLOAD_FOLDER'], image))
        wpercent = (basewidth / float(img.size[0]))
        hsize = int((float(img.size[1]) * float(wpercent)))
        img = img.resize((basewidth, hsize), PIL.Image.ANTIALIAS)
        img.save(os.path.join(app.config['THUMBNAIL_FOLDER'], image))

        return True

    except:
        print traceback.format_exc()
        return False


@main.route("/upload", methods=['GET', 'POST'])
@login_required
def contract_upload():
    if request.method == 'POST':
        print "上传文件"
        file = request.files['file']
        # pprint (vars(objectvalue))

        if file:
            filename = secure_filename(file.filename)
            filename = gen_file_name(filename)
            mimetype = file.content_type

            if not allowed_file(file.filename):
                result = uploadfile(name=filename, type=mimetype, size=0, not_allowed_msg="Filetype not allowed")

            else:
                # save file to disk
                print "保存文件", os.path.join(app.config['UPLOAD_FOLDER'], filename)
                uploaded_file_path = os.path.join(app.config['UPLOAD_FOLDER'], filename)
                print "uploaded_file_path", uploaded_file_path
                file.save(uploaded_file_path)

                # create thumbnail after saving
                if mimetype.startswith('image'):
                    create_thumbnai(filename)

                # get file size after saving
                size = os.path.getsize(uploaded_file_path)

                # 在saving后保存上传日期和路径
                # 获取系统时间
                get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

                upload_date = get_time

                if '.' in filename:
                    number = filename.rsplit('.', 1)[0]

                add_contract = Contract(name=filename, path=uploaded_file_path, upload_date=get_time, number=number)
                db.session.add(add_contract)
                db.session.commit()

                # return json for js call back
                result = uploadfile(name=filename, type=mimetype, size=size, upload_date=upload_date)

            return simplejson.dumps({"files": [result.get_file()]})

    if request.method == 'GET':
        print "GET"
        # get all file in ./data directory
        files = [f for f in os.listdir(app.config['UPLOAD_FOLDER']) if
                 os.path.isfile(os.path.join(app.config['UPLOAD_FOLDER'], f)) and f not in IGNORED_FILES]

        file_display = []
        get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

        for f in files:
            print 'f', f
            # 获取每个合同文件的上传日期
            if Contract.query.filter_by(name=f).first() is not None:
                upload_date_display = Contract.query.filter_by(name=f).first().upload_date
            else:
                upload_date_display = '-'

            size = os.path.getsize(os.path.join(app.config['UPLOAD_FOLDER'], f))
            file_saved = uploadfile(name=f, size=size, upload_date=upload_date_display)
            file_display.append(file_saved.get_file())
            # print file_display
        return simplejson.dumps({"files": file_display})

    return redirect(url_for('main.contract'))


@main.route("/delete/<string:filename>", methods=['DELETE'])
@login_required
def delete(filename):
    file_path = os.path.join(app.config['UPLOAD_FOLDER'], filename)
    file_thumb_path = os.path.join(app.config['THUMBNAIL_FOLDER'], filename)
    print "del_name", filename
    # 删除contract对应记录
    del_filename = Contract.query.filter_by(name=filename).first()
    db.session.delete(del_filename)
    db.session.commit()

    if os.path.exists(file_path):
        try:
            os.remove(file_path)

            if os.path.exists(file_thumb_path):
                os.remove(file_thumb_path)

            return simplejson.dumps({filename: 'True'})
        except:
            return simplejson.dumps({filename: 'False'})


# serve static files
@main.route("/thumbnail/<string:filename>", methods=['GET'])
@login_required
def get_thumbnail(filename):
    print "获取静态文件", app.config['THUMBNAIL_FOLDER']
    print "获取静态文件", filename

    return send_from_directory(app.config['THUMBNAIL_FOLDER'], filename=filename)


@main.route("/data/<string:filename>", methods=['GET'])
@login_required
def get_file(filename):
    print "获取上传文件：", filename
    return send_from_directory(os.path.join(app.config['UPLOAD_FOLDER']), filename=filename)


@main.route('/contract', methods=['GET', 'POST'])
@login_required
def contract():
    return render_template('orders/contract.html')


# 云终端
@main.route('/orders', methods=['GET', 'POST'])
@login_required
def orders():
    # if request.method == 'POST':
    id = request.form.get('row[id]', '')
    order_date = request.form.get('row[order_date]', '')
    company_name = request.form.get('row[company_name]', '')
    order_number = request.form.get('row[order_number]', '')
    product_type = request.form.get('row[product_type]', '')
    product_price = request.form.get('row[product_price]', '')
    product_num = request.form.get('row[product_num]', '')
    order_amount = request.form.get('row[order_amount]', '')
    tax_type = request.form.get('row[tax_type]', '')
    adress = request.form.get('row[adress]', '')
    client_name = request.form.get('row[client_name]', '')
    tel = request.form.get('row[tel]', '')
    saler = request.form.get('row[saler]', '')
    saler_tel = request.form.get('row[saler_tel]', '')
    apartment = request.form.get('row[apartment]', '')
    oldValue = request.form.get('oldValue', '')


    # 获取要生成的通知单的单号
    create_production_orders = request.form.get('create_production_orders', '')

    # 要生成的送货列表单号
    delivery_orders = request.form.get('create_delivery_orders', '')

    """建立表格ID与数据表ID的关联"""

    try:
        '''warning:这里需要设置为环境获取'''
        database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
        cursor = database.cursor()
    except:
        print 'MySQL connect fail...'

    cursor.execute("SELECT id from orders where  apartment='云终端' ")
    data = cursor.fetchall()

    if len(data) != 0:

        input_get = []
        output_get = []

        get_data = []
        for i, w in enumerate(data):
            get_data.append(w[0])

        id_from_table = []
        id_from_mysql = []
        for i, datas in enumerate(get_data):
            id_from_table.append(i + 1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table, id_from_mysql))


    if id != '':
        old_Value = Orders.query.filter_by(id=id_concect[int(id)]).first()
        if old_Value is not None:
            print "更新数据"
            Orders.query.filter_by(id=id_concect[int(id)]).update(
                {"order_date":order_date,"company_name": company_name, "order_number": order_number.strip(),"product_type":product_type,"product_price":product_price,"product_num":product_num,"order_amount":order_amount,"tax_type": tax_type,
                 "adress": adress, "client_name": client_name, "tel": tel, "saler": saler, "saler_tel": saler_tel,
                 "apartment": apartment})

            '''当orders修改时自动修改Production_Orders中的信息'''
	    print('orders修改自动修改生产单信息')
            production = Production_Orders.query.filter_by(order_number=order_number).first()
            if production is not None:
                Production_Orders.query.filter_by(order_number=order_number).update(
                    {"company_name": company_name, "order_number": order_number,
                     "adress": adress, "client_name": client_name, "client_tel": tel, "saler_name": saler,
                     "saler_tel": saler_tel})

            '''当orders修改时自动修改delivery中的信息'''
	    print('orders修改自动修改送货单信息')
            delivery = Delivery_Orders.query.filter_by(purchase_order=order_number).first()
            if delivery is not None:
                Delivery_Orders.query.filter_by(purchase_order=order_number).update(
                    {"client_name": company_name, "saler": saler})

            '''当orders修改时自动修改合同结算中的信息'''
	    print('orders修改自动修改合同结算中 合同金额 税金 利润')
            contract_accountant = ContractAccountant.query.filter_by(purchase_order=order_number).first()
            if contract_accountant is not None:
                #更新合同金额
                ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"order_amount": order_amount})
	        #若为增值税，更新税金
	        tax_type = ContractAccountant.query.filter_by(purchase_order=order_number).first().tax_type
		if tax_type == "增值税":
		    ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"tax": float(order_amount)*0.1})
	        db.session.commit()

		#计算 利润=合同金额-税金-终端成本-服务器成本-配件成本-软件成本-报销费用-杂费-运费-得利税
	        order_amount = ContractAccountant.query.filter_by(purchase_order=order_number).first().order_amount
		tax = ContractAccountant.query.filter_by(purchase_order=order_number).first().tax
		tem_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().tem_cost	
		servers_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().servers_cost
	 	fittings_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().fittings_cost
		softwares_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().softwares_cost
		reimbursement = ContractAccountant.query.filter_by(purchase_order=order_number).first().reimbursement
		consult_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().consult_cost
		freight = ContractAccountant.query.filter_by(purchase_order=order_number).first().freight
		after_sales = ContractAccountant.query.filter_by(purchase_order=order_number).first().after_sales

		print('计算 利润')
		print(order_amount,tax,tem_cost,servers_cost,fittings_cost,softwares_cost,reimbursement,consult_cost,freight,after_sales)
		profit = order_amount-tax-tem_cost-servers_cost-fittings_cost-softwares_cost-reimbursement-consult_cost-freight-after_sales
	 	#print(profit)
                ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"profit":profit })

	

            db.session.commit()

    '''生成生产通知单'''
    if create_production_orders != '':
        # 生产单数据表中的个数
        list_production = []
        for i in db.session.query(Production_Orders.order_number).all():
            list_production.append(i[0])
        print '个数:', len(list_production)

        get_year = time.strftime('%Y', time.localtime(time.time()))
        get_month = time.strftime('%m', time.localtime(time.time()))

        if len(list_production) == 0:
            '''给通知单号赋值'''
            # requisition_number =  str(get_year) + str(get_month) + str(0001)
            requisition_number = get_year + '000001'

        else:
            # 获取数据表中通知单号的最大值
            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

            cursor.execute("SELECT requisition_number from production_orders")
            data = cursor.fetchall()
            get_data = []
            for i, w in enumerate(data):
                get_data.append(w[0])
                # print get_data
                # n = len(data)
                print 'max!!!!!!!!', long(max(get_data))

            # 获取最大编号的后四位
            # max_number = '%04d' % (int(max(get_data)[-4:]) + 1)
            # requisition_number = get_year + get_month + max_number
            requisition_number = long(max(get_data)) + 1


        # 获取orders里的信息
        company_name = Orders.query.filter_by(order_number=create_production_orders).first().company_name
        adress = Orders.query.filter_by(order_number=create_production_orders).first().adress
        client_name = Orders.query.filter_by(order_number=create_production_orders).first().client_name
        client_tel = Orders.query.filter_by(order_number=create_production_orders).first().tel
        saler_name = Orders.query.filter_by(order_number=create_production_orders).first().saler
        saler_tel = Orders.query.filter_by(order_number=create_production_orders).first().saler_tel

        add_production = Production_Orders(company_name=company_name, order_number=create_production_orders,
                                           requisition_number=requisition_number, adress=adress,
                                           client_name=client_name, client_tel=client_tel, saler_name=saler_name,
                                           saler_tel=saler_tel, delivery_way='edit',
                                           model='edit', cpu='edit', cpu_other='edit', memory='edit',
                                           memory_other='edit', harddisk='edit',
                                           harddisk_other='edit', usb='edit', usb_other='edit', com='edit',
                                           com_other='edit', network='edit', wireless='edit',
                                           wireless_other='edit', test1='edit', test2='edit', test3='edit',
                                           test4='edit', os='edit', os_version='edit', trademark='edit', logo='edit',
                                           instructions='edit',
                                           certificate='edit', warrantycard='edit', discs='edit', package='edit',
                                           label='edit', label_content='edit',
                                           install='', lend='', return_data='', series_number='', nums='0',
                                           delivery_data='',
                                           tester='', test_data='', remarks='', auditor='', product_price='0.0',
                                           memory_price='0.0', harddisk_price='0.0', wireless_price='0.0',
                                           discs_price='0.0',
                                           install_price='0.0', all_const='0.0')

        db.session.add(add_production)
        db.session.commit()

    if request.form.get('create_delivery_orders', '') != '':

        # 获取要生成的送货单的单号
        delivery_order = request.form.get('create_delivery_orders', '')

        '''生成送货单编号'''
        # 送货单数据表中的个数
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("SELECT no from delivery_orders")
        delivery_data = cursor.fetchall()


        get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))


        if len(delivery_data) == 0:
            '''给送货单号赋值'''
            no = 2017000001
        else:
            # 获取数据表中送货单号的最大值

            get_data = []
            for i, w in enumerate(delivery_data):
                get_data.append(w[0])
            no = long(max(get_data)) + 1

        # 获取系统时间 
        get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

        # 获取orders里的信息   
        company_name = Orders.query.filter_by(order_number=delivery_order).first().company_name
        saler = Orders.query.filter_by(order_number=delivery_order).first().saler

        # 生成送货单列表   
        add_delivery = Delivery_Orders(no=no, purchase_order=delivery_order, client_name=company_name, saler=saler,
                                       delivery_date=get_time)

        db.session.add(add_delivery)
        db.session.commit()


        # 生成送货单产品数据表
        if cursor.execute("show tables like '%s' " % ('delivery_' + str(no))) != 1:
	    print('送货单具体产品数据表不存在,新建')
            # 获取送货单中相应信息
            delivery_no = Delivery_Orders.query.filter_by(no=no).first().no
            purchase_order = Delivery_Orders.query.filter_by(no=no).first().purchase_order
            company_name = Delivery_Orders.query.filter_by(no=no).first().client_name
            saler = Delivery_Orders.query.filter_by(no=no).first().saler
            client_adress = Orders.query.filter_by(order_number=delivery_order).first().adress

            get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

            cursor.execute(
                "CREATE TABLE delivery_%s(id int PRIMARY KEY NOT NULL AUTO_INCREMENT,purchase_order varchar(64),client_name varchar(64),client_adress varchar(64),saler varchar(64),delivery_date varchar(64),production_name1 varchar(288),nums1 varchar(64),unit1 varchar(64),unit_price1 varchar(64),amount1 varchar(64) ,remarks1 varchar(64),production_name2 varchar(288),nums2 varchar(64),unit2 varchar(64),unit_price2 varchar(64),amount2 varchar(64) ,remarks2 varchar(64),production_name3 varchar(288),nums3 varchar(64),unit3 varchar(64),unit_price3 varchar(64),amount3 varchar(64) ,remarks3 varchar(64),production_name4 varchar(288),nums4 varchar(64),unit4 varchar(64),unit_price4 varchar(64),amount4 varchar(64) ,remarks4 varchar(64),production_name5 varchar(288),nums5 varchar(64),unit5 varchar(64),unit_price5 varchar(64),amount5 varchar(64) ,remarks5 varchar(64),production_name6 varchar(288),nums6 varchar(64),unit6 varchar(64),unit_price6 varchar(64),amount6 varchar(64) ,remarks6 varchar(64),all_amount varchar(64),commission varchar(64)) " % (
                    no))

            cursor.execute(
                "INSERT INTO delivery_%s(purchase_order,client_name,client_adress,saler,delivery_date,production_name1,nums1,unit1,unit_price1,amount1,remarks1,production_name2,nums2,unit2,unit_price2,amount2,remarks2,production_name3,nums3,unit3,unit_price3,amount3,remarks3,production_name4,nums4,unit4,unit_price4,amount4,remarks4,production_name5,nums5,unit5,unit_price5,amount5,remarks5,production_name6,nums6,unit6,unit_price6,amount6,remarks6,all_amount,commission) VALUE ('%s','%s','%s','%s','%s','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0.00','0.00')" % (
                    delivery_no, purchase_order, company_name, client_adress, saler, get_time))
        else:
            # 若存在，更新
            cursor.execute("UPDATE delivery_%s SET client_name='%s',client_adress='%s',saler='%s' " % (
                delivery_no, company_name, client_adress, saler_name))

        cursor.close()
        database.commit()
        database.close()



    '''生成合同结算单'''
    if request.form.get('create_contract_account', '') != '':

	try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        get_order = request.form.get('create_contract_account', '')

	'''
	    获取日期 客户名称 合同编号 税种 合同金额 终端成本 
	'''

	cursor.execute("SELECT order_date,company_name,tax_type,order_amount from orders where order_number='%s' "%(get_order))

	order_mes = cursor.fetchall()

	cursor.execute("SELECT all_const from production_orders where order_number='%s'"%(get_order))
	tem_cost = cursor.fetchall()

	tem_cost_sum = 0.0
	for cost in tem_cost:
	    tem_cost_sum += float(cost[0])

	
	#生成合同结算表 
	cursor.execute("SELECT client_name from contract_accountant where purchase_order='%s'"%(get_order))
	if_order = cursor.fetchall()
	print('if_order',if_order)

	if any(if_order):
	    print('存在,更新')
	    cursor.execute("SELECT tax_type from orders where  order_number='%s'"%(get_order))

	    tax_value = order_mes[0][3]

	    if_tax = cursor.fetchall()
	    print('if_taxif_taxif_tax',if_tax)
	    if if_tax[0][0] == "不含税":
	 	tax_value = 0.0
	   
	    cursor.execute("UPDATE contract_accountant SET order_date='%s',client_name='%s',purchase_order='%s',tax_type='%s',order_amount='%s',tax='%s',tem_cost='%s' where purchase_order='%s' "%(order_mes[0][0],order_mes[0][1],get_order,order_mes[0][2],order_mes[0][3],float(tax_value)*0.1,tem_cost_sum,get_order))



	else:
	    print('不存在,新建')
	    cursor.execute("SELECT tax_type from orders where  order_number='%s'"%(get_order))

	    if_tax = cursor.fetchall()
	    tax_value = order_mes[0][3]

	    if if_tax[0][0] == "不含税":
	 	tax_value = 0.0

	    profit = order_mes[0][3] - float(tax_value)*0.1 - tem_cost_sum
 
	    cursor.execute("INSERT INTO contract_accountant(order_date,client_name,purchase_order,tax_type,order_amount,tax,tem_cost,servers_cost,fittings_cost,softwares_cost,reimbursement,consult_cost,freight,after_sales,profit) VALUE ('%s','%s','%s','%s','%s','%s','%s',0.0,0.0,0.0,0.0,0.0,0.0,0.0,%s)"% (order_mes[0][0],order_mes[0][1],get_order,order_mes[0][2],order_mes[0][3],float(tax_value)*0.1,tem_cost_sum,profit))
	
	cursor.close()
      	database.commit()
	database.close()
	 


    '''删除记录'''

    def reset_delete(id, remove_order):
        app = current_app._get_current_object()
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("DELETE FROM orders WHERE id=%s" % id)

        # cursor.execute("ALTER TABLE orders DROP id")
        # cursor.execute("ALTER TABLE orders ADD id INT( 8 ) NOT NULL FIRST")
        # cursor.execute("ALTER TABLE orders MODIFY COLUMN id INT( 8 ) NOT NULL AUTO_INCREMENT,ADD PRIMARY KEY(id)")

        # 删除对应的送货单
        cursor.execute("DROP TABLE delivery_%s" % (remove_order))

        cursor.close()
        database.commit()
        database.close()

    # 增加  
    add = request.form.get('add', '')

    if add == 'add_true':
	get_date = time.strftime('%Y-%m-%d', time.localtime(time.time()))
        add_item = Orders(order_date=get_date,company_name='edit', order_number='edit', product_type='edit',product_price=0.0,product_num=0,tax_type='增值税',order_amount=0.0, adress='edit', client_name='edit',
                          tel='-', saler='edit', saler_tel='-', apartment='云终端')
        db.session.add(add_item)
        db.session.commit()

        # 删除数据
    ids = request.form.get('ids[]', '')
    remove_name = request.form.get('remove_name[]', '')
    remove_order = request.form.get('remove_order[]', '')

    if ids and remove_name != " ":

        """建立表格ID与数据表ID的关联"""

        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("SELECT id from orders where apartment='云终端' ")
        data = cursor.fetchall()

        if len(data) != 0:

            input_get = []
            output_get = []

            get_data = []
            for i, w in enumerate(data):
                get_data.append(w[0])

            id_from_table = []
            id_from_mysql = []
            for i, datas in enumerate(get_data):
                id_from_table.append(i + 1)
                id_from_mysql.append(datas)

            id_concect = dict(zip(id_from_table, id_from_mysql))
            print 'id_concect云终端', id_concect

        reset_delete(id_concect[int(ids)], remove_order[-10:])

    if request.method == 'POST':
        data = request.form.get('data', '')

        if data != '':
            # 根据返回的number查找contract中的文件名
            if Contract.query.filter_by(number=json.loads(data)["number"]).first() is not None:
                filename = Contract.query.filter_by(number=json.loads(data)["number"]).first().name
            else:
                filename = ''

            return simplejson.dumps({"filename": filename})
        else:
            return simplejson.dumps({"filename": ''})
    else:
        return render_template('orders/orders.html')


@main.route('/orders/return_json', methods=['GET', 'POST'])
@login_required
def orders_return_json():
    app = current_app._get_current_object()
    try:
        '''warning:这里需要设置为环境获取'''
        db = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
        cursor = db.cursor()
    except:
        print 'MySQL connect fail...'
    cursor.execute("SELECT * from orders where apartment='云终端' ")
    data = cursor.fetchall()
    cursor.close()
    db.close()
    jsonData = []

    for n, row in enumerate(data):
        # print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['company_name'] = row[1]
        result['order_number'] = row[2]
        result['tax_type'] = row[3]
        result['adress'] = row[4]
        result['client_name'] = row[5]
        result['tel'] = row[6]
        result['saler'] = row[7]
        result['saler_tel'] = row[8]
        result['apartment'] = row[9]
	result['order_date'] = row[10]
	result['product_type'] = row[11]
	result['product_price'] = row[12]
        result['product_num'] = row[13]
	result['order_amount'] = row[14]	

	result['length'] = len(data)

        jsonData.append(result)
    return json.dumps(jsonData)


# 系统集成部 订单
@main.route('/orders_integrate', methods=['GET', 'POST'])
@login_required
def orders_integrate():
    # if request.method == 'POST':
    id = request.form.get('row[id]', '')
    order_date = request.form.get('row[order_date]')
    company_name = request.form.get('row[company_name]', '')
    order_number = request.form.get('row[order_number]', '')
    product_type = request.form.get('row[product_type]', '')
    product_price = request.form.get('row[product_price]', '')
    product_num = request.form.get('row[product_num]', '')
    order_amount = request.form.get('row[order_amount]', '')
    tax_type = request.form.get('row[tax_type]', '')
    adress = request.form.get('row[adress]', '')
    client_name = request.form.get('row[client_name]', '')
    tel = request.form.get('row[tel]', '')
    saler = request.form.get('row[saler]', '')
    saler_tel = request.form.get('row[saler_tel]', '')
    apartment = request.form.get('row[apartment]', '')
    oldValue = request.form.get('oldValue', '')

    # 获取要生成的通知单的单号
    create_production_orders = request.form.get('create_production_orders', '')
    # 要生成的送货列表单号
    delivery_orders = request.form.get('create_delivery_orders', '')

    """建立表格ID与数据表ID的关联"""

    try:
        '''warning:这里需要设置为环境获取'''
        database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
        cursor = database.cursor()
    except:
        print 'MySQL connect fail...'

    cursor.execute("SELECT id from orders where  apartment='系统集成部' ")
    data = cursor.fetchall()

    if len(data) != 0:

        input_get = []
        output_get = []

        get_data = []
        for i, w in enumerate(data):
            get_data.append(w[0])

        id_from_table = []
        id_from_mysql = []
        for i, datas in enumerate(get_data):
            id_from_table.append(i + 1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table, id_from_mysql))
        print id_concect

    if id != '':
        old_Value = Orders.query.filter_by(id=id_concect[int(id)]).first()
        if old_Value is not None:
            print "更新数据"
 	    Orders.query.filter_by(id=id_concect[int(id)]).update(
                {"order_date":order_date,"company_name": company_name, "order_number": order_number.strip(),"product_type":product_type,"product_price":product_price,"product_num":product_num,"order_amount":order_amount,"tax_type": tax_type,
                 "adress": adress, "client_name": client_name, "tel": tel, "saler": saler, "saler_tel": saler_tel,
                 "apartment": apartment})
	
            '''当orders修改时自动修改Production_Orders中的信息'''
            production = Production_Orders.query.filter_by(order_number=order_number).first()
            if production is not None:
                Production_Orders.query.filter_by(order_number=order_number).update(
                    {"company_name": company_name, "order_number": order_number,
                     "adress": adress, "client_name": client_name, "client_tel": tel, "saler_name": saler,
                     "saler_tel": saler_tel})

            '''当orders修改时自动修改delivery中的信息'''
            delivery = Delivery_Orders.query.filter_by(purchase_order=order_number).first()
            if delivery is not None:
                Delivery_Orders.query.filter_by(purchase_order=order_number).update(
                    {"client_name": company_name, "saler": saler})

            '''当orders修改时自动修改合同结算中的信息'''
	    print('orders修改自动修改合同结算信息')
            contract_accountant = ContractAccountant.query.filter_by(purchase_order=order_number).first()
            if contract_accountant is not None:
                #更新合同金额
                ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"order_amount": order_amount})
	        #若为增值税，更新税金
	        tax_type = ContractAccountant.query.filter_by(purchase_order=order_number).first().tax_type
		if tax_type == "增值税":
		    ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"tax": float(order_amount)*0.1})
	        db.session.commit()

		#计算 利润=合同金额-税金-终端成本-服务器成本-配件成本-软件成本-报销费用-杂费-运费-得利税
	        order_amount = ContractAccountant.query.filter_by(purchase_order=order_number).first().order_amount
		tax = ContractAccountant.query.filter_by(purchase_order=order_number).first().tax
		tem_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().tem_cost	
		servers_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().servers_cost
	 	fittings_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().fittings_cost
		softwares_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().softwares_cost
		reimbursement = ContractAccountant.query.filter_by(purchase_order=order_number).first().reimbursement
		consult_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().consult_cost
		freight = ContractAccountant.query.filter_by(purchase_order=order_number).first().freight
		after_sales = ContractAccountant.query.filter_by(purchase_order=order_number).first().after_sales

		print('计算 利润')
		print(order_amount,tax,tem_cost,servers_cost,fittings_cost,softwares_cost,reimbursement,consult_cost,freight,after_sales)
		profit = order_amount-tax-tem_cost-servers_cost-fittings_cost-softwares_cost-reimbursement-consult_cost-freight-after_sales
	 	#print(profit)
                ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"profit":profit })


            db.session.commit()

    '''生成生产通知单'''
    if create_production_orders != '':
        # 生产单数据表中的个数
        list_production = []
        for i in db.session.query(Production_Orders.order_number).all():
            list_production.append(i[0])

        get_year = time.strftime('%Y', time.localtime(time.time()))
        get_month = time.strftime('%m', time.localtime(time.time()))

        if len(list_production) == 0:
            '''给通知单号赋值'''
            # requisition_number =  str(get_year) + str(get_month) + str(0001)
            requisition_number = get_year + '000001'

        else:
            # 获取数据表中通知单号的最大值
            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

            cursor.execute("SELECT requisition_number from production_orders")
            data = cursor.fetchall()
            get_data = []
            for i, w in enumerate(data):
                get_data.append(w[0])
                # print get_data
                # n = len(data)
                print 'max:', long(max(get_data))

            # 获取最大编号的后四位
            # max_number = '%04d' % (int(max(get_data)[-4:]) + 1)
            # requisition_number = get_year + get_month + max_number
            requisition_number = long(max(get_data)) + 1

        print 'requisition_number：', requisition_number

        # 获取orders里的信息
        company_name = Orders.query.filter_by(order_number=create_production_orders).first().company_name
        adress = Orders.query.filter_by(order_number=create_production_orders).first().adress
        client_name = Orders.query.filter_by(order_number=create_production_orders).first().client_name
        client_tel = Orders.query.filter_by(order_number=create_production_orders).first().tel
        saler_name = Orders.query.filter_by(order_number=create_production_orders).first().saler
        saler_tel = Orders.query.filter_by(order_number=create_production_orders).first().saler_tel

        add_production = Production_Orders(company_name=company_name, order_number=create_production_orders,
                                           requisition_number=requisition_number, adress=adress,
                                           client_name=client_name, client_tel=client_tel, saler_name=saler_name,
                                           saler_tel=saler_tel, delivery_way='edit',
                                           model='edit', cpu='edit', cpu_other='edit', memory='edit',
                                           memory_other='edit', harddisk='edit',
                                           harddisk_other='edit', usb='edit', usb_other='edit', com='edit',
                                           com_other='edit', network='edit', wireless='edit',
                                           wireless_other='edit', test1='edit', test2='edit', test3='edit',
                                           test4='edit', os='edit', os_version='edit', trademark='edit', logo='edit',
                                           instructions='edit',
                                           certificate='edit', warrantycard='edit', discs='edit', package='edit',
                                           label='edit', label_content='edit',
                                           install='', lend='', return_data='', series_number='', nums='0',
                                           delivery_data='',
                                           tester='', test_data='', remarks='', auditor='', product_price='0.0',
                                           memory_price='0.0', harddisk_price='0.0', wireless_price='0.0',
                                           discs_price='0.0',
                                           install_price='0.0', all_const='0.0')

        db.session.add(add_production)
        db.session.commit()

    if request.form.get('create_delivery_orders', '') != '':

        # 获取要生成的送货单的单号
        delivery_order = request.form.get('create_delivery_orders', '')
        # print '00000000000000',delivery_order

        '''生成送货单编号'''
        # 送货单数据表中的个数
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("SELECT no from delivery_orders")
        delivery_data = cursor.fetchall()

        get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

        print '个数:', len(delivery_data)

        if len(delivery_data) == 0:
            '''给送货单号赋值'''
            no = 2017000001
        else:
            # 获取数据表中送货单号的最大值

            get_data = []
            for i, w in enumerate(delivery_data):
                get_data.append(w[0])

                print 'max!!!!!!!!', long(max(get_data))

            no = long(max(get_data)) + 1



        # 获取系统时间 
        get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

        # 获取orders里的信息   
        company_name = Orders.query.filter_by(order_number=delivery_order).first().company_name
        saler = Orders.query.filter_by(order_number=delivery_order).first().saler

        # 生成送货单列表   
        add_delivery = Delivery_Orders(no=no, purchase_order=delivery_order, client_name=company_name, saler=saler,
                                       delivery_date=get_time)

        db.session.add(add_delivery)
        db.session.commit()

        # 生成送货单产品数据表
        if cursor.execute("show tables like '%s' " % ('delivery_' + str(no))) != 1:

            # 获取送货单中相应信息
            delivery_no = Delivery_Orders.query.filter_by(no=no).first().no
            purchase_order = Delivery_Orders.query.filter_by(no=no).first().purchase_order
            company_name = Delivery_Orders.query.filter_by(no=no).first().client_name
            saler = Delivery_Orders.query.filter_by(no=no).first().saler
            client_adress = Orders.query.filter_by(order_number=delivery_order).first().adress

            get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

            print '送货单产品表不存在，新建'

            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

            cursor.execute(
                "CREATE TABLE delivery_%s(id int PRIMARY KEY NOT NULL AUTO_INCREMENT,purchase_order varchar(64),client_name varchar(64),client_adress varchar(64),saler varchar(64),delivery_date varchar(64),production_name1 varchar(64),nums1 varchar(64),unit1 varchar(64),unit_price1 varchar(64),amount1 varchar(64) ,remarks1 varchar(64),production_name2 varchar(64),nums2 varchar(64),unit2 varchar(64),unit_price2 varchar(64),amount2 varchar(64) ,remarks2 varchar(64),production_name3 varchar(64),nums3 varchar(64),unit3 varchar(64),unit_price3 varchar(64),amount3 varchar(64) ,remarks3 varchar(64),production_name4 varchar(64),nums4 varchar(64),unit4 varchar(64),unit_price4 varchar(64),amount4 varchar(64) ,remarks4 varchar(64),production_name5 varchar(64),nums5 varchar(64),unit5 varchar(64),unit_price5 varchar(64),amount5 varchar(64) ,remarks5 varchar(64),production_name6 varchar(64),nums6 varchar(64),unit6 varchar(64),unit_price6 varchar(64),amount6 varchar(64) ,remarks6 varchar(64),all_amount varchar(64),commission varchar(64)) " % (
                    no))

            cursor.execute(
                "INSERT INTO delivery_%s(purchase_order,client_name,client_adress,saler,delivery_date,production_name1,nums1,unit1,unit_price1,amount1,remarks1,production_name2,nums2,unit2,unit_price2,amount2,remarks2,production_name3,nums3,unit3,unit_price3,amount3,remarks3,production_name4,nums4,unit4,unit_price4,amount4,remarks4,production_name5,nums5,unit5,unit_price5,amount5,remarks5,production_name6,nums6,unit6,unit_price6,amount6,remarks6,all_amount,commission) VALUE ('%s','%s','%s','%s','%s','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0.00','0.00')" % (
                    delivery_no, purchase_order, company_name, client_adress, saler, get_time))
        else:
            # 若存在，更新
            cursor.execute("UPDATE delivery_%s SET client_name='%s',client_adress='%s',saler='%s' " % (
                delivery_no, company_name, client_adress, saler_name))

    '''生成合同结算单'''
    if request.form.get('create_contract_account', '') != '':

	try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        get_order = request.form.get('create_contract_account', '')

	'''
	    获取日期 客户名称 合同编号 税种 合同金额 终端成本 
	'''

	cursor.execute("SELECT order_date,company_name,tax_type,order_amount from orders where order_number='%s' "%(get_order))

	order_mes = cursor.fetchall()

	cursor.execute("SELECT all_const from production_orders where order_number='%s'"%(get_order))
	tem_cost = cursor.fetchall()

	tem_cost_sum = 0.0
	for cost in tem_cost:
	    tem_cost_sum += float(cost[0])

	
	#生成合同结算表 
	cursor.execute("SELECT client_name from contract_accountant where purchase_order='%s'"%(get_order))
	if_order = cursor.fetchall()
	print('if_order',if_order)

	if any(if_order):
	    print('存在,更新')
	    cursor.execute("SELECT tax_type from orders where  order_number='%s'"%(get_order))

	    if_tax = cursor.fetchall()

	    tax_value = order_mes[0][3]

	    if if_tax[0][0] == "不含税":
	 	tax_value = 0.0

	    cursor.execute("UPDATE contract_accountant SET order_date='%s',client_name='%s',purchase_order='%s',tax_type='%s',order_amount='%s',tax='%s',tem_cost='%s' where purchase_order='%s' "%(order_mes[0][0],order_mes[0][1],get_order,order_mes[0][2],order_mes[0][3],float(tax_value)*0.1,tem_cost_sum,get_order))



	else:
	    print('不存在,新建')
	    cursor.execute("SELECT tax_type from orders where  order_number='%s'"%(get_order))

	    if_tax = cursor.fetchall()

	    tax_value = order_mes[0][3]

	    if if_tax[0][0] == "不含税":
	 	tax_value = 0.0

	    profit = order_mes[0][3] - float(tax_value)*0.1 - tem_cost_sum
 
	    cursor.execute("INSERT INTO contract_accountant(order_date,client_name,purchase_order,tax_type,order_amount,tax,tem_cost,servers_cost,fittings_cost,softwares_cost,reimbursement,consult_cost,freight,after_sales,profit) VALUE ('%s','%s','%s','%s','%s','%s','%s',0.0,0.0,0.0,0.0,0.0,0.0,0.0,%s)"% (order_mes[0][0],order_mes[0][1],get_order,order_mes[0][2],order_mes[0][3],float(tax_value)*0.1,tem_cost_sum,profit))
	
	cursor.close()
      	database.commit()
	database.close()

    '''删除记录'''

    def reset_delete(id, remove_order):
        app = current_app._get_current_object()
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("DELETE FROM orders WHERE id=%s" % id)

        # cursor.execute("ALTER TABLE orders DROP id")
        # cursor.execute("ALTER TABLE orders ADD id INT( 8 ) NOT NULL FIRST")
        # cursor.execute("ALTER TABLE orders MODIFY COLUMN id INT( 8 ) NOT NULL AUTO_INCREMENT,ADD PRIMARY KEY(id)")

        # 删除对应的送货单
        cursor.execute("DROP TABLE delivery_%s" % (remove_order))

        cursor.close()
        database.commit()
        database.close()

    # 增加  
    add = request.form.get('add', '')

    if add == 'add_true':
	get_date = time.strftime('%Y-%m-%d', time.localtime(time.time()))
        add_item = Orders(order_date=get_date,company_name='edit', order_number='edit', product_type='edit',product_price=0.0,product_num=0,tax_type='增值税',order_amount=0.0, adress='edit', client_name='edit',tel='-', saler='edit', saler_tel='-', apartment='系统集成部')

	db.session.add(add_item)
        db.session.commit()

        # 删除数据
    ids = request.form.get('ids[]', '')
    remove_name = request.form.get('remove_name[]', '')
    remove_order = request.form.get('remove_order[]', '')

    if ids and remove_name != " ":
        """建立表格ID与数据表ID的关联"""
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("SELECT id from orders where apartment='系统集成部' ")
        data = cursor.fetchall()

        if len(data) != 0:

            input_get = []
            output_get = []

            get_data = []
            for i, w in enumerate(data):
                get_data.append(w[0])

            id_from_table = []
            id_from_mysql = []
            for i, datas in enumerate(get_data):
                id_from_table.append(i + 1)
                id_from_mysql.append(datas)

            id_concect = dict(zip(id_from_table, id_from_mysql))
            print 'id_concect系统集成部', id_concect

        reset_delete(id_concect[int(ids)], remove_order[-10:])

    if request.method == 'POST':
        data = request.form.get('data', '')
        # print "++++++--++",json.loads(data)["number"]
        if data != '':
            # 根据返回的number查找contract中的文件名
            if Contract.query.filter_by(number=json.loads(data)["number"]).first() is not None:
                filename = Contract.query.filter_by(number=json.loads(data)["number"]).first().name
            else:
                filename = ''

            return simplejson.dumps({"filename": filename})
        else:
            return simplejson.dumps({"filename": ''})
    else:
        return render_template('orders/orders_integrate.html')


@main.route('/orders_integrate/return_json', methods=['GET', 'POST'])
@login_required
def orders_integrate_return_json():
    app = current_app._get_current_object()
    try:
        '''warning:这里需要设置为环境获取'''
        db = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
        cursor = db.cursor()
    except:
        print 'MySQL connect fail...'
    cursor.execute("SELECT * from orders where apartment='系统集成部' ")
    data = cursor.fetchall()
    cursor.close()
    db.close()
    jsonData = []

    for n, row in enumerate(data):
        # print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['company_name'] = row[1]
        result['order_number'] = row[2]
        result['tax_type'] = row[3]
        result['adress'] = row[4]
        result['client_name'] = row[5]
        result['tel'] = row[6]
        result['saler'] = row[7]
        result['saler_tel'] = row[8]
        result['apartment'] = row[9]
        result['order_date'] = row[10]
        result['product_type'] = row[11]
        result['product_price'] = row[12]
        result['product_num'] = row[13]
        result['order_amount'] = row[14]
	result['length'] = len(data)
        jsonData.append(result)

    return json.dumps(jsonData)




# 电力部 订单
@main.route('/orders_electric', methods=['GET', 'POST'])
@login_required
def orders_electric():
    # if request.method == 'POST':
    id = request.form.get('row[id]', '')
    order_date = request.form.get('row[order_date]')
    company_name = request.form.get('row[company_name]', '')
    order_number = request.form.get('row[order_number]', '')
    product_type = request.form.get('row[product_type]', '')
    product_price = request.form.get('row[product_price]', '')
    product_num = request.form.get('row[product_num]', '')
    order_amount = request.form.get('row[order_amount]', '')
    tax_type = request.form.get('row[tax_type]', '')
    adress = request.form.get('row[adress]', '')
    client_name = request.form.get('row[client_name]', '')
    tel = request.form.get('row[tel]', '')
    saler = request.form.get('row[saler]', '')
    saler_tel = request.form.get('row[saler_tel]', '')
    apartment = request.form.get('row[apartment]', '')
    oldValue = request.form.get('oldValue', '')

    # 获取要生成的通知单的单号
    create_production_orders = request.form.get('create_production_orders', '')

    # 要生成的送货列表单号
    delivery_orders = request.form.get('create_delivery_orders', '')

    """建立表格ID与数据表ID的关联"""
    try:
        '''warning:这里需要设置为环境获取'''
        database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
        cursor = database.cursor()
    except:
        print 'MySQL connect fail...'

    cursor.execute("SELECT id from orders where  apartment='电力部' ")
    data = cursor.fetchall()

    if len(data) != 0:

        input_get = []
        output_get = []

        get_data = []
        for i, w in enumerate(data):
            get_data.append(w[0])

        id_from_table = []
        id_from_mysql = []
        for i, datas in enumerate(get_data):
            id_from_table.append(i + 1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table, id_from_mysql))
        print id_concect

    if id != '':
        old_Value = Orders.query.filter_by(id=id_concect[int(id)]).first()
        if old_Value is not None:
            print "更新数据"
	    Orders.query.filter_by(id=id_concect[int(id)]).update(
                {"order_date":order_date,"company_name": company_name, "order_number": order_number.strip(),"product_type":product_type,"product_price":product_price,"product_num":product_num,"order_amount":order_amount,"tax_type": tax_type,
                 "adress": adress, "client_name": client_name, "tel": tel, "saler": saler, "saler_tel": saler_tel,
                 "apartment": apartment})	

            '''当orders修改时自动修改Production_Orders中的信息'''
            production = Production_Orders.query.filter_by(order_number=order_number).first()
            if production is not None:
                Production_Orders.query.filter_by(order_number=order_number).update(
                    {"company_name": company_name, "order_number": order_number,
                     "adress": adress, "client_name": client_name, "client_tel": tel, "saler_name": saler,
                     "saler_tel": saler_tel})

            '''当orders修改时自动修改delivery中的信息'''
            delivery = Delivery_Orders.query.filter_by(purchase_order=order_number).first()
            if delivery is not None:
                Delivery_Orders.query.filter_by(purchase_order=order_number).update(
                    {"client_name": company_name, "saler": saler})

            '''当orders修改时自动修改合同结算中的信息'''
	    print('orders修改自动修改合同结算信息')
            contract_accountant = ContractAccountant.query.filter_by(purchase_order=order_number).first()
            if contract_accountant is not None:
                #更新合同金额
                ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"order_amount": order_amount})
	        #若为增值税，更新税金
	        tax_type = ContractAccountant.query.filter_by(purchase_order=order_number).first().tax_type
		if tax_type == "增值税":
		    ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"tax": float(order_amount)*0.1})
	        db.session.commit()

		#计算 利润=合同金额-税金-终端成本-服务器成本-配件成本-软件成本-报销费用-杂费-运费-得利税
	        order_amount = ContractAccountant.query.filter_by(purchase_order=order_number).first().order_amount
		tax = ContractAccountant.query.filter_by(purchase_order=order_number).first().tax
		tem_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().tem_cost	
		servers_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().servers_cost
	 	fittings_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().fittings_cost
		softwares_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().softwares_cost
		reimbursement = ContractAccountant.query.filter_by(purchase_order=order_number).first().reimbursement
		consult_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().consult_cost
		freight = ContractAccountant.query.filter_by(purchase_order=order_number).first().freight
		after_sales = ContractAccountant.query.filter_by(purchase_order=order_number).first().after_sales

		print('计算 利润')
		print(order_amount,tax,tem_cost,servers_cost,fittings_cost,softwares_cost,reimbursement,consult_cost,freight,after_sales)
		profit = order_amount-tax-tem_cost-servers_cost-fittings_cost-softwares_cost-reimbursement-consult_cost-freight-after_sales
	 	#print(profit)
                ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"profit":profit })

            db.session.commit()

    '''生成生产通知单'''
    if create_production_orders != '':
        # 生产单数据表中的个数
        list_production = []
        for i in db.session.query(Production_Orders.order_number).all():
            list_production.append(i[0])
        print '个数:', len(list_production)

        get_year = time.strftime('%Y', time.localtime(time.time()))
        get_month = time.strftime('%m', time.localtime(time.time()))

        if len(list_production) == 0:
            '''给通知单号赋值'''
            # requisition_number =  str(get_year) + str(get_month) + str(0001)
            requisition_number = get_year + '000001'

        else:
            # 获取数据表中通知单号的最大值
            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

            cursor.execute("SELECT requisition_number from production_orders")
            data = cursor.fetchall()
            get_data = []
            for i, w in enumerate(data):
                get_data.append(w[0])
                # print get_data
                # n = len(data)
                print 'max:', long(max(get_data))

            # 获取最大编号的后四位
            # max_number = '%04d' % (int(max(get_data)[-4:]) + 1)
            # requisition_number = get_year + get_month + max_number
            requisition_number = long(max(get_data)) + 1

        print 'requisition_number：', requisition_number

        # 获取orders里的信息
        company_name = Orders.query.filter_by(order_number=create_production_orders).first().company_name
        adress = Orders.query.filter_by(order_number=create_production_orders).first().adress
        client_name = Orders.query.filter_by(order_number=create_production_orders).first().client_name
        client_tel = Orders.query.filter_by(order_number=create_production_orders).first().tel
        saler_name = Orders.query.filter_by(order_number=create_production_orders).first().saler
        saler_tel = Orders.query.filter_by(order_number=create_production_orders).first().saler_tel

        add_production = Production_Orders(company_name=company_name, order_number=create_production_orders,
                                           requisition_number=requisition_number, adress=adress,
                                           client_name=client_name, client_tel=client_tel, saler_name=saler_name,
                                           saler_tel=saler_tel, delivery_way='edit',
                                           model='edit', cpu='edit', cpu_other='edit', memory='edit',
                                           memory_other='edit', harddisk='edit',
                                           harddisk_other='edit', usb='edit', usb_other='edit', com='edit',
                                           com_other='edit', network='edit', wireless='edit',
                                           wireless_other='edit', test1='edit', test2='edit', test3='edit',
                                           test4='edit', os='edit', os_version='edit', trademark='edit', logo='edit',
                                           instructions='edit',
                                           certificate='edit', warrantycard='edit', discs='edit', package='edit',
                                           label='edit', label_content='edit',
                                           install='', lend='', return_data='', series_number='', nums='0',
                                           delivery_data='',
                                           tester='', test_data='', remarks='', auditor='', product_price='0.0',
                                           memory_price='0.0', harddisk_price='0.0', wireless_price='0.0',
                                           discs_price='0.0',
                                           install_price='0.0', all_const='0.0')

        db.session.add(add_production)
        db.session.commit()

    if request.form.get('create_delivery_orders', '') != '':

        # 获取要生成的送货单的单号
        delivery_order = request.form.get('create_delivery_orders', '')
        # print '00000000000000',delivery_order

        '''生成送货单编号'''
        # 送货单数据表中的个数
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("SELECT no from delivery_orders")
        delivery_data = cursor.fetchall()
        # cursor.close()
        # database.close() 

        get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

        print '个数:', len(delivery_data)

        if len(delivery_data) == 0:
            '''给送货单号赋值'''
            no = 2017000001
        else:
            # 获取数据表中送货单号的最大值

            get_data = []
            for i, w in enumerate(delivery_data):
                get_data.append(w[0])

                print 'max!!!!!!!!', long(max(get_data))

            no = long(max(get_data)) + 1

            # print '++++++++++------+',no

        # 获取系统时间 
        get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

        # 获取orders里的信息   
        company_name = Orders.query.filter_by(order_number=delivery_order).first().company_name
        saler = Orders.query.filter_by(order_number=delivery_order).first().saler

        # 生成送货单列表   
        add_delivery = Delivery_Orders(no=no, purchase_order=delivery_order, client_name=company_name, saler=saler,
                                       delivery_date=get_time)

        db.session.add(add_delivery)
        db.session.commit()

        # 生成送货单产品数据表
        if cursor.execute("show tables like '%s' " % ('delivery_' + str(no))) != 1:

            # 获取送货单中相应信息
            delivery_no = Delivery_Orders.query.filter_by(no=no).first().no
            purchase_order = Delivery_Orders.query.filter_by(no=no).first().purchase_order
            company_name = Delivery_Orders.query.filter_by(no=no).first().client_name
            saler = Delivery_Orders.query.filter_by(no=no).first().saler
            client_adress = Orders.query.filter_by(order_number=delivery_order).first().adress

            get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

            print '送货单产品表不存在，新建'

            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

            cursor.execute(
                "CREATE TABLE delivery_%s(id int PRIMARY KEY NOT NULL AUTO_INCREMENT,purchase_order varchar(64),client_name varchar(64),client_adress varchar(64),saler varchar(64),delivery_date varchar(64),production_name1 varchar(64),nums1 varchar(64),unit1 varchar(64),unit_price1 varchar(64),amount1 varchar(64) ,remarks1 varchar(64),production_name2 varchar(64),nums2 varchar(64),unit2 varchar(64),unit_price2 varchar(64),amount2 varchar(64) ,remarks2 varchar(64),production_name3 varchar(64),nums3 varchar(64),unit3 varchar(64),unit_price3 varchar(64),amount3 varchar(64) ,remarks3 varchar(64),production_name4 varchar(64),nums4 varchar(64),unit4 varchar(64),unit_price4 varchar(64),amount4 varchar(64) ,remarks4 varchar(64),production_name5 varchar(64),nums5 varchar(64),unit5 varchar(64),unit_price5 varchar(64),amount5 varchar(64) ,remarks5 varchar(64),production_name6 varchar(64),nums6 varchar(64),unit6 varchar(64),unit_price6 varchar(64),amount6 varchar(64) ,remarks6 varchar(64),all_amount varchar(64),commission varchar(64)) " % (
                    no))

            cursor.execute(
                "INSERT INTO delivery_%s(purchase_order,client_name,client_adress,saler,delivery_date,production_name1,nums1,unit1,unit_price1,amount1,remarks1,production_name2,nums2,unit2,unit_price2,amount2,remarks2,production_name3,nums3,unit3,unit_price3,amount3,remarks3,production_name4,nums4,unit4,unit_price4,amount4,remarks4,production_name5,nums5,unit5,unit_price5,amount5,remarks5,production_name6,nums6,unit6,unit_price6,amount6,remarks6,all_amount,commission) VALUE ('%s','%s','%s','%s','%s','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0.00','0.00')" % (
                    delivery_no, purchase_order, company_name, client_adress, saler, get_time))
        else:
            # 若存在，更新
            cursor.execute("UPDATE delivery_%s SET client_name='%s',client_adress='%s',saler='%s' " % (
                delivery_no, company_name, client_adress, saler_name))

    '''生成合同结算单'''
    if request.form.get('create_contract_account', '') != '':

	try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        get_order = request.form.get('create_contract_account', '')

	'''
	    获取日期 客户名称 合同编号 税种 合同金额 终端成本 
	'''

	cursor.execute("SELECT order_date,company_name,tax_type,order_amount from orders where order_number='%s' "%(get_order))

	order_mes = cursor.fetchall()

	cursor.execute("SELECT all_const from production_orders where order_number='%s'"%(get_order))
	tem_cost = cursor.fetchall()

	tem_cost_sum = 0.0
	for cost in tem_cost:
	    tem_cost_sum += float(cost[0])

	
	#生成合同结算表 
	cursor.execute("SELECT client_name from contract_accountant where purchase_order='%s'"%(get_order))
	if_order = cursor.fetchall()
	print('if_order',if_order)

	if any(if_order):
	    print('存在,更新')
	    cursor.execute("SELECT tax_type from orders where  order_number='%s'"%(get_order))

	    tax_value = order_mes[0][3]

	    if_tax = cursor.fetchall()
	    if if_tax[0][0] == "不含税":
	 	tax_value = 0.0
	


	    cursor.execute("UPDATE contract_accountant SET order_date='%s',client_name='%s',purchase_order='%s',tax_type='%s',order_amount='%s',tax='%s',tem_cost='%s' where purchase_order='%s' "%(order_mes[0][0],order_mes[0][1],get_order,order_mes[0][2],order_mes[0][3],float(tax_value)*0.1,tem_cost_sum,get_order))



	else:
	    print('不存在,新建')
	    cursor.execute("SELECT tax_type from orders where  order_number='%s'"%(get_order))

	    tax_value = order_mes[0][3]

	    if_tax = cursor.fetchall()
	    if if_tax[0][0] == "不含税":
	 	tax_value = 0.0

	    profit = order_mes[0][3] - float(tax_value)*0.1 - tem_cost_sum
 
	    cursor.execute("INSERT INTO contract_accountant(order_date,client_name,purchase_order,tax_type,order_amount,tax,tem_cost,servers_cost,fittings_cost,softwares_cost,reimbursement,consult_cost,freight,after_sales,profit) VALUE ('%s','%s','%s','%s','%s','%s','%s',0.0,0.0,0.0,0.0,0.0,0.0,0.0,%s)"% (order_mes[0][0],order_mes[0][1],get_order,order_mes[0][2],order_mes[0][3],float(tax_value)*0.1,tem_cost_sum,profit))
	
	cursor.close()
      	database.commit()
	database.close()

    '''删除记录'''

    def reset_delete(id, remove_order):
        app = current_app._get_current_object()
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("DELETE FROM orders WHERE id=%s" % id)

        # cursor.execute("ALTER TABLE orders DROP id")
        # cursor.execute("ALTER TABLE orders ADD id INT( 8 ) NOT NULL FIRST")
        # cursor.execute("ALTER TABLE orders MODIFY COLUMN id INT( 8 ) NOT NULL AUTO_INCREMENT,ADD PRIMARY KEY(id)")


        # 删除对应的送货单
        cursor.execute("DROP TABLE delivery_%s" % (remove_order))

        cursor.close()
        database.commit()
        database.close()

    # 增加  
    add = request.form.get('add', '')

    if add == 'add_true':
	get_date = time.strftime('%Y-%m-%d', time.localtime(time.time()))
	add_item = Orders(order_date=get_date,company_name='edit', order_number='edit', product_type='edit',product_price=0.0,product_num=0,tax_type='增值税',order_amount=0.0, adress='edit', client_name='edit',
                          tel='-', saler='edit', saler_tel='-', apartment='电力部')
        db.session.add(add_item)
        db.session.commit()

        # 删除数据
    ids = request.form.get('ids[]', '')
    remove_name = request.form.get('remove_name[]', '')
    remove_order = request.form.get('remove_order[]', '')

    if ids and remove_name != " ":

        """建立表格ID与数据表ID的关联"""

        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("SELECT id from orders where apartment='电力部' ")
        data = cursor.fetchall()

        if len(data) != 0:

            input_get = []
            output_get = []

            get_data = []
            for i, w in enumerate(data):
                get_data.append(w[0])

            id_from_table = []
            id_from_mysql = []
            for i, datas in enumerate(get_data):
                id_from_table.append(i + 1)
                id_from_mysql.append(datas)

            id_concect = dict(zip(id_from_table, id_from_mysql))
            print 'id_concect电力部', id_concect

        reset_delete(id_concect[int(ids)], remove_order[-10:])

    if request.method == 'POST':
        data = request.form.get('data', '')
        # print "++++++--++",json.loads(data)["number"]
        if data != '':
            # 根据返回的number查找contract中的文件名
            if Contract.query.filter_by(number=json.loads(data)["number"]).first() is not None:
                filename = Contract.query.filter_by(number=json.loads(data)["number"]).first().name
            else:
                filename = ''

            print '返回json ', filename

            return simplejson.dumps({"filename": filename})
        else:
            return simplejson.dumps({"filename": ''})
    else:
        return render_template('orders/orders_electric.html')


@main.route('/orders_electric/return_json', methods=['GET', 'POST'])
@login_required
def orders_electric_return_json():
    app = current_app._get_current_object()
    try:
        '''warning:这里需要设置为环境获取'''
        db = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
        cursor = db.cursor()
    except:
        print 'MySQL connect fail...'
    cursor.execute("SELECT * from orders where apartment='电力部' ")
    data = cursor.fetchall()
    cursor.close()
    db.close()
    jsonData = []

    for n, row in enumerate(data):
        # print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['company_name'] = row[1]
        result['order_number'] = row[2]
        result['tax_type'] = row[3]
        result['adress'] = row[4]
        result['client_name'] = row[5]
        result['tel'] = row[6]
        result['saler'] = row[7]
        result['saler_tel'] = row[8]
        result['apartment'] = row[9]
        result['order_date'] = row[10]
        result['product_type'] = row[11]
        result['product_price'] = row[12]
        result['product_num'] = row[13]
        result['order_amount'] = row[14]
        result['length'] = len(data)

        jsonData.append(result)
    print jsonData
    return json.dumps(jsonData)


#商务部 订单
@main.route('/orders_commerce', methods=['GET', 'POST'])
@login_required
def orders_commerce():
    # if request.method == 'POST':
    id = request.form.get('row[id]', '')
    order_date = request.form.get('row[order_date]')
    company_name = request.form.get('row[company_name]', '')
    order_number = request.form.get('row[order_number]', '')
    product_type = request.form.get('row[product_type]', '')
    product_price = request.form.get('row[product_price]', '')
    product_num = request.form.get('row[product_num]', '')
    order_amount = request.form.get('row[order_amount]', '')
    tax_type = request.form.get('row[tax_type]', '')
    adress = request.form.get('row[adress]', '')
    client_name = request.form.get('row[client_name]', '')
    tel = request.form.get('row[tel]', '')
    saler = request.form.get('row[saler]', '')
    saler_tel = request.form.get('row[saler_tel]', '')
    apartment = request.form.get('row[apartment]', '')
    oldValue = request.form.get('oldValue', '')



    # 获取要生成的通知单的单号
    create_production_orders = request.form.get('create_production_orders', '')

    # 要生成的送货列表单号
    delivery_orders = request.form.get('create_delivery_orders', '')

    """建立表格ID与数据表ID的关联"""

    try:
        '''warning:这里需要设置为环境获取'''
        database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
        cursor = database.cursor()
    except:
        print 'MySQL connect fail...'

    cursor.execute("SELECT id from orders where  apartment='商务部' ")
    data = cursor.fetchall()

    if len(data) != 0:

        input_get = []
        output_get = []

        get_data = []
        for i, w in enumerate(data):
            get_data.append(w[0])

        id_from_table = []
        id_from_mysql = []
        for i, datas in enumerate(get_data):
            id_from_table.append(i + 1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table, id_from_mysql))
        print id_concect

    if id != '':
        old_Value = Orders.query.filter_by(id=id_concect[int(id)]).first()
        if old_Value is not None:
            print "更新数据"
	    Orders.query.filter_by(id=id_concect[int(id)]).update(
                {"order_date":order_date,"company_name": company_name, "order_number": order_number.strip(),"product_type":product_type,"product_price":product_price,"product_num":product_num,"order_amount":order_amount,"tax_type": tax_type,
                 "adress": adress, "client_name": client_name, "tel": tel, "saler": saler, "saler_tel": saler_tel,
                 "apartment": apartment})
	
            '''当orders修改时自动修改Production_Orders中的信息'''
            production = Production_Orders.query.filter_by(order_number=order_number).first()
            if production is not None:
                Production_Orders.query.filter_by(order_number=order_number).update(
                    {"company_name": company_name, "order_number": order_number,
                     "adress": adress, "client_name": client_name, "client_tel": tel, "saler_name": saler,
                     "saler_tel": saler_tel})

            '''当orders修改时自动修改delivery中的信息'''
            delivery = Delivery_Orders.query.filter_by(purchase_order=order_number).first()
            if delivery is not None:
                Delivery_Orders.query.filter_by(purchase_order=order_number).update(
                    {"client_name": company_name, "saler": saler})

            '''当orders修改时自动修改合同结算中的信息'''
	    print('orders修改自动修改合同结算信息')
            contract_accountant = ContractAccountant.query.filter_by(purchase_order=order_number).first()
            if contract_accountant is not None:
                #更新合同金额
                ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"order_amount": order_amount})
	        #若为增值税，更新税金
	        tax_type = ContractAccountant.query.filter_by(purchase_order=order_number).first().tax_type
		if tax_type == "增值税":
		    ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"tax": float(order_amount)*0.1})
	        db.session.commit()

		#计算 利润=合同金额-税金-终端成本-服务器成本-配件成本-软件成本-报销费用-杂费-运费-得利税
	        order_amount = ContractAccountant.query.filter_by(purchase_order=order_number).first().order_amount
		tax = ContractAccountant.query.filter_by(purchase_order=order_number).first().tax
		tem_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().tem_cost	
		servers_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().servers_cost
	 	fittings_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().fittings_cost
		softwares_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().softwares_cost
		reimbursement = ContractAccountant.query.filter_by(purchase_order=order_number).first().reimbursement
		consult_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().consult_cost
		freight = ContractAccountant.query.filter_by(purchase_order=order_number).first().freight
		after_sales = ContractAccountant.query.filter_by(purchase_order=order_number).first().after_sales

		print('计算 利润')
		print(order_amount,tax,tem_cost,servers_cost,fittings_cost,softwares_cost,reimbursement,consult_cost,freight,after_sales)
		profit = order_amount-tax-tem_cost-servers_cost-fittings_cost-softwares_cost-reimbursement-consult_cost-freight-after_sales
	 	#print(profit)
                ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"profit":profit })

            db.session.commit()

    '''生成生产通知单'''
    if create_production_orders != '':
        # 生产单数据表中的个数
        list_production = []
        for i in db.session.query(Production_Orders.order_number).all():
            list_production.append(i[0])
        print '个数:', len(list_production)

        get_year = time.strftime('%Y', time.localtime(time.time()))
        get_month = time.strftime('%m', time.localtime(time.time()))

        if len(list_production) == 0:
            '''给通知单号赋值'''
            # requisition_number =  str(get_year) + str(get_month) + str(0001)
            requisition_number = get_year + '000001'

        else:
            # 获取数据表中通知单号的最大值
            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

            cursor.execute("SELECT requisition_number from production_orders")
            data = cursor.fetchall()
            get_data = []
            for i, w in enumerate(data):
                get_data.append(w[0])
                # print get_data
                # n = len(data)
                print 'max:', long(max(get_data))

            # 获取最大编号的后四位
            # max_number = '%04d' % (int(max(get_data)[-4:]) + 1)
            # requisition_number = get_year + get_month + max_number
            requisition_number = long(max(get_data)) + 1

        print 'requisition_number：', requisition_number

        # 获取orders里的信息
        company_name = Orders.query.filter_by(order_number=create_production_orders).first().company_name
        adress = Orders.query.filter_by(order_number=create_production_orders).first().adress
        client_name = Orders.query.filter_by(order_number=create_production_orders).first().client_name
        client_tel = Orders.query.filter_by(order_number=create_production_orders).first().tel
        saler_name = Orders.query.filter_by(order_number=create_production_orders).first().saler
        saler_tel = Orders.query.filter_by(order_number=create_production_orders).first().saler_tel

        add_production = Production_Orders(company_name=company_name, order_number=create_production_orders,
                                           requisition_number=requisition_number, adress=adress,
                                           client_name=client_name, client_tel=client_tel, saler_name=saler_name,
                                           saler_tel=saler_tel, delivery_way='edit',
                                           model='edit', cpu='edit', cpu_other='edit', memory='edit',
                                           memory_other='edit', harddisk='edit',
                                           harddisk_other='edit', usb='edit', usb_other='edit', com='edit',
                                           com_other='edit', network='edit', wireless='edit',
                                           wireless_other='edit', test1='edit', test2='edit', test3='edit',
                                           test4='edit', os='edit', os_version='edit', trademark='edit', logo='edit',
                                           instructions='edit',
                                           certificate='edit', warrantycard='edit', discs='edit', package='edit',
                                           label='edit', label_content='edit',
                                           install='', lend='', return_data='', series_number='', nums='0',
                                           delivery_data='',
                                           tester='', test_data='', remarks='', auditor='', product_price='0.0',
                                           memory_price='0.0', harddisk_price='0.0', wireless_price='0.0',
                                           discs_price='0.0',
                                           install_price='0.0', all_const='0.0')

        db.session.add(add_production)
        db.session.commit()

    if request.form.get('create_delivery_orders', '') != '':

        # 获取要生成的送货单的单号
        delivery_order = request.form.get('create_delivery_orders', '')
        # print '00000000000000',delivery_order

        '''生成送货单编号'''
        # 送货单数据表中的个数
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("SELECT no from delivery_orders")
        delivery_data = cursor.fetchall()
        # cursor.close()
        # database.close() 

        get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

        print '个数:', len(delivery_data)

        if len(delivery_data) == 0:
            '''给送货单号赋值'''
            no = 2017000001
        else:
            # 获取数据表中送货单号的最大值

            get_data = []
            for i, w in enumerate(delivery_data):
                get_data.append(w[0])

                print 'max!!!!!!!!', long(max(get_data))

            no = long(max(get_data)) + 1

            # print '++++++++++------+',no

        # 获取系统时间 
        get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

        # 获取orders里的信息   
        company_name = Orders.query.filter_by(order_number=delivery_order).first().company_name
        saler = Orders.query.filter_by(order_number=delivery_order).first().saler

        # 生成送货单列表   
        add_delivery = Delivery_Orders(no=no, purchase_order=delivery_order, client_name=company_name, saler=saler,
                                       delivery_date=get_time)

        db.session.add(add_delivery)
        db.session.commit()

        # 生成送货单产品数据表
        if cursor.execute("show tables like '%s' " % ('delivery_' + str(no))) != 1:

            # 获取送货单中相应信息
            delivery_no = Delivery_Orders.query.filter_by(no=no).first().no
            purchase_order = Delivery_Orders.query.filter_by(no=no).first().purchase_order
            company_name = Delivery_Orders.query.filter_by(no=no).first().client_name
            saler = Delivery_Orders.query.filter_by(no=no).first().saler
            client_adress = Orders.query.filter_by(order_number=delivery_order).first().adress

            get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

            print '送货单产品表不存在，新建'

            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

            cursor.execute(
                "CREATE TABLE delivery_%s(id int PRIMARY KEY NOT NULL AUTO_INCREMENT,purchase_order varchar(64),client_name varchar(64),client_adress varchar(64),saler varchar(64),delivery_date varchar(64),production_name1 varchar(64),nums1 varchar(64),unit1 varchar(64),unit_price1 varchar(64),amount1 varchar(64) ,remarks1 varchar(64),production_name2 varchar(64),nums2 varchar(64),unit2 varchar(64),unit_price2 varchar(64),amount2 varchar(64) ,remarks2 varchar(64),production_name3 varchar(64),nums3 varchar(64),unit3 varchar(64),unit_price3 varchar(64),amount3 varchar(64) ,remarks3 varchar(64),production_name4 varchar(64),nums4 varchar(64),unit4 varchar(64),unit_price4 varchar(64),amount4 varchar(64) ,remarks4 varchar(64),production_name5 varchar(64),nums5 varchar(64),unit5 varchar(64),unit_price5 varchar(64),amount5 varchar(64) ,remarks5 varchar(64),production_name6 varchar(64),nums6 varchar(64),unit6 varchar(64),unit_price6 varchar(64),amount6 varchar(64) ,remarks6 varchar(64),all_amount varchar(64),commission varchar(64)) " % (
                    no))

            cursor.execute(
                "INSERT INTO delivery_%s(purchase_order,client_name,client_adress,saler,delivery_date,production_name1,nums1,unit1,unit_price1,amount1,remarks1,production_name2,nums2,unit2,unit_price2,amount2,remarks2,production_name3,nums3,unit3,unit_price3,amount3,remarks3,production_name4,nums4,unit4,unit_price4,amount4,remarks4,production_name5,nums5,unit5,unit_price5,amount5,remarks5,production_name6,nums6,unit6,unit_price6,amount6,remarks6,all_amount,commission) VALUE ('%s','%s','%s','%s','%s','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0.00','0.00')" % (
                    delivery_no, purchase_order, company_name, client_adress, saler, get_time))
        else:
            # 若存在，更新
            cursor.execute("UPDATE delivery_%s SET client_name='%s',client_adress='%s',saler='%s' " % (
                delivery_no, company_name, client_adress, saler_name))

    '''生成合同结算单'''
    if request.form.get('create_contract_account', '') != '':

	try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        get_order = request.form.get('create_contract_account', '')

	'''
	    获取日期 客户名称 合同编号 税种 合同金额 终端成本 
	'''

	cursor.execute("SELECT order_date,company_name,tax_type,order_amount from orders where order_number='%s' "%(get_order))

	order_mes = cursor.fetchall()

	cursor.execute("SELECT all_const from production_orders where order_number='%s'"%(get_order))
	tem_cost = cursor.fetchall()

	tem_cost_sum = 0.0
	for cost in tem_cost:
	    tem_cost_sum += float(cost[0])

	
	#生成合同结算表 
	cursor.execute("SELECT client_name from contract_accountant where purchase_order='%s'"%(get_order))
	if_order = cursor.fetchall()
	print('if_order',if_order)

	if any(if_order):
	    print('存在,更新')
	    cursor.execute("SELECT tax_type from orders where  order_number='%s'"%(get_order))

	    tax_value = order_mes[0][3]

	    if_tax = cursor.fetchall()
	    if if_tax[0][0] == "不含税":
	 	tax_value = 0.0
	


	    cursor.execute("UPDATE contract_accountant SET order_date='%s',client_name='%s',purchase_order='%s',tax_type='%s',order_amount='%s',tax='%s',tem_cost='%s' where purchase_order='%s' "%(order_mes[0][0],order_mes[0][1],get_order,order_mes[0][2],order_mes[0][3],float(tax_value)*0.1,tem_cost_sum,get_order))



	else:
	    print('不存在,新建')
	    cursor.execute("SELECT tax_type from orders where  order_number='%s'"%(get_order))

	    tax_value = order_mes[0][3]

	    if_tax = cursor.fetchall()
	    if if_tax[0][0] == "不含税":
	 	tax_value = 0.0

	    profit = order_mes[0][3] - float(tax_value)*0.1 - tem_cost_sum
 
	    cursor.execute("INSERT INTO contract_accountant(order_date,client_name,purchase_order,tax_type,order_amount,tax,tem_cost,servers_cost,fittings_cost,softwares_cost,reimbursement,consult_cost,freight,after_sales,profit) VALUE ('%s','%s','%s','%s','%s','%s','%s',0.0,0.0,0.0,0.0,0.0,0.0,0.0,%s)"% (order_mes[0][0],order_mes[0][1],get_order,order_mes[0][2],order_mes[0][3],float(tax_value)*0.1,tem_cost_sum,profit))
	
	cursor.close()
      	database.commit()
	database.close()

    '''删除记录'''

    def reset_delete(id, remove_order):
        app = current_app._get_current_object()
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("DELETE FROM orders WHERE id=%s" % id)

        # cursor.execute("ALTER TABLE orders DROP id")
        # cursor.execute("ALTER TABLE orders ADD id INT( 8 ) NOT NULL FIRST")
        # cursor.execute("ALTER TABLE orders MODIFY COLUMN id INT( 8 ) NOT NULL AUTO_INCREMENT,ADD PRIMARY KEY(id)")


        # 删除对应的送货单
        cursor.execute("DROP TABLE delivery_%s" % (remove_order))

        cursor.close()
        database.commit()
        database.close()

    # 增加  
    add = request.form.get('add', '')

    if add == 'add_true':
        get_date = time.strftime('%Y-%m-%d', time.localtime(time.time()))
	add_item = Orders(order_date=get_date,company_name='edit', order_number='edit', product_type='edit',product_price=0.0,product_num=0,tax_type='增值税',order_amount=0.0, adress='edit', client_name='edit',
                          tel='-', saler='edit', saler_tel='-', apartment='商务部')
        db.session.add(add_item)
        db.session.commit()

        # 删除数据
    ids = request.form.get('ids[]', '')
    remove_name = request.form.get('remove_name[]', '')
    remove_order = request.form.get('remove_order[]', '')

    if ids and remove_name != " ":

        """建立表格ID与数据表ID的关联"""

        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("SELECT id from orders where apartment='商务部' ")
        data = cursor.fetchall()

        if len(data) != 0:

            input_get = []
            output_get = []

            get_data = []
            for i, w in enumerate(data):
                get_data.append(w[0])

            id_from_table = []
            id_from_mysql = []
            for i, datas in enumerate(get_data):
                id_from_table.append(i + 1)
                id_from_mysql.append(datas)

            id_concect = dict(zip(id_from_table, id_from_mysql))
            print 'id_concect商务部', id_concect

        reset_delete(id_concect[int(ids)], remove_order[-10:])

    if request.method == 'POST':
        data = request.form.get('data', '')
        # print "++++++--++",json.loads(data)["number"]
        if data != '':
            # 根据返回的number查找contract中的文件名
            if Contract.query.filter_by(number=json.loads(data)["number"]).first() is not None:
                filename = Contract.query.filter_by(number=json.loads(data)["number"]).first().name
            else:
                filename = ''

            print '返回json ', filename

            return simplejson.dumps({"filename": filename})
        else:
            return simplejson.dumps({"filename": ''})
    else:
        return render_template('orders/orders_commerce.html')


@main.route('/orders_commerce/return_json', methods=['GET', 'POST'])
@login_required
def orders_commerce_return_json():
    app = current_app._get_current_object()
    try:
        '''warning:这里需要设置为环境获取'''
        db = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
        cursor = db.cursor()
    except:
        print 'MySQL connect fail...'
    cursor.execute("SELECT * from orders where apartment='商务部' ")
    data = cursor.fetchall()
    cursor.close()
    db.close()
    jsonData = []

    for n, row in enumerate(data):
        # print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
	result['company_name'] = row[1]
        result['order_number'] = row[2]
        result['tax_type'] = row[3]
        result['adress'] = row[4]
        result['client_name'] = row[5]
        result['tel'] = row[6]
        result['saler'] = row[7]
        result['saler_tel'] = row[8]
        result['apartment'] = row[9]
        result['order_date'] = row[10]
        result['product_type'] = row[11]
        result['product_price'] = row[12]
        result['product_num'] = row[13]
        result['order_amount'] = row[14]

        result['length'] = len(data)

        jsonData.append(result)
    print jsonData
    return json.dumps(jsonData)


# 其它 订单
@main.route('/orders_others', methods=['GET', 'POST'])
@login_required
def orders_others():
    # if request.method == 'POST':
    id = request.form.get('row[id]', '')
    order_date = request.form.get('row[order_date]')
    company_name = request.form.get('row[company_name]', '')
    order_number = request.form.get('row[order_number]', '')
    product_type = request.form.get('row[product_type]', '')
    product_price = request.form.get('row[product_price]', '')
    product_num = request.form.get('row[product_num]', '')
    order_amount = request.form.get('row[order_amount]', '')
    tax_type = request.form.get('row[tax_type]', '')
    adress = request.form.get('row[adress]', '')
    client_name = request.form.get('row[client_name]', '')
    tel = request.form.get('row[tel]', '')
    saler = request.form.get('row[saler]', '')
    saler_tel = request.form.get('row[saler_tel]', '')
    apartment = request.form.get('row[apartment]', '')
    oldValue = request.form.get('oldValue', '')



    # 获取要生成的通知单的单号
    create_production_orders = request.form.get('create_production_orders', '')

    # 要生成的送货列表单号
    delivery_orders = request.form.get('create_delivery_orders', '')

    """建立表格ID与数据表ID的关联"""

    try:
        '''warning:这里需要设置为环境获取'''
        database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
        cursor = database.cursor()
    except:
        print 'MySQL connect fail...'

    cursor.execute(
        "SELECT id from orders where  apartment!='云终端' and apartment!='系统集成部' and apartment!='电力部' and apartment!='商务部' ")
    data = cursor.fetchall()

    if len(data) != 0:

        input_get = []
        output_get = []

        get_data = []
        for i, w in enumerate(data):
            get_data.append(w[0])

        id_from_table = []
        id_from_mysql = []
        for i, datas in enumerate(get_data):
            id_from_table.append(i + 1)
            id_from_mysql.append(datas)

        id_concect = dict(zip(id_from_table, id_from_mysql))
        print id_concect

    if id != '':
        old_Value = Orders.query.filter_by(id=id_concect[int(id)]).first()
        if old_Value is not None:
            print "更新数据"
	    Orders.query.filter_by(id=id_concect[int(id)]).update(
                {"order_date":order_date,"company_name": company_name, "order_number": order_number.strip(),"product_type":product_type,"product_price":product_price,"product_num":product_num,"order_amount":order_amount,"tax_type": tax_type,
                 "adress": adress, "client_name": client_name, "tel": tel, "saler": saler, "saler_tel": saler_tel,
                 "apartment": apartment})

            '''当orders修改时自动修改Production_Orders中的信息'''
            production = Production_Orders.query.filter_by(order_number=order_number).first()
            if production is not None:
                Production_Orders.query.filter_by(order_number=order_number).update(
                    {"company_name": company_name, "order_number": order_number,
                     "adress": adress, "client_name": client_name, "client_tel": tel, "saler_name": saler,
                     "saler_tel": saler_tel})

            '''当orders修改时自动修改delivery中的信息'''
            delivery = Delivery_Orders.query.filter_by(purchase_order=order_number).first()
            if delivery is not None:
                Delivery_Orders.query.filter_by(purchase_order=order_number).update(
                    {"client_name": company_name, "saler": saler})

            '''当orders修改时自动修改合同结算中的信息'''
	    print('orders修改自动修改合同结算信息')
            contract_accountant = ContractAccountant.query.filter_by(purchase_order=order_number).first()
            if contract_accountant is not None:
                #更新合同金额
                ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"order_amount": order_amount})
	        #若为增值税，更新税金
	        tax_type = ContractAccountant.query.filter_by(purchase_order=order_number).first().tax_type
		if tax_type == "增值税":
		    ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"tax": float(order_amount)*0.1})
	        db.session.commit()

		#计算 利润=合同金额-税金-终端成本-服务器成本-配件成本-软件成本-报销费用-杂费-运费-得利税
	        order_amount = ContractAccountant.query.filter_by(purchase_order=order_number).first().order_amount
		tax = ContractAccountant.query.filter_by(purchase_order=order_number).first().tax
		tem_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().tem_cost	
		servers_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().servers_cost
	 	fittings_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().fittings_cost
		softwares_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().softwares_cost
		reimbursement = ContractAccountant.query.filter_by(purchase_order=order_number).first().reimbursement
		consult_cost = ContractAccountant.query.filter_by(purchase_order=order_number).first().consult_cost
		freight = ContractAccountant.query.filter_by(purchase_order=order_number).first().freight
		after_sales = ContractAccountant.query.filter_by(purchase_order=order_number).first().after_sales

		print('计算 利润')
		print(order_amount,tax,tem_cost,servers_cost,fittings_cost,softwares_cost,reimbursement,consult_cost,freight,after_sales)
		profit = order_amount-tax-tem_cost-servers_cost-fittings_cost-softwares_cost-reimbursement-consult_cost-freight-after_sales
	 	#print(profit)
                ContractAccountant.query.filter_by(purchase_order=order_number).update(
                    {"profit":profit })

            db.session.commit()

    '''生成生产通知单'''
    if create_production_orders != '':
        # 生产单数据表中的个数
        list_production = []
        for i in db.session.query(Production_Orders.order_number).all():
            list_production.append(i[0])
        print '个数:', len(list_production)

        get_year = time.strftime('%Y', time.localtime(time.time()))
        get_month = time.strftime('%m', time.localtime(time.time()))

        if len(list_production) == 0:
            '''给通知单号赋值'''
            # requisition_number =  str(get_year) + str(get_month) + str(0001)
            requisition_number = get_year + '000001'

        else:
            # 获取数据表中通知单号的最大值
            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

            cursor.execute("SELECT requisition_number from production_orders")
            data = cursor.fetchall()
            get_data = []
            for i, w in enumerate(data):
                get_data.append(w[0])
                # print get_data
                # n = len(data)
                print 'max:', long(max(get_data))

            # 获取最大编号的后四位
            # max_number = '%04d' % (int(max(get_data)[-4:]) + 1)
            # requisition_number = get_year + get_month + max_number
            requisition_number = long(max(get_data)) + 1

        print 'requisition_number：', requisition_number

        # 获取orders里的信息
        company_name = Orders.query.filter_by(order_number=create_production_orders).first().company_name
        adress = Orders.query.filter_by(order_number=create_production_orders).first().adress
        client_name = Orders.query.filter_by(order_number=create_production_orders).first().client_name
        client_tel = Orders.query.filter_by(order_number=create_production_orders).first().tel
        saler_name = Orders.query.filter_by(order_number=create_production_orders).first().saler
        saler_tel = Orders.query.filter_by(order_number=create_production_orders).first().saler_tel

        add_production = Production_Orders(company_name=company_name, order_number=create_production_orders,
                                           requisition_number=requisition_number, adress=adress,
                                           client_name=client_name, client_tel=client_tel, saler_name=saler_name,
                                           saler_tel=saler_tel, delivery_way='edit',
                                           model='edit', cpu='edit', cpu_other='edit', memory='edit',
                                           memory_other='edit', harddisk='edit',
                                           harddisk_other='edit', usb='edit', usb_other='edit', com='edit',
                                           com_other='edit', network='edit', wireless='edit',
                                           wireless_other='edit', test1='edit', test2='edit', test3='edit',
                                           test4='edit', os='edit', os_version='edit', trademark='edit', logo='edit',
                                           instructions='edit',
                                           certificate='edit', warrantycard='edit', discs='edit', package='edit',
                                           label='edit', label_content='edit',
                                           install='', lend='', return_data='', series_number='', nums='0',
                                           delivery_data='',
                                           tester='', test_data='', remarks='', auditor='', product_price='0.0',
                                           memory_price='0.0', harddisk_price='0.0', wireless_price='0.0',
                                           discs_price='0.0',
                                           install_price='0.0', all_const='0.0')

        db.session.add(add_production)
        db.session.commit()

    if request.form.get('create_delivery_orders', '') != '':

        # 获取要生成的送货单的单号
        delivery_order = request.form.get('create_delivery_orders', '')
        # print '00000000000000',delivery_order

        '''生成送货单编号'''
        # 送货单数据表中的个数
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("SELECT no from delivery_orders")
        delivery_data = cursor.fetchall()
        # cursor.close()
        # database.close() 

        get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

        print '个数:', len(delivery_data)

        if len(delivery_data) == 0:
            '''给送货单号赋值'''
            no = 2017000001
        else:
            # 获取数据表中送货单号的最大值

            get_data = []
            for i, w in enumerate(delivery_data):
                get_data.append(w[0])

                print 'max!!!!!!!!', long(max(get_data))

            no = long(max(get_data)) + 1

            # print '++++++++++------+',no

        # 获取系统时间 
        get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

        # 获取orders里的信息   
        company_name = Orders.query.filter_by(order_number=delivery_order).first().company_name
        saler = Orders.query.filter_by(order_number=delivery_order).first().saler

        # 生成送货单列表   
        add_delivery = Delivery_Orders(no=no, purchase_order=delivery_order, client_name=company_name, saler=saler,
                                       delivery_date=get_time)

        db.session.add(add_delivery)
        db.session.commit()

        # 生成送货单产品数据表
        if cursor.execute("show tables like '%s' " % ('delivery_' + str(no))) != 1:

            # 获取送货单中相应信息
            delivery_no = Delivery_Orders.query.filter_by(no=no).first().no
            purchase_order = Delivery_Orders.query.filter_by(no=no).first().purchase_order
            company_name = Delivery_Orders.query.filter_by(no=no).first().client_name
            saler = Delivery_Orders.query.filter_by(no=no).first().saler
            client_adress = Orders.query.filter_by(order_number=delivery_order).first().adress

            get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

            print '送货单产品表不存在，新建'

            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

            cursor.execute(
                "CREATE TABLE delivery_%s(id int PRIMARY KEY NOT NULL AUTO_INCREMENT,purchase_order varchar(64),client_name varchar(64),client_adress varchar(64),saler varchar(64),delivery_date varchar(64),production_name1 varchar(64),nums1 varchar(64),unit1 varchar(64),unit_price1 varchar(64),amount1 varchar(64) ,remarks1 varchar(64),production_name2 varchar(64),nums2 varchar(64),unit2 varchar(64),unit_price2 varchar(64),amount2 varchar(64) ,remarks2 varchar(64),production_name3 varchar(64),nums3 varchar(64),unit3 varchar(64),unit_price3 varchar(64),amount3 varchar(64) ,remarks3 varchar(64),production_name4 varchar(64),nums4 varchar(64),unit4 varchar(64),unit_price4 varchar(64),amount4 varchar(64) ,remarks4 varchar(64),production_name5 varchar(64),nums5 varchar(64),unit5 varchar(64),unit_price5 varchar(64),amount5 varchar(64) ,remarks5 varchar(64),production_name6 varchar(64),nums6 varchar(64),unit6 varchar(64),unit_price6 varchar(64),amount6 varchar(64) ,remarks6 varchar(64),all_amount varchar(64),commission varchar(64)) " % (
                    no))

            cursor.execute(
                "INSERT INTO delivery_%s(purchase_order,client_name,client_adress,saler,delivery_date,production_name1,nums1,unit1,unit_price1,amount1,remarks1,production_name2,nums2,unit2,unit_price2,amount2,remarks2,production_name3,nums3,unit3,unit_price3,amount3,remarks3,production_name4,nums4,unit4,unit_price4,amount4,remarks4,production_name5,nums5,unit5,unit_price5,amount5,remarks5,production_name6,nums6,unit6,unit_price6,amount6,remarks6,all_amount,commission) VALUE ('%s','%s','%s','%s','%s','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0.00','0.00')" % (
                    delivery_no, purchase_order, company_name, client_adress, saler, get_time))
        else:
            # 若存在，更新
            cursor.execute("UPDATE delivery_%s SET client_name='%s',client_adress='%s',saler='%s' " % (
                delivery_no, company_name, client_adress, saler_name))

    '''生成合同结算单'''
    if request.form.get('create_contract_account', '') != '':

	try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        get_order = request.form.get('create_contract_account', '')

	'''
	    获取日期 客户名称 合同编号 税种 合同金额 终端成本 
	'''

	cursor.execute("SELECT order_date,company_name,tax_type,order_amount from orders where order_number='%s' "%(get_order))

	order_mes = cursor.fetchall()

	cursor.execute("SELECT all_const from production_orders where order_number='%s'"%(get_order))
	tem_cost = cursor.fetchall()

	tem_cost_sum = 0.0
	for cost in tem_cost:
	    tem_cost_sum += float(cost[0])

	
	#生成合同结算表 
	cursor.execute("SELECT client_name from contract_accountant where purchase_order='%s'"%(get_order))
	if_order = cursor.fetchall()
	print('if_order',if_order)

	if any(if_order):
	    print('存在,更新')
	    cursor.execute("SELECT tax_type from orders where  order_number='%s'"%(get_order))

	    tax_value = order_mes[0][3]

	    if_tax = cursor.fetchall()
	    if if_tax[0][0] == "不含税":
	 	tax_value = 0.0
	


	    cursor.execute("UPDATE contract_accountant SET order_date='%s',client_name='%s',purchase_order='%s',tax_type='%s',order_amount='%s',tax='%s',tem_cost='%s' where purchase_order='%s' "%(order_mes[0][0],order_mes[0][1],get_order,order_mes[0][2],order_mes[0][3],float(tax_value)*0.1,tem_cost_sum,get_order))



	else:
	    print('不存在,新建')
	    cursor.execute("SELECT tax_type from orders where  order_number='%s'"%(get_order))

	    tax_value = order_mes[0][3]

	    if_tax = cursor.fetchall()
	    if if_tax[0][0] == "不含税":
	 	tax_value = 0.0

	    profit = order_mes[0][3] - float(tax_value)*0.1 - tem_cost_sum
 
	    cursor.execute("INSERT INTO contract_accountant(order_date,client_name,purchase_order,tax_type,order_amount,tax,tem_cost,servers_cost,fittings_cost,softwares_cost,reimbursement,consult_cost,freight,after_sales,profit) VALUE ('%s','%s','%s','%s','%s','%s','%s',0.0,0.0,0.0,0.0,0.0,0.0,0.0,%s)"% (order_mes[0][0],order_mes[0][1],get_order,order_mes[0][2],order_mes[0][3],float(tax_value)*0.1,tem_cost_sum,profit))
	
	cursor.close()
      	database.commit()
	database.close()

    '''删除记录'''

    def reset_delete(id, remove_order):
        app = current_app._get_current_object()
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("DELETE FROM orders WHERE id=%s" % id)

        # cursor.execute("ALTER TABLE orders DROP id")
        # cursor.execute("ALTER TABLE orders ADD id INT( 8 ) NOT NULL FIRST")
        # cursor.execute("ALTER TABLE orders MODIFY COLUMN id INT( 8 ) NOT NULL AUTO_INCREMENT,ADD PRIMARY KEY(id)")


        # 删除对应的送货单
        #cursor.execute("DROP TABLE delivery_%s" % (remove_order))

        cursor.close()
        database.commit()
        database.close()

    # 增加  
    add = request.form.get('add', '')

    if add == 'add_true':
	get_date = time.strftime('%Y-%m-%d', time.localtime(time.time()))
	add_item = Orders(order_date=get_date,company_name='edit', order_number='edit', product_type='edit',product_price=0.0,product_num=0,tax_type='增值税',order_amount=0.0, adress='edit', client_name='edit',
                          tel='-', saler='edit', saler_tel='-', apartment='其它')
        db.session.add(add_item)
        db.session.commit()

        # 删除数据
    ids = request.form.get('ids[]', '')
    remove_name = request.form.get('remove_name[]', '')
    remove_order = request.form.get('remove_order[]', '')

    if ids and remove_name != " ":

        """建立表格ID与数据表ID的关联"""

        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute(
            "SELECT id from orders  where  apartment!='云终端' and apartment!='系统集成部' and apartment!='电力部' and apartment!='商务部' ")
        data = cursor.fetchall()

        if len(data) != 0:

            input_get = []
            output_get = []

            get_data = []
            for i, w in enumerate(data):
                get_data.append(w[0])

            id_from_table = []
            id_from_mysql = []
            for i, datas in enumerate(get_data):
                id_from_table.append(i + 1)
                id_from_mysql.append(datas)

            id_concect = dict(zip(id_from_table, id_from_mysql))
            print 'id_concect其它', id_concect

        reset_delete(id_concect[int(ids)], remove_order[-10:])

    if request.method == 'POST':
        data = request.form.get('data', '')
        # print "++++++--++",json.loads(data)["number"]
        if data != '':
            # 根据返回的number查找contract中的文件名
            if Contract.query.filter_by(number=json.loads(data)["number"]).first() is not None:
                filename = Contract.query.filter_by(number=json.loads(data)["number"]).first().name
            else:
                filename = ''

            print '返回json ', filename

            return simplejson.dumps({"filename": filename})
        else:
            return simplejson.dumps({"filename": ''})
    else:
        return render_template('orders/orders_others.html')


@main.route('/orders_others/return_json', methods=['GET', 'POST'])
@login_required
def orders_others_return_json():
    app = current_app._get_current_object()
    try:
        '''warning:这里需要设置为环境获取'''
        db = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
        cursor = db.cursor()
    except:
        print 'MySQL connect fail...'
    cursor.execute(
        "SELECT * from orders  where  apartment!='云终端' and apartment!='系统集成部' and apartment!='电力部' and apartment!='商务部' ")
    data = cursor.fetchall()
    cursor.close()
    db.close()
    jsonData = []

    for n, row in enumerate(data):
        # print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
	result['company_name'] = row[1]
        result['order_number'] = row[2]
        result['tax_type'] = row[3]
        result['adress'] = row[4]
        result['client_name'] = row[5]
        result['tel'] = row[6]
        result['saler'] = row[7]
        result['saler_tel'] = row[8]
        result['apartment'] = row[9]
        result['order_date'] = row[10]
        result['product_type'] = row[11]
        result['product_price'] = row[12]
        result['product_num'] = row[13]
        result['order_amount'] = row[14]
        result['length'] = len(data)

        jsonData.append(result)
    print jsonData
    return json.dumps(jsonData)


@main.route('/production_orders', methods=['GET', 'POST'])
@login_required
def production_orders():
    if request.method == 'POST':
        # id = request.form.get('row[id]', '')
        # order_number = request.form.get('row[order_number]', '')
        # 进入编辑页面
        enter_production = request.form.get('row_production_orders_in', '')
        print 'enter_production', enter_production
        if enter_production != '':
            storage_exist = Price_Storage.query.filter_by(requisition_number=enter_production).first()
            if storage_exist is not None:
                print '价格表已存在，不新建'
            else:
                print '价格表不存在，新建'
                add_price_storage = Price_Storage(requisition_number=enter_production, price_C100='0.0',price_AX500='0.0',
                                                  price_AX700='0.0',price_AX700_multi='0.0',price_AX730='0.0', price_AX800='0.0',
                                                  price_E300='0.0', price_T300='0.0', price_T600='0.0',price_N600NW='0.0', price_1GB='0.0',
                                                  price_2GB='0.0', price_4GB='0.0', price_8GB='0.0',
                                                  price_4GBFLASH='0.0', price_8GBFLASH='0.0',
                                                  price_8GBHD='0.0', price_16GBHD='0.0', price_32GBHD='0.0',
                                                  price_64GBHD='0.0', price_128GBHD='0.0',
                                                  price_256GBHD='0.0', price_512GBHD='0.0', price_ARMRTL8188='0.0',
                                                  price_X86Intel='0.0',
                                                  price_drivercd='0.0', price_ThinVirt='0.0')

                db.session.add(add_price_storage)
                db.session.commit()

        def reset_delete(requisition):
            app = current_app._get_current_object()
            try:
                '''warning:这里需要设置为环境获取'''
                database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
                cursor = database.cursor()
            except:
                print 'MySQL connect fail...'

            cursor.execute("DELETE FROM production_orders WHERE requisition_number=%s" % requisition)
            # cursor.execute("ALTER TABLE production_orders DROP id")
            # cursor.execute("ALTER TABLE production_orders ADD id INT( 8 ) NOT NULL FIRST")
            # cursor.execute("ALTER TABLE production_orders MODIFY COLUMN id INT( 8 ) NOT NULL AUTO_INCREMENT,ADD PRIMARY KEY(id)")
            # 删除价格数据表 
            cursor.execute("DELETE FROM price_storage WHERE requisition_number=%s" % requisition)
            # cursor.execute("ALTER TABLE price_storage DROP id")
            # cursor.execute("ALTER TABLE price_storage ADD id INT( 8 ) NOT NULL FIRST")
            # cursor.execute("ALTER TABLE price_storage MODIFY COLUMN id INT( 8 ) NOT NULL AUTO_INCREMENT,ADD PRIMARY KEY(id)")

            # 删除对应的出货记录
            cursor.execute("DELETE FROM fittings_outputs WHERE from_which=%s" % requisition)

            cursor.close()
            database.commit()
            database.close()

        '''删除'''
        remove_name = request.form.get('remove_name[]', '')
        print 'remove_name', remove_name
        if remove_name != "":  # 这里""中不能有空格
            reset_delete(remove_name)

    return render_template('orders/production_orders.html')


@main.route('/production_orders/return_json', methods=['GET', 'POST'])
@login_required
def production_orders_return_json():
    app = current_app._get_current_object()
    try:
        '''warning:这里需要设置为环境获取'''
        db = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
        cursor = db.cursor()
    except:
        print 'MySQL connect fail...'
    cursor.execute("SELECT * from production_orders")
    data = cursor.fetchall()
    cursor.close()
    db.close()
    jsonData = []

    for n, row in enumerate(data):
        # print data[0]
        ##print row[1]
        result = {}
        result['id'] = n + 1
        result['company_name'] = row[1]
        result['order_number'] = row[2]
        result['requisition_number'] = row[3]
        result['adress'] = row[4]
        result['client_name'] = row[5]
        result['client_tel'] = row[6]
        result['saler_name'] = row[7]
        result['saler_tel'] = row[8]
        result['delivery_way'] = row[9]
        result['model'] = row[10]
        result['cpu'] = row[11]
        result['cpu_other'] = row[12]
        result['memory'] = row[13]
        result['memory_other'] = row[14]
        result['harddisk'] = row[15]
        result['harddisk_other'] = row[16]
        result['usb'] = row[17]
        result['usb_other'] = row[18]
        result['com'] = row[19]
        result['com_other'] = row[20]
        result['network'] = row[21]
        result['wireless'] = row[22]
        result['wierless_other'] = row[23]
        result['test1'] = row[24]
        result['test2'] = row[25]
        result['test3'] = row[26]
        result['test4'] = row[27]
        result['os'] = row[28]
        result['os_version'] = row[29]
        result['trademark'] = row[30]
        result['logo'] = row[31]
        result['instructions'] = row[32]
        result['certificate'] = row[33]
        result['warrantycard'] = row[34]
        result['discs'] = row[35]
        result['package'] = row[36]
        result['label'] = row[37]
        result['label_content'] = row[38]
        result['install'] = row[39]
        result['lend'] = row[40]
        result['return_data'] = row[41]
        result['series_number'] = row[42]
        result['nums'] = row[43]
        result['delivery_data'] = row[44]
        result['tester'] = row[45]
        result['test_data'] = row[46]
        result['remarks'] = row[47]
        result['auditor'] = row[48]

        jsonData.append(result)

    return json.dumps(jsonData)


@main.route('/production_model', methods=['GET', 'POST'])
@login_required
def production_model():
    '''获取要进入的通知单号'''
    print 'GET,获取要进入的通知单号'
    orders = request.args.get('in')
    print 'orders', orders

    if Production_Orders.query.filter_by(requisition_number=orders).first() is not None:
        model = Production_Orders.query.filter_by(requisition_number=orders).first().model

    # 当model为edit时(刚新建表)，从库存里读取
    if model == 'edit':
        print '从库存里读取'
        # 获取配件价格信息，配件命名要统一
        if Fittings.query.filter_by(name='2GB内存').first() is not None:
            price_2GB = Fittings.query.filter_by(name='2GB内存').first().price
        else:
            price_2GB = '0.0'
        if Fittings.query.filter_by(name='4GB内存').first() is not None:
            price_4GB = Fittings.query.filter_by(name='4GB内存').first().price
        else:
            price_4GB = '0.0'
        if Fittings.query.filter_by(name='8GB内存').first() is not None:
            price_8GB = Fittings.query.filter_by(name='8GB内存').first().price
        else:
            price_8GB = '0.0'

        if Fittings.query.filter_by(name='4GBFLASH').first() is not None:
            price_4GBFLASH = Fittings.query.filter_by(name='4GBFLASH').first().price
        else:
            price_4GBFLASH = '0.0'

        if Fittings.query.filter_by(name='8GBFLASH').first() is not None:
            price_8GBFLASH = Fittings.query.filter_by(name='8GBFLASH').first().price
        else:
            price_8GBFLASH = '0.0'

        if Fittings.query.filter_by(name='8GB固态硬盘').first() is not None:
            price_8GBHD = Fittings.query.filter_by(name='8GB固态硬盘').first().price
        else:
            price_8GBHD = '0.0'

        if Fittings.query.filter_by(name='16GB固态硬盘').first() is not None:
            price_16GBHD = Fittings.query.filter_by(name='16GB固态硬盘').first().price
        else:
            price_16GBHD = '0.0'

        if Fittings.query.filter_by(name='32GB固态硬盘').first() is not None:
            price_32GBHD = Fittings.query.filter_by(name='32GB固态硬盘').first().price
        else:
            price_32GBHD = '0.0'

        if Fittings.query.filter_by(name='64GB固态硬盘').first() is not None:
            price_64GBHD = Fittings.query.filter_by(name='64GB固态硬盘').first().price
        else:
            price_64GBHD = '0.0'

        if Fittings.query.filter_by(name='128GB固态硬盘').first() is not None:
            price_128GBHD = Fittings.query.filter_by(name='128GB固态硬盘').first().price
        else:
            price_128GBHD = '0.0'

        if Fittings.query.filter_by(name='256GB固态硬盘').first() is not None:
            price_256GBHD = Fittings.query.filter_by(name='256GB固态硬盘').first().price
        else:
            price_256GBHD = '0.0'

        if Fittings.query.filter_by(name='512GB固态硬盘').first() is not None:
            price_512GBHD = Fittings.query.filter_by(name='512GB固态硬盘').first().price
        else:
            price_512GBHD = '0.0'

        if Fittings.query.filter_by(name='ARMRTL8188无线网卡').first() is not None:
            price_ARMRTL8188 = Fittings.query.filter_by(name='ARMRTL8188无线网卡').first().price
        else:
            price_ARMRTL8188 = '0.0'

        if Fittings.query.filter_by(name='X86Intel无线网卡').first() is not None:
            price_X86Intel = Fittings.query.filter_by(name='X86Intel无线网卡').first().price
        else:
            price_X86Intel = '0.0'

        if Fittings.query.filter_by(name='驱动光盘').first() is not None:
            price_drivercd = Fittings.query.filter_by(name='驱动光盘').first().price
        else:
            price_drivercd = '0.0'

        if Fittings.query.filter_by(name='ThinVirt系统光盘').first() is not None:
            price_ThinVirt = Fittings.query.filter_by(name='ThinVirt系统光盘').first().price
        else:
            price_ThinVirt = '0.0'

        # 获取C100单价
        if End_product.query.filter_by(name='C100 云终端').first() is not None:
            price_C100 = End_product.query.filter_by(name='C100 云终端').first().price
            print 'price_C100库存', price_C100
        else:
            price_C100 = '0.0'

            # 获取E300单价
        if End_product.query.filter_by(name='E300 云终端').first() is not None:
            price_E300 = End_product.query.filter_by(name='E300 云终端').first().price
        else:
            price_E300 = '0.0'

            # 获取T300单价
        if End_product.query.filter_by(name='T300').first() is not None:
            price_T300 = End_product.query.filter_by(name='T300').first().price
        else:
            price_T300 = '0.0'

            # 获取T600单价
        if End_product.query.filter_by(name='T600').first() is not None:
            price_T600 = End_product.query.filter_by(name='T600').first().price
        else:
            price_T600 = '0.0'



        # 获取AX500单价
        if Semi_finished.query.filter_by(name='AX500瘦客户机（N2805）').first() is not None:
            price_AX500 = Semi_finished.query.filter_by(name='AX500瘦客户机（N2805）').first().price
            print 'price_AX500库存', price_AX500
        else:
            price_AX500 = '0.0'



        # 获取AX700单价
        if Semi_finished.query.filter_by(name='AX700 瘦客户机 (J192G8G)').first() is not None:
            price_AX700 = Semi_finished.query.filter_by(name='AX700 瘦客户机 (J192G8G)').first().price
            print 'price_AX700库存', price_AX700
        else:
            price_AX700 = '0.0'


        # 获取AX700双网口单价
        if Semi_finished.query.filter_by(name='AX700 瘦客户机双网口 (J1900)').first() is not None:
            price_AX700_multi = Semi_finished.query.filter_by(name='AX700 瘦客户机双网口 (J1900)').first().price
            print 'price_AX700_multi库存', price_AX700_multi
        else:
            price_AX700_multi = '0.0'


        # 获取AX730单价
        if Semi_finished.query.filter_by(name='AX730 瘦客户机(J1900)').first() is not None:
            price_AX730 = Semi_finished.query.filter_by(name='AX730 瘦客户机(J1900)').first().price
        else:
            price_AX730 = '0.0'

        # 获取AX800单价
        if Semi_finished.query.filter_by(name='AX800 迷你电脑').first() is not None:
            price_AX800 = Semi_finished.query.filter_by(name='AX800 迷你电脑').first().price
        else:
            price_AX800 = '0.0'


        # 获取N600NW瘦客户机单价
        if Semi_finished.query.filter_by(name='N600NW瘦客户机(J1900)').first() is not None:
            price_N600NW = Semi_finished.query.filter_by(name='N600NW瘦客户机(J1900)').first().price
        else:
            price_N600NW = '0.0'


    # 从对应通知单中获取相应的价格信息
    if model != 'edit' and model != '':
        print model
        print '从对应通知单中获取相应的价格信息'

        # 获取配件价格信息，配件命名要统一
        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_2GB = Price_Storage.query.filter_by(requisition_number=orders).first().price_2GB
        else:
            price_2GB = '0.0'
        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_4GB = Price_Storage.query.filter_by(requisition_number=orders).first().price_4GB
        else:
            price_4GB = '0.0'
        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_8GB = Price_Storage.query.filter_by(requisition_number=orders).first().price_8GB
        else:
            price_8GB = '0.0'

        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_4GBFLASH = Price_Storage.query.filter_by(requisition_number=orders).first().price_4GBFLASH
        else:
            price_4GBFLASH = '0.0'

        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_8GBFLASH = Price_Storage.query.filter_by(requisition_number=orders).first().price_8GBFLASH
        else:
            price_8GBFLASH = '0.0'

        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_8GBHD = Price_Storage.query.filter_by(requisition_number=orders).first().price_8GBHD
        else:
            price_8GBHD = '0.0'

        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_16GBHD = Price_Storage.query.filter_by(requisition_number=orders).first().price_16GBHD
        else:
            price_16GBHD = '0.0'

        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_32GBHD = Price_Storage.query.filter_by(requisition_number=orders).first().price_32GBHD
        else:
            price_32GBHD = '0.0'

        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_64GBHD = Price_Storage.query.filter_by(requisition_number=orders).first().price_64GBHD
        else:
            price_64GBHD = '0.0'

        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_128GBHD = Price_Storage.query.filter_by(requisition_number=orders).first().price_128GBHD
        else:
            price_128GBHD = '0.0'

        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_256GBHD = Price_Storage.query.filter_by(requisition_number=orders).first().price_256GBHD
        else:
            price_256GBHD = '0.0'

        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_512GBHD = Price_Storage.query.filter_by(requisition_number=orders).first().price_512GBHD
        else:
            price_512GBHD = '0.0'

        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_ARMRTL8188 = Price_Storage.query.filter_by(requisition_number=orders).first().price_ARMRTL8188
        else:
            price_ARMRTL8188 = '0.0'

        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_X86Intel = Price_Storage.query.filter_by(requisition_number=orders).first().price_X86Intel
        else:
            price_X86Intel = '0.0'

        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_drivercd = Price_Storage.query.filter_by(requisition_number=orders).first().price_drivercd
        else:
            price_drivercd = '0.0'

        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_ThinVirt = Price_Storage.query.filter_by(requisition_number=orders).first().price_ThinVirt
        else:
            price_ThinVirt = '0.0'


        # 获取C100单价
        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_C100 = Price_Storage.query.filter_by(requisition_number=orders).first().price_C100
        else:
            price_C100 = 0.0

            # 获取E300单价
        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_E300 = Price_Storage.query.filter_by(requisition_number=orders).first().price_E300
        else:
            price_E300 = 0.0

            # 获取T300单价
        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_T300 = Price_Storage.query.filter_by(requisition_number=orders).first().price_T300
        else:
            price_T300 = 0.0

            # 获取T600单价
        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_T600 = Price_Storage.query.filter_by(requisition_number=orders).first().price_T600
        else:
            price_T600 = 0.0


        # 获取AX500单价
        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_AX500 = Price_Storage.query.filter_by(requisition_number=orders).first().price_AX500
        else:
            price_AX500 = 0.0



        # 获取AX700单价
        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_AX700 = Price_Storage.query.filter_by(requisition_number=orders).first().price_AX700
        else:
            price_AX700 = 0.0

        # 获取AX700双网口单价
        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_AX700_multi = Price_Storage.query.filter_by(requisition_number=orders).first().price_AX700_multi
        else:
            price_AX700_multi = 0.0



            # 获取AX730单价
        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_AX730 = Price_Storage.query.filter_by(requisition_number=orders).first().price_AX730
        else:
            price_AX730 = 0.0

            # 获取AX800单价
        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_AX800 = Price_Storage.query.filter_by(requisition_number=orders).first().price_AX800
        else:
            price_AX800 = 0.0


            # 获取N600NW单价
        if Price_Storage.query.filter_by(requisition_number=orders).first() is not None:
            price_N600NW = Price_Storage.query.filter_by(requisition_number=orders).first().price_N600NW
        else:
            price_N600NW = 0.0


    print '读取相应生产单信息'
    if Production_Orders.query.filter_by(requisition_number=orders).first() is not None:
        # 获取orders里的信息
        company_name = Production_Orders.query.filter_by(requisition_number=orders).first().company_name
        order_number = Production_Orders.query.filter_by(requisition_number=orders).first().order_number
        requisition_number = Production_Orders.query.filter_by(requisition_number=orders).first().requisition_number

        adress = Production_Orders.query.filter_by(requisition_number=orders).first().adress
        client_name = Production_Orders.query.filter_by(requisition_number=orders).first().client_name
        client_tel = Production_Orders.query.filter_by(requisition_number=orders).first().client_tel
        saler_name = Production_Orders.query.filter_by(requisition_number=orders).first().saler_name
        saler_tel = Production_Orders.query.filter_by(requisition_number=orders).first().saler_tel

        delivery_way = Production_Orders.query.filter_by(requisition_number=orders).first().delivery_way
        model = Production_Orders.query.filter_by(requisition_number=orders).first().model
        cpu = Production_Orders.query.filter_by(requisition_number=orders).first().cpu
        cpu_other = Production_Orders.query.filter_by(requisition_number=orders).first().cpu_other
        memory = Production_Orders.query.filter_by(requisition_number=orders).first().memory
        memory_other = Production_Orders.query.filter_by(requisition_number=orders).first().memory_other
        harddisk = Production_Orders.query.filter_by(requisition_number=orders).first().harddisk
        harddisk_other = Production_Orders.query.filter_by(requisition_number=orders).first().harddisk_other
        usb = Production_Orders.query.filter_by(requisition_number=orders).first().usb
        usb_other = Production_Orders.query.filter_by(requisition_number=orders).first().usb_other
        com = Production_Orders.query.filter_by(requisition_number=orders).first().com
        com_other = Production_Orders.query.filter_by(requisition_number=orders).first().com_other
        network = Production_Orders.query.filter_by(requisition_number=orders).first().network
        wireless = Production_Orders.query.filter_by(requisition_number=orders).first().wireless
        wireless_other = Production_Orders.query.filter_by(requisition_number=orders).first().wireless_other
        test1 = Production_Orders.query.filter_by(requisition_number=orders).first().test1
        test2 = Production_Orders.query.filter_by(requisition_number=orders).first().test2
        test3 = Production_Orders.query.filter_by(requisition_number=orders).first().test3
        test4 = Production_Orders.query.filter_by(requisition_number=orders).first().test4
        os = Production_Orders.query.filter_by(requisition_number=orders).first().os
        os_version = Production_Orders.query.filter_by(requisition_number=orders).first().os_version
        trademark = Production_Orders.query.filter_by(requisition_number=orders).first().trademark
        logo = Production_Orders.query.filter_by(requisition_number=orders).first().logo
        instructions = Production_Orders.query.filter_by(requisition_number=orders).first().instructions
        certificate = Production_Orders.query.filter_by(requisition_number=orders).first().certificate
        warrantycard = Production_Orders.query.filter_by(requisition_number=orders).first().warrantycard
        discs = Production_Orders.query.filter_by(requisition_number=orders).first().discs
        package = Production_Orders.query.filter_by(requisition_number=orders).first().package
        label = Production_Orders.query.filter_by(requisition_number=orders).first().label
        label_content = Production_Orders.query.filter_by(requisition_number=orders).first().label_content
        install = Production_Orders.query.filter_by(requisition_number=orders).first().install
        lend = Production_Orders.query.filter_by(requisition_number=orders).first().lend
        return_data = Production_Orders.query.filter_by(requisition_number=orders).first().return_data
        series_number = Production_Orders.query.filter_by(requisition_number=orders).first().series_number
        nums = Production_Orders.query.filter_by(requisition_number=orders).first().nums
        delivery_data = Production_Orders.query.filter_by(requisition_number=orders).first().delivery_data
        tester = Production_Orders.query.filter_by(requisition_number=orders).first().tester
        test_data = Production_Orders.query.filter_by(requisition_number=orders).first().test_data
        remarks = Production_Orders.query.filter_by(requisition_number=orders).first().remarks
        auditor = Production_Orders.query.filter_by(requisition_number=orders).first().auditor
        product_price = Production_Orders.query.filter_by(requisition_number=orders).first().product_price
        memory_price = Production_Orders.query.filter_by(requisition_number=orders).first().memory_price
        harddisk_price = Production_Orders.query.filter_by(requisition_number=orders).first().harddisk_price
        wireless_price = Production_Orders.query.filter_by(requisition_number=orders).first().wireless_price
        discs_price = Production_Orders.query.filter_by(requisition_number=orders).first().discs_price
        install_price = Production_Orders.query.filter_by(requisition_number=orders).first().install_price
        # print company_name,order_number

    if request.method == 'POST':
        print 'POST保存返回的数据'

        if "delivery_way" in request.form:
            delivery_way = request.form['delivery_way']
        else:
            delivery_way = ""
        print 'post时：price_AX700', price_AX700, price_C100, delivery_way

        if "model" in request.form:
            model = request.form['model']
            if model == 'AX700':
                product_price = price_AX700
	    elif model == 'AX500':
                product_price = price_AX500
            elif model == 'AX700双网口':
                product_price = price_AX700_multi
            elif model == 'C100':
                product_price = price_C100
            elif model == 'E300':
                product_price = price_E300
            elif model == 'T300':
                product_price = price_T300
            elif model == 'T600':
                product_price = price_T600
            elif model == 'AX730':
                product_price = price_AX730
            elif model == 'AX800':
                product_price = price_AX800
	    elif model == 'N600NW':
		product_price = price_N600NW
            else:
                product_price = 0.0
        else:
            model = ""

        if "cpu" in request.form:
            cpu = request.form['cpu']
        else:
            cpu = ""

        if "cpu_other" in request.form:
            cpu_other = request.form['cpu_other']
        else:
            cpu_other = ""

        if "memory" in request.form:
            memory = request.form['memory']
        else:
            memory = ""

        if "memory_other" in request.form:
            memory_other = request.form['memory_other']
        else:
            memory_other = ""

        if "harddisk" in request.form:
            harddisk = request.form['harddisk']
        else:
            harddisk = ""

        if "harddisk_other" in request.form:
            harddisk_other = request.form['harddisk_other']
        else:
            harddisk_other = ""

        if "usb" in request.form:
            usb = request.form['usb']
        else:
            usb = ""

        if "usb_other" in request.form:
            usb_other = request.form['usb_other']
        else:
            usb_other = ""

        if "com" in request.form:
            com = request.form['com']
        else:
            com = ""

        if "com_other" in request.form:
            com_other = request.form['com_other']
        else:
            com_other = ""

        if "network" in request.form:
            network = request.form['network']
        else:
            network = ""

        if "wireless" in request.form:
            wireless = request.form['wireless']
        else:
            wireless = ""

        if "wireless_other" in request.form:
            wireless_other = request.form['wireless_other']
        else:
            wireless_other = ""

        if "test1" in request.form:
            test1 = request.form['test1']
        else:
            test1 = ""

        if "test2" in request.form:
            test2 = request.form['test2']
        else:
            test2 = ""

        if "test3" in request.form:
            test3 = request.form['test3']
        else:
            test3 = ""

        if "test4" in request.form:
            test4 = request.form['test4']
        else:
            test4 = ""

        if "os" in request.form:
            os = request.form['os']
        else:
            os = ""

        if "os_version" in request.form:
            os_version = request.form['os_version']
        else:
            os_version = ""

        if "trademark" in request.form:
            trademark = request.form['trademark']
        else:
            trademark = ""

        if "logo" in request.form:
            logo = request.form['logo']
        else:
            logo = ""

        if "instructions" in request.form:
            instructions = request.form['instructions']
        else:
            instructions = ""

        if "certificate" in request.form:
            certificate = request.form['certificate']
        else:
            certificate = ""

        if "warrantycard" in request.form:
            warrantycard = request.form['warrantycard']
        else:
            warrantycard = ""

        if "discs" in request.form:
            discs = request.form['discs']
        else:
            discs = ""

        if "package" in request.form:
            package = request.form['package']
        else:
            package = ""

        if "label" in request.form:
            label = request.form['label']
        else:
            label = ""

        if "label_content" in request.form:
            label_content = request.form['label_content']
        else:
            label_content = ""

        if "install" in request.form:
            install = request.form['install']
        else:
            install = ""

        if "lend" in request.form:
            lend = request.form['lend']
        else:
            lend = ""

        if "return_data" in request.form:
            return_data = request.form['return_data']
        else:
            return_data = ""

        if "series_number" in request.form:
            series_number = request.form['series_number']
        else:
            series_number = ""

        if "nums" in request.form:
            nums = request.form['nums']
            if nums == '':
                nums = '0'
        else:
            nums = '0'

        if "delivery_data" in request.form:
            delivery_data = request.form['delivery_data']
        else:
            delivery_data = ""

        if "tester" in request.form:
            tester = request.form['tester']
        else:
            tester = ""

        if "test_data" in request.form:
            test_data = request.form['test_data']
        else:
            test_data = ""

        if "remarks" in request.form:
            remarks = request.form['remarks']
        else:
            remarks = ""

        if "auditor" in request.form:
            auditor = request.form['auditor']
        else:
            auditor = ""

        # 不同的内存 硬盘 光盘 网卡选项不同的价格
        if "memory" in request.form:
            memory = request.form['memory']
            print memory
        else:
            memory = ""

        if memory == '':
            memory_price = 0.0

        if memory == '1G':
            memory_price = 0.0

        if memory == '2G':
            memory_price = price_2GB

        if memory == '4G':
            memory_price = price_4GB

        if memory == '8G':
            memory_price = price_8GB

        if harddisk == '':
            harddisk_price = 0.0

        if harddisk == '4GB FLASH':
            harddisk_price = price_4GBFLASH

        if harddisk == '8GB FLASH':
            harddisk_price = price_8GBFLASH

        if harddisk == '8GB 固态硬盘':
            harddisk_price = price_8GBHD

        if harddisk == '16GB 固态硬盘':
            harddisk_price = price_16GBHD

        if harddisk_other == '32GB固态硬盘':
            harddisk_price = price_32GBHD

        if harddisk_other == '64GB固态硬盘':
            harddisk_price = price_64GBHD

        if harddisk_other == '128GB固态硬盘':
            harddisk_price = price_128GBHD

        if harddisk_other == '256GB固态硬盘':
            harddisk_price = price_256GBHD

        if harddisk_other == '512GB固态硬盘':
            harddisk_price = price_512GBHD

        if "wireless" in request.form:
            wireless = request.form['wireless']

        else:
            wireless = ""

        if wireless == '':
            wireless_price = 0.0

        if wireless == '不含无线网卡':
            wireless_price = 0.0

        if wireless == 'ARM RTL8188网卡':
            wireless_price = price_ARMRTL8188

        if wireless == 'X86 Intel网卡':
            wireless_price = price_X86Intel

        if "discs" in request.form:
            discs = request.form['discs']
        else:
            discs = ""

        if discs == '':
            discs_price = 0.0

        if discs == '不含光盘':
            discs_price = 0.0

        if discs == '驱动光盘':
            discs_price = price_drivercd

        if discs == 'ThinVirt系统光盘':
            discs_price = price_ThinVirt

        if "install_price" in request.form:
            install_price = request.form['install_price']
            print install_price
        else:
            install_price = "0.0"

        # 根据产品型号与数量自动生成出库记录
        # C100
        if model != 'edit' and model == 'C100' and nums > 0:
            print '生成出库记录C100'
            output_list = ['A9-PCB主板', 'A9电池', 'A9上壳黑', 'A9下壳黑', '开关PDB板', '开关线', '开关按钮（大）', '开关按钮（小）',
                           '小头电源', '左右角（R）', '左右角（L）', '包装螺丝', '黑色挡板',
                           '散热片']
            # 根据配件名获取配件固定ID     
            get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

            for n, i in enumerate(output_list):
                belong = Fittings.query.filter_by(name=i).first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,自动生成出库记录%d-----' % n + '%s' % belong
                    add_outputs = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                   purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                   belongs='%s' % belong, status='正在生产中...', remarks='',
                                                   from_which='%s' % requisition_number)
                    db.session.add(add_outputs)
                else:
                    print '已自动生成，更新数据'
                    print '更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong, from_which='%s' % requisition_number).update(
                        {'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong, from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        Fittings_Outputs.query.filter_by(belongs=belong, from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
            db.session.commit()

            # 根据选的不同说明书生成不同的记录
            if instructions == '标准说明书':
                print '标准说明书'
                print '已选标准说明书，删除定制说明书记录(若存在)'
                belong_instruction_custom = Fittings.query.filter_by(name='说明书（定制）').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_instruction_custom,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_instruction_custom = Fittings_Outputs.query.filter_by(belongs=belong_instruction_custom,
                                                                              from_which='%s' % requisition_number).first()
                    db.session.delete(del_instruction_custom)
                db.session.commit()

                belong_instruction = Fittings.query.filter_by(name='A9说明书').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_instruction,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加标准说明书'
                    add_outputs_instruction = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                               purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                               belongs='%s' % belong_instruction, status='正在生产中...',
                                                               remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_instruction)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

            elif instructions == '定制说明书':
                print '定制说明书'
                print '已选定制说明书，删除标准说明书记录(若存在)'
                belong_instruction = Fittings.query.filter_by(name='A9说明书').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_instruction = Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                                       from_which='%s' % requisition_number).first()
                    db.session.delete(del_instruction)
                db.session.commit()

                belong_instruction_custom = Fittings.query.filter_by(name='说明书（定制）').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_instruction_custom,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加定制说明书'
                    add_outputs_instruction_custom = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                                      purpose='出货%s' % company_name,
                                                                      receiptor='%s' % tester,
                                                                      belongs='%s' % belong_instruction_custom,
                                                                      status='正在生产中...', remarks='',
                                                                      from_which='%s' % requisition_number)
                    db.session.add(add_outputs_instruction_custom)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_instruction_custom,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_instruction_custom,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_instruction_custom,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

            else:
                print '不含说明书,删除所有说明书记录'
                belong_instruction = Fittings.query.filter_by(name='A9说明书').first().id
                belong_instruction_custom = Fittings.query.filter_by(name='说明书（定制）').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_instruction = Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                                       from_which='%s' % requisition_number).first()
                    db.session.delete(del_instruction)

                if Fittings_Outputs.query.filter_by(belongs=belong_instruction_custom,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_instruction_custom = Fittings_Outputs.query.filter_by(belongs=belong_instruction_custom,
                                                                              from_which='%s' % requisition_number).first()
                    db.session.delete(del_instruction_custom)

                db.session.commit()

            # 根据选的不同合格证生成不同的记录   
            if certificate == '标准合格证':
                print '标准合格证'
                print '已选标准合格证，删除定制合格证记录(若存在)'
                belong_certificate_custom = Fittings.query.filter_by(name='合格证（迷你仔）').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_certificate_custom = Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                                              from_which='%s' % requisition_number).first()
                    db.session.delete(del_certificate_custom)
                db.session.commit()

                belong_certificate = Fittings.query.filter_by(name='合格证').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_certificate,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加标准合格证'
                    add_outputs_certificate = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                               purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                               belongs='%s' % belong_certificate, status='正在生产中...',
                                                               remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_certificate)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

            elif certificate == '定制合格证':
                print '定制合格证'
                print '已选定制合格证，删除标准合格证记录(若存在)'
                belong_certificate = Fittings.query.filter_by(name='合格证').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_certificate = Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                                       from_which='%s' % requisition_number).first()
                    db.session.delete(del_certificate)
                    db.session.commit()

                belong_certificate_custom = Fittings.query.filter_by(name='合格证（迷你仔）').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_certificate_custom,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加定制合格证'
                    add_outputs_certificate_custom = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                                      purpose='出货%s' % company_name,
                                                                      receiptor='%s' % tester,
                                                                      belongs='%s' % belong_certificate_custom,
                                                                      status='正在生产中...', remarks='',
                                                                      from_which='%s' % requisition_number)
                    db.session.add(add_outputs_certificate_custom)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

            else:
                print '不含合格证,删除所有合格证记录'
                belong_certificate = Fittings.query.filter_by(name='合格证').first().id
                belong_certificate_custom = Fittings.query.filter_by(name='合格证（迷你仔）').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_certificate = Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                                       from_which='%s' % requisition_number).first()
                    db.session.delete(del_certificate)

                if Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_certificate_custom = Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                                              from_which='%s' % requisition_number).first()
                    db.session.delete(del_certificate_custom)

                db.session.commit()

            if warrantycard == '标准保修卡':
                print '已选标准保修卡'

                belong_warrantycard = Fittings.query.filter_by(name='保修卡').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_warrantycard,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加标准保修卡'
                    add_outputs_warrantycard = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                                purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                                belongs='%s' % belong_warrantycard, status='正在生产中...',
                                                                remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_warrantycard)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_warrantycard,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_warrantycard,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_warrantycard,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()
            else:
                print '不含保修卡,删除所有保修卡记录'
                belong_warrantycard = Fittings.query.filter_by(name='保修卡').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_warrantycard,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_warrantycard = Fittings_Outputs.query.filter_by(belongs=belong_warrantycard,
                                                                        from_which='%s' % requisition_number).first()
                    db.session.delete(del_warrantycard)

                db.session.commit()

            # 根据选的不同包装生成不同的记录
            if package == '公司彩包':
                print '公司彩包'
                print '已选公司彩包，删除 定制公司彩包(若存在) 中性彩包(若存在)'
                # belong_package_custom = Fittings.query.filter_by(name='X86包装彩盒（中性）').first().id
                # if Fittings_Outputs.query.filter_by(belongs=belong_package_custom,
                #                                     from_which='%s' % requisition_number).first() is not None:
                #     del_package_custom = Fittings_Outputs.query.filter_by(belongs=belong_package_custom,
                #                                                           from_which='%s' % requisition_number).first()
                #     db.session.delete(del_package_custom)
                # db.session.commit()

                belong_package_zhongxing = Fittings.query.filter_by(name='包装彩盒（中性）').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package_zhongxing = Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                                          from_which='%s' % requisition_number).first()
                    db.session.delete(del_package_zhongxing)
                db.session.commit()

                belong_package = Fittings.query.filter_by(name='A9包装彩盒').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_package,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加公司彩包'
                    add_outputs_package = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                           purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                           belongs='%s' % belong_package, status='正在生产中...', remarks='',
                                                           from_which='%s' % requisition_number)
                    db.session.add(add_outputs_package)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

            elif package == '定制包装':
                print '定制包装'
                print '已选定制包装，删除公司彩包记录(若存在) 中性彩包(若存在) '
                belong_package = Fittings.query.filter_by(name='A9包装彩盒').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package = Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_package)
                db.session.commit()

                belong_package_zhongxing = Fittings.query.filter_by(name='包装彩盒（中性）').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package_zhongxing = Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_package_zhongxing)
                db.session.commit()

            elif package == '中性包装':
                print '中性包装'
                print '已选中性包装，删除公司彩包记录(若存在) 定制彩包(若存在) '
                belong_package = Fittings.query.filter_by(name='A9包装彩盒').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package = Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_package)
                    db.session.commit()

                belong_package_zhongxing = Fittings.query.filter_by(name='包装彩盒（中性）').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_package_zhongxing,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加中性彩包'
                    add_outputs_package_zhongxing = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                           purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                           belongs='%s' % belong_package_zhongxing, status='正在生产中...', remarks='',
                                                           from_which='%s' % requisition_number)
                    db.session.add(add_outputs_package_zhongxing)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

            else:
                print '不含包装,删除所有包装记录'
                belong_package = Fittings.query.filter_by(name='X86包装彩盒').first().id
                belong_package_custom = Fittings.query.filter_by(name='X86包装彩盒（中性）').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package = Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_package)

                if Fittings_Outputs.query.filter_by(belongs=belong_package_custom,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package_custom = Fittings_Outputs.query.filter_by(belongs=belong_package_custom,
                                                                          from_which='%s' % requisition_number).first()
                    db.session.delete(del_package_custom)
                db.session.commit()



        # E300
        if model != 'edit' and model == 'E300' and nums > 0:
            print '生成出库记录E300'
            output_list = ['A9-PCB主板', 'A9电池', 'E300外壳', 'E300开关配件', '开关PDB板', '开关线',
                           '小头电源', '左右角（R）', '左右角（L）', 'A9包装彩盒', '包装彩盒（中性）', '包装螺丝',
                           '散热片']
            # 根据配件名获取配件固定ID     
            get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

            for n, i in enumerate(output_list):
                belong = Fittings.query.filter_by(name=i).first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,自动生成出库记录%d-----' % n + '%s' % belong
                    add_outputs = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                   purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                   belongs='%s' % belong, status='正在生产中...', remarks='',
                                                   from_which='%s' % requisition_number)
                    db.session.add(add_outputs)
                else:
                    print '已自动生成，更新数据'
                    print '更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong, from_which='%s' % requisition_number).update(
                        {'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong, from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        Fittings_Outputs.query.filter_by(belongs=belong, from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
            db.session.commit()

            # 根据选的不同说明书生成不同的记录
            if instructions == '标准说明书':
                print '标准说明书'
                print '已选标准说明书，删除定制说明书记录(若存在)'
                belong_instruction_custom = Fittings.query.filter_by(name='E300说明书（迷你仔）').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_instruction_custom,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_instruction_custom = Fittings_Outputs.query.filter_by(belongs=belong_instruction_custom,
                                                                              from_which='%s' % requisition_number).first()
                    db.session.delete(del_instruction_custom)
                db.session.commit()

                belong_instruction = Fittings.query.filter_by(name='A9说明书').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_instruction,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加标准说明书'
                    add_outputs_instruction = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                               purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                               belongs='%s' % belong_instruction, status='正在生产中...',
                                                               remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_instruction)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

            elif instructions == '定制说明书':
                print '定制说明书'
                print '已选定制说明书，删除标准说明书记录(若存在)'
                belong_instruction = Fittings.query.filter_by(name='A9说明书').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_instruction = Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                                       from_which='%s' % requisition_number).first()
                    db.session.delete(del_instruction)
                db.session.commit()

                belong_instruction_custom = Fittings.query.filter_by(name='E300说明书（迷你仔）').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_instruction_custom,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加定制说明书'
                    add_outputs_instruction_custom = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                                      purpose='出货%s' % company_name,
                                                                      receiptor='%s' % tester,
                                                                      belongs='%s' % belong_instruction_custom,
                                                                      status='正在生产中...', remarks='',
                                                                      from_which='%s' % requisition_number)
                    db.session.add(add_outputs_instruction_custom)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_instruction_custom,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_instruction_custom,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_instruction_custom,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

            else:
                print '不含说明书,删除所有说明书记录'
                belong_instruction = Fittings.query.filter_by(name='A9说明书').first().id
                belong_instruction_custom = Fittings.query.filter_by(name='E300说明书（迷你仔）').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_instruction = Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                                       from_which='%s' % requisition_number).first()
                    db.session.delete(del_instruction)

                if Fittings_Outputs.query.filter_by(belongs=belong_instruction_custom,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_instruction_custom = Fittings_Outputs.query.filter_by(belongs=belong_instruction_custom,
                                                                              from_which='%s' % requisition_number).first()
                    db.session.delete(del_instruction_custom)

            if warrantycard == '标准保修卡':
                print '已选标准保修卡'

                belong_warrantycard = Fittings.query.filter_by(name='保修卡').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_warrantycard,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加标准保修卡'
                    add_outputs_warrantycard = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                                purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                                belongs='%s' % belong_warrantycard, status='正在生产中...',
                                                                remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_warrantycard)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_warrantycard,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_warrantycard,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_warrantycard,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()
            elif warrantycard == '不含保修卡':
                print '不含保修卡,删除所有保修卡记录'
                belong_warrantycard = Fittings.query.filter_by(name='保修卡').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_warrantycard,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_warrantycard = Fittings_Outputs.query.filter_by(belongs=belong_warrantycard,
                                                                        from_which='%s' % requisition_number).first()
                    db.session.delete(del_warrantycard)

                db.session.commit()

            # 根据选的不同合格证生成不同的记录   
            if certificate == '标准合格证':
                print '标准合格证'
                print '已选标准合格证，删除定制合格证记录(若存在)'
                belong_certificate_custom = Fittings.query.filter_by(name='合格证（迷你仔）').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_certificate_custom = Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                                              from_which='%s' % requisition_number).first()
                    db.session.delete(del_certificate_custom)
                db.session.commit()

                belong_certificate = Fittings.query.filter_by(name='合格证').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_certificate,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加标准合格证'
                    add_outputs_certificate = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                               purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                               belongs='%s' % belong_certificate, status='正在生产中...',
                                                               remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_certificate)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

            elif certificate == '定制合格证':
                print '定制合格证'
                print '已选定制合格证，删除标准合格证记录(若存在)'
                belong_certificate = Fittings.query.filter_by(name='合格证').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_certificate = Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                                       from_which='%s' % requisition_number).first()
                    db.session.delete(del_certificate)
                    db.session.commit()

                belong_certificate_custom = Fittings.query.filter_by(name='合格证（迷你仔）').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_certificate_custom,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加定制合格证'
                    add_outputs_certificate_custom = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                                      purpose='出货%s' % company_name,
                                                                      receiptor='%s' % tester,
                                                                      belongs='%s' % belong_certificate_custom,
                                                                      status='正在生产中...', remarks='',
                                                                      from_which='%s' % requisition_number)
                    db.session.add(add_outputs_certificate_custom)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

            else:
                print '不含合格证,删除所有合格证记录'
                belong_certificate = Fittings.query.filter_by(name='合格证').first().id
                belong_certificate_custom = Fittings.query.filter_by(name='合格证（迷你仔）').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_certificate = Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                                       from_which='%s' % requisition_number).first()
                    db.session.delete(del_certificate)

                if Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_certificate_custom = Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                                              from_which='%s' % requisition_number).first()
                    db.session.delete(del_certificate_custom)

                db.session.commit()

            # 根据选的不同包装生成不同的记录
            if package == '公司彩包':
                print '公司彩包'
                print '已选公司彩包，删除 定制公司彩包(若存在) 中性彩包(若存在)'
                # belong_package_custom = Fittings.query.filter_by(name='X86包装彩盒（中性）').first().id
                # if Fittings_Outputs.query.filter_by(belongs=belong_package_custom,
                #                                     from_which='%s' % requisition_number).first() is not None:
                #     del_package_custom = Fittings_Outputs.query.filter_by(belongs=belong_package_custom,
                #                                                           from_which='%s' % requisition_number).first()
                #     db.session.delete(del_package_custom)
                # db.session.commit()

                belong_package_zhongxing = Fittings.query.filter_by(name='包装彩盒（中性）').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package_zhongxing = Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                                          from_which='%s' % requisition_number).first()
                    db.session.delete(del_package_zhongxing)
                db.session.commit()

                belong_package = Fittings.query.filter_by(name='A9包装彩盒').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_package,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加公司彩包'
                    add_outputs_package = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                           purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                           belongs='%s' % belong_package, status='正在生产中...', remarks='',
                                                           from_which='%s' % requisition_number)
                    db.session.add(add_outputs_package)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

            elif package == '定制包装':
                print '定制包装'
                print '已选定制包装，删除公司彩包记录(若存在) 中性彩包(若存在) '
                belong_package = Fittings.query.filter_by(name='A9包装彩盒').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package = Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_package)
                db.session.commit()

                belong_package_zhongxing = Fittings.query.filter_by(name='包装彩盒（中性）').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package_zhongxing = Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_package_zhongxing)
                db.session.commit()

            elif package == '中性包装':
                print '中性包装'
                print '已选中性包装，删除公司彩包记录(若存在) 定制彩包(若存在) '
                belong_package = Fittings.query.filter_by(name='A9包装彩盒').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package = Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_package)
                    db.session.commit()

                belong_package_zhongxing = Fittings.query.filter_by(name='包装彩盒（中性）').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_package_zhongxing,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加中性彩包'
                    add_outputs_package_zhongxing = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                           purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                           belongs='%s' % belong_package_zhongxing, status='正在生产中...', remarks='',
                                                           from_which='%s' % requisition_number)
                    db.session.add(add_outputs_package_zhongxing)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()



            else:
                print '不含包装,删除所有包装记录'
                belong_package = Fittings.query.filter_by(name='X86包装彩盒').first().id
                belong_package_custom = Fittings.query.filter_by(name='X86包装彩盒（中性）').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package = Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_package)

                if Fittings_Outputs.query.filter_by(belongs=belong_package_custom,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package_custom = Fittings_Outputs.query.filter_by(belongs=belong_package_custom,
                                                                          from_which='%s' % requisition_number).first()
                    db.session.delete(del_package_custom)
                db.session.commit()

        if model=='AX500' or model == 'AX700' or model == 'AX700双网口' or model == 'AX730' or model == 'AX800' or model == 'N600NW':
            
            print '生成出库记录AX500 or AX700 or AX700双网口 or AX730 or AX800 or N600NW'
            output_list = ['X86说明书', '保修卡']
            # 根据配件名获取配件固定ID
            get_time = time.strftime('%Y-%m-%d', time.localtime(time.time()))

            for n, i in enumerate(output_list):
                belong = Fittings.query.filter_by(name=i).first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong,
                                                        from_which='%s' % requisition_number).first() is None:
                    print '不存在,自动生成出库记录%d-----' % n + '%s' % belong
                    add_outputs = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                       purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                       belongs='%s' % belong, status='正在生产中...', remarks='',
                                                       from_which='%s' % requisition_number)
                    db.session.add(add_outputs)
                else:
                    print '已自动生成，更新数据'
                    print '更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong, from_which='%s' % requisition_number).update(
                            {'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong,
                                                             from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        Fittings_Outputs.query.filter_by(belongs=belong,
                                                             from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
            db.session.commit()


            # 根据选的不同说明书生成不同的记录
            if instructions == '不含说明书':
                print '不含说明书,删除所有说明书记录'
                belong_instruction = Fittings.query.filter_by(name='X86说明书').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                        from_which='%s' % requisition_number).first() is not None:
                    del_instruction = Fittings_Outputs.query.filter_by(belongs=belong_instruction,
                                                                           from_which='%s' % requisition_number).first()
                    db.session.delete(del_instruction)
                db.session.commit()

            if warrantycard == '不含保修卡':
                print '不含保修卡,删除所有保修卡记录'
                belong_warrantycard = Fittings.query.filter_by(name='保修卡').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_warrantycard,
                                                        from_which='%s' % requisition_number).first() is not None:
                    del_warrantycard = Fittings_Outputs.query.filter_by(belongs=belong_warrantycard,
                                                                            from_which='%s' % requisition_number).first()
                    db.session.delete(del_warrantycard)

            if wireless == '不含无线网卡':
                print '不含无线网卡,删除所有无线网卡记录'
                belong_wireless_ARM = Fittings.query.filter_by(name='ARMRTL8188无线网卡').first().id
                belong_wireless_X86 = Fittings.query.filter_by(name='X86Intel无线网卡').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_wireless_ARM,
                                                        from_which='%s' % requisition_number).first() is not None:
                    del_wireless_ARM = Fittings_Outputs.query.filter_by(belongs=belong_wireless_ARM,
                                                                            from_which='%s' % requisition_number).first()
                    db.session.delete(del_wireless_ARM)
                db.session.commit()

                if Fittings_Outputs.query.filter_by(belongs=belong_wireless_X86,
                                                        from_which='%s' % requisition_number).first() is not None:
                    del_wireless_X86 = Fittings_Outputs.query.filter_by(belongs=belong_wireless_X86,
                                                                            from_which='%s' % requisition_number).first()
                    db.session.delete(del_wireless_X86)

                db.session.commit()


            # 根据选的不同合格证生成不同的记录
            if certificate == '标准合格证':
                print '标准合格证'
                print '已选标准合格证，删除定制合格证记录(若存在)'
                belong_certificate_custom = Fittings.query.filter_by(name='合格证（迷你仔）').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                        from_which='%s' % requisition_number).first() is not None:
                    del_certificate_custom = Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                                                  from_which='%s' % requisition_number).first()
                    db.session.delete(del_certificate_custom)
                db.session.commit()

                belong_certificate = Fittings.query.filter_by(name='合格证').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_certificate,
                                                        from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加标准合格证'
                    add_outputs_certificate = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                                   purpose='出货%s' % company_name,
                                                                   receiptor='%s' % tester,
                                                                   belongs='%s' % belong_certificate, status='正在生产中...',
                                                                   remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_certificate)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                         from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                             from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                             from_which='%s' % requisition_number).update(
                                {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

            elif certificate == '定制合格证':
                print '定制合格证'
                print '已选定制合格证，删除标准合格证记录(若存在)'
                belong_certificate = Fittings.query.filter_by(name='合格证').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_certificate = Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                                       from_which='%s' % requisition_number).first()
                    db.session.delete(del_certificate)
                    db.session.commit()

                belong_certificate_custom = Fittings.query.filter_by(name='合格证（迷你仔）').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_certificate_custom,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加定制合格证'
                    add_outputs_certificate_custom = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                                      purpose='出货%s' % company_name,
                                                                      receiptor='%s' % tester,
                                                                      belongs='%s' % belong_certificate_custom,
                                                                      status='正在生产中...', remarks='',
                                                                      from_which='%s' % requisition_number)
                    db.session.add(add_outputs_certificate_custom)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

            else:
                print '不含合格证,删除所有合格证记录'
                belong_certificate = Fittings.query.filter_by(name='合格证').first().id
                belong_certificate_custom = Fittings.query.filter_by(name='合格证（迷你仔）').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_certificate = Fittings_Outputs.query.filter_by(belongs=belong_certificate,
                                                                       from_which='%s' % requisition_number).first()
                    db.session.delete(del_certificate)

                if Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_certificate_custom = Fittings_Outputs.query.filter_by(belongs=belong_certificate_custom,
                                                                              from_which='%s' % requisition_number).first()
                    db.session.delete(del_certificate_custom)

                db.session.commit()


            # 根据选的不同包装生成不同的记录
            if package == '公司彩包':
                print '公司彩包'
                print '已选公司彩包，删除 定制公司彩包(若存在) 中性彩包(若存在)'
                # belong_package_custom = Fittings.query.filter_by(name='X86包装彩盒（中性）').first().id
                # if Fittings_Outputs.query.filter_by(belongs=belong_package_custom,
                #                                     from_which='%s' % requisition_number).first() is not None:
                #     del_package_custom = Fittings_Outputs.query.filter_by(belongs=belong_package_custom,
                #                                                           from_which='%s' % requisition_number).first()
                #     db.session.delete(del_package_custom)
                # db.session.commit()

                belong_package_zhongxing = Fittings.query.filter_by(name='X86包装彩盒（中性）').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package_zhongxing = Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                                          from_which='%s' % requisition_number).first()
                    db.session.delete(del_package_zhongxing)
                db.session.commit()



                belong_package = Fittings.query.filter_by(name='X86包装彩盒').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_package,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加公司彩包'
                    add_outputs_package = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                           purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                           belongs='%s' % belong_package, status='正在生产中...', remarks='',
                                                           from_which='%s' % requisition_number)
                    db.session.add(add_outputs_package)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

            elif package == '定制包装':
                print '定制包装'
                print '已选定制包装，删除公司彩包记录(若存在) 中性彩包(若存在) '
                belong_package = Fittings.query.filter_by(name='X86包装彩盒').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package = Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_package)
                db.session.commit()

                belong_package_zhongxing = Fittings.query.filter_by(name='X86包装彩盒（中性）').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package_zhongxing = Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_package_zhongxing)
                db.session.commit()

            elif package == '中性包装':
                print '中性包装'
                print '已选中性包装，删除公司彩包记录(若存在) 定制彩包(若存在) '
                belong_package = Fittings.query.filter_by(name='X86包装彩盒').first().id
                if Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package = Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_package)
                    db.session.commit()

                belong_package_zhongxing = Fittings.query.filter_by(name='X86包装彩盒（中性）').first().id
                if Fittings_Outputs.query.filter_by(belongs='%s' % belong_package_zhongxing,
                                                    from_which='%s' % requisition_number).first() is None:
                    print '不存在,添加中性彩包'
                    add_outputs_package_zhongxing = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                           purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                           belongs='%s' % belong_package_zhongxing, status='正在生产中...', remarks='',
                                                           from_which='%s' % requisition_number)
                    db.session.add(add_outputs_package_zhongxing)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_package_zhongxing,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()



            else:
                print '不含包装,删除所有包装记录'
                belong_package = Fittings.query.filter_by(name='X86包装彩盒').first().id
                belong_package_custom = Fittings.query.filter_by(name='X86包装彩盒（中性）').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package = Fittings_Outputs.query.filter_by(belongs=belong_package,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_package)

                if Fittings_Outputs.query.filter_by(belongs=belong_package_custom,
                                                    from_which='%s' % requisition_number).first() is not None:
                    del_package_custom = Fittings_Outputs.query.filter_by(belongs=belong_package_custom,
                                                                          from_which='%s' % requisition_number).first()
                    db.session.delete(del_package_custom)
                db.session.commit()



            # 根据选的不同网卡生成不同的记录   
            if wireless == 'ARM RTL8188网卡':
                print 'ARM RTL8188网卡'
                belong_wireless_ARM = Fittings.query.filter_by(name='ARMRTL8188无线网卡').first().id
                belong_wireless_X86 = Fittings.query.filter_by(name='X86Intel无线网卡').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_wireless_ARM,
                                                    from_which='%s' % requisition_number).first() is None:
                    add_outputs_wireless_ARM = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                                purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                                belongs='%s' % belong_wireless_ARM, status='正在生产中...',
                                                                remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_wireless_ARM)

                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_wireless_ARM,
                                                     from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_wireless_ARM,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_wireless_ARM,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

                # 若x86存在，则删除
                if Fittings_Outputs.query.filter_by(belongs=belong_wireless_X86,
                                                    from_which='%s' % requisition_number).first() is not None:
                    print '删除x86无线网卡'
                    del_wireless_X86 = Fittings_Outputs.query.filter_by(belongs=belong_wireless_X86,
                                                                        from_which='%s' % requisition_number).first()
                    db.session.delete(del_wireless_X86)
                    db.session.commit()
                elif wireless == 'X86 Intel网卡':
                    print 'X86 Intel网卡'
                    belong_wireless_ARM = Fittings.query.filter_by(name='ARMRTL8188无线网卡').first().id
                    belong_wireless_X86 = Fittings.query.filter_by(name='X86Intel无线网卡').first().id

                    if Fittings_Outputs.query.filter_by(belongs=belong_wireless_X86,
                                                        from_which='%s' % requisition_number).first() is None:
                        add_outputs_wireless_X86 = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                                    purpose='出货%s' % company_name,
                                                                    receiptor='%s' % tester,
                                                                    belongs='%s' % belong_wireless_X86,
                                                                    status='正在生产中...', remarks='',
                                                                    from_which='%s' % requisition_number)
                        db.session.add(add_outputs_wireless_X86)

                    else:
                        print '存在，更新数量'
                        Fittings_Outputs.query.filter_by(belongs=belong_wireless_X86,
                                                         from_which='%s' % requisition_number).update({'nums': nums})
                        if delivery_data != '':
                            print '更新日期与状态'
                            Fittings_Outputs.query.filter_by(belongs=belong_wireless_ARM,
                                                             from_which='%s' % requisition_number).update(
                                {'dates': delivery_data, 'status': '完成生产,已出库'})
                        else:
                            print '生产日期不存在'
                            Fittings_Outputs.query.filter_by(belongs=belong_wireless_X86,
                                                             from_which='%s' % requisition_number).update(
                                {'dates': delivery_data, 'status': '正在生产中...'})
                            db.session.commit()

                    # 若ARM存在，则删除
                    if Fittings_Outputs.query.filter_by(belongs=belong_wireless_ARM,
                                                        from_which='%s' % requisition_number).first() is not None:
                        print '删除ARM无线网卡'
                        del_wireless_ARM = Fittings_Outputs.query.filter_by(belongs=belong_wireless_ARM,
                                                                            from_which='%s' % requisition_number).first()
                        db.session.delete(del_wireless_ARM)
                        db.session.commit()

            # 根据选的不同内存生成不同的记录
            if memory == '2G':
                print '选择了2G内存'
                belong_memory_2G = Fittings.query.filter_by(name='2GB内存').first().id
                belong_memory_4G = Fittings.query.filter_by(name='4GB内存').first().id
                belong_memory_8G = Fittings.query.filter_by(name='8GB内存').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_memory_2G,
                                                        from_which='%s' % requisition_number).first() is None:
                    add_outputs_memory_2G = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                                 purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                                 belongs='%s' % belong_memory_2G, status='正在生产中...',
                                                                 remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_memory_2G)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_memory_2G,
                                                         from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_memory_2G,
                                                             from_which='%s' % requisition_number).update(
                                {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_memory_2G,
                                                             from_which='%s' % requisition_number).update(
                                {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

                # 若4G 8G存在，则删除
                if Fittings_Outputs.query.filter_by(belongs=belong_memory_4G,
                                                        from_which='%s' % requisition_number).first() is not None:
                    print '删除4G'
                    del_memory_4G = Fittings_Outputs.query.filter_by(belongs=belong_memory_4G,
                                                                         from_which='%s' % requisition_number).first()
                    db.session.delete(del_memory_4G)

                if Fittings_Outputs.query.filter_by(belongs=belong_memory_8G,
                                                        from_which='%s' % requisition_number).first() is not None:
                    print '删除8G'
                    del_memory_8G = Fittings_Outputs.query.filter_by(belongs=belong_memory_8G,
                                                                         from_which='%s' % requisition_number).first()
                    db.session.delete(del_memory_8G)

            elif memory == '4G':
                print '选择4G'
                belong_memory_2G = Fittings.query.filter_by(name='2GB内存').first().id
                belong_memory_4G = Fittings.query.filter_by(name='4GB内存').first().id
                belong_memory_8G = Fittings.query.filter_by(name='8GB内存').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_memory_4G,
                                                        from_which='%s' % requisition_number).first() is None:
                    add_outputs_memory_4G = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                                 purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                                 belongs='%s' % belong_memory_4G, status='正在生产中...',
                                                                 remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_memory_4G)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_memory_4G,
                                                         from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_memory_4G,
                                                             from_which='%s' % requisition_number).update(
                                {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_memory_4G,
                                                             from_which='%s' % requisition_number).update(
                                {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

                # 若2G 8G存在，则删除
                if Fittings_Outputs.query.filter_by(belongs=belong_memory_2G,
                                                        from_which='%s' % requisition_number).first() is not None:
                    print '删除2G'
                    del_memory_2G = Fittings_Outputs.query.filter_by(belongs=belong_memory_2G,
                                                                         from_which='%s' % requisition_number).first()
                    db.session.delete(del_memory_2G)

                if Fittings_Outputs.query.filter_by(belongs=belong_memory_8G,
                                                        from_which='%s' % requisition_number).first() is not None:
                    print '删除8G'
                    del_memory_8G = Fittings_Outputs.query.filter_by(belongs=belong_memory_8G,
                                                                         from_which='%s' % requisition_number).first()
                    db.session.delete(del_memory_8G)

            elif memory == '8G':
                print '选择8G'
                belong_memory_2G = Fittings.query.filter_by(name='2GB内存').first().id
                belong_memory_4G = Fittings.query.filter_by(name='4GB内存').first().id
                belong_memory_8G = Fittings.query.filter_by(name='8GB内存').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_memory_8G,
                                                        from_which='%s' % requisition_number).first() is None:
                    add_outputs_memory_8G = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                                 purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                                 belongs='%s' % belong_memory_8G, status='正在生产中...',
                                                                 remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_memory_8G)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_memory_8G,
                                                         from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_memory_8G,
                                                             from_which='%s' % requisition_number).update(
                                {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_memory_8G,
                                                             from_which='%s' % requisition_number).update(
                                {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

                # 若2G 4G存在，则删除
                if Fittings_Outputs.query.filter_by(belongs=belong_memory_2G,
                                                        from_which='%s' % requisition_number).first() is not None:
                    print '删除2G'
                    del_memory_2G = Fittings_Outputs.query.filter_by(belongs=belong_memory_2G,
                                                                         from_which='%s' % requisition_number).first()
                    db.session.delete(del_memory_2G)

                if Fittings_Outputs.query.filter_by(belongs=belong_memory_4G,
                                                        from_which='%s' % requisition_number).first() is not None:
                    print '删除4G'
                    del_memory_4G = Fittings_Outputs.query.filter_by(belongs=belong_memory_4G,
                                                                         from_which='%s' % requisition_number).first()
                    db.session.delete(del_memory_4G)

                db.session.commit()


            #根据选的不同内存生成不同的记录
            if harddisk == '8GB 固态硬盘':
                print '选择了8GB 固态硬盘'
                belong_harddisk_8G = Fittings.query.filter_by(name='8GB固态硬盘').first().id
                belong_harddisk_16G = Fittings.query.filter_by(name='16GB固态硬盘').first().id
                belong_harddisk_32G = Fittings.query.filter_by(name='32GB固态硬盘').first().id
                belong_harddisk_64G = Fittings.query.filter_by(name='64GB固态硬盘').first().id
                belong_harddisk_128G = Fittings.query.filter_by(name='128GB固态硬盘').first().id
                belong_harddisk_256G = Fittings.query.filter_by(name='256GB固态硬盘').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_8G,
                                                        from_which='%s' % requisition_number).first() is None:
                    add_outputs_harddisk_8G = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                                   purpose='出货%s' % company_name,
                                                                   receiptor='%s' % tester,
                                                                   belongs='%s' % belong_harddisk_8G, status='正在生产中...',
                                                                   remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_harddisk_8G)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_harddisk_8G,
                                                         from_which='%s' % requisition_number).update({'nums': nums})
                if delivery_data != '':
                    print '更新日期与状态'
                    Fittings_Outputs.query.filter_by(belongs=belong_harddisk_8G,
                                                         from_which='%s' % requisition_number).update(
                            {'dates': delivery_data, 'status': '完成生产,已出库'})
                else:
                    print '生产日期不存在'
                    Fittings_Outputs.query.filter_by(belongs=belong_harddisk_8G,
                                                         from_which='%s' % requisition_number).update(
                        {'dates': delivery_data, 'status': '正在生产中...'})
                    db.session.commit()

                # 若16GB 固态硬盘或其它存在，则删除
                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_16G,
                                                    from_which='%s' % requisition_number).first() is not None:
                    print '删除16GB 固态硬盘'
                    del_harddisk_16G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_16G,
                                                                        from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_16G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_32G,
                                                    from_which='%s' % requisition_number).first() is not None:
                    print '删除32GB 固态硬盘'
                    del_harddisk_32G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_32G,
                                                                        from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_32G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_64G,
                                                    from_which='%s' % requisition_number).first() is not None:
                    print '删除64GB 固态硬盘'
                    del_harddisk_64G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_64G,
                                                                        from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_64G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_128G,
                                                    from_which='%s' % requisition_number).first() is not None:
                    print '删除128GB 固态硬盘'
                    del_harddisk_128G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_128G,
                                                                         from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_128G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_256G,
                                                    from_which='%s' % requisition_number).first() is not None:
                    print '删除256GB 固态硬盘'
                    del_harddisk_256G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_256G,
                                                                         from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_256G)



            elif harddisk == '16GB 固态硬盘':
                print '选择了16GB 固态硬盘'
                belong_harddisk_8G = Fittings.query.filter_by(name='8GB固态硬盘').first().id
                belong_harddisk_16G = Fittings.query.filter_by(name='16GB固态硬盘').first().id
                belong_harddisk_32G = Fittings.query.filter_by(name='32GB固态硬盘').first().id
                belong_harddisk_64G = Fittings.query.filter_by(name='64GB固态硬盘').first().id
                belong_harddisk_128G = Fittings.query.filter_by(name='128GB固态硬盘').first().id
                belong_harddisk_256G = Fittings.query.filter_by(name='256GB固态硬盘').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_16G,
                                                from_which='%s' % requisition_number).first() is None:
                    add_outputs_harddisk_16G = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                            purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                            belongs='%s' % belong_harddisk_16G, status='正在生产中...',
                                                            remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_harddisk_16G)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_harddisk_16G,
                                                 from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_harddisk_16G,
                                                     from_which='%s' % requisition_number).update(
                        {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_harddisk_16G,
                                                     from_which='%s' % requisition_number).update(
                        {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

                # 若其它存在，则删除
                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_8G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除8GB 固态硬盘'
                    del_harddisk_8G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_8G,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_8G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_32G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除32GB 固态硬盘'
                    del_harddisk_32G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_32G,
                                                                    from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_32G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_64G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除64GB 固态硬盘'
                    del_harddisk_64G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_64G,
                                                                    from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_64G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_128G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除128GB 固态硬盘'
                    del_harddisk_128G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_128G,
                                                                     from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_128G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_256G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除256GB 固态硬盘'
                    del_harddisk_256G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_256G,
                                                                     from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_256G)

            elif harddisk_other == '32GB固态硬盘':
                print '选择了32GB 固态硬盘'
                belong_harddisk_8G = Fittings.query.filter_by(name='8GB固态硬盘').first().id
                belong_harddisk_16G = Fittings.query.filter_by(name='16GB固态硬盘').first().id
                belong_harddisk_32G = Fittings.query.filter_by(name='32GB固态硬盘').first().id
                belong_harddisk_64G = Fittings.query.filter_by(name='64GB固态硬盘').first().id
                belong_harddisk_128G = Fittings.query.filter_by(name='128GB固态硬盘').first().id
                belong_harddisk_256G = Fittings.query.filter_by(name='256GB固态硬盘').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_32G,
                                                from_which='%s' % requisition_number).first() is None:
                    add_outputs_harddisk_32G = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                            purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                            belongs='%s' % belong_harddisk_32G, status='正在生产中...',
                                                            remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_harddisk_32G)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_harddisk_32G,
                                                 from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_harddisk_32G,
                                                     from_which='%s' % requisition_number).update(
                        {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_harddisk_32G,
                                                     from_which='%s' % requisition_number).update(
                        {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

                # 若其它存在，则删除
                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_8G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除8GB 固态硬盘'
                    del_harddisk_8G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_8G,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_8G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_16G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除16GB 固态硬盘'
                    del_harddisk_16G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_16G,
                                                                    from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_16G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_64G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除64GB 固态硬盘'
                    del_harddisk_64G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_64G,
                                                                    from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_64G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_128G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除128GB 固态硬盘'
                    del_harddisk_128G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_128G,
                                                                     from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_128G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_256G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除256GB 固态硬盘'
                    del_harddisk_256G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_256G,
                                                                     from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_256G)

            elif harddisk_other == '64GB固态硬盘':
                print '选择了64GB 固态硬盘'
                belong_harddisk_8G = Fittings.query.filter_by(name='8GB固态硬盘').first().id
                belong_harddisk_16G = Fittings.query.filter_by(name='16GB固态硬盘').first().id
                belong_harddisk_32G = Fittings.query.filter_by(name='32GB固态硬盘').first().id
                belong_harddisk_64G = Fittings.query.filter_by(name='64GB固态硬盘').first().id
                belong_harddisk_128G = Fittings.query.filter_by(name='128GB固态硬盘').first().id
                belong_harddisk_256G = Fittings.query.filter_by(name='256GB固态硬盘').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_64G,
                                                from_which='%s' % requisition_number).first() is None:
                    add_outputs_harddisk_64G = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                            purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                            belongs='%s' % belong_harddisk_64G, status='正在生产中...',
                                                            remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_harddisk_64G)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_harddisk_64G,
                                                 from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_harddisk_64G,
                                                     from_which='%s' % requisition_number).update(
                        {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_harddisk_64G,
                                                     from_which='%s' % requisition_number).update(
                        {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

                # 若其它存在，则删除
                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_8G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除8GB 固态硬盘'
                    del_harddisk_8G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_8G,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_8G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_16G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除16GB 固态硬盘'
                    del_harddisk_16G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_16G,
                                                                    from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_16G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_32G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除32GB 固态硬盘'
                    del_harddisk_32G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_32G,
                                                                    from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_32G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_128G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除128GB 固态硬盘'
                    del_harddisk_128G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_128G,
                                                                     from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_128G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_256G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除256GB 固态硬盘'
                    del_harddisk_256G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_256G,
                                                                     from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_256G)

            elif harddisk_other == '128GB固态硬盘':
                print '选择了128GB 固态硬盘'
                belong_harddisk_8G = Fittings.query.filter_by(name='8GB固态硬盘').first().id
                belong_harddisk_16G = Fittings.query.filter_by(name='16GB固态硬盘').first().id
                belong_harddisk_32G = Fittings.query.filter_by(name='32GB固态硬盘').first().id
                belong_harddisk_64G = Fittings.query.filter_by(name='64GB固态硬盘').first().id
                belong_harddisk_128G = Fittings.query.filter_by(name='128GB固态硬盘').first().id
                belong_harddisk_256G = Fittings.query.filter_by(name='256GB固态硬盘').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_128G,
                                                from_which='%s' % requisition_number).first() is None:
                    add_outputs_harddisk_128G = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                             purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                             belongs='%s' % belong_harddisk_128G, status='正在生产中...',
                                                             remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_harddisk_128G)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_harddisk_128G,
                                                 from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_harddisk_128G,
                                                     from_which='%s' % requisition_number).update(
                        {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_harddisk_128G,
                                                     from_which='%s' % requisition_number).update(
                        {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

                # 若其它存在，则删除
                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_8G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除8GB 固态硬盘'
                    del_harddisk_8G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_8G,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_8G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_16G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除16GB 固态硬盘'
                    del_harddisk_16G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_16G,
                                                                    from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_16G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_64G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除64GB 固态硬盘'
                    del_harddisk_64G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_64G,
                                                                    from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_64G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_32G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除32GB 固态硬盘'
                    del_harddisk_32G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_32G,
                                                                    from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_32G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_256G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除256GB 固态硬盘'
                    del_harddisk_256G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_256G,
                                                                     from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_256G)

            elif harddisk_other == '256GB固态硬盘':
                print '选择了256GB 固态硬盘'
                belong_harddisk_8G = Fittings.query.filter_by(name='8GB固态硬盘').first().id
                belong_harddisk_16G = Fittings.query.filter_by(name='16GB固态硬盘').first().id
                belong_harddisk_32G = Fittings.query.filter_by(name='32GB固态硬盘').first().id
                belong_harddisk_64G = Fittings.query.filter_by(name='64GB固态硬盘').first().id
                belong_harddisk_128G = Fittings.query.filter_by(name='128GB固态硬盘').first().id
                belong_harddisk_256G = Fittings.query.filter_by(name='256GB固态硬盘').first().id

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_256G,
                                                from_which='%s' % requisition_number).first() is None:
                    add_outputs_harddisk_256G = Fittings_Outputs(dates='%s' % delivery_data, nums='%d' % int(nums),
                                                             purpose='出货%s' % company_name, receiptor='%s' % tester,
                                                             belongs='%s' % belong_harddisk_256G, status='正在生产中...',
                                                             remarks='', from_which='%s' % requisition_number)
                    db.session.add(add_outputs_harddisk_256G)
                else:
                    print '存在，更新数量'
                    Fittings_Outputs.query.filter_by(belongs=belong_harddisk_256G,
                                                 from_which='%s' % requisition_number).update({'nums': nums})
                    if delivery_data != '':
                        print '更新日期与状态'
                        Fittings_Outputs.query.filter_by(belongs=belong_harddisk_256G,
                                                     from_which='%s' % requisition_number).update(
                        {'dates': delivery_data, 'status': '完成生产,已出库'})
                    else:
                        print '生产日期不存在'
                        Fittings_Outputs.query.filter_by(belongs=belong_harddisk_256G,
                                                     from_which='%s' % requisition_number).update(
                        {'dates': delivery_data, 'status': '正在生产中...'})
                        db.session.commit()

                # 若其它存在，则删除
                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_8G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除8GB 固态硬盘'
                    del_harddisk_8G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_8G,
                                                                   from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_8G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_16G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除16GB 固态硬盘'
                    del_harddisk_16G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_16G,
                                                                    from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_16G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_64G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除64GB 固态硬盘'
                    del_harddisk_64G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_64G,
                                                                    from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_64G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_128G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除128GB 固态硬盘'
                    del_harddisk_128G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_128G,
                                                                     from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_128G)

                if Fittings_Outputs.query.filter_by(belongs=belong_harddisk_32G,
                                                from_which='%s' % requisition_number).first() is not None:
                    print '删除32GB 固态硬盘'
                    del_harddisk_32G = Fittings_Outputs.query.filter_by(belongs=belong_harddisk_32G,
                                                                    from_which='%s' % requisition_number).first()
                    db.session.delete(del_harddisk_32G)

            db.session.commit()

        all_const = (float(product_price) + float(memory_price) + float(harddisk_price) + float(wireless_price)) * int(
            nums) + float(discs_price) + float(install_price)
        print "计算一台机器的总成本", all_const

        Production_Orders.query.filter_by(requisition_number=orders).update(
            {'delivery_way': delivery_way, 'model': model, 'cpu': cpu, 'cpu_other': cpu_other, 'memory': memory,
            'memory_other': memory_other, 'harddisk': harddisk, 'harddisk_other': harddisk_other, 'usb': usb,
         'usb_other': usb_other, 'com': com, 'com_other': com_other, 'network': network, 'wireless': wireless,
         'wireless_other': wireless_other, 'test1': test1, 'test2': test2, 'test3': test3, 'test4': test4, 'os': os,
         'os_version': os_version, 'trademark': trademark, 'logo': logo, 'instructions': instructions,
         'certificate': certificate, 'warrantycard': warrantycard, 'discs': discs, 'package': package,
         'label': label, 'label_content': label_content, 'install': install, 'lend': lend,
         'return_data': return_data, 'series_number': series_number, 'nums': nums, 'delivery_data': delivery_data,
         'tester': tester, 'test_data': test_data, 'remarks': remarks, 'auditor': auditor,
         "product_price": product_price, "memory_price": memory_price, "harddisk_price": harddisk_price,
         "wireless_price": wireless_price, "discs_price": discs_price,
         "install_price": install_price, "install_price": install_price, "all_const": all_const})

        #print "Price_Storage", orders, price_C100, price_E300, price_AX700,price_AX500

        Price_Storage.query.filter_by(requisition_number=orders).update({'price_C100': price_C100, 'price_E300': price_E300, 'price_T300': price_T300, 'price_T600': price_T600,'price_AX500':price_AX500,'price_AX700': price_AX700,'price_AX700_multi': price_AX700_multi,'price_AX730': price_AX730, 'price_AX800': price_AX800,'price_N600NW':price_N600NW,'price_2GB': price_2GB,'price_4GB': price_4GB, 'price_8GB': price_8GB, 'price_4GBFLASH': price_4GBFLASH,'price_8GBFLASH': price_8GBFLASH, 'price_8GBHD': price_8GBHD, 'price_16GBHD': price_16GBHD,'price_32GBHD': price_32GBHD, 'price_64GBHD': price_64GBHD, 'price_128GBHD': price_128GBHD,'price_512GBHD': price_512GBHD, 'price_ARMRTL8188': price_ARMRTL8188, 'price_X86Intel': price_X86Intel,'price_drivercd': price_drivercd, 'price_ThinVirt': price_ThinVirt})

	if Production_Orders.query.filter_by(requisition_number=orders).first() is not None:
	    order_number = Production_Orders.query.filter_by(requisition_number=orders).first().order_number
	    
	    if order_number != "":
		if ContractAccountant.query.filter_by(purchase_order=order_number).first() is not None:
		    ContractAccountant.query.filter_by(purchase_order=order_number).update({"tem_cost": all_const})














        db.session.commit()


    return render_template('orders/production_model.html', company_name=company_name, order_number=order_number,
                       requisition_number=requisition_number, adress=adress, client_name=client_name,
                       client_tel=client_tel, saler_name=saler_name, saler_tel=saler_tel, delivery_way=delivery_way,
                       model=model,
                       cpu=cpu, cpu_other=cpu_other, memory=memory, memory_other=memory_other, harddisk=harddisk,
                       harddisk_other=harddisk_other,
                       usb=usb, usb_other=usb_other, com=com, com_other=com_other, network=network,
                       wireless=wireless, wireless_other=wireless_other,
                       test1=test1, test2=test2, test3=test3, test4=test4, os=os, os_version=os_version,
                       trademark=trademark, logo=logo, instructions=instructions, certificate=certificate,
                       warrantycard=warrantycard, discs=discs, package=package, label=label,
                       label_content=label_content, install=install,
                       lend=lend, return_data=return_data, series_number=series_number, nums=int(nums),
                       delivery_data=delivery_data, tester=tester,
                       test_data=test_data, remarks=remarks, auditor=auditor, price_C100=float(price_C100),
                       price_E300=float(price_E300), price_T300=float(price_T300), price_T600=float(price_T600),price_AX500=float(price_AX500),
                       price_AX700=float(price_AX700),price_AX700_multi=float(price_AX700_multi),price_AX730=float(price_AX730),
                       price_AX800=float(price_AX800),price_N600NW=float(price_N600NW),
                       price_2GB=price_2GB, price_4GB=price_4GB, price_8GB=price_8GB, price_4GBFLASH=price_4GBFLASH,
                       price_8GBFLASH=price_8GBFLASH, price_8GBHD=price_8GBHD
                       , price_16GBHD=price_16GBHD, price_32GBHD=price_32GBHD, price_64GBHD=price_64GBHD,
                       price_128GBHD=price_128GBHD,
                       price_ARMRTL8188=price_ARMRTL8188, price_X86Intel=price_X86Intel,
                       price_drivercd=price_drivercd, price_ThinVirt=price_ThinVirt,
                       product_price=float(product_price), memory_price=float(memory_price),
                       harddisk_price=float(harddisk_price), wireless_price=float(wireless_price),
                       discs_price=float(discs_price), install_price=float(install_price))


# 送货单
@main.route('/delivery_orders', methods=['GET', 'POST'])
@login_required
def delivery_orders():
    # 修改数据
    id = request.form.get('row[id]', '')
    delivery_date = request.form.get('row[delivery_date]', '')

    if delivery_date != '':
        # if Delivery_Orders.query.filter_by(id=id).first() is not None: 
        Delivery_Orders.query.filter_by(id=id).update({"delivery_date": delivery_date})

    db.session.commit()

    create_no = request.form.get('create_delivery_productions', '')
    purchase_order = request.form.get('purchase_order', '')

    if create_no != '':
        # 根据合同号获取信息
        client_name = Orders.query.filter_by(order_number=purchase_order).first().company_name
        client_adress = Orders.query.filter_by(order_number=purchase_order).first().adress
        saler_name = Orders.query.filter_by(order_number=purchase_order).first().saler
        delivery_date = Delivery_Orders.query.filter_by(no=create_no).first().delivery_date

        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

            # 点击编辑，更新信息
        cursor.execute("UPDATE delivery_%s SET client_name='%s',client_adress='%s',saler='%s',delivery_date='%s' " % (
            create_no, client_name, client_adress, saler_name, delivery_date))

        cursor.close()
        database.commit()
        database.close()

    '''删除记录重置id'''

    def reset_delete(ids, remove_order):
        app = current_app._get_current_object()
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("DELETE FROM delivery_orders WHERE id=%s" % ids)

        cursor.execute("ALTER TABLE delivery_orders DROP id")
        cursor.execute("ALTER TABLE delivery_orders ADD id INT( 8 ) NOT NULL FIRST")
        cursor.execute(
            "ALTER TABLE delivery_orders MODIFY COLUMN id INT( 8 ) NOT NULL AUTO_INCREMENT,ADD PRIMARY KEY(id)")

        # 删除对应的送货单列表
        cursor.execute("DROP TABLE delivery_%s" % (remove_order))
        cursor.close()
        database.close()

    # 删除数据
    ids = request.form.get('ids[]', '')
    remove_no = request.form.get('remove_no[]', '')

    if ids and remove_no != " ":
        reset_delete(ids, remove_no)

    # 生成应收款单
    create_payment_no = request.form.get('create_payment_no', '')
    create_order_no = request.form.get('create_order_no', '')

    if create_payment_no and create_order_no != '':
        # 获取送货单中相应信息
        no = Delivery_Orders.query.filter_by(no=create_payment_no).first().no
        purchase_order = Delivery_Orders.query.filter_by(no=create_payment_no).first().purchase_order
        client_name = Delivery_Orders.query.filter_by(no=create_payment_no).first().client_name
        saler = Delivery_Orders.query.filter_by(no=create_payment_no).first().saler

        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("SELECT * from delivery_%s" % (create_payment_no))

        data = cursor.fetchall()
        jsonData = []

        for n, row in enumerate(data):
            result = {}
            result['all_amount'] = row[42]
            result['commission'] = row[43]

            jsonData.append(result)

        all_amount = jsonData[0]['all_amount']
        commission = jsonData[0]['commission']

        if all_amount == "":
            all_amount = 0.0

        if commission == "":
            commission = 0.0

        print all_amount, commission

        # 获取同一份合同所有生产单中的成本
        print purchase_order
        cursor.execute("SELECT SUM(all_const) from production_orders where order_number='%s' " % (str(purchase_order)))
        all_const = cursor.fetchone()
        if all_const != None:
            all_const = all_const
        else:
            all_const = 0.0

        '''
        if Production_Orders.query.filter_by(order_number=purchase_order).all() is not None:
            all_cost = Production_Orders.query.filter_by(order_number=purchase_order).all()
            all_const = []
            for i in len(all_cost):
                all_const.append(Production_Orders.query.filter_by(order_number=purchase_order).all()[i+1].all_const )
        '''
        cursor.close()
        database.close()

        iftax = Orders.query.filter_by(order_number=create_order_no).first().tax_type
        print 'iftax:', iftax
        if iftax == '增值税':
            iftax = '是'
            tax = float(all_amount) * 0.1
        else:
            iftax = '否'
            tax = 0.0

        profit = float(all_amount) - float(tax) - float(all_const[0]) - float(commission)
        exist = Payment.query.filter_by(no=create_payment_no).first()
        if exist is None:
            print '收款单不存在，新建'

            add_payment = Payment(no=create_payment_no, purchase_order=purchase_order, client_name=client_name,
                                  saler=saler, payment=all_amount, received_payment='0.00',
                                  commission=commission, iftax=iftax, tax=tax, cost=all_const[0], profit=profit,
                                  status='未收款')
            db.session.add(add_payment)
            db.session.commit()
        else:
            print '已存在，更新信息'
            Payment.query.filter_by(no=create_payment_no).update(
                {'client_name': client_name, 'payment': all_amount, 'saler': saler, 'iftax': iftax, 'tax': tax,
                 'cost': all_const[0], 'profit': profit, 'commission': commission})
            db.session.commit()

    return render_template('orders/delivery_orders.html')


@main.route('/delivery_orders/return_json', methods=['GET', 'POST'])
@login_required
def delivery_orders_return_json():
    # 获取要返回json的送货单
    # delivery_order = Delivery_which_in.query.filter_by(id='1').first().delivery_order
    # print delivery_order[-10:]

    app = current_app._get_current_object()
    try:
        '''warning:这里需要设置为环境获取'''
        db = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
        cursor = db.cursor()
    except:
        print 'MySQL connect fail...'
    cursor.execute("SELECT * from delivery_orders")
    data = cursor.fetchall()
    cursor.close()
    db.close()
    jsonData = []

    for n, row in enumerate(data):
        result = {}
        result['id'] = row[0]
        result['no'] = row[1]
        result['purchase_order'] = row[2]
        result['client_name'] = row[3]
        result['saler'] = row[4]
        result['delivery_date'] = row[5]

        jsonData.append(result)
    return json.dumps(jsonData)


# 编辑送货单
@main.route('/edit_delivery', methods=['GET', 'POST'])
@login_required
def edit_delivery():
    # if request.method == 'GET':
    # 读取送货单里的信息
    print 'GET'
    '''这里 与saler = request.form.get("saler","")冲突'''
    delivery_no = request.args.get("in")
    print 'delivery_no', delivery_no

    if delivery_no is not None:
        try:
            '''warning:这里需要设置为环境获取'''
            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        cursor.execute("SELECT * from delivery_%s" % delivery_no)
        data = cursor.fetchall()

        jsonData = []

        for n, row in enumerate(data):
            result = {}
            result['id'] = row[0]
            result['purchase_order'] = row[1]
            result['client_name'] = row[2]
            result['client_adress'] = row[3]
            result['saler'] = row[4]
            result['delivery_date'] = row[5]
            result['production_name1'] = row[6]
            result['nums1'] = row[7]
            result['unit1'] = row[8]
            result['unit_price1'] = row[9]
            result['amount1'] = row[10]
            result['remarks1'] = row[11]
            result['production_name2'] = row[12]
            result['nums2'] = row[13]
            result['unit2'] = row[14]
            result['unit_price2'] = row[15]
            result['amount2'] = row[16]
            result['remarks2'] = row[17]

            result['production_name3'] = row[18]
            result['nums3'] = row[19]
            result['unit3'] = row[20]
            result['unit_price3'] = row[21]
            result['amount3'] = row[22]
            result['remarks3'] = row[23]
            result['production_name4'] = row[24]
            result['nums4'] = row[25]
            result['unit4'] = row[26]
            result['unit_price4'] = row[27]
            result['amount4'] = row[28]
            result['remarks4'] = row[29]

            result['production_name5'] = row[30]
            result['nums5'] = row[31]
            result['unit5'] = row[32]
            result['unit_price5'] = row[33]
            result['amount5'] = row[34]
            result['remarks5'] = row[35]

            result['production_name6'] = row[36]
            result['nums6'] = row[37]
            result['unit6'] = row[38]
            result['unit_price6'] = row[39]
            result['amount6'] = row[40]
            result['remarks6'] = row[41]
            result['all_amount'] = row[42]
            result['commission'] = row[43]

            jsonData.append(result)

        print  jsonData

        purchase_order = jsonData[0]['purchase_order']

        client_name = jsonData[0]['client_name']
        client_adress = jsonData[0]['client_adress']
        saler = jsonData[0]['saler']
        delivery_date = jsonData[0]['delivery_date']

        production_name1 = jsonData[0]['production_name1']
        print 'production_name1', production_name1
        num1 = jsonData[0]['nums1']
        unit1 = jsonData[0]['unit1']
        unit_price1 = jsonData[0]['unit_price1']
        amount1 = jsonData[0]['amount1']
        remarks1 = jsonData[0]['remarks1']

        production_name2 = jsonData[0]['production_name2']
        num2 = jsonData[0]['nums2']
        unit2 = jsonData[0]['unit2']
        unit_price2 = jsonData[0]['unit_price2']
        amount2 = jsonData[0]['amount2']
        remarks2 = jsonData[0]['remarks2']

        production_name3 = jsonData[0]['production_name3']
        num3 = jsonData[0]['nums3']
        unit3 = jsonData[0]['unit3']
        unit_price3 = jsonData[0]['unit_price3']
        amount3 = jsonData[0]['amount3']
        remarks3 = jsonData[0]['remarks3']

        production_name4 = jsonData[0]['production_name4']
        num4 = jsonData[0]['nums4']
        unit4 = jsonData[0]['unit4']
        unit_price4 = jsonData[0]['unit_price4']
        amount4 = jsonData[0]['amount4']
        remarks4 = jsonData[0]['remarks4']

        production_name5 = jsonData[0]['production_name5']
        num5 = jsonData[0]['nums5']
        unit5 = jsonData[0]['unit5']
        unit_price5 = jsonData[0]['unit_price5']
        amount5 = jsonData[0]['amount5']
        remarks5 = jsonData[0]['remarks5']

        production_name6 = jsonData[0]['production_name6']
        num6 = jsonData[0]['nums6']
        unit6 = jsonData[0]['unit6']
        unit_price6 = jsonData[0]['unit_price6']
        amount6 = jsonData[0]['amount6']
        remarks6 = jsonData[0]['remarks6']

        all_amount = jsonData[0]['all_amount']
        commission = jsonData[0]['commission']



    # 接收表单传回的信息
    if request.method == 'POST':
        print "POST"
        print "接收表单返回数据"
        # saler = request.form.get("saler","")
        # delivery_no = request.form.get("delivery_no","")
        # delivery_date = request.form.get("delivery_date","")
        # print '+++++++++++++++++++',saler,delivery_no,delivery_date

        if "commission" in request.form:
            commission = request.form['commission']
            if commission != '':
                commission = commission
            else:
                commission = 0.00
        else:
            commission = 0.00

        if "production1" in request.form:
            production_name1 = request.form['production1']
        else:
            production_name1 = ""

        print production_name1

        if "num1" in request.form:
            nums1 = request.form['num1']
        else:
            nums1 = ""

        if "unit1" in request.form:
            unit1 = request.form['unit1']
        else:
            unit1 = ""

        if "unit_price1" in request.form:
            unit_price1 = request.form['unit_price1']
        else:
            unit_price1 = ""

        if "remark1" in request.form:
            remarks1 = request.form['remark1']
        else:
            remarks1 = ""

        if "production2" in request.form:
            production_name2 = request.form['production2']
        else:
            production_name2 = ""

        if "num2" in request.form:
            nums2 = request.form['num2']
        else:
            nums2 = ""

        if "unit2" in request.form:
            unit2 = request.form['unit2']
        else:
            unit2 = ""

        if "unit_price2" in request.form:
            unit_price2 = request.form['unit_price2']
        else:
            unit_price2 = ""

        if "remark2" in request.form:
            remarks2 = request.form['remark2']
        else:
            remarks2 = ""

        if "production3" in request.form:
            production_name3 = request.form['production3']
        else:
            production_name3 = ""

        if "num3" in request.form:
            nums3 = request.form['num3']
        else:
            nums3 = ""

        if "unit3" in request.form:
            unit3 = request.form['unit3']
        else:
            unit3 = ""

        if "unit_price3" in request.form:
            unit_price3 = request.form['unit_price3']
        else:
            unit_price3 = ""

        if "remark3" in request.form:
            remarks3 = request.form['remark3']
        else:
            remarks3 = ""

        if "production4" in request.form:
            production_name4 = request.form['production4']
        else:
            production_name4 = ""

        if "num4" in request.form:
            nums4 = request.form['num4']
        else:
            nums4 = ""

        if "unit4" in request.form:
            unit4 = request.form['unit4']
        else:
            unit4 = ""

        if "unit_price4" in request.form:
            unit_price4 = request.form['unit_price4']
        else:
            unit_price4 = ""

        if "remark4" in request.form:
            remarks4 = request.form['remark4']
        else:
            remarks4 = ""

        if "production5" in request.form:
            production_name5 = request.form['production5']
        else:
            production_name5 = ""

        if "num5" in request.form:
            nums5 = request.form['num5']
        else:
            nums5 = ""

        if "unit5" in request.form:
            unit5 = request.form['unit5']
        else:
            unit5 = ""

        if "unit_price5" in request.form:
            unit_price5 = request.form['unit_price5']
        else:
            unit_price5 = ""

        if "remark5" in request.form:
            remarks5 = request.form['remark5']
        else:
            remarks5 = ""

        if "production6" in request.form:
            production_name6 = request.form['production6']
        else:
            production_name6 = ""

        if "num6" in request.form:
            nums6 = request.form['num6']
        else:
            nums6 = ""

        if "unit6" in request.form:
            unit6 = request.form['unit6']
        else:
            unit6 = ""

        if "unit_price6" in request.form:
            unit_price6 = request.form['unit_price6']
        else:
            unit_price6 = ""

        if "remark6" in request.form:
            remarks6 = request.form['remark6']
        else:
            remarks6 = ""

        if nums1 and unit_price1 != '':
            amount1 = int(nums1) * float(unit_price1)
            amount1 = '%.2f' % amount1
            # print '','%.2f'%amount1
        else:
            amount1 = 0.00

        if nums2 and unit_price2 != '':
            amount2 = int(nums2) * float(unit_price2)
            amount2 = '%.2f' % amount2
            # print '','%.2f'%amount1
        else:
            amount2 = 0.00

        if nums3 and unit_price3 != '':
            amount3 = int(nums3) * float(unit_price3)
            amount3 = '%.2f' % amount3
            # print '','%.2f'%amount1
        else:
            amount3 = 0.00

        if nums4 and unit_price4 != '':
            amount4 = int(nums4) * float(unit_price4)
            amount4 = '%.2f' % amount4
            # print '','%.2f'%amount1
        else:
            amount4 = 0.00

        if nums5 and unit_price5 != '':
            amount5 = int(nums5) * float(unit_price5)
            amount5 = '%.2f' % amount5
            # print '','%.2f'%amount1
        else:
            amount5 = 0.00

        if nums6 and unit_price6 != '':
            amount6 = int(nums6) * float(unit_price6)
            amount6 = '%.2f' % amount6
            # print '','%.2f'%amount1
        else:
            amount6 = 0.00

        # 计算总金额
        all_amount = float(amount1) + float(amount2) + float(amount3) + float(amount4) + float(amount5) + float(amount6)
        all_amount = '%.2f' % all_amount
        # print  '%.2f'%all_amount

        # edit_delivery_save = request.form.get('edit_delivery_save','') 
        # print 'edit_delivery_save',edit_delivery_save    

        # if edit_delivery_save !='':
        app = current_app._get_current_object()
        try:

            database = MySQLdb.connect("localhost", "root", "uroot012", "erp_development", charset='utf8')
            cursor = database.cursor()
        except:
            print 'MySQL connect fail...'

        # delivery_no1 = request.args.get("in")
        print "++++-+-+--*****", delivery_no, nums1
        updatesql = "UPDATE  delivery_%s  SET  production_name1='%s',nums1='%s',unit1='%s',unit_price1='%s',amount1='%s',remarks1='%s',production_name2='%s',nums2='%s',unit2='%s',unit_price2='%s',amount2='%s',remarks2='%s',production_name3='%s',nums3='%s',unit3='%s',unit_price3='%s',amount3='%s',remarks3='%s',production_name4='%s',nums4='%s',unit4='%s',unit_price4='%s',amount4='%s',remarks4='%s',production_name5='%s',nums5='%s',unit5='%s',unit_price5='%s',amount5='%s',remarks5='%s',production_name6='%s',nums6='%s',unit6='%s',unit_price6='%s',amount6='%s',remarks6='%s',all_amount='%s',commission='%s' " % (
            delivery_no, production_name1, nums1, unit1, unit_price1, amount1, remarks1, production_name2, nums2, unit2,
            unit_price2, amount2, remarks2,
            production_name3, nums3, unit3, unit_price3, amount3, remarks3, production_name4, nums4, unit4, unit_price4,
            amount4, remarks4, production_name5, nums5, unit5, unit_price5, amount5, remarks5, production_name6, nums6,
            unit6, unit_price6, amount6, remarks6, all_amount, commission)

        cursor.execute(updatesql)

        cursor.close()
        database.commit()
        database.close()

        return redirect(url_for("main.edit_delivery") + '?in=' + delivery_no)

    return render_template('orders/edit_delivery.html', client_name=client_name, client_adress=client_adress,
                           purchase_order=purchase_order, delivery_no=delivery_no, saler=saler,
                           delivery_date=delivery_date, production1=production_name1, num1=num1,
                           unit1=unit1, unit_price1=unit_price1, amount1=amount1, remark1=remarks1,
                           production2=production_name2, num2=num2,
                           unit2=unit2, unit_price2=unit_price2, amount2=amount2, remark2=remarks2,
                           production3=production_name3, num3=num3,
                           unit3=unit3, unit_price3=unit_price3, amount3=amount3, remark3=remarks3,
                           production4=production_name4, num4=num4,
                           unit4=unit4, unit_price4=unit_price4, amount4=amount4, remark4=remarks4,
                           production5=production_name5, num5=num5,
                           unit5=unit5, unit_price5=unit_price5, amount5=amount5, remark5=remarks5,
                           production6=production_name6, num6=num6,
                           unit6=unit6, unit_price6=unit_price6, amount6=amount6, remark6=remarks6,
                           all_amount=all_amount, commission=commission)
