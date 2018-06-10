/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.27 : Database - pakarkopidb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pakarkopidb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pakarkopidb`;

/*Table structure for table `analisahasil` */

DROP TABLE IF EXISTS `analisahasil`;

CREATE TABLE `analisahasil` (
  `id_analisa` int(11) NOT NULL AUTO_INCREMENT,
  `id_log` int(11) NOT NULL,
  `id_pengguna` int(5) NOT NULL,
  `id_penyakit` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `id_gejala` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `id_solusi` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `noip` varchar(60) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_analisa`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `analisahasil` */

insert  into `analisahasil`(`id_analisa`,`id_log`,`id_pengguna`,`id_penyakit`,`id_gejala`,`id_solusi`,`noip`) values (1,3,3,'P000000004','G000000001','S000000001',' '),(2,3,3,'P000000004','G000000002','S000000003',' '),(3,4,3,'P000000001','G000000001','S000000001',' '),(4,4,3,'P000000001','G000000002','S000000003',' '),(5,4,3,'P000000001','G000000006','S000000001',' '),(6,5,3,'P000000003','G000000003','S000000002',' '),(7,5,3,'P000000003','G000000004','S000000002',' '),(8,5,3,'P000000003','G000000005','S000000001',' '),(9,7,3,'P000000002','G000000002','S000000003',' '),(10,7,3,'P000000002','G000000003','S000000002',' '),(11,9,3,'P000000001','G000000001','S000000001',' '),(12,9,3,'P000000001','G000000002','S000000003',' '),(13,9,3,'P000000001','G000000006','S000000001',' '),(14,11,3,'P000000001','G000000001','S000000001',' '),(15,11,3,'P000000001','G000000002','S000000003',' '),(16,11,3,'P000000001','G000000006','S000000001',' '),(17,11,3,'P000000001','G000000001','S000000001',' '),(18,11,3,'P000000001','G000000002','S000000003',' '),(19,11,3,'P000000001','G000000006','S000000001',' '),(20,12,3,'P000000001','G000000001','S000000001',' '),(21,12,3,'P000000001','G000000002','S000000003',' '),(22,12,3,'P000000001','G000000006','S000000001',' '),(23,13,3,'P000000001','G000000001','S000000001',' '),(24,13,3,'P000000001','G000000002','S000000003',' '),(25,13,3,'P000000001','G000000006','S000000001',' '),(26,14,3,'P000000001','G000000001','S000000001',' '),(27,14,3,'P000000001','G000000002','S000000003',' '),(28,14,3,'P000000001','G000000006','S000000001',' '),(29,15,3,'P000000004','G000000006','S000000001',' '),(30,16,3,'P000000009','G000000003','S000000002',' '),(31,16,3,'P000000009','G000000006','S000000001',' '),(32,17,3,'P000000001','G000000001','S000000001',' '),(33,20,5,'P000000003','G000000001','S000000001',' '),(34,21,3,'P000000001','G000000001','S000000001',' '),(35,27,3,'P000000003','G000000001','S000000001',' '),(36,28,3,'P000000001','G000000001','S000000001',' '),(37,31,3,'P000000001','G000000001','S000000001',' '),(38,32,3,'P000000001','G000000001','S000000001',' '),(39,33,3,'P000000002','G000000022','S000000002',' '),(40,34,3,'P000000001','G000000001','S000000001',' '),(41,36,3,'P000000001','G000000001','S000000001',' '),(42,36,3,'P000000001','G000000017','S000000001',' '),(43,37,6,'P000000001','G000000001','S000000001',' '),(44,37,6,'P000000001','G000000017','S000000001',' '),(45,39,6,'P000000011','G000000015','S000000014',' ');

/*Table structure for table `gejala` */

DROP TABLE IF EXISTS `gejala`;

