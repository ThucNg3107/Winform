﻿CREATE DATABASE QLST
USE QLST
CREATE TABLE KHACHHANG (
	MAKH varchar(50) primary key,
	HOTEN nvarchar(50) NOT NULL,
	GIOITINH nvarchar(5),
	DCHI nvarchar(50),
	SDT varchar(50) NOT NULL
)

CREATE TABLE NGUOIDUNG (
	MAND varchar(50) primary key,
	TENND nvarchar(50) NOT NULL ,
	NGSINH smalldatetime,
	GIOITINH nvarchar(5),
	SDT char(50) NOT NULL ,
	DIACHI nvarchar(50),
	USERNAME char(50),
	PASS nvarchar(max),
	QTV bit NOT NULL DEFAULT (0),
	TTND bit NOT NULL DEFAULT(1),
	AVA varchar(max),
	MAIL varchar(100)
)

CREATE TABLE SANPHAM (
	MASP varchar(50) primary key,
	TENSP nvarchar(50) NOT NULL,
	GIA int NOT NULL,
	MOTA nvarchar(max),
	HINHSP nvarchar(max),
	SL int NOT NULL,
	LOAISP nvarchar(50),
	SIZE nvarchar(50)
)

CREATE TABLE HOADON (
	SOHD int primary key,
	MAND varchar(50),
	MAKH varchar(50),
	NGHD smalldatetime NOT NULL,
	TRIGIA int  NOT NULL,
	KHUYENMAI int	
)

CREATE TABLE PHIEUNHAP (
	MAPN int primary key,
	MAND varchar(50),
	NGAYNHAP smalldatetime NOT NULL 
)

CREATE TABLE CTHD (
	SOHD int,
	MASP varchar(50),
	SL int NOT NULL,
	primary key(SOHD, MASP)
)

CREATE TABLE CTPN (
	MAPN int,
	MASP varchar(50),
	SL int NOT NULL,
	primary key(MAPN, MASP)
)

ALTER TABLE HOADON
ADD CONSTRAINT FK_KH_HD
FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH)

ALTER TABLE HOADON
ADD CONSTRAINT FK_HD_ND
FOREIGN KEY (MAND) REFERENCES NGUOIDUNG(MAND)

ALTER TABLE CTHD
ADD CONSTRAINT FK_CT_HD
FOREIGN KEY (SOHD) REFERENCES HOADON(SOHD)

ALTER TABLE CTHD
ADD CONSTRAINT FK_CT_SP
FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)

ALTER TABLE CTPN 
ADD CONSTRAINT FK_CN_SP
FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)

ALTER TABLE CTPN
ADD CONSTRAINT FK_CN_PN
FOREIGN KEY (MAPN) REFERENCES PHIEUNHAP(MAPN)

ALTER TABLE PHIEUNHAP
ADD CONSTRAINT FK_PN_ND
FOREIGN KEY (MAND) REFERENCES NGUOIDUNG(MAND)
GO


DELETE FROM KHACHHANG
SELECT *FROM KHACHHANG
INSERT INTO KHACHHANG(MAKH,HOTEN,DCHI, SDT,GIOITINH) VALUES('KH01',N'Nguyễn Văn A',N'731 Trần Hưng Đạo, Q5, TPHCM','0908823451',N'Nam')
INSERT INTO KHACHHANG(MAKH,HOTEN,DCHI, SDT,GIOITINH) VALUES('KH02',N'Trần Thị B',N'23/5 Nguyễn Trãi, Q5, TPHCM','0908256478',N'Nữ')
INSERT INTO KHACHHANG(MAKH,HOTEN,DCHI, SDT,GIOITINH) VALUES('KH03',N'Trần Văn C',N'45 Nguyễn Du, Q1, TPHCM','0938776266',N'Nam')
INSERT INTO KHACHHANG(MAKH,HOTEN,DCHI, SDT,GIOITINH) VALUES('KH04',N'Trần D',N'50/34 Lê Đại Hành, Q10, TPHCM','0917325476',N'Nam')
INSERT INTO KHACHHANG(MAKH,HOTEN,DCHI, SDT,GIOITINH) VALUES('KH05',N'Lê Thị E',N'34 Trương Định, Q3, TPHCM','0908246108',N'Nữ')
INSERT INTO KHACHHANG(MAKH,HOTEN,DCHI, SDT,GIOITINH) VALUES('KH06',N'Nguyễn Văn F',N'227 Nguyễn Văn Cừ, Q5, TPHCM','0908631738',N'Nam')
INSERT INTO KHACHHANG(MAKH,HOTEN,DCHI, SDT,GIOITINH) VALUES('KH07',N'Nguyễn Văn G',N'32/3 Trần Bình Trọng, Q5, TPHCM','0916783565',N'Nam')
INSERT INTO KHACHHANG(MAKH,HOTEN,DCHI, SDT,GIOITINH) VALUES('KH08',N'Phan Thị H',N'45/2 An Dương Vương, Q5, TPHCM','0938435756',N'Nữ')
INSERT INTO KHACHHANG(MAKH,HOTEN,DCHI, SDT,GIOITINH) VALUES('KH09',N'Đào Thị I',N'873 Lê Hồng Phong, Q5, TPHCM','0908654763',N'Nữ')
INSERT INTO KHACHHANG(MAKH,HOTEN,DCHI, SDT,GIOITINH) VALUES('KH10',N'Lê K',N'34/34B Nguyễn Trãi, Q1, TPHCM','0908768904',N'Nam')
GO


