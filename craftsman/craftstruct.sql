drop database if exists craftsmandb;
create database craftsmandb default character set utf8;#建立数据库
use craftsmandb;#选择创建的数据库
drop table if exists admintb;
drop table if exists usertb;
drop table if exists workertb;
drop table if exists workertypetb;
drop table if exists workercasetb;
drop table if exists casepicturetb;
drop table if exists workerdetailinfotb;
drop table if exists detailinfoitemtb;
drop table if exists ordertb;
drop table if exists ordercontenttb;
drop table if exists orderitemtb;
drop table if exists reservationtb;
drop table if exists useraddresstb;
drop table if exists workeraddresstb;
drop table if exists logtb;
drop table if exists articletb;
drop table if exists workpricetb;
drop table if exists workercommenttb;

create table  admintb(#管理员账户表
	admintb_id int primary key auto_increment, #管理员编号
	admintb_name varchar(30),#帐户名
	admintb_password varchar(20), #账户密码
	admintb_level int #管理员等级(用于权限控制)
);


create table usertb( #用户信息表
  usertb_id int primary key auto_increment, #用户编号
  usertb_name varchar(50) unique, #用户名，长度50字符，一个汉字两个字符，英文和数字占一个字符
  usertb_password varchar(20) not null, #用户密码
  usertb_cellphone varchar(30) unique, #用户手机
  usertb_qq  varchar(20) unique, #用户qq
  usertb_weixin  varchar(20) unique,#用户微信
  usertb_email  varchar(50) unique, #用户邮箱
  usertb_headpic varchar(50), #用户头像
  usertb_sex char(2),#性别
  usertb_status int,#用户激活状态（1为已激活 0为未激活）
  usertb_regtime datetime, #用户注册时间
  alternative1 varchar(50), #备选字段1
  alternative2 varchar(50), #备选字段2
  alternative3 varchar(50) #备选字段3
);
create table workertb(#工人
  workertb_id int primary key auto_increment,#工人编号
  workertb_name varchar(20),#工人姓名
  workertypetb_sex char(2),#性别
  workertb_scop varchar(50),#工作范围
  workertb_cadress varchar(100),#常驻地址
  workertb_extime int,#从业年限
  workertypetb_level int,#工人等级
  workertb_cellphone varchar(30),#工人手机号
  workertypetb_id int not null,#工人类型编号
  workertb_secondphone varchar(30),#工人备用手机号
  workertb_summary varchar(50),#工人简介
  workertb_photo varchar(50),#工人照片
  workertb_addtime datetime,#工人加入时间
  alternative1 varchar(50),#备选字段1
  alternative2 varchar(50),#备选字段2
  alternative3 varchar(50)#备选字段3
);
create table workertypetb(#工人类型
  workertypetb_id int primary key auto_increment,#类型编号
  workertypetb_name varchar(20),#类型名称
  workertypetb_summary varchar(1000),#类型简介
	workertypetb_pic varchar(50),#图片展示
  alternative1 varchar(50),#备选字段1
  alternative2 varchar(50),#备选字段2
  alternative3 varchar(50)#备选字段3
);

create table workercasetb(#工人案例表
  workercasetb_id int primary key auto_increment,#类型编号
	workertb_id int,#工人编号
  workercasetb_name varchar(30),#案例名称
  workertypetb_summary varchar(1000),#类型简介
	workertypetb_pic varchar(30),#图片展示
  alternative1 varchar(50),#备选字段1
  alternative2 varchar(50),#备选字段2
  alternative3 varchar(50)#备选字段3
);



create table casepicturetb(#案例图片表
  casepicturetb_id int primary key auto_increment,#图片编号编号
	workercasetb_id int not null,#案例编号
  casepicturetb_pic varchar(30),#图片地址
  alternative1 varchar(50),#备选字段1
  alternative2 varchar(50),#备选字段2
  alternative3 varchar(50)#备选字段3
);

