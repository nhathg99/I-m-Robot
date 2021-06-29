create database eShopDatabase
use eShopDatabase
GO
drop table categories
create table Categories
(	
	"CategoryID"	int identity(1,1) not null,
	"CategoryName"  nvarchar(200)	  not null,
	"Description"   text			  not null,
	constraint "PK_Categories" primary key("CategoryID")
  );
insert into categories(CategoryName,Description) values ('Beverages','Soft drinks, coffees, teas, beers, and ales')
insert into categories(CategoryName,Description) values ('Condiments','Sweet and savory sauces, relishes, spreads, and seasonings')
insert into categories(CategoryName,Description) values ('Confections','Desserts, candies, and sweet breads')
insert into categories(CategoryName,Description) values ('Dairy Products','Cheeses')
insert into categories(CategoryName,Description) values ('Grains/Cereals','Breads, crackers, pasta, and cereal')
insert into categories(CategoryName,Description) values ('Meat/Poultry','Prepared meats')
insert into categories(CategoryName,Description) values ('Produce','Dried fruit and bean curd')
insert into categories(CategoryName,Description) values ('Seafood','Seaweed and fish')
select*from categories
GO


drop table Suppliers
create table Suppliers(
	"SupplierID"	 int identity(1,1) not null,
	"CompanyName"	 text not null,
	"ContactName"	 text not null,
	"ContactTile"	 text not null,
	"Address"		 nvarchar (200) not null,
	"City"			 nvarchar(50) not null,
	"Region"		 text default(null),
	"PostalCode"	 nvarchar(10) not null,
	"Country"		 nvarchar(20) not null,
	"Phone"			 varchar(50) not null,
	"Fax"			 varchar(50) default(null),
	"HomePage"		 nvarchar(300) default(null),
	constraint "PK_Suppliers" primary key ("SupplierID")
)

insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Exotic Liquids','Charlotte Cooper','Purchasing Manager','49 Gilbert St.','London',null,'EC1 4SD','UK','(171) 555-2222',null,null)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('New Orleans Cajun Delights','Shelley Burke','Order Administrator','P.O. Box 78934','New Orleans','LA','70117','USA','(100) 555-4822',null,'#CAJUN.HTM#')
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Grandma Kelly''s Homestead','Regina Murphy','Sales Representative','707 Oxford Rd.','Ann Arbor','MI','48104','USA','(313) 555-5735','(313) 555-3349',null)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Tokyo Traders','Yoshi Nagase','Marketing Manager','9-8 Sekimai Musashino-shi','Tokyo',null,'100','Japan','(03) 3555-5011',null,null)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Cooperativa de Quesos''Las Cabras''','Antonio del Valle Saavedra','Export Administrator','Calle del Rosal 4','Oviedo','Asturias','33007','Spain','(98) 598 76 54',NULL,NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Mayumi''s','Mayumi Ohno','Marketing Representative','92 Setsuko Chuo-ku','Osaka',NULL,	'545',	'Japan'	,'(06) 431-7877',	NULL	,'Mayumi''s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#')
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Pavlova, Ltd.','Ian Devling','Marketing Manager','74 Rose St. Moonie Ponds','Melbourne','Victoria','3058','Australia','(03) 444-2343','(03) 444-6588',NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Specialty Biscuits, Ltd.','Peter Wilson','Sales Representative','29 King''s Way','Manchester',NULL,'M14 GSD','UK','(161) 555-4448',NULL,NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('PB Kn�ckebr�d AB','Lars Peterson','Sales Agent','Kaloadagatan 13','G�teborg',NULL,'S-345 67','Sweden','031-987 65 43','031-987 65 91',NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Refrescos Americanas LTDA','Carlos Diaz','Marketing Manager','Av. das Americanas 12.890','Sao Paulo',NULL,'5442','Brazil','(11) 555 4640',NULL,NULL)

insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Heli S��waren GmbH & Co. KG','Petra Winkler','Sales Manager','Tiergartenstra�e 5','Berlin',NULL,'10785','Germany','(010) 9984510',NULL,NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Plutzer Lebensmittelgro�m�rkte AG','Martin Bein','International Marketing Mgr.','Bogenallee 51','Frankfurt',NULL,'60439','Germany','(069) 992755',NULL,'Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#')
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Coordinator Foreign Markets','Frahmredder 112a','Cuxhaven',NULL,'27478','Germany','(04721) 8713','(04721) 8714',NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Formaggi Fortini s.r.l.','Elio Rossi','Sales Representative','Viale Dante, 75','Ravenna',NULL,'48100','Italy','(0544) 60323','(0544) 60603','#FORMAGGI.HTM#')
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Norske Meierier','Beate Vileid','Marketing Manager','Hatlevegen 5','Sandvika',NULL,'1320','Norway','(0)2-953010',NULL,NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Bigfoot Breweries','Cheryl Saylor','Regional Account Rep.','3400 - 8th Avenue Suite 210','Bend','OR','97101','USA','(503) 555-9931',NULL,NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Svensk Sj�f�da AB','Michael Bj�rn','Sales Representative','Brovallav�gen 231','Stockholm','Stockholm','S-123 45','Sweden','08-123 45 67',NULL,NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Aux joyeux eccl�siastiques','Guyl�ne Nodier','Sales Manager','203, Rue des Francs-Bourgeois','Paris',NULL,'75004','France','(1) 03.83.00.68','(1) 03.83.00.62',NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('New England Seafood Cannery','Robb Merchant','Wholesale Account Agent','Order Processing Dept. 2100 Paul Revere Blvd.','Boston','MA','02134','USA','(617) 555-3267','(617) 555-3389',NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Leka Trading','Chandra Leka','Owner','471 Serangoon Loop, Suite #402','Singapore',NULL,'0512','Singapore','555-8787',NULL,NULL)

insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Lyngbysild','Niels Petersen','Sales Manager','Lyngbysild Fiskebakken 10','Lyngby',NULL,'2800','Denmark','43844108','43844115',NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Zaanse Snoepfabriek','Dirk Luchte','Accounting Manager','Verkoop Rijnweg 22','Zaandam',NULL,'9999 ZZ','Netherlands','(12345) 1212','(12345) 1210',NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Karkki Oy','Anne Heikkonen','Product Manager','Valtakatu 12','Lappeenranta',NULL,'53120','Finland','(953) 10956',NULL,NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('G''day, Mate','Wendy Mackenzie','Sales Representative','170 Prince Edward Parade Hunter''s Hill','Sydney','NSW','2042','Australia','(02) 555-5914','(02) 555-4873','G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#')
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Ma Maison','Jean-Guy Lauzon','Marketing Manager','2960 Rue St. Laurent','Montr�al','Qu�bec','H1J 1C3','Canada','(514) 555-9022',NULL,NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Pasta Buttini s.r.l.','Giovanni Giudici','Order Administrator','Via dei Gelsomini, 153','Salerno',NULL,'84100','Italy','(089) 6547665','(089) 6547667',NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Escargots Nouveaux','Marie Delamare','Sales Manager','22, rue H. Voiron','Montceau',NULL,'71300','France','85.57.00.07',NULL,NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('Gai p�turage','Eliane Noz','Sales Representative','Bat. B 3, rue des Alpes','Annecy',NULL,'74000','France','38.76.98.06','38.76.98.58',NULL)
insert into Suppliers(CompanyName,ContactName,ContactTile,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage) values ('For�ts d''�rables','Chantal Goulet','Accounting Manager','148 rue Chasseur','Ste-Hyacinthe','Qu�bec','J2S 7S8','Canada','(514) 555-2955','(514) 555-2921',NULL)
select* from Suppliers

drop table Customer
create table Customer(
	"CustomerID" nchar (5) NOT NULL ,
	"CompanyName" nvarchar (40) NOT NULL ,
	"ContactName" nvarchar (30) NULL ,
	"ContactTitle" nvarchar (30) NULL ,
	"Address" nvarchar (60) NULL ,
	"City" nvarchar (15) NULL ,
	"Region" nvarchar (15) NULL ,
	"PostalCode" nvarchar (10) NULL ,
	"Country" nvarchar (15) NULL ,
	"Phone" nvarchar (24) NULL ,
	"Fax" nvarchar (24) NULL ,
	CONSTRAINT "PK_Customers" PRIMARY KEY ("CustomerID")
)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('ALFKI','Alfreds Futterkiste','Maria Anders','Sales Representative','Obere Str. 57','Berlin',NULL,'12209','Germany','030-0074321','030-0076545')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('ANATR','Ana Trujillo Emparedados y helados','Ana Trujillo','Owner','Avda. de la Constituci�n 2222','M�xico D.F.',NULL,'05021','Mexico','(5) 555-4729','(5) 555-3745')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('ANTON','Antonio Moreno Taquer�a','Antonio Moreno','Owner','Mataderos  2312','M�xico D.F.',NULL,'05023','Mexico','(5) 555-3932',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('AROUT','Around the Horn','Thomas Hardy','Sales Representative','120 Hanover Sq.','London',NULL,'WA1 1DP','UK','(171) 555-7788','(171) 555-6750')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('BERGS','Berglunds snabbk�p','Christina Berglund','Order Administrator','Berguvsv�gen  8','Lule�',NULL,'S-958 22','Sweden','0921-12 34 65','0921-12 34 67')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('BLAUS','Blauer See Delikatessen','Hanna Moos','Sales Representative','Forsterstr. 57','Mannheim',NULL,'68306','Germany','0621-08460','0621-08924')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('BLONP','Blondesddsl p�re et fils','Fr�d�rique Citeaux','Marketing Manager','24, place Kl�ber','Strasbourg',NULL,'67000','France','88.60.15.31','88.60.15.32')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('BOLID','B�lido Comidas preparadas','Mart�n Sommer','Owner','C/ Araquil, 67','Madrid',NULL,'28023','Spain','(91) 555 22 82','(91) 555 91 99')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('BONAP','Bon app''','Laurence Lebihan','Owner','12, rue des Bouchers','Marseille',NULL,'13008','France','91.24.45.40','91.24.45.41')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('BOTTM','Bottom-Dollar Markets','Elizabeth Lincoln','Accounting Manager','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada','(604) 555-4729','(604) 555-3745')

insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('BSBEV','B''s Beverages','Victoria Ashworth','Sales Representative','Fauntleroy Circus','London',NULL,'EC2 5NT','UK','(171) 555-1212',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('CACTU','Cactus Comidas para llevar','Patricio Simpson','Sales Agent','Cerrito 333','Buenos Aires',NULL,'1010','Argentina','(1) 135-5555','(1) 135-4892')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('CENTC','Centro comercial Moctezuma','Francisco Chang','Marketing Manager','Sierras de Granada 9993','M�xico D.F.',NULL,'05022','Mexico','(5) 555-3392','(5) 555-7293')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('CHOPS','Chop-suey Chinese','Yang Wang','Owner','Hauptstr. 29','Bern',NULL,'3012','Switzerland','0452-076545',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('COMMI','Com�rcio Mineiro','Pedro Afonso','Sales Associate','Av. dos Lus�adas, 23','Sao Paulo','SP','05432-043','Brazil','(11) 555-7647',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('CONSH','Consolidated Holdings','Elizabeth Brown','Sales Representative','Berkeley Gardens 12  Brewery','London',NULL,'WX1 6LT','UK','(171) 555-2282','(171) 555-9199')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('DRACD','Drachenblut Delikatessen','Sven Ottlieb','Order Administrator','Walserweg 21','Aachen',NULL,'52066','Germany','0241-039123','0241-059428')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('DUMON','Du monde entier','Janine Labrune','Owner','67, rue des Cinquante Otages','Nantes',NULL,'44000','France','40.67.88.88','40.67.89.89')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('EASTC','Eastern Connection','Ann Devon','Sales Agent','35 King George','London',NULL,'WX3 6FW','UK','(171) 555-0297','(171) 555-3373')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('ERNSH','Ernst Handel','Roland Mendel','Sales Manager','Kirchgasse 6','Graz',NULL,'8010','Austria','7675-3425','7675-3426')

insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('FAMIA','Familia Arquibaldo','Aria Cruz','Marketing Assistant','Rua Or�s, 92','Sao Paulo','SP','05442-030','Brazil','(11) 555-9857',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('FISSA','FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','Accounting Manager','C/ Moralzarzal, 86','Madrid',NULL,'28034','Spain','(91) 555 94 44','(91) 555 55 93')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('FOLIG','Folies gourmandes','Martine Ranc�','Assistant Sales Agent','184, chauss�e de Tournai','Lille',NULL,'59000','France','20.16.10.16','20.16.10.17')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('FOLKO','Folk och f� HB','Maria Larsson','Owner','�kergatan 24','Br�cke',NULL,'S-844 67','Sweden','0695-34 67 21',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('FRANK','Frankenversand','Peter Franken','Marketing Manager','Berliner Platz 43','M�nchen',NULL,'80805','Germany','089-0877310','089-0877451')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('FRANR','France restauration','Carine Schmitt','Marketing Manager','54, rue Royale','Nantes',NULL,'44000','France','40.32.21.21','40.32.21.20')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('FRANS','Franchi S.p.A.','Paolo Accorti','Sales Representative','Via Monte Bianco 34','Torino',NULL,'10100','Italy','011-4988260','011-4988261')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('FURIB','Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Sales Manager','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal','(1) 354-2534','(1) 354-2535')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('GALED','Galer�a del gastr�nomo','Eduardo Saavedra','Marketing Manager','Rambla de Catalu�a, 23','Barcelona',NULL,'08022','Spain','(93) 203 4560','(93) 203 4561')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('GODOS','Godos Cocina T�pica','Jos� Pedro Freyre','Sales Manager','C/ Romero, 33','Sevilla',NULL,'41101','Spain','(95) 555 82 82',NULL)

insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('GOURL','Gourmet Lanchonetes','Andr� Fonseca','Sales Associate','Av. Brasil, 442','Campinas','SP','04876-786','Brazil','(11) 555-9482',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('GREAL','Great Lakes Food Market','Howard Snyder','Marketing Manager','2732 Baker Blvd.','Eugene','OR','97403','USA','(503) 555-7555',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('GROSR','GROSELLA-Restaurante','Manuel Pereira','Owner','5� Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela','(2) 283-2951','(2) 283-3397')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('HANAR','Hanari Carnes','Mario Pontes','Accounting Manager','Rua do Pa�o, 67','Rio de Janeiro','RJ','05454-876','Brazil','(21) 555-0091','(21) 555-8765')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('HILAA','HILARION-Abastos','Carlos Hern�ndez','Sales Representative','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist�bal','T�chira','5022','Venezuela','(5) 555-1340','(5) 555-1948')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('HUNGC','Hungry Coyote Import Store','Yoshi Latimer','Sales Representative','City Center Plaza 516 Main St.','Elgin','OR','97827','USA','(503) 555-6874','(503) 555-2376')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('HUNGO','Hungry Owl All-Night Grocers','Patricia McKenna','Sales Associate','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland','2967 542','2967 3333')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('ISLAT','Island Trading','Helen Bennett','Marketing Manager','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK','(198) 555-8888',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('KOENE','K�niglich Essen','Philip Cramer','Sales Associate','Maubelstr. 90','Brandenburg',NULL,'14776','Germany','0555-09876',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('LACOR','La corne d''abondance','Daniel Tonini','Sales Representative','67, avenue de l''Europe','Versailles',NULL,'78000','France','30.59.84.10','30.59.85.11')

insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('LAMAI','La maison d''Asie','Annette Roulet','Sales Manager','1 rue Alsace-Lorraine','Toulouse',NULL,'31000','France','61.77.61.10','61.77.61.11')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('LAUGB','Laughing Bacchus Wine Cellars','Yoshi Tannamuri','Marketing Assistant','1900 Oak St.','Vancouver','BC','V3F 2K1','Canada','(604) 555-3392','(604) 555-7293')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('LAZYK','Lazy K Kountry Store','John Steel','Marketing Manager','12 Orchestra Terrace','Walla Walla','WA','99362','USA','(509) 555-7969','(509) 555-6221')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('LEHMS','Lehmanns Marktstand','Renate Messner','Sales Representative','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany','069-0245984','069-0245874')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('LETSS','Let''s Stop N Shop','Jaime Yorres','Owner','87 Polk St. Suite 5','San Francisco','CA','94117','USA','(415) 555-5938',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('LILAS','LILA-Supermercado','Carlos Gonz�lez','Accounting Manager','Carrera 52 con Ave. Bol�var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela','(9) 331-6954','(9) 331-7256')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('LINOD','LINO-Delicateses','Felipe Izquierdo','Owner','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela','(8) 34-56-12','(8) 34-93-93')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('LONEP','Lonesome Pine Restaurant','Fran Wilson','Sales Manager','89 Chiaroscuro Rd.','Portland','OR','97219','USA','(503) 555-9573','(503) 555-9646')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('MAGAA','Magazzini Alimentari Riuniti','Giovanni Rovelli','Marketing Manager','Via Ludovico il Moro 22','Bergamo',NULL,'24100','Italy','035-640230','035-640231')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('MAISD','Maison Dewey','Catherine Dewey','Sales Agent','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium','(02) 201 24 67','(02) 201 24 68')

insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('MEREP','M�re Paillarde','Jean Fresni�re','Marketing Assistant','43 rue St. Laurent','Montr�al','Qu�bec','H1J 1C3','Canada','(514) 555-8054','(514) 555-8055')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('MORGK','Morgenstern Gesundkost','Alexander Feuer','Marketing Assistant','Heerstr. 22','Leipzig',NULL,'04179','Germany','0342-023176',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('NORTS','North/South','Simon Crowther','Sales Associate','South House 300 Queensbridge','London',NULL,'SW7 1RZ','UK','(171) 555-7733','(171) 555-2530')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('OCEAN','Oc�ano Atl�ntico Ltda.','Yvonne Moncada','Sales Agent','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,'1010','Argentina','(1) 135-5333','(1) 135-5535')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('OLDWO','Old World Delicatessen','Rene Phillips','Sales Representative','2743 Bering St.','Anchorage','AK','99508','USA','(907) 555-7584','(907) 555-2880')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('OTTIK','Ottilies K�seladen','Henriette Pfalzheim','Owner','Mehrheimerstr. 369','K�ln',NULL,'50739','Germany','0221-0644327','0221-0765721')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('PARIS','Paris sp�cialit�s','Marie Bertrand','Owner','265, boulevard Charonne','Paris',NULL,'75012','France','(1) 42.34.22.66','(1) 42.34.22.77')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('PERIC','Pericles Comidas cl�sicas','Guillermo Fern�ndez','Sales Representative','Calle Dr. Jorge Cash 321','M�xico D.F.',NULL,'05033','Mexico','(5) 552-3745','(5) 545-3745')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('PICCO','Piccolo und mehr','Georg Pipps','Sales Manager','Geislweg 14','Salzburg',NULL,'5020','Austria','6562-9722','6562-9723')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('PRINI','Princesa Isabel Vinhos','Isabel de Castro','Sales Representative','Estrada da sa�de n. 58','Lisboa',NULL,'1756','Portugal','(1) 356-5634',NULL)

insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('QUEDE','Que Del�cia','Bernardo Batista','Accounting Manager','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil','(21) 555-4252','(21) 555-4545')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('QUEEN','Queen Cozinha','L�cia Carvalho','Marketing Assistant','Alameda dos Can�rios, 891','Sao Paulo','SP','05487-020','Brazil','(11) 555-1189',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('QUICK','QUICK-Stop','Horst Kloss','Accounting Manager','Taucherstra�e 10','Cunewalde',NULL,'01307','Germany','0372-035188',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('RANCH','Rancho grande','Sergio Guti�rrez','Sales Representative','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina','(1) 123-5555','(1) 123-5556')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('RATTC','Rattlesnake Canyon Grocery','Paula Wilson','Assistant Sales Representative','2817 Milton Dr.','Albuquerque','NM','87110','USA','(505) 555-5939','(505) 555-3620')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('REGGC','Reggiani Caseifici','Maurizio Moroni','Sales Associate','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy','0522-556721','0522-556722')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('RICAR','Ricardo Adocicados','Janete Limeira','Assistant Sales Agent','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil','(21) 555-3412',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('RICSU','Richter Supermarkt','Michael Holz','Sales Manager','Grenzacherweg 237','Gen�ve',NULL,'1203','Switzerland','0897-034214',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('ROMEY','Romero y tomillo','Alejandra Camino','Accounting Manager','Gran V�a, 1','Madrid',NULL,'28001','Spain','(91) 745 6200','(91) 745 6210')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('SANTG','Sant� Gourmet','Jonas Bergulfsen','Owner','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway','07-98 92 35','07-98 92 47')

insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('SAVEA','Save-a-lot Markets','Jose Pavarotti','Sales Representative','187 Suffolk Ln.','Boise','ID','83720','USA','(208) 555-8097',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('SEVES','Seven Seas Imports','Hari Kumar','Sales Manager','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK','(171) 555-1717','(171) 555-5646')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('SIMOB','Simons bistro','Jytte Petersen','Owner','Vinb�ltet 34','Kobenhavn',NULL,'1734','Denmark','31 12 34 56','31 13 35 57')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('SPECD','Sp�cialit�s du monde','Dominique Perrier','Marketing Manager','25, rue Lauriston','Paris',NULL,'75016','France','(1) 47.55.60.10','(1) 47.55.60.20')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('SPLIR','Split Rail Beer & Ale','Art Braunschweiger','Sales Manager','P.O. Box 555','Lander','WY','82520','USA','(307) 555-4680','(307) 555-6525')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('SUPRD','Supr�mes d�lices','Pascale Cartrain','Accounting Manager','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium','(071) 23 67 22 20','(071) 23 67 22 21')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('THEBI','The Big Cheese','Liz Nixon','Marketing Manager','89 Jefferson Way Suite 2','Portland','OR','97201','USA','(503) 555-3612',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('THECR','The Cracker Box','Liu Wong','Marketing Assistant','55 Grizzly Peak Rd.','Butte','MT','59801','USA','(406) 555-5834','(406) 555-8083')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('TOMSP','Toms Spezialit�ten','Karin Josephs','Marketing Manager','Luisenstr. 48','M�nster',NULL,'44087','Germany','0251-031259','0251-035695')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('TORTU','Tortuga Restaurante','Miguel Angel Paolino','Owner','Avda. Azteca 123','M�xico D.F.',NULL,'05033','Mexico','(5) 555-2933',NULL)

insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('TRADH','Tradi��o Hipermercados','Anabela Domingues','Sales Representative','Av. In�s de Castro, 414','Sao Paulo','SP','05634-030','Brazil','(11) 555-2167','(11) 555-2168')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('TRAIH','Trail''s Head Gourmet Provisioners','Helvetius Nagy','Sales Associate','722 DaVinci Blvd.','Kirkland','WA','98034','USA','(206) 555-8257','(206) 555-2174')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('VAFFE','Vaffeljernet','Palle Ibsen','Sales Manager','Smagsloget 45','�rhus',NULL,'8200','Denmark','86 21 32 43','86 22 33 44')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('VICTE','Victuailles en stock','Mary Saveley','Sales Agent','2, rue du Commerce','Lyon',NULL,'69004','France','78.32.54.86','78.32.54.87')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('VINET','Vins et alcools Chevalier','Paul Henriot','Accounting Manager','59 rue de l''Abbaye','Reims',NULL,'51100','France','26.47.15.10','26.47.15.11')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('WANDK','Die Wandernde Kuh','Rita M�ller','Sales Representative','Adenauerallee 900','Stuttgart',NULL,'70563','Germany','0711-020361','0711-035428')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('WARTH','Wartian Herkku','Pirkko Koskitalo','Accounting Manager','Torikatu 38','Oulu',NULL,'90110','Finland','981-443655','981-443655')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('WELLI','Wellington Importadora','Paula Parente','Sales Manager','Rua do Mercado, 12','Resende','SP','08737-363','Brazil','(14) 555-8122',NULL)
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('WHITC','White Clover Markets','Karl Jablonski','Owner','305 - 14th Ave. S. Suite 3B','Seattle','WA','98128','USA','(206) 555-4112','(206) 555-4115')
insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('WILMK','Wilman Kala','Matti Karttunen','Owner/Marketing Assistant','Keskuskatu 45','Helsinki',NULL,'21240','Finland','90-224 8858','90-224 8858')

insert into Customer("CustomerID","CompanyName","ContactName","ContactTitle","Address","City","Region","PostalCode","Country","Phone","Fax") VALUES('WOLZA','Wolski  Zajazd','Zbyszek Piestrzeniewicz','Owner','ul. Filtrowa 68','Warszawa',NULL,'01-012','Poland','(26) 642-7012','(26) 642-7012')
select * from Customer



drop table Shippers
create table Shippers(
	"ShipperID" "int" IDENTITY (1, 1) NOT NULL ,
	"CompanyName" nvarchar (40) NOT NULL ,
	"Phone" nvarchar (24) NULL ,
	CONSTRAINT "PK_Shippers" PRIMARY KEY ("ShipperID")
)

insert into Shippers("CompanyName","Phone") values ('Speedy Express','(503) 555-9831')
insert into Shippers("CompanyName","Phone") values ('United Package','(503) 555-3199')
insert into Shippers("CompanyName","Phone") values ('Federal Shipping','(503) 555-9931')
select * from Shippers


drop table Employees
create table Employees(
	"EmployeeID" int IDENTITY(1, 1) NOT NULL ,
	"LastName" nvarchar (20) NOT NULL ,
	"FirstName" nvarchar (10) NOT NULL ,
	"Title" nvarchar (30) NULL ,
	"TitleOfCourtesy" nvarchar (25) NULL ,
	"BirthDate" datetime NULL ,
	"HireDate" datetime NULL ,
	"Address" nvarchar (60) NULL ,
	"City" nvarchar (15) NULL ,
	"Region" nvarchar (15) NULL ,
	"PostalCode" nvarchar (10) NULL ,
	"Country" nvarchar (15) NULL ,
	"HomePhone" nvarchar (24) NULL ,
	"Extension" nvarchar (4) NULL ,
	"Photo" image NULL ,
	"Notes" ntext NULL ,
	"ReportsTo" int NULL ,
	"PhotoPath" nvarchar (255) NULL ,
	CONSTRAINT "PK_Employees" PRIMARY KEY ("EmployeeID"),
	CONSTRAINT "FK_Employees_Employees" FOREIGN KEY ("ReportsTo") REFERENCES dbo.Employees ("EmployeeID"),
	CONSTRAINT "CK_Birthdate" CHECK (BirthDate < getdate())
)
insert into Employees("LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","PhotoPath") values ('Davolio','Nancy','Sales Representative','Ms.','1948-12-08 00:00:00.000','1992-05-01 00:00:00.000','507 - 20th Ave. E.  Apt. 2A','Seattle','WA','98122','USA','(206) 555-9857','5467','6','7','7')
insert into Employees("LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","PhotoPath") values ('Fuller','Andrew','Vice President, Sales','Dr.','1952-02-19 00:00:00.000','1992-08-14 00:00:00.000','908 W. Capital Way','Tacoma','WA','98401','USA','(206) 555-9482','3457','6','7','7')
insert into Employees("LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","PhotoPath") values ('Leverling','Janet','Sales Representative','Ms.','1963-08-30 00:00:00.000','1992-04-01 00:00:00.000','722 Moss Bay Blvd.','Kirkland','WA','98033','USA','(206) 555-3412','3355','6','7','7')
insert into Employees("LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","PhotoPath") values ('Peacock','Margaret','Sales Representative','Mrs.','1937-09-19 00:00:00.000','1993-05-03 00:00:00.000','4110 Old Redmond Rd.','Redmond','WA','98052','USA','(206) 555-8122','5176','6','7','7')
insert into Employees("LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","PhotoPath") values ('Buchanan','Steven','Sales Manager','Mr.','1955-03-04 00:00:00.000','1993-10-17 00:00:00.000','14 Garrett Hill','London',NULL,'SW1 8JR','UK','(71) 555-4848','3453','6','7','7')
insert into Employees("LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","PhotoPath") values ('Suyama','Michael','Sales Representative','Mr.','1963-07-02 00:00:00.000','1993-10-17 00:00:00.000','Coventry House  Miner Rd.','London',NULL,'EC2 7JR','UK','(71) 555-7773','428','6','7','7')
insert into Employees("LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","PhotoPath") values ('King','Robert','Sales Representative','Mr.','1960-05-29 00:00:00.000','1994-01-02 00:00:00.000','Edgeham Hollow  Winchester Way','London',NULL,'RG1 9SP','UK','(71) 555-5598','465','6','7','7')
insert into Employees("LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","PhotoPath") values ('Callahan','Laura','Inside Sales Coordinator','Ms.','1958-01-09 00:00:00.000','1994-03-05 00:00:00.000','4726 - 11th Ave. N.E.','Seattle','WA','98105','USA','(206) 555-1189','2344','6','7','7')
insert into Employees("LastName","FirstName","Title","TitleOfCourtesy","BirthDate","HireDate","Address","City","Region","PostalCode","Country","HomePhone","Extension","Photo","Notes","PhotoPath") values ('Dodsworth','Anne','Sales Representative','Ms.','1966-01-27 00:00:00.000','1994-11-15 00:00:00.000','7 Houndstooth Rd.','London',NULL,'WG2 7LT','UK','(71) 555-4444','452','6','7','7')

select * from Employees

drop table Products
create table Products(
	"ProductID" "int" IDENTITY (1, 1) NOT NULL ,
	"ProductName" nvarchar (40) NOT NULL ,
	"SupplierID" "int" NULL ,
	"CategoryID" "int" NULL ,
	"QuantityPerUnit" nvarchar (20) NULL ,
	"UnitPrice" "money" NULL CONSTRAINT "DF_Products_UnitPrice" DEFAULT (0),
	"UnitsInStock" "smallint" NULL CONSTRAINT "DF_Products_UnitsInStock" DEFAULT (0),
	"UnitsOnOrder" "smallint" NULL CONSTRAINT "DF_Products_UnitsOnOrder" DEFAULT (0),
	"ReorderLevel" "smallint" NULL CONSTRAINT "DF_Products_ReorderLevel" DEFAULT (0),
	"Discontinued" "bit" NOT NULL CONSTRAINT "DF_Products_Discontinued" DEFAULT (0),
	CONSTRAINT "PK_Products" PRIMARY KEY  ("ProductID"),
	CONSTRAINT "FK_Products_Categories" FOREIGN KEY ("CategoryID") REFERENCES "dbo"."Categories" ("CategoryID"),
	CONSTRAINT "FK_Products_Suppliers"  FOREIGN KEY ("SupplierID") REFERENCES "dbo"."Suppliers" ("SupplierID"),
	CONSTRAINT "CK_Products_UnitPrice" CHECK (UnitPrice >= 0),
	CONSTRAINT "CK_ReorderLevel" CHECK (ReorderLevel >= 0),
	CONSTRAINT "CK_UnitsInStock" CHECK (UnitsInStock >= 0),
	CONSTRAINT "CK_UnitsOnOrder" CHECK (UnitsOnOrder >= 0)
)
select * from Products