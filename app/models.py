# -*- coding:utf-8 -*-
__author__ = 'xuan'

# from  . import db
from flask_login import UserMixin
from werkzeug.security import generate_password_hash,check_password_hash
from flask import current_app
from itsdangerous import TimedJSONWebSignatureSerializer as Serializer
from flask_sqlalchemy import SQLAlchemy
# from .import login_manager
# from app import login_manager

from flask_login import LoginManager




db = SQLAlchemy()
login_manager = LoginManager()

login_manager.session_protection = 'strong'
login_manager.login_view = 'auth.login'


registrations =  db.Table('registrations',
        db.Column('users_id',db.Integer,db.ForeignKey('users.id')),
        db.Column('roles_id',db.Integer,db.ForeignKey('roles.id'))
)



class Role(db.Model):
    __tablename__='roles'
    id = db.Column(db.Integer,primary_key=True)
    name = db.Column(db.String(64),unique=True)
    default = db.Column(db.Boolean,default=False,index=True)
    permissions = db.Column(db.Integer)
    users = db.relationship('User',
                            secondary=registrations,
                            backref=db.backref('roles',lazy='dynamic'),
                            lazy='dynamic')
                                            
                                            
    def __repr__(self):
        return '<Role %r>' % self.name


class User(UserMixin,db.Model):
    __tablename__='users'
    id = db.Column(db.Integer,primary_key=True)
    email = db.Column(db.String(64),unique=True,index=True)
    username = db.Column(db.String(64),unique=True,index=True)
    password_hash = db.Column(db.String(128))
    #role_id = db.Column(db.Integer, db.ForeignKey('roles.id'))

    @property #相当于get_password
    def password(self):
        raise AttributeError('password is not readable attribute')

    '''
    当用shell插入User模型时，不用password_hash，直接用password=.....
    '''
    @password.setter
    def password(self,password):
        self.password_hash = generate_password_hash(password)

    def verify_password(self,password):
        return check_password_hash(self.password_hash,password)

    def __repr__(self):
        return '<User %r>' % self.username

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))


#商品目录价格
class Goods_price(db.Model):
    __tablename__='goods_price'
    id = db.Column(db.Integer,primary_key=True)
    name = db.Column(db.String(64),unique=True)
    price = db.Column(db.String(64),index=True)
    price_oem = db.Column(db.String(64))
    price_own = db.Column(db.String(64))
    nums = db.Column(db.Integer,index=True)
    remark = db.Column(db.String(64),index=True)


    def __repr__(self):
        return '<Goods_price %r>' % self.name


#合同记录
class Contract(db.Model):
    __tablename__='contract'
    id = db.Column(db.Integer,primary_key=True)
    name = db.Column(db.String(64),unique=True)
    number = db.Column(db.String(64),unique=True)
    path = db.Column(db.String(64),index=True)
    upload_date = db.Column(db.String(64),index=True)

    def __repr__(self):
        return '<Contract %r>' % self.name


#回执单记录
class Receipts(db.Model):
    __tablename__='receipts'
    id = db.Column(db.Integer,primary_key=True)
    name = db.Column(db.String(64),unique=True)
    number = db.Column(db.String(64),unique=True)
    path = db.Column(db.String(64),index=True)
    upload_date = db.Column(db.String(64),index=True)


    def __repr__(self):
        return '<Contract %r>' % self.name