SELECT *FROM NGUOIDUNG
DELETE FROM NGUOIDUNG
INSERT INTO NGUOIDUNG(MAND,TENND,NGSINH,GIOITINH,SDT,DIACHI,USERNAME,PASS,QTV,TTND,AVA,MAIL) VALUES('QL01',N'Lê Minh Quý','2002-03-02',N'Nam','0387804055',N'ĐH HUTECH','admin1','6fd742a61bd034804c00c49b18045020','1',N'1','/Resource/Ava/quy.jpg',N'leminhquy737@gmail.com')
INSERT INTO NGUOIDUNG(MAND,TENND,NGSINH,GIOITINH,SDT,DIACHI,USERNAME,PASS,QTV,TTND,AVA,MAIL) VALUES('NV01',N'Nguyễn Thị Phương Thùy','2002-09-15',N'Nữ','0359293481',N'ĐH HUTECH','user1','6fd742a61bd034804c00c49b18045020','0',N'1','/Resource/Ava/thuy.jpg',N'phuongthuy305tt@gmail.com')
INSERT INTO NGUOIDUNG(MAND,TENND,NGSINH,GIOITINH,SDT,DIACHI,USERNAME,PASS,QTV,TTND,AVA,MAIL) VALUES('NV02',N'Nguyễn Hiền Thục','2002-02-17',N'Nam','0945645165',N'Kp6, Linh Trung, Thủ Đức','user2','6fd742a61bd034804c00c49b18045020','0',N'1','/Resource/Image/addava.png',N'thucnguyenhien102@gmail.com')
INSERT INTO NGUOIDUNG(MAND,TENND,NGSINH,GIOITINH,SDT,DIACHI,USERNAME,PASS,QTV,TTND,AVA,MAIL) VALUES('NV03',N'Đỗ Gia Ân','2002-02-18',N'Nam','0346112805',N'Kp6, Linh Trung, Thủ Đức','user3','6fd742a61bd034804c00c49b18045020','0',N'1','/Resource/Image/addava.png',N'dogiaan611@gmail.com')
INSERT INTO NGUOIDUNG(MAND,TENND,NGSINH,GIOITINH,SDT,DIACHI,USERNAME,PASS,QTV,TTND,AVA,MAIL) VALUES('NV04',N'Hồ Quốc Cường','2002-02-19',N'Nam','0559208467',N'Kp6, Linh Trung, Thủ Đức','user4','6fd742a61bd034804c00c49b18045021','0',N'1','/Resource/Image/addava.png',N'hocuong636@gmail.com')
INSERT INTO NGUOIDUNG(MAND,TENND,NGSINH,GIOITINH,SDT,DIACHI,USERNAME,PASS,QTV,TTND,AVA,MAIL) VALUES('NV05',N'Bùi Nhật Huy','2002-02-20',N'Nữ','0933919210',N'Kp6, Linh Trung, Thủ Đức','user5','6fd742a61bd034804c00c49b18045020','0',N'1','/Resource/Image/addava.png',N'Nhochuybui@gmail.com')
INSERT INTO NGUOIDUNG(MAND,TENND,NGSINH,GIOITINH,SDT,DIACHI,USERNAME,PASS,QTV,TTND,AVA,MAIL) VALUES('NV06',N'Nguyễn Linh Chi','2002-02-21',N'Nam','0828972404',N'Kp6, Linh Trung, Thủ Đức','user6','6fd742a61bd034804c00c49b18045020','0',N'1','/Resource/Image/addava.png',N'chichixinh2004@gmail.com')
INSERT INTO NGUOIDUNG(MAND,TENND,NGSINH,GIOITINH,SDT,DIACHI,USERNAME,PASS,QTV,TTND,AVA,MAIL) VALUES('NV07',N'Đỗ Thanh Hiệp','2002-02-22',N'Nữ','0818942025',N'Kp6, Linh Trung, Thủ Đức','user7','6fd742a61bd034804c00c49b18045020','0',N'1','/Resource/Image/addava.png',N'thanhhiep7887@gmail.com@gmail.com')
INSERT INTO NGUOIDUNG(MAND,TENND,NGSINH,GIOITINH,SDT,DIACHI,USERNAME,PASS,QTV,TTND,AVA,MAIL) VALUES('NV08',N'Phan Đăng Phương','2002-02-23',N'Nam','0862172642',N'Kp6, Linh Trung, Thủ Đức','user8','6fd742a61bd034804c00c49b18045020','0',N'1','/Resource/Image/addava.png',N'phanphuong19052004@gmail.com')
GO