create table workerdetailinfotb(#工人详细信息表
  workerdetailinfotb_id int primary key auto_increment,#详细信息编号
  workertb_id int,#g工人编号
  detailinfoitemtb_id int,#信息项编号
  workerdetailinfotb_content varchar(30),#内容
  alternative1 varchar(50),#备选字段1
  alternative2 varchar(50),#备选字段2
  alternative3 varchar(50)#备选字段3
);

create table detailinfoitemtb(#工人信息项表
  detailinfoitemtb_id int primary key auto_increment,#信息项编号
  detailinfoitemtb_name varchar(20),#信息项名称
  alternative1 varchar(50),#备选字段1
  alternative2 varchar(50),#备选字段2
  alternative3 varchar(50)#备选字段3
);

create table ordertb(#订单表
  ordertb_id int primary key auto_increment,#订单编号
	usertb_id	int not null,#用户编号
	workertb_id	int not null,#工人编号
    ordertb_status	int,#订单状态1.未处理2.已处理3.正在进行4.已完成5.已冻结6.正在退单7.已删除8.未付款9.付款
	ordertb_paystatus int,#付款状态0.未付款1.已付款2.退款中3.已退款
	ordertb_payment	int,#支付方式1.线下交易2.支付宝3.微信
	ordertb_evalstate int,#评价状态1.未评价2.已评价
	ordertb_money	double,#支付金额
	ordertb_starttime datetime,#订单开始时间
	ordertb_endtime	datetime,#订单完成时间
	alternative1	varchar(50),
	alternative2	varchar(50),
	alternative3	varchar(50)
);

create table ordercontenttb(#订单内容表
  ordercontenttb_id int primary key auto_increment,#订单内容编号
  ordertb_id int not null,#订单号
  alternative1 varchar(50),#备选字段1
  alternative2 varchar(50),#备选字段2
	alternative3 varchar(50)#备选字段3
);


create table orderitemtb(#订单项编号
  orderitemtb_id int primary key auto_increment,#订单项编号
  ordercontenttb_id int not null,#订单内容编号
  orderitemtb_name varchar(30),#订单项名称
  orderitemtb_content varchar(100),#订单项内容
  alternative1 varchar(50),#备选字段1
  alternative2 varchar(50),#备选字段2
	alternative3 varchar(50)#备选字段3
);


create table reservationtb(#预约表
	reservationtb_id	int primary key auto_increment,	#主键	预约表编号	自增
	reservationtb_date	date not null,	#不为空	预约时间	
	reservationtb_period	int	,#不为空	预约时段	1上午2下午3晚上
	ordertb_id	Int not null,#不为空	订单编号	
	workertb_id	Int	not null,#不为空	工人编号	
  alternative1 varchar(50),#备选字段1
  alternative2 varchar(50),#备选字段2
	alternative3 varchar(50)#备选字段3
);

create table useraddresstb(#用户地址表	
	useraddresstb_id	int primary key auto_increment,	#用户地址编号	自增
	usertb_id	int ,#	不为空	用户编号	
	useraddresstb_address	varchar(100),#	不为空	用户地址		
  alternative1 varchar(50),#备选字段1
  alternative2 varchar(50),#备选字段2
	alternative3 varchar(50)#备选字段3
);