#合同结算模型
class ContractAccountant(db.Model):
    __tablename__='contract_accountant'
    order_date = db.Column(db.String(64),index=True)
    purchase_order = db.Column(db.String(64),index=True,primary_key=True)
    client_name = db.Column(db.String(64),index=True)
    order_amount = db.Column(db.Float,index=True)
    tax_type = db.Column(db.String(64),index=True)
    tax = db.Column(db.Float,index=True)
    tem_cost = db.Column(db.Float,index=True)
    servers_cost = db.Column(db.Float,index=True)
    fittings_cost = db.Column(db.Float,index=True) 
    softwares_cost = db.Column(db.Float,index=True)
    reimbursement = db.Column(db.Float,index=True)
    consult_cost = db.Column(db.Float,index=True)
    freight = db.Column(db.Float,index=True)
    after_sales = db.Column(db.Float,index=True)
    profit = db.Column(db.Float,index=True)
    

    server_cost = db.relationship('Server_Cost', backref='contract_accountant',passive_deletes=True)
    fitting_cost = db.relationship('Fitting_Cost', backref='contract_accountant',passive_deletes=True)		
    software_cost = db.relationship('Software_Cost', backref='contract_accountant',passive_deletes=True)


    def __repr__(self):
        return '<ContractAccountant %r>' % self.purchase_order

#服务器成本模型
class Server_Cost(db.Model):
    __tablename__='server_cost'

    id = db.Column(db.Integer,primary_key=True)

    server1 = db.Column(db.String(64))
    num1 = db.Column(db.Integer,index=True)
    unit1 = db.Column(db.String(64))
    unit_price1 = db.Column(db.Float,index=True)
    remarks1 = db.Column(db.String(64))
    
    server2 = db.Column(db.String(64))
    num2 = db.Column(db.Integer,index=True)
    unit2 = db.Column(db.String(64))
    unit_price2 = db.Column(db.Float,index=True)
    remarks2 = db.Column(db.String(64))

    server3 = db.Column(db.String(64))
    num3 = db.Column(db.Integer,index=True)
    unit3 = db.Column(db.String(64))
    unit_price3 = db.Column(db.Float,index=True)
    remarks3 = db.Column(db.String(64))

    server4 = db.Column(db.String(64))
    num4 = db.Column(db.Integer,index=True)
    unit4 = db.Column(db.String(64))
    unit_price4 = db.Column(db.Float,index=True)
    remarks4 = db.Column(db.String(64))

    server5 = db.Column(db.String(64))
    num5 = db.Column(db.Integer,index=True)
    unit5 = db.Column(db.String(64))
    unit_price5 = db.Column(db.Float,index=True)
    remarks5 = db.Column(db.String(64))

    server6 = db.Column(db.String(64))
    num6 = db.Column(db.Integer,index=True)
    unit6 = db.Column(db.String(64))
    unit_price6 = db.Column(db.Float,index=True)
    remarks6 = db.Column(db.String(64))

    server7 = db.Column(db.String(64))
    num7 = db.Column(db.Integer,index=True)
    unit7 = db.Column(db.String(64))
    unit_price7 = db.Column(db.Float,index=True)
    remarks7 = db.Column(db.String(64))

    server8 = db.Column(db.String(64))
    num8 = db.Column(db.Integer,index=True)
    unit8 = db.Column(db.String(64))
    unit_price8 = db.Column(db.Float,index=True)
    remarks8 = db.Column(db.String(64))

    server9 = db.Column(db.String(64))
    num9 = db.Column(db.Integer,index=True)
    unit9 = db.Column(db.String(64))
    unit_price9 = db.Column(db.Float,index=True)
    remarks9 = db.Column(db.String(64))

    server10 = db.Column(db.String(64))
    num10 = db.Column(db.Integer,index=True)
    unit10 = db.Column(db.String(64))
    unit_price10 = db.Column(db.Float,index=True)
    remarks10 = db.Column(db.String(64))

    server11 = db.Column(db.String(64))
    num11 = db.Column(db.Integer,index=True)
    unit11 = db.Column(db.String(64))
    unit_price11 = db.Column(db.Float,index=True)
    remarks11 = db.Column(db.String(64))

    server12 = db.Column(db.String(64))
    num12 = db.Column(db.Integer,index=True)
    unit12 = db.Column(db.String(64))
    unit_price12 = db.Column(db.Float,index=True)
    remarks12 = db.Column(db.String(64))

    purchase_order = db.Column(db.String(64),db.ForeignKey('contract_accountant.purchase_order',ondelete='CASCADE',onupdate='CASCADE'))


    def __repr__(self):
        return '<Server_Cost %r>' % self.id