SELECT *FROM SANPHAM
DELETE FROM SANPHAM
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP01',N'Sữa','7000',N'SỮA TƯƠI CÓ ĐƯỜNG','/Resource/ImgProduct/sua.jpg','50',N'Đồ uống','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP02',N'Siting','9000',N'NƯỚC NGỌT PEPSI','/Resource/ImgProduct/siting.jpg','50',N'Đồ uống có ga','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP03',N'Pepsi','9000',N'NƯỚC NGỌT PEPSI','/Resource/ImgProduct/pepsi.jpg','30',N'Đồ uống có ga','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP04',N'Coca','8000',N'NƯỚC NGỌT COCA','/Resource/ImgProduct/coca.jpg','35',N'Đồ uống có ga','Vua')
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP05',N'7up','9000',N'NƯỚC NGỌT 7UP','/Resource/ImgProduct/7up.jpg','30',N'Đồ uống có ga','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP06',N'Oishi','11000',N'Oishi Siêu Cay','/Resource/ImgProduct/oishi.jpg','30',N'Bánh','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP07',N'Snake Bắp Ngọt','8000',N'SANKE BẮP NGỌT','/Resource/ImgProduct/snakebapngot.jpg','35',N'Bánh','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP08',N'Snake Bí Đỏ','8000',N'SNAKE BÍ ĐỎ','/Resource/ImgProduct/snakebido.jpg','30',N'Bánh','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP09',N'Snake Phô Mai','8000',N'SNAKE PHÔ MAI','/Resource/ImgProduct/snakephomai.jpg','34',N'Bánh','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP10',N'Sữa Tắm','27000',N'SỮA TẮM','/Resource/ImgProduct/suatam.jpg','23',N'SP Tiêu Dùng','Nho')
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP11',N'Sữa Tắm','56000',N'SỮA TẮM LỚN','/Resource/ImgProduct/suatam.jpg','27',N'SP Tiêu Dùng','Lon') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP12',N'Bàn Chải Đánh Răng','9000',N'BÀN CHẢI ĐÁNH RĂNG','/Resource/ImgProduct/banchai.jpg','100',N'Đồ gia dụng','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP13',N'Bàn Chải Đánh Răng','14000',N'BÀN CHẢI ĐÁNH RĂNG','/Resource/ImgProduct/banchai.jpg','100',N'Đồ gia dụng','Lon') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP14',N'Kem Đánh Răng','24000',N'KEM ĐÁNH RĂNG','/Resource/ImgProduct/kem.jpg','30',N'SP Tiêu Dùng','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP15',N'Thịt Bò','50000',N'BẮP BÒ','/Resource/ImgProduct/bapbo.jpg','50',N'SP Đông Lạnh','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP16',N'Thịt Bò','80000',N'BẮP BÒ','/Resource/ImgProduct/bapbo.jpg','50',N'SP Đông Lạnh','Lon') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP17',N'Thịt Heo','50000',N'THỊT HEO','/Resource/ImgProduct/thitheo.jpg','50',N'SP Đông Lạnh','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP18',N'Thịt Heo','80000',N'THỊT HEO','/Resource/ImgProduct/thitheo.jpg','50',N'SP Đông Lạnh','Lon') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP19',N'Mỳ Ly','15000',N'MỲ LY','/Resource/ImgProduct/myly.jpg','50',N'Đồ Ăn Đóng Hộp','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP20',N'Trái Cây','24000',N'TRÁI CÂY ĐÓNG HỘP','/Resource/ImgProduct/traicay.jpg','50',N'Trái cây đóng hộp','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP21',N'Chảo','45000',N'CHẢO NẤU ĂN','/Resource/ImgProduct/chao.jpg','37',N'Vật dụng gia đình','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP22',N'Kéo','28000',N'KÉO','/Resource/ImgProduct/keo.jpg','39',N'Vật dụng gia đình','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP22',N'Dao','30000',N'DAO','/Resource/ImgProduct/dao.jpg','37',N'Vật dụng gia đình','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP23',N'Dao','41000',N'DAO LỚN','/Resource/ImgProduct/dao.jpg','29',N'Vật dụng gia đình','Lon') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP24',N'Bút','6000',N'BÚT BI','/Resource/ImgProduct/but.jpg','37',N'Văn phòng phẩm','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP25',N'Sổ Tay','18000',N'SỔ TAY','/Resource/ImgProduct/sotay.jpg','40',N'Vật dụng gia đình','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP26',N'Thước Kẻ','9000',N'THƯỚC KẺ','/Resource/ImgProduct/thuocke.jpg','37',N'Vật dụng gia đình','Nho')
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP27',N'Rau','11000',N'RAU','/Resource/ImgProduct/rau.jpg','100',N'Thực Phẩm','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP28',N'Ớt','7000',N'ỚT CAY','/Resource/ImgProduct/ot.jpg','100',N'Thực Phẩm','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP29',N'Sữa Chua','9000',N'SỮA CHUA','/Resource/ImgProduct/suachua.jpg','100',N'Đồ Ăn Lanh','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP30',N'Kem','9000',N'KEM MATCHA','/Resource/ImgProduct/kemlanh.jpg','100',N'Đồ Ăn Lạnh','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP31',N'Bột Nêm','15000',N'BỘT NÊM','/Resource/ImgProduct/botnem.jpg','37',N'Gia Vị','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP32',N'Nước Mắm','22000',N'NƯỚC MẮM','/Resource/ImgProduct/nuocmam.jpg','37',N'Gia Vị','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP33',N'Gạo','121000',N'GẠO','/Resource/ImgProduct/gao.jpg','45',N'Lương thực','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP34',N'Sắn','15000',N'SẮN','/Resource/ImgProduct/san.jpg','65',N'Lương thực','Nho') 
 INSERT INTO SANPHAM(MASP,TENSP,GIA,MOTA,HINHSP,SL,LOAISP,SIZE) VALUES('SP35',N'Bột Mì','27000',N'BỘT MÌ','/Resource/ImgProduct/botmi.jpg','37',N'Lương thực','Nho') 
