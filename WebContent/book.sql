show databases;

CREATE TABLE IF NOT EXISTS BookMarketDB.book(
	b_id varchar(10) not null,
    b_name varchar(20),
    b_unitPrice integer,
    b_author varchar(50),
    b_publisher varchar(20),
    b_description text,
    b_category varchar(20),
    b_unitInStock long,
    b_totalPages long,
    b_releaseDate varchar(20),
    b_condition varchar(20),
    b_filename varchar(20),
    primary key (b_id)
)default charset=utf8;

desc BookMarketDB.book;

insert into BookMarketDB.book values('ISBN1234','HTML5+CSS3',15000,'Ȳ��ȣ','�Ѻ��̵��','���峪 PPT ������ ���� �� �ֳ���? �׷��� ���������ϴ�. ���� �ٷ� �������� ���ۿ� �����غ�����. ���� ���� ��ǻ�Ͱ� ��� �������ϴ�. �ڵ�� ���� ȭ���� �ٷ� ������ �����θ� �о ��� �۵��ϴ��� ���� �ľ��� �� �ִ� ���� �⺻�̰�, �߰��߰� ��� �߰��Ͽ� ����ְ� �����ϵ� ������ �� �ֽ��ϴ�.','Hello Coding',1000,288,'2018/03/02','new','ISBN1234.jpg');
insert into BookMarketDB.book values('ISBN1235','���� ���� �ڹ� ���α׷���',27000,'������','�Ѻ���ī����','��ü ������ �ٽɰ� �ڹ��� ������ ����� ����� �ٷ�鼭�� �ʺ��ڰ� ���� �н��� �� �ְ� �����߽��ϴ�. �ð�ȭ ������ Ȱ���� ���� ����� �������� ���� �ٽ� �ڵ带 ���� ����� ������ �� �帧���� �н��� �� �ֽ��ϴ�. ���� "���� ü���� ������ ���� -> ���� �׽�Ʈ -> ������ �������� �����ϸ� �� �ܰ辿 Ǯ�� ���� ���� ���� -> ���丮�� ���̵� ��̷ο� ���α׷��� ����" ���� ���� ���α׷��� �Ƿ��� �������� ����ø� �� �ֽ��ϴ�.','IT�����',1000,692,'2017/08/02','new','ISBN1235.jpg');
insert into BookMarketDB.book values('ISBN1236','������4 �Թ�',27000,'�ϼ����� ����ġ, ������ ��Ÿ��, ��Ű ������(����ö, ���μ�)','�Ѻ��̵��','�������� �ܼ��� ��� ����� ������ �ͺ��� ��Ű��ó�� ��� �����ϰ� �����ϴ����� �� �߿��մϴ�. ������ ������ �ٿ��ִ� �����δ� ���� ���߿��� �������� ����� Ȱ���� �� �����ϴ�. �� å������ �� ���ø����̼��� ���ʸ� ������ ������ �ھ ���캸�� Ŭ���� ����Ƽ�� �Թ����� �ٷ�ϴ�. ���� �� �ǹ��� �پ�� �� ���ø����̼� �ʱ��ڳ� ���� ������ ������ �������� ����غ� �� ���� ���� ������� ������ �� ���� �����մϴ�.','IT�����',1000,520,'2017/11/01','new','ISBN1236.jpg');

select * from BookMarketDB.book;

desc BookMarketDB.book;

create table BookMarketDB.member (
	id varchar(10) not null,
	password varchar(10) not null,
	name varchar(10) not null,
	gender varchar(4),
	birth varchar(10),
	mail varchar(30),
	phone varchar(20),
	address varchar(90),
	regist_day varchar(50),
	primary key(id)
)default CHARSET = utf8;

desc BookMarketDB.member;

select * from BookMarketDB.member;

create table BookMarketDB.board (
	num int not null auto_increment,
	id varchar(10) not null,
	name varchar(10) not null,
	subject varchar(100) not null,
	content text not null,
	regist_day varchar(30),
	hit int,
	ip varchar(20),
	primary key(num)
)default CHARSET = utf8;

desc BookMarketDB.board;

select * from BookMarketDB.board;