# 配件成本模型
class Fitting_Cost(db.Model):
    __tablename__='fitting_cost'

    id = db.Column(db.Integer,primary_key=True)

    fitting1 = db.Column(db.String(64))
    num1 = db.Column(db.Integer,index=True)
    unit1 = db.Column(db.String(64))
    unit_price1 = db.Column(db.Float,index=True)
    remarks1 = db.Column(db.String(64))
    
    fitting2 = db.Column(db.String(64))
    num2 = db.Column(db.Integer,index=True)
    unit2 = db.Column(db.String(64))
    unit_price2 = db.Column(db.Float,index=True)
    remarks2 = db.Column(db.String(64))

    fitting3 = db.Column(db.String(64))
    num3 = db.Column(db.Integer,index=True)
    unit3 = db.Column(db.String(64))
    unit_price3 = db.Column(db.Float,index=True)
    remarks3 = db.Column(db.String(64))

    fitting4 = db.Column(db.String(64))
    num4 = db.Column(db.Integer,index=True)
    unit4 = db.Column(db.String(64))
    unit_price4 = db.Column(db.Float,index=True)
    remarks4 = db.Column(db.String(64))

    fitting5 = db.Column(db.String(64))
    num5 = db.Column(db.Integer,index=True)
    unit5 = db.Column(db.String(64))
    unit_price5 = db.Column(db.Float,index=True)
    remarks5 = db.Column(db.String(64))

    fitting6 = db.Column(db.String(64))
    num6 = db.Column(db.Integer,index=True)
    unit6 = db.Column(db.String(64))
    unit_price6 = db.Column(db.Float,index=True)
    remarks6 = db.Column(db.String(64))

    fitting7 = db.Column(db.String(64))
    num7 = db.Column(db.Integer,index=True)
    unit7 = db.Column(db.String(64))
    unit_price7 = db.Column(db.Float,index=True)
    remarks7 = db.Column(db.String(64))

    fitting8 = db.Column(db.String(64))
    num8 = db.Column(db.Integer,index=True)
    unit8 = db.Column(db.String(64))
    unit_price8 = db.Column(db.Float,index=True)
    remarks8 = db.Column(db.String(64))

    fitting9 = db.Column(db.String(64))
    num9 = db.Column(db.Integer,index=True)
    unit9 = db.Column(db.String(64))
    unit_price9 = db.Column(db.Float,index=True)
    remarks9 = db.Column(db.String(64))

    fitting10 = db.Column(db.String(64))
    num10 = db.Column(db.Integer,index=True)
    unit10 = db.Column(db.String(64))
    unit_price10 = db.Column(db.Float,index=True)
    remarks10 = db.Column(db.String(64))

    fitting11 = db.Column(db.String(64))
    num11 = db.Column(db.Integer,index=True)
    unit11 = db.Column(db.String(64))
    unit_price11 = db.Column(db.Float,index=True)
    remarks11 = db.Column(db.String(64))

    fitting12 = db.Column(db.String(64))
    num12 = db.Column(db.Integer,index=True)
    unit12 = db.Column(db.String(64))
    unit_price12 = db.Column(db.Float,index=True)
    remarks12 = db.Column(db.String(64))

    purchase_order = db.Column(db.String(64),db.ForeignKey('contract_accountant.purchase_order',ondelete='CASCADE'))


    def __repr__(self):
        return '<Fitting_Cost %r>' % self.id