GO


SELECT *FROM HOADON
DELETE FROM HOADON
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('1','NV01','KH01','2021-01-30','4080000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('2','NV02','KH02','2021-02-03','2316000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('3','NV01','KH01','2021-03-30','2175600','2')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('4','NV01','KH03','2021-04-30','960000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('5','NV02','KH04','2021-05-30','5460000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('6','NV03','KH01','2021-06-01','5836800','5')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('7','NV03','KH05','2021-07-31','1764000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('8','NV03','KH03','2021-08-31','2868000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('9','NV02','KH06','2021-09-30','420000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('10','NV01','KH02','2021-10-31','2964000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('11','NV03','KH03','2021-11-01','529200','2')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('12','NV03','KH06','2021-12-01','1260000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('13','NV01','KH07','2021-01-31','924000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('14','NV01','KH08','2021-02-01','7620000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('15','NV01','KH01','2021-03-01','1209600','10')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('16','NV02','KH02','2021-04-01','547200','5')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('17','NV03','KH09','2021-05-01','420000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('18','NV03','KH10','2021-06-02','840000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('19','NV01','KH02','2021-07-02','2188800','5')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('20','NV02','KH09','2021-08-03','3396000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('21','NV01','KH05','2021-09-03','1404000','0')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('22','NV03','KH04','2021-10-03','2143200','5')
INSERT INTO HOADON(SOHD,MAND,MAKH,NGHD,TRIGIA,KHUYENMAI) VALUES('23','NV01','KH07','2021-11-03','2004000','0')
GO


SELECT *FROM CTHD
DELETE FROM CTHD
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('1','SP05','3')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('1','SP01','2')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('2','SP13','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('2','SP04','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('2','SP27','2')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('3','SP32','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('3','SP21','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('3','SP14','3')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('4','SP22','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('4','SP02','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('5','SP02','2')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('5','SP03','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('5','SP05','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('5','SP07','2')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('5','SP19','3')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('6','SP14','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('6','SP18','2')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('6','SP02','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('6','SP01','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('6','SP06','2')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('6','SP22','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('6','SP03','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('6','SP40','4')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('7','SP10','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('7','SP33','3')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('8','SP18','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('8','SP04','3')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('9','SPT07','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('10','SP03','2')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('10','SM02','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('10','AT44','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('10','AT49','2')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('11','AT26','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('12','AT22','3')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('13','AT11','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('13','AT23','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('14','SP03','4')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('14','AT51','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('14','SP04','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('14','SM03','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('14','AT22','5')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('14','AT02','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('15','AT10','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('15','AT01','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('15','AT05','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('16','SM01','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('17','AT24','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('18','AT36','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('18','AT07','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('19','AT37','2')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('19','AT42','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('19','AT49','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('19','AT11','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('20','AT05','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('20','SP02','2')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('20','SP04','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('21','SP01','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('21','AT10','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('22','SM01','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('22','AT04','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('22','AT19','3')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('23','SP05','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('23','AT20','1')
INSERT INTO CTHD(SOHD,MASP,SL) VALUES('23','AT45','1')
GO


SELECT *FROM PHIEUNHAP
DELETE FROM PHIEUNHAP
INSERT INTO PHIEUNHAP(MAPN,MAND,NGAYNHAP) VALUES('1','NV01','2021-10-30')
INSERT INTO PHIEUNHAP(MAPN,MAND,NGAYNHAP) VALUES('2','NV02','2021-11-03')
INSERT INTO PHIEUNHAP(MAPN,MAND,NGAYNHAP) VALUES('3','NV03','2021-11-07')
INSERT INTO PHIEUNHAP(MAPN,MAND,NGAYNHAP) VALUES('4','NV01','2021-11-09')
INSERT INTO PHIEUNHAP(MAPN,MAND,NGAYNHAP) VALUES('5','NV02','2021-11-10')
INSERT INTO PHIEUNHAP(MAPN,MAND,NGAYNHAP) VALUES('6','NV05','2021-11-11')
INSERT INTO PHIEUNHAP(MAPN,MAND,NGAYNHAP) VALUES('7','NV06','2021-11-13')
INSERT INTO PHIEUNHAP(MAPN,MAND,NGAYNHAP) VALUES('8','NV07','2021-11-17')
INSERT INTO PHIEUNHAP(MAPN,MAND,NGAYNHAP) VALUES('9','NV08','2021-11-19')
INSERT INTO PHIEUNHAP(MAPN,MAND,NGAYNHAP) VALUES('10','QL01','2021-11-20')
GO

SELECT *FROM CTHD
DELETE FROM CTHD
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('1','AT01','100')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('1','AT02','50')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('1','AT03','70')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('1','AT04','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('1','AT05','50')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('1','AT06','40')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('1','AT07','50')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('1','AT08','100')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('2','SP01','50')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('2','SP02','50')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('2','AT29','50')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('2','AT30','50')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('2','AT31','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('2','AT32','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('3','AT33','50')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('3','AT34','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('3','AT35','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('3','AT36','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('4','SM01','50')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('4','SM02','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('4','SM03','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('5','AT13','20')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('5','AT14','20')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('5','AT15','20')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('5','AT16','20')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('5','AT17','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('5','AT18','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('5','AT19','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('5','AT20','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('6','AT21','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('6','AT22','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('6','AT23','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('6','AT24','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('7','AT25','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('7','AT26','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('8','AT27','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('8','AT28','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('9','AT09','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('9','AT10','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('10','AT11','30')
INSERT INTO CTPN(MAPN,MASP,SL) VALUES('10','AT12','30')
GO