create table workeraddresstb(#工人地址表	
	workeraddresstb	int primary key auto_increment,	#工人地址编号
	workertb_id	int ,#	不为空	工人编号	
	workeraddresstb_address	varchar(100),#	不为空	用户地址		
  alternative1 varchar(50),#备选字段1
  alternative2 varchar(50),#备选字段2
	alternative3 varchar(50)#备选字段3
);
create table logtb(#日志表
	logtb_id	int primary key auto_increment,	#日志编号
	logtb_time	datetime ,#	日志记录时间	
	logtb_content	varchar(100),#	日志内容
  alternative1 varchar(50),#备选字段1
  alternative2 varchar(50),#备选字段2
	alternative3 varchar(50)#备选字段3
);
create table articletb(#文章
	articletb_id int primary key auto_increment,#文章编号
	articletb_type int,#文章类型1.装修攻略
	articletb_author varchar(50),#文章作者
	articletb_time datetime,#文章发布时间	
	articletb_title varchar(50),#文章标题
	articletb_content longblob,#文章内容
	articletb_path varchar(100),#文章路径
	  alternative1 varchar(50),#备选字段1
  alternative2 varchar(50),#备选字段2
	alternative3 varchar(50)#备选字段3

);
create table workpricetb(#价格表
	workpricetb_id int primary key auto_increment,#价格id
	workertypetb_id int,#工人类型id
	workpricetb_name varchar(50),#工作项目
	workpricetb_priceone  varchar(20),#价格1
	workpricetb_pricetwo  varchar(20),#价格2
	  alternative1 varchar(50),#备选字段1
  alternative2 varchar(50),#备选字段2
	alternative3 varchar(50)#备选字段3

);
create table picturetb(#图片表
	pictureb_id int primary key auto_increment,#图片id
	pictureb_path varchar(50),#图片路径
	pictureb_name varchar(50),#图片名
	pictureb_time datetime, #插入时间
	pictureb_img longblob ,#图片
	 alternative1 varchar(50),#备选字段1
     alternative2 varchar(50),#备选字段2
	 alternative3 varchar(50)#备选字段3
);
create table workercommenttb(#评论表
	workercommenttb_id int primary key auto_increment,#评论id
	usertb_id int not null,#评论人
	workertb_id int not null,#工人编号
	workercommenttb_content varchar(200),#评论内容
	workercommenttb_time datetime,#评论时间
	alternative1 varchar(50),
	alternative2 varchar(50),
	alternative3 varchar(50)
);


alter table workertb add constraint fk_workertb_workertypetb foreign key workertb(workertypetb_id) references workertypetb(workertypetb_id);
alter table workercasetb add constraint fk_workercasetb_workertb foreign key workercasetb(workertb_id) references workertb(workertb_id);
alter table casepicturetb add constraint fk_casepicturetb_workercasetb foreign key casepicturetb(workercasetb_id) references workercasetb(workercasetb_id);
alter table workerdetailinfotb add constraint fk_workerdetailinfotb_workertb foreign key workerdetailinfotb(workertb_id) references workertb(workertb_id);
alter table workerdetailinfotb add constraint fk_workerdetailinfotb_detailinfoitemtb foreign key workerdetailinfotb(detailinfoitemtb_id) references detailinfoitemtb(detailinfoitemtb_id);
alter table ordertb add constraint fk_ordertb_usertb foreign key ordertb(usertb_id) references usertb(usertb_id);
alter table ordertb add constraint fk_ordertb_workertb foreign key ordertb(workertb_id) references workertb(workertb_id);
alter table ordercontenttb add constraint fk_ordercontenttb_ordertb foreign key ordercontenttb(ordertb_id) references ordertb(ordertb_id);
alter table orderitemtb add constraint fk_orderitemtb_ordercontenttb foreign key orderitemtb(ordercontenttb_id) references ordercontenttb(ordercontenttb_id);
alter table reservationtb add constraint fk_reservationtb_ordertb foreign key reservationtb(ordertb_id) references ordertb(ordertb_id);
alter table reservationtb add constraint fk_reservationtb_workertb foreign key reservationtb(workertb_id) references workertb(workertb_id);
alter table useraddresstb add constraint fk_useraddresstb_usertb foreign key useraddresstb(usertb_id) references usertb(usertb_id);
alter table workeraddresstb add constraint fk_workeraddresstb_workertb foreign key workeraddresstb(workertb_id) references workertb(workertb_id);
alter table workpricetb add constraint fk_workpricetb_workertypetb foreign key workpricetb(workertypetb_id) references workertypetb(workertypetb_id);
alter table workercommenttb add constraint fk_workercommenttb_usertb foreign key(usertb_id) references usertb(usertb_id);
alter table workercommenttb add constraint fk_workercommenttb_workertb foreign key(workertb_id) references workertb(workertb_id);