# 软件成本模型
class Software_Cost(db.Model):
    __tablename__='software_cost'

    id = db.Column(db.Integer,primary_key=True)

    software1 = db.Column(db.String(64))
    num1 = db.Column(db.Integer,index=True)
    unit1 = db.Column(db.String(64))
    unit_price1 = db.Column(db.Float,index=True)
    remarks1 = db.Column(db.String(64))
    
    software2 = db.Column(db.String(64))
    num2 = db.Column(db.Integer,index=True)
    unit2 = db.Column(db.String(64))
    unit_price2 = db.Column(db.Float,index=True)
    remarks2 = db.Column(db.String(64))

    software3 = db.Column(db.String(64))
    num3 = db.Column(db.Integer,index=True)
    unit3 = db.Column(db.String(64))
    unit_price3 = db.Column(db.Float,index=True)
    remarks3 = db.Column(db.String(64))

    software4 = db.Column(db.String(64))
    num4 = db.Column(db.Integer,index=True)
    unit4 = db.Column(db.String(64))
    unit_price4 = db.Column(db.Float,index=True)
    remarks4 = db.Column(db.String(64))

    software5 = db.Column(db.String(64))
    num5 = db.Column(db.Integer,index=True)
    unit5 = db.Column(db.String(64))
    unit_price5 = db.Column(db.Float,index=True)
    remarks5 = db.Column(db.String(64))

    software6 = db.Column(db.String(64))
    num6 = db.Column(db.Integer,index=True)
    unit6 = db.Column(db.String(64))
    unit_price6 = db.Column(db.Float,index=True)
    remarks6 = db.Column(db.String(64))

    software7 = db.Column(db.String(64))
    num7 = db.Column(db.Integer,index=True)
    unit7 = db.Column(db.String(64))
    unit_price7 = db.Column(db.Float,index=True)
    remarks7 = db.Column(db.String(64))

    software8 = db.Column(db.String(64))
    num8 = db.Column(db.Integer,index=True)
    unit8 = db.Column(db.String(64))
    unit_price8 = db.Column(db.Float,index=True)
    remarks8 = db.Column(db.String(64))

    software9 = db.Column(db.String(64))
    num9 = db.Column(db.Integer,index=True)
    unit9 = db.Column(db.String(64))
    unit_price9 = db.Column(db.Float,index=True)
    remarks9 = db.Column(db.String(64))

    software10 = db.Column(db.String(64))
    num10 = db.Column(db.Integer,index=True)
    unit10 = db.Column(db.String(64))
    unit_price10 = db.Column(db.Float,index=True)
    remarks10 = db.Column(db.String(64))

    software11 = db.Column(db.String(64))
    num11 = db.Column(db.Integer,index=True)
    unit11 = db.Column(db.String(64))
    unit_price11 = db.Column(db.Float,index=True)
    remarks11 = db.Column(db.String(64))

    software12 = db.Column(db.String(64))
    num12 = db.Column(db.Integer,index=True)
    unit12 = db.Column(db.String(64))
    unit_price12 = db.Column(db.Float,index=True)
    remarks12 = db.Column(db.String(64))

    purchase_order = db.Column(db.String(64),db.ForeignKey('contract_accountant.purchase_order',ondelete='CASCADE'))


    def __repr__(self):
        return '<Software_Cost %r>' % self.id


# 报销单模型
class Reimbursement(db.Model):
    __tablename__='reimbursement'

    number = db.Column(db.Integer,primary_key=True)
    date = db.Column(db.String(64),index=True)
    purchase_order = db.Column(db.String(64),index=True)
    sum_amount = db.Column(db.Float)
    remark = db.Column(db.String(64))
    loan = db.Column(db.Float)
    residue = db.Column(db.Float)
    rei_name = db.Column(db.String(64))
    payee = db.Column(db.String(64))
    purpose_all = db.Column(db.String(128))

    purpose1 = db.Column(db.String(64))
    amount1 = db.Column(db.Float)

    purpose2 = db.Column(db.String(64))
    amount2 = db.Column(db.Float)

    purpose3 = db.Column(db.String(64))
    amount3 = db.Column(db.Float)

    purpose4 = db.Column(db.String(64))
    amount4 = db.Column(db.Float)



    def __repr__(self):
        return '<Reimbursement %r>' % self.number