CREATE TABLE `gejala` (
  `id_gejala` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `gejala` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_gejala`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `gejala` */

insert  into `gejala`(`id_gejala`,`gejala`) values ('G000000001','Daun menguning dan gugur'),('G000000002','Pertumbuhan batang primer terhambat'),('G000000003','Tanaman kerdil'),('G000000004','Akar menguning dan menjadi coklat atau hitam'),('G000000005','Akar serabut membusuk/rusak'),('G000000006','Buah dewasa berkerut dan masak sebelum waktunya'),('G000000007','Disekitar diskus buah berlubang'),('G000000008','Buah muda gugur'),('G000000009','Cacat pada buat tua'),('G000000010','Buah kopi kosong, tinggal bubuk(kotoran hama)'),('G000000011','Muncul cendawan jelaga pada dan buah'),('G000000012','Tanaman menguning dibagian bunga, daun, batang, atau cabang'),('G000000013','Terdaat lubang pada batang tanaman'),('G000000014','Pada permukaan lubang terdapat campuran kotoran dengan serpihan jaringan'),('G000000015','Batang yang berlubang menjadi layu'),('G000000016','Apakah timbul bercak pada daun'),('G000000017','Bercak yang timbul pada daun berwarna kuning'),('G000000018','Bercak yang timbul semakin besar'),('G000000019','Bagian bawah daun tertutup tepung spora berwarna orange'),('G000000020','Daun layu dan bergantung pada ranting'),('G000000021','Terdapat misellium tipis dan berserabut seperti sarang laba-laba pada buah/ranting/daun'),('G000000022','Terdapat lapisan kerak berwarna merah jambu pada bagian batang yang tertutupi'),('G000000023','Tanaman mengering/hitam'),('G000000024','Daun tampak layu serentak'),('G000000025','Akar tunggang tertutup kerak butir-butir tanah'),('G000000026','Akar yang sakit akan membusuk, kering, dan lunak'),('G000000027','Bercak yang timbul di daun berwarna coklat, putih pada tengahnya, dan merah pada pinggirnya'),('G000000028','Muncul bercak memar pada batang'),('G000000029','Bercak memar menjadi busuk dan mengering');

/*Table structure for table `hamapenyakit` */

DROP TABLE IF EXISTS `hamapenyakit`;

CREATE TABLE `hamapenyakit` (
  `Id_Pnykt` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `JnsPnykt` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `Keterangan` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Id_Pnykt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `hamapenyakit` */

insert  into `hamapenyakit`(`Id_Pnykt`,`JnsPnykt`,`Keterangan`) values ('P000000001','Penyakit Karat Daun','Penyakit daun'),('P000000002','Penyakit Jamur Upas','penyakit pada buah'),('P000000003','Penyakit Jamur Akar Hitam dan ','penyakit akar'),('P000000004','Penyakit Bercak Coklat Daun','Penyakit Daun'),('P000000005','Penyakit Rebah Batang','Penyakit Batang'),('P000000006','Hama Nematoda Parasit',''),('P000000007','Hama Penggerek Buah Kopi',''),('P000000008','Hama Kutu Hijau Dan Kutu Coklat',''),('P000000009','Hama Kutu Dompolan atau Kutu Putih',''),('P000000010','Hama Penggerek Cabang Merah',''),('P000000011','Penyakit Akar Busuk','penyakit akar');

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(5) NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `log` */

insert  into `log`(`id_log`,`id_pengguna`) values (1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,5),(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3),(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,6),(38,6),(39,6);

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id_pages` int(2) NOT NULL AUTO_INCREMENT,
  `tipe` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  PRIMARY KEY (`id_pages`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `pages` */

insert  into `pages`(`id_pages`,`tipe`,`isi`) values (1,'site_home','<p>Kopi merupakan salah satu minuman yang sangat digemari oleh masyarakat Indonesia. Kopi dikonsumsi hampir di seluruh penjuru wilayah Indonesia, maka dari itu terdapat banyak sekali petani yang menjadikan bertani kopi sebagai pekerjaan primer mereka. Namun salah satu masalah dalam pertanian kopi adalah minimnya pengetahuan petani mengenai bercocok tanam kopi yang baik dan benar. Banyak factor yang menunjang kualitas produksi suatu kopi, salah satunya yang utama adalah kualitas biji kopi yang dihasilkan. Biji kopi yang dihasilkan leh petani haruslah biji kopi yang sehat dan biji kopi yang sehat didapat dari tanaman kopi yang tumbuh dengan sehat dan terhindar dari penyakit dan hama yang menyerangnya. Penyakit dan hama pada tanaman kopi dapat menyerang di berbagai bagian tanaman kopi, diantaranya akar, ranting, bunga, buah, dan daun.</p>\r\n<p>Penyakit dan hama dari tanaman kopi dapat menyebabkan kondisi pada buah yang akan diolah menjadi biji kopi tersebut kopong dan berlubang sebanyak 65% dari buah yang ditanam. Hal ini menyebabkan produksi kopi yang dihasilkan tinggal sekitar 35% dan dari persentase tersebut beberapa tidak dapat disebut biji kopi yang sempurna sehingga kualitas biji kopi yang dihasilkan oleh petani menjadi jelek. Sementara itu dari International Coffee Organization(ICO) menerapkan standar mutu yang ketat untuk dapat dipasarkan. </p>\r\n'),(2,'site_help','<p> - Menu Home, berisi informasi tentang tanaman kopi. </p>\r\n\r\n \r\n 	\r\n<p> - Menu Diagnosa, berisi langkah-langkah untuk mendiagnosa hama dan penyakit pad tanaman kopi. \r\n	Disini terdapat langkah-langkahnya sebagai berikut :	 \r\n 	 	1.	Pengguna mendaftar dengan mengisi form yang telah tersedia dengan memasukkan	 \r\n 	 	 	jenis kelamin, usia alamat.	 \r\n 	 	2.	Selanjutnya, pengguna akan diarahkan ke menu diagnosa hama dan penyakit  dengan	 \r\n			memilih salah satu hama penyakit sebagai hipotesa awal atau dugaan, lalu klik lanjut.\r\n 	 	3.	Kemudian tampil ke menu pilihan gejala yang menyerang tanaman belimbing manis anda. \r\n 	 	 	Klik proses.	 \r\n 	 	4.	Aplikasi akan menampilkan hasil dari diagnosa sebelumnya, berupa nama hama  dan\r\n			penyakit yang di derita, gejala-gejalanya, prosentase terserangnya, dan solusi untuk\r\n			menindaklanjuti perlakuan terhadap tanaman belimbing manis anda. </p>	 \r\n 	\r\n<p> - Menu Artikel, berisi tentang artikel belimbing manis, seputar belimbing manis. </p>\r\n\r\n \r\n 	\r\n<p> - Menu Profil, berisi tentang pembuat aplikasi diagnosa hama dan penyakit belimbing manis. </p>\r\n\r\n \r\n 	\r\n<p> - Menu Admin, berisi halaman untuk masuk ke menu admin, dengan memasukkan nama user\r\n      dan kata kunci admin. </p>	 \r\n 	\r\n\r\n<p> - Menu Bantuan, berisi tentang bantuan menggunakan aplikasi diagnosa hama dan penyakit\r\n      tanaman kopi.</p>');

/*Table structure for table `pengguna` */

DROP TABLE IF EXISTS `pengguna`;

CREATE TABLE `pengguna` (
  `id_pengguna` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `kelamin` varchar(50) NOT NULL,
  `usia` int(5) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  PRIMARY KEY (`id_pengguna`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `pengguna` */

insert  into `pengguna`(`id_pengguna`,`username`,`password`,`nama`,`kelamin`,`usia`,`alamat`) values (1,'ddd','8277e0910d750195b448797616e091ad','dede','P',3,'Bali'),(2,'gede','13ad65cc032d4b04927943c33673a65d','Gede Lumbung','P',22,'Bali'),(3,'wulan','d6cc0fa3288118186c2947310c48d807','wulan','W',19,'dps'),(4,'wulanwahyu','fb142cdf940b01af1b1d17165f1207f7','wulan','W',17,'dps'),(5,'bandem','81dc9bdb52d04dc20036dbd8313ed055','bandem','W',29,'denpasar'),(6,'wida','0ad87c4b1dacaf5751673070b1001544','wida','W',20,'pds');

/*Table structure for table `relasi` */

DROP TABLE IF EXISTS `relasi`;

CREATE TABLE `relasi` (
  `id_relasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_penyakit` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `id_gejala` varchar(10) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_relasi`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `relasi` */

insert  into `relasi`(`id_relasi`,`id_penyakit`,`id_gejala`) values (85,'P000000002','G000000022'),(86,'P000000002','G000000023'),(87,'P000000001','G000000017'),(88,'P000000001','G000000018'),(89,'P000000001','G000000019'),(131,'P000000003','G000000025'),(132,'P000000001','G000000001'),(137,'P000000003','G000000024'),(138,'P000000003','G000000001'),(139,'P000000002','G000000020'),(140,'P000000003','G000000026'),(141,'P000000004','G000000006'),(142,'P000000004','G000000016'),(143,'P000000004','G000000027'),(144,'P000000005','G000000002'),(145,'P000000005','G000000028'),(146,'P000000005','G000000029'),(147,'P000000006','G000000001'),(148,'P000000006','G000000002'),(149,'P000000006','G000000003'),(150,'P000000006','G000000004'),(151,'P000000006','G000000005'),(152,'P000000006','G000000006'),(153,'P000000007','G000000007'),(154,'P000000007','G000000008'),(155,'P000000007','G000000009'),(156,'H000000002','G000000010'),(157,'P000000007','G000000003'),(158,'P000000008','G000000006'),(159,'P000000008','G000000011'),(160,'P000000008','G000000012'),(161,'P000000009','G000000003'),(162,'P000000009','G000000006'),(163,'P000000009','G000000011'),(164,'P000000010','G000000013'),(165,'P000000010','G000000014'),(166,'P000000010','G000000015'),(167,'P000000011','G000000015');

/*Table structure for table `relasigejala` */

DROP TABLE IF EXISTS `relasigejala`;

CREATE TABLE `relasigejala` (
  `id_relasigejala` int(32) NOT NULL AUTO_INCREMENT,
  `id_gejala` varchar(10) CHARACTER SET ascii NOT NULL,
  `id_solusi` varchar(10) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id_relasigejala`),
  KEY `id_solusi` (`id_solusi`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `relasigejala` */

insert  into `relasigejala`(`id_relasigejala`,`id_gejala`,`id_solusi`) values (3,'G000000017','S000000001'),(4,'G000000018','S000000001'),(7,'G000000019','S000000001'),(8,'G000000020','S000000002'),(9,'G000000022','S000000002'),(12,'G000000020','S000000003'),(13,'G000000023','S000000002'),(30,'G000000001','S000000001'),(31,'G000000022','S000000003'),(32,'G000000023','S000000003'),(33,'G000000020','S000000004'),(34,'G000000022','S000000004'),(35,'G000000023','S000000004'),(36,'G000000001','S000000005'),(37,'G000000024','S000000005'),(38,'G000000025','S000000005'),(39,'G000000026','S000000005'),(40,'G000000006','S000000006'),(41,'G000000016','S000000006'),(42,'G000000027','S000000006'),(43,'G000000006','S000000007'),(44,'G000000016','S000000007'),(45,'G000000027','S000000007'),(46,'G000000006','S000000008'),(47,'G000000016','S000000008'),(48,'G000000027','S000000008'),(49,'G000000002','S000000009'),(50,'G000000028','S000000009'),(51,'G000000029','S000000009'),(52,'G000000001','S000000010'),(53,'G000000002','S000000010'),(54,'G000000003','S000000010'),(55,'G000000004','S000000010'),(56,'G000000005','S000000010'),(57,'G000000006','S000000010'),(58,'G000000007','S000000011'),(59,'G000000008','S000000011'),(60,'G000000009','S000000011'),(61,'G000000010','S000000011'),(62,'G000000003','S000000012'),(63,'G000000006','S000000012'),(64,'G000000011','S000000012'),(65,'G000000012','S000000012'),(66,'G000000003','S000000013'),(67,'G000000006','S000000013'),(68,'G000000011','S000000013'),(69,'G000000013','S000000014'),(70,'G000000014','S000000014'),(71,'G000000015','S000000014');

/*Table structure for table `solusi` */

DROP TABLE IF EXISTS `solusi`;

CREATE TABLE `solusi` (
  `id_solusi` varchar(10) CHARACTER SET ascii NOT NULL,
  `solusi` text CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id_solusi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `solusi` */

insert  into `solusi`(`id_solusi`,`solusi`) values ('S000000001','Menyemprotkan fungisida pada tanaman yang terserang jamur.'),('S000000002','Mengurangi kelembaban kebun'),('S000000003','Membersihkan sumber infeksi.dicangkul'),('S000000004','Batang dan cabang terserang dipotong dan dibakar, bekas potongan dioles dengan calixin RM.'),('S000000005','Membongkar pohon terserang sampai keakarnya, lalu membakar. Lubang bekas bongkaran dibiarkan terbuka selama + 1 tahun. Pohon sehat disekitar pohon sakit dan pohon-pohon sisipan ditaburi Trichoderma 200 gr/pohon dan pupuk kandang/pupuk organik. Diulang setiap 6 bulan sampai areal tersebut bebas dari jamur akar.'),('S000000006','Penyemprotan dengan fungisida bahan aktif tembaga.'),('S000000007','Mengurangi kelembaban dengan cara mengatur peneduh.'),('S000000008','Daun yang sakit digunting dan dibakar.'),('S000000009','Dengan penaungan diatur agar tanaman terkena sinar matahari cukup Atau dengan penyemprotan pada bibit dengan Delsene MX 200'),('S000000010','Dengan penggunaan jenis kopi tahan nematoda seperti kopi ekselsa klon Bgn 121.09 dan kopi Robusta klon BP 308. '),('S000000011','Pengendalian secara hayati memakai jamur Beauveria bassiana. '),('S000000012','Pemeliharaan dan pemupukan yang berimbang atau cara kimia menggunakan tepung Sividol atau Karbaril maupun penyemprotan insektisida (Anthio 330n EC).'),('S000000013','Dengan memusnahkan bagian tanaman yang terserang, serta menyemprotkan insektisida yang bersifat racun kontak. Hama dapat disemprot dengan anthio 33 EC, Azodrin 60 WSC, Sevin 85 S, Perfekthion dan lain ? lain.'),('S000000014','Pangkas cabang yang terserang.');

/*Table structure for table `tmp_gejala` */

DROP TABLE IF EXISTS `tmp_gejala`;

CREATE TABLE `tmp_gejala` (
  `id_pnykt` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `id_log` int(5) NOT NULL,
  `id_gejala` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `noip` varchar(60) COLLATE latin1_general_ci NOT NULL,
  KEY `id_pnykt` (`id_pnykt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tmp_gejala` */

insert  into `tmp_gejala`(`id_pnykt`,`id_log`,`id_gejala`,`noip`) values ('P000000003',2,'G000000001',''),('P000000004',3,'G000000002',''),('P000000001',4,'G000000001',''),('P000000001',4,'G000000003',''),('P000000001',4,'G000000006',''),('P000000003',5,'G000000001',''),('P000000003',5,'G000000002',''),('P000000003',5,'G000000003',''),('P000000003',5,'G000000004',''),('P000000003',5,'G000000005',''),('P000000003',5,'G000000006',''),('P000000002',7,'G000000001',''),('P000000002',7,'G000000002',''),('P000000002',7,'G000000004',''),('P000000001',9,'G000000001',''),('P000000001',9,'G000000002',''),('P000000001',9,'G000000004',''),('P000000001',9,'G000000005',''),('P000000001',9,'G000000010',''),('P000000001',11,'G000000001',''),('P000000001',11,'G000000002',''),('P000000001',11,'G000000003',''),('P000000001',11,'G000000004',''),('P000000001',11,'G000000005',''),('P000000001',11,'G000000001',''),('P000000001',11,'G000000002',''),('P000000001',11,'G000000003',''),('P000000001',11,'G000000004',''),('P000000001',11,'G000000005',''),('P000000001',12,'G000000001',''),('P000000001',12,'G000000002',''),('P000000001',12,'G000000003',''),('P000000001',12,'G000000004',''),('P000000001',12,'G000000005',''),('P000000001',13,'G000000002',''),('P000000001',14,'G000000022',''),('P000000001',14,'G000000024',''),('P000000001',14,'G000000027',''),('P000000004',15,'G000000003',''),('P000000004',15,'G000000006',''),('P000000004',15,'G000000011',''),('P000000004',15,'G000000012',''),('P000000009',16,'G000000003',''),('P000000009',16,'G000000006',''),('P000000001',17,'G000000001',''),('P000000001',17,'G000000002',''),('P000000001',17,'G000000003',''),('P000000001',17,'G000000005',''),('P000000001',17,'G000000006',''),('P000000001',17,'G000000008',''),('P000000001',17,'G000000009',''),('P000000001',17,'G000000010',''),('P000000002',18,'G000000001',''),('P000000002',18,'G000000004',''),('P000000002',18,'G000000008',''),('P000000002',19,'G000000002',''),('P000000002',19,'G000000007',''),('P000000002',19,'G000000011',''),('P000000002',19,'G000000026',''),('P000000003',20,'G000000001',''),('P000000003',20,'G000000002',''),('P000000003',20,'G000000003',''),('P000000003',20,'G000000004',''),('P000000001',21,'G000000002',''),('P000000001',21,'G000000005',''),('P000000002',25,'G000000003',''),('P000000001',31,'G000000001',''),('P000000001',31,'G000000002',''),('P000000001',31,'G000000003',''),('P000000001',31,'G000000004',''),('P000000001',31,'G000000005',''),('P000000001',31,'G000000006',''),('P000000001',32,'G000000001',''),('P000000001',32,'G000000002',''),('P000000001',32,'G000000003',''),('P000000001',32,'G000000004',''),('P000000002',33,'G000000001',''),('P000000002',33,'G000000002',''),('P000000002',33,'G000000003',''),('P000000002',33,'G000000004',''),('P000000002',33,'G000000005',''),('P000000001',34,'G000000001',''),('P000000001',34,'G000000002',''),('P000000001',34,'G000000003',''),('P000000001',34,'G000000004',''),('P000000001',34,'G000000005',''),('P000000001',34,'G000000006',''),('P000000001',36,'G000000001',''),('P000000001',36,'G000000017',''),('P000000001',36,'G000000020',''),('P000000001',37,'G000000001',''),('P000000001',37,'G000000002',''),('P000000001',37,'G000000003',''),('P000000001',37,'G000000004',''),('P000000001',37,'G000000006',''),('P000000011',39,'G000000015','');

/*Table structure for table `tmp_pengguna` */

DROP TABLE IF EXISTS `tmp_pengguna`;

CREATE TABLE `tmp_pengguna` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_log` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `noip` varchar(60) COLLATE latin1_general_ci NOT NULL,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tmp_pengguna` */

insert  into `tmp_pengguna`(`id`,`id_log`,`id_pengguna`,`noip`) values (27,0,5,'127.0.0.1'),(45,0,6,'::1');

/*Table structure for table `tmp_penyakit` */

DROP TABLE IF EXISTS `tmp_penyakit`;

CREATE TABLE `tmp_penyakit` (
  `Id_Pnykt` varchar(10) CHARACTER SET ascii NOT NULL,
  `id_log` int(5) NOT NULL,
  `noip` varchar(60) CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tmp_penyakit` */

insert  into `tmp_penyakit`(`Id_Pnykt`,`id_log`,`noip`) values ('P000000001',1,''),('P000000003',2,''),('P000000004',3,''),('P000000001',4,''),('P000000003',5,''),('P000000001',6,''),('P000000002',7,''),('P000000001',8,''),('P000000001',9,''),('P000000001',10,''),('P000000001',11,''),('P000000001',12,''),('P000000001',13,''),('P000000001',14,''),('P000000004',15,''),('P000000009',16,''),('P000000001',17,''),('P000000002',18,''),('P000000002',19,''),('P000000003',20,''),('P000000001',21,''),('P000000002',22,''),('P000000002',23,''),('P000000003',24,''),('P000000002',25,''),('P000000001',26,''),('P000000003',27,''),('P000000001',28,''),('P000000004',29,''),('P000000002',30,''),('P000000001',31,''),('P000000001',32,''),('P000000002',33,''),('P000000001',34,''),('P000000001',35,''),('P000000001',36,''),('P000000001',37,''),('P000000003',38,''),('P000000011',39,'');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` varchar(5) CHARACTER SET ascii NOT NULL,
  `username` varchar(15) CHARACTER SET ascii NOT NULL,
  `password` text CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `user` */

insert  into `user`(`id_user`,`username`,`password`) values ('ID001','yudha','2b9633304de305ed5c03fe19b7a06afe'),('ID002','agus','fdf169558242ee051cca1479770ebac3'),('ID003','admin','21232f297a57a5a743894a0e4a801fc3');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