#付款申请单模型
class PayRequest(db.Model):
    __tablename__='payrequest'

    number = db.Column(db.String(64),primary_key=True)
    date = db.Column(db.String(64),index=True)
    project_name = db.Column(db.String(64),index=True)
    
    receivable_company = db.Column(db.String(64),index=True)
    abstract = db.Column(db.String(64),index=True)
    purchase_order = db.Column(db.String(64),index=True)
    project_amount = db.Column(db.Float)
    sum_payed = db.Column(db.Float) 
    payed = db.Column(db.Float)
    pay_way = db.Column(db.String(64))
    remark = db.Column(db.String(64))
    operator = db.Column(db.String(64))

    purpose_all = db.Column(db.String(128))

    purpose1 = db.Column(db.String(64))
    amount1 = db.Column(db.Float)

    purpose2 = db.Column(db.String(64))
    amount2 = db.Column(db.Float)

    purpose3 = db.Column(db.String(64))
    amount3 = db.Column(db.Float)

    purpose4 = db.Column(db.String(64))
    amount4 = db.Column(db.Float)

    deposit_bank = db.Column(db.String(64))
    deposit_account = db.Column(db.String(64))
    tax_number = db.Column(db.String(64))

    def __repr__(self):
        return '<PayRequest %r>' % self.number




#客户信息
class Clients(db.Model):
    __tablename__='clients'
    id = db.Column(db.Integer,primary_key=True)
    client_no = db.Column(db.String(64))
    service_no = db.Column(db.Text)
    company_name = db.Column(db.String(50))
    license = db.Column(db.String(64))
    contact = db.Column(db.String(10))
    position = db.Column(db.String(10))
    cellphone = db.Column(db.String(15))
    telephone = db.Column(db.String(15))
    email = db.Column(db.String(50))
    qq = db.Column(db.String(50))
    adress = db.Column(db.String(64))
    saler = db.Column(db.String(10))
    tract = db.Column(db.Text)
    status = db.Column(db.String(10),index=True)
    submitter = db.Column(db.String(10))

    fk_clients_traces = db.relationship('Clients_Traces', backref='clients',passive_deletes=True)

    def __repr__(self):
        return '<Clinets %r>' % self.id


#客户信息跟踪
class Clients_Traces(db.Model):
    __tablename__='clients_traces'
    id = db.Column(db.Integer,primary_key=True)
    situation = db.Column(db.String(200))
    trace_date = db.Column(db.String(64))
    remarks = db.Column(db.String(64))
    client_id = db.Column(db.Integer, db.ForeignKey('clients.id',ondelete='CASCADE',onupdate='CASCADE'))

    def __repr__(self):
        return '<Clients_Traces %r>' % self.id




#配件&包装材料
class Fittings(db.Model):
    __tablename__='fittings'
    id = db.Column(db.Integer,primary_key=True)
    name = db.Column(db.String(64),unique=True)
    nums = db.Column(db.Integer,index=True)
    price = db.Column(db.String(64),index=True)
    # remarks = db.Column(db.String(64),index=True)

    fittins_inputs = db.relationship("Fittings_Inputs", backref="fittings")

    def __repr__(self):
        return '<Fittings %r>' % self.name


#配件&包装材料 入库记录
class Fittings_Inputs(db.Model):
    __tablename__='fittings_inputs'
    id = db.Column(db.Integer,primary_key=True)
    dates = db.Column(db.String(64),unique=True)
    nums = db.Column(db.Integer)
    suppliers = db.Column(db.String(64))
    examine = db.Column(db.String(64))
    sendee = db.Column(db.String(64))
    remarks = db.Column(db.String(64))
    belongs = db.Column(db.Integer,db.ForeignKey('fittings.id'),index=True)


#配件&包装材料 出库记录
class Fittings_Outputs(db.Model):
    __tablename__='fittings_outputs'
    id = db.Column(db.Integer,primary_key=True)
    dates = db.Column(db.String(64),unique=True)
    nums = db.Column(db.Integer)
    purpose = db.Column(db.String(64))
    receiptor = db.Column(db.String(64))
    belongs = db.Column(db.String(64))
    status = db.Column(db.String(64))   
    remarks = db.Column(db.String(64))
    from_which = db.Column(db.String(64))
    belongs = db.Column(db.Integer,db.ForeignKey('fittings.id'),index=True)

    def __repr__(self):
        return '<Fittings_Outputs %r>' % self.id


#半成品
class Semi_finished(db.Model):
    __tablename__='semi_finished'
    id = db.Column(db.Integer,primary_key=True)
    name = db.Column(db.String(64),index=True)
    nums = db.Column(db.Integer,index=True)
    price = db.Column(db.String(64),index=True)
    remarks = db.Column(db.String(64),index=True)

    def __repr__(self):
        return '<Semi_finished %r>' % self.name


#end_product
class End_product(db.Model):
    __tablename__='end_product'
    id = db.Column(db.Integer,primary_key=True)
    name = db.Column(db.String(64),index=True)
    nums = db.Column(db.Integer,index=True)
    price = db.Column(db.String(64),index=True)
    remarks = db.Column(db.String(64),index=True)

    def __repr__(self):
        return '<end_product %r>' % self.name


class Orders(db.Model):
    __tablename__='orders'
    id = db.Column(db.Integer,primary_key=True)
    company_name = db.Column(db.String(64),index=True)
    order_date = db.Column(db.String(64),index=True)
    order_number = db.Column(db.String(64),index=True)
    tax_type = db.Column(db.String(64),index=True)
    adress = db.Column(db.String(64),index=True)
    client_name = db.Column(db.String(64),index=True)
    tel = db.Column(db.String(64),index=True)
    saler = db.Column(db.String(64),index=True)
    saler_tel = db.Column(db.String(64),index=True)
    apartment = db.Column(db.String(64),index=True)
    product_type = db.Column(db.String(64),index=True)
    product_price = db.Column(db.Float,index=True)
    product_num = db.Column(db.Integer,index=True)
    order_amount = db.Column(db.Float,index=True)

    def __repr__(self):
        return '<orders %r>' % self.company_name



class Production_Orders(db.Model):
    __tablename__='production_orders'
    id = db.Column(db.Integer,primary_key=True)
    company_name = db.Column(db.String(64),index=True)
    order_number = db.Column(db.String(64),index=True)
    requisition_number = db.Column(db.String(64),index=True)

    adress = db.Column(db.String(64),index=True)
    client_name = db.Column(db.String(64),index=True)
    client_tel = db.Column(db.String(64),index=True)
    saler_name = db.Column(db.String(64),index=True)
    saler_tel = db.Column(db.String(64),index=True)

    delivery_way = db.Column(db.String(64),index=True)
    model = db.Column(db.String(64),index=True)
    cpu = db.Column(db.String(64),index=True)
    cpu_other = db.Column(db.String(64),index=True)
    memory = db.Column(db.String(64),index=True)
    memory_other = db.Column(db.String(64),index=True)
    harddisk = db.Column(db.String(64),index=True)
    harddisk_other = db.Column(db.String(64),index=True)
    usb = db.Column(db.String(64),index=True)
    usb_other = db.Column(db.String(64),index=True)
    com = db.Column(db.String(64),index=True)
    com_other = db.Column(db.String(64),index=True)
    network = db.Column(db.String(64),index=True)
    wireless = db.Column(db.String(64),index=True)
    wireless_other = db.Column(db.String(64),index=True)
    test1 = db.Column(db.String(64),index=True)
    test2 = db.Column(db.String(64),index=True)
    test3 = db.Column(db.String(64),index=True)
    test4 = db.Column(db.String(64),index=True)
    os = db.Column(db.String(64),index=True)
    os_version = db.Column(db.String(64),index=True)
    trademark = db.Column(db.String(64),index=True)
    logo = db.Column(db.String(64),index=True)
    instructions = db.Column(db.String(64),index=True)
    certificate = db.Column(db.String(64),index=True)
    warrantycard = db.Column(db.String(64),index=True)
    discs = db.Column(db.String(64),index=True)
    package = db.Column(db.String(64),index=True)
    label = db.Column(db.String(64),index=True)
    label_content= db.Column(db.String(64),index=True)
    install = db.Column(db.String(64),index=True)
    lend = db.Column(db.String(64),index=True)
    return_data = db.Column(db.String(64),index=True)
    series_number = db.Column(db.String(64),index=True)
    nums = db.Column(db.String(64),index=True)
    delivery_data = db.Column(db.String(64),index=True)
    tester = db.Column(db.String(64),index=True)
    test_data = db.Column(db.String(64),index=True)
    remarks = db.Column(db.String(64),index=True)
    auditor = db.Column(db.String(64),index=True)

    product_price = db.Column(db.String(64),index=True) 
    memory_price = db.Column(db.String(64),index=True)  
    harddisk_price = db.Column(db.String(64),index=True) 
    wireless_price = db.Column(db.String(64),index=True)
    discs_price = db.Column(db.String(64),index=True)  
    install_price = db.Column(db.String(64),index=True)
    all_const = db.Column(db.String(64),index=True)
    
    def __repr__(self):
        return '<production_orders %r>' % self.order_number


#储存配件价格
class Price_Storage(db.Model):
    __tablename__='price_storage'
    
    id = db.Column(db.Integer,primary_key=True)
    requisition_number = db.Column(db.String(64),index=True)
    price_C100 = db.Column(db.String(64),index=True) 
    price_AX500 = db.Column(db.String(64),index=True)  
    price_AX700 = db.Column(db.String(64),index=True)
    price_AX700_multi = db.Column(db.String(64),index=True)
    price_E300 = db.Column(db.String(64),index=True)
    price_T300 = db.Column(db.String(64),index=True)  
    price_T600 = db.Column(db.String(64),index=True)
    price_AX730 = db.Column(db.String(64),index=True)          
    price_AX800 = db.Column(db.String(64),index=True)
    price_N600NW = db.Column(db.String(64),index=True)
    #price_model_others = db.Column(db.String(64),index=True)
    
    price_1GB = db.Column(db.String(64),index=True)
    price_2GB = db.Column(db.String(64),index=True)  
    price_4GB = db.Column(db.String(64),index=True)  
    price_8GB = db.Column(db.String(64),index=True)
    #price_memory_other = db.Column(db.String(64),index=True)

    price_4GBFLASH = db.Column(db.String(64),index=True)
    price_8GBFLASH = db.Column(db.String(64),index=True)
    price_8GBHD = db.Column(db.String(64),index=True)
    price_16GBHD = db.Column(db.String(64),index=True)
    price_32GBHD = db.Column(db.String(64),index=True)
    price_64GBHD = db.Column(db.String(64),index=True)
    price_128GBHD = db.Column(db.String(64),index=True)
    price_256GBHD = db.Column(db.String(64),index=True)
    price_512GBHD = db.Column(db.String(64),index=True)

    price_ARMRTL8188 = db.Column(db.String(64),index=True)
    price_X86Intel = db.Column(db.String(64),index=True)
    price_drivercd = db.Column(db.String(64),index=True)
    price_ThinVirt = db.Column(db.String(64),index=True)

    def __repr__(self):
        return '<pirce_storage %r>' % self.id



#送货单模型
class Delivery_Orders(db.Model):
    __tablename__='delivery_orders'
    id = db.Column(db.Integer,primary_key=True)
    no = db.Column(db.String(64),index=True)
    purchase_order = db.Column(db.String(64),index=True)
    client_name = db.Column(db.String(64),index=True)
    saler = db.Column(db.String(64),index=True)
    delivery_date = db.Column(db.String(64),index=True)


    def __repr__(self):
        return '<Delivery_Orders %r>' % self.no


#送货单中产品
class Delivery_Productions(db.Model):
    __tablename__='delivery_productions'
    id = db.Column(db.Integer,primary_key=True)
    purchase_order = db.Column(db.String(64),index=True)
    production_name = db.Column(db.String(64),index=True)
    nums = db.Column(db.String(64),index=True)
    unit = db.Column(db.String(64),index=True)
    unit_price = db.Column(db.String(64),index=True)
    amount = db.Column(db.String(64),index=True)
    remarks = db.Column(db.String(64),index=True) 
    #productions_id = db.Column(db.Integer, db.ForeignKey('delivery_orders.id'))

    def __repr__(self):
        return '<Delivery_Productions %r>' % self.purchase_order



#记录要生成送货单的单号
class Delivery_which_in(db.Model):
    __tablename__='delivery_which_in'
    id = db.Column(db.Integer,primary_key=True)
    delivery_order = db.Column(db.String(64),unique=True)
    # configure = db.Column(db.String(64),index=True)
    # remarks = db.Column(db.String(64),index=True)

    def __repr__(self):
        return '<Production_which_in %r>' % self.delivery_order


#应收货款模型
class Payment(db.Model):
    __tablename__='payment'
    id = db.Column(db.Integer,primary_key=True)
    no = db.Column(db.String(64),unique=True)
    client_name = db.Column(db.String(64),index=True)
    saler = db.Column(db.String(64),index=True)
    purchase_order = db.Column(db.String(64),index=True)
    payment = db.Column(db.String(64),index=True)
    received_payment = db.Column(db.String(64),index=True)
    commission = db.Column(db.String(64),index=True)
    iftax = db.Column(db.String(64),index=True)
    tax = db.Column(db.String(64),index=True)
    cost = db.Column(db.String(64),index=True)
    profit = db.Column(db.String(64),index=True)
    status = db.Column(db.String(64),index=True)  
    date = db.Column(db.String(64),index=True)
    type = db.Column(db.String(64),index=True)
    price = db.Column(db.Float,index=True)
    num = db.Column(db.Integer,index=True)
    tem_cost = db.Column(db.Float,index=True)
    server_cost = db.Column(db.Float,index=True)
    consult_cost = db.Column(db.Float,index=True)
    after_sales = db.Column(db.Float,index=True)
    tax_type = db.Column(db.String(64),index=True)


    def __repr__(self):
        return '<Payment %r>' % self.no


#采购清单模型
class Purchase_List(db.Model):
    __tablename__='purchase_list'

    #id = db.Column(db.Integer,primary_key=True)
    
    name = db.Column(db.String(64),primary_key=True,unique=True)
    num = db.Column(db.Integer,index=True)
    min_num = db.Column(db.Integer,index=True) 


    def __repr__(self):
        return '<Payment %r>' % self.name


#员工绩效模型
class Performance_Related(db.Model):
    __tablename__='performance_related'

    id = db.Column(db.Integer,primary_key=True)
    date = db.Column(db.Date)
    name = db.Column(db.String(64))
    place = db.Column(db.String(64))
    content = db.Column(db.Text)
    assist_content = db.Column(db.Text)
    chief_reply = db.Column(db.Text)
    complete = db.Column(db.Text)
    integration = db.Column(db.String(64))
    year = db.Column(db.Integer,index=True)
    month = db.Column(db.String(2),index=True)
    remarks = db.Column(db.String(64))

    def __repr__(self):
        return '<Performance_Related %r>' % self.id





