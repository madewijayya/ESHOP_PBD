-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: skema
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barang` (
  `id_barang` char(5) NOT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `harga_modal` int DEFAULT NULL,
  `stock_tersedia` int DEFAULT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` VALUES ('A8765','SKin Aqua','sunscreen dry to oily',50000,2),('K9876','face mist','hadalabo face mist big size',165000,2),('L9876','Laneige','moisturizer for teenager',200000,1),('M7865','Pyun Kang yul Toner essense','Toner pyun kang yul Size 200 ml',125000,10),('N9876','Nivea','lip care with arbutin',76000,11),('S4432','somethinc','serum with niacinamide',150000,10),('S8766','emina','sunscreen spf 30',35000,2),('S9876','senka whitening','small facial wash',45000,24),('T6754','Somethinc','AHA BHA peeling solution',89000,15);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyer` (
  `id_buyer` varchar(10) NOT NULL,
  `alamat_email_buyer` varchar(100) DEFAULT NULL,
  `nama_buyer` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_buyer`),
  KEY `alamat_email_buyer` (`alamat_email_buyer`),
  CONSTRAINT `buyer_ibfk_1` FOREIGN KEY (`alamat_email_buyer`) REFERENCES `user` (`alamat_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES ('65434E','m.aziz@gmail.com','laili amanah bapa','P'),('76543WE','dewajaya@gmail.com','lala nur halilintar binti mamat','P'),('7776W','azizaladrojalil@gmail.com','Aziz cohl','L'),('7WWWQ1E','jaya2202@gmail.com','Suryanto','L'),('9876h','dewamadewijaya@gmail.com','JEY CUTIE','L'),('A8765','tiono89@gmail.com','Guntur Semuntiono','L'),('B8765','Kurniawan87@gmail.com','Mania Kurniawan','L'),('C9876','Adindamonarch@gmail.com','Dinda Monarch','P'),('D5747','Kevin900@gmail.com','Kevin Alamiah','L'),('E8732','Hanungara89@gmail.com','Jimnia Hanungara','P'),('F0099','nanikurniakintara56@gmail.com','Nani Kintara','P'),('G2344','Huruhara908@gmail.com','Hanivah Huruhara','P'),('H8659','Hanggina00@gmail.com','Hanggi Narative','P'),('U8765','Sumiaji78@gmail.com','Sumiaji Guntoro','L');
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `no_telephone_seller`
--

DROP TABLE IF EXISTS `no_telephone_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `no_telephone_seller` (
  `id_seller` varchar(10) NOT NULL,
  `no_telepon_seller` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_seller`),
  CONSTRAINT `no_telephone_seller_ibfk_1` FOREIGN KEY (`id_seller`) REFERENCES `seller` (`id_seller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `no_telephone_seller`
--

LOCK TABLES `no_telephone_seller` WRITE;
/*!40000 ALTER TABLE `no_telephone_seller` DISABLE KEYS */;
INSERT INTO `no_telephone_seller` VALUES ('J229876','627665421312'),('JY09876','628765712371'),('Q09876','625417123912'),('Q239876','62765612318'),('WWE876','627612312312');
/*!40000 ALTER TABLE `no_telephone_seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nomor_telepon`
--

DROP TABLE IF EXISTS `nomor_telepon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nomor_telepon` (
  `alamat_email` varchar(100) NOT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`alamat_email`),
  CONSTRAINT `nomor_telepon_ibfk_1` FOREIGN KEY (`alamat_email`) REFERENCES `user` (`alamat_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nomor_telepon`
--

LOCK TABLES `nomor_telepon` WRITE;
/*!40000 ALTER TABLE `nomor_telepon` DISABLE KEYS */;
INSERT INTO `nomor_telepon` VALUES ('azizaladrojalil@gmail.com','62098789876564'),('azizjalil@gmail.com','6281765432234'),('azizperiangcelalue@gmail.com','6281765456345'),('dewajaya@gmail.com','6281987654567'),('dewamadewijaya@gmail.com','6281876890987'),('m.aziz@gmail.com','6281805250472'),('wijayaa222@gmail.com','62876543456787');
/*!40000 ALTER TABLE `nomor_telepon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembayaran`
--

DROP TABLE IF EXISTS `pembayaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pembayaran` (
  `id_pembayaran` char(5) NOT NULL,
  `jumlah_yang_dibayar` int DEFAULT NULL,
  `rekening_tujuan` varchar(20) DEFAULT NULL,
  `rekening_pengirim` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembayaran`
--

LOCK TABLES `pembayaran` WRITE;
/*!40000 ALTER TABLE `pembayaran` DISABLE KEYS */;
INSERT INTO `pembayaran` VALUES ('00987',150000,'000987789888','98765674320'),('07987',700000,'098754646464','99987655776'),('08787',190000,'765678689888','98765674320'),('65434',550000,'9876545678','098765456787'),('76093',1500000,'098767676767','087657656766'),('76434',236000,'8976546646','0987654346576'),('76545',220000,'098767897687','87644568976'),('76568',200000,'098765855877','98765678798'),('87656',80000,'098767676767','098789787545'),('87667',900000,'000987789888','76547886857'),('88890',313000,'0987678987','0987654346576'),('89765',60000,'098765678909','0009876545'),('98765',430000,'0987678987','0987654567'),('98876',1000000,'098767676767','098765456787'),('98878',150000,'098767897687','67546756599');
/*!40000 ALTER TABLE `pembayaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengiriman`
--

DROP TABLE IF EXISTS `pengiriman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengiriman` (
  `no_resi` varchar(10) NOT NULL,
  `id_barang` varchar(10) DEFAULT NULL,
  `id_pembayaran` varchar(10) DEFAULT NULL,
  `nama_pengirim` varchar(100) DEFAULT NULL,
  `nama_penerima` varchar(100) DEFAULT NULL,
  `biaya` int DEFAULT NULL,
  PRIMARY KEY (`no_resi`),
  KEY `id_barang` (`id_barang`),
  KEY `id_pembayaran` (`id_pembayaran`),
  CONSTRAINT `pengiriman_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  CONSTRAINT `pengiriman_ibfk_2` FOREIGN KEY (`id_pembayaran`) REFERENCES `pembayaran` (`id_pembayaran`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengiriman`
--

LOCK TABLES `pengiriman` WRITE;
/*!40000 ALTER TABLE `pengiriman` DISABLE KEYS */;
INSERT INTO `pengiriman` VALUES ('JP1231241','A8765','65434','Sri Mulyanto','Sumiaji Guntoro',50000),('JP1231242','K9876','65434','Joko','Mania Kurniawan',165000),('JP4234232','K9876','65434','rahadian sumanto','Asep',165000),('JP8731273','S4432','88890','rahadian sumanto','Suryano',16000),('RT98766878','T6754','89765','jinaka olopo','Hanggi Narative',16000);
/*!40000 ALTER TABLE `pengiriman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penjualan`
--

DROP TABLE IF EXISTS `penjualan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penjualan` (
  `id_penjualan` varchar(10) NOT NULL,
  `id_seller` varchar(10) DEFAULT NULL,
  `id_barang` varchar(10) DEFAULT NULL,
  `harga_jual` int DEFAULT NULL,
  `stock_terjual` int DEFAULT NULL,
  PRIMARY KEY (`id_penjualan`),
  KEY `id_seller` (`id_seller`),
  KEY `id_barang` (`id_barang`),
  CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_seller`) REFERENCES `seller` (`id_seller`),
  CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penjualan`
--

LOCK TABLES `penjualan` WRITE;
/*!40000 ALTER TABLE `penjualan` DISABLE KEYS */;
INSERT INTO `penjualan` VALUES ('C654567','JY09876','T6754',100000,2),('D754345','J229876','N9876',86000,2),('F764345','J229876','S4432',160000,6),('H9870984','Q239876','L9876',210000,9),('H987665','J229876','S4432',150000,5),('K5434565','WWE876','M7865',150000,3),('S54329','JY09876','M7865',150000,3),('T765454','Q09876','M7865',150000,4),('TRE8765','WWE876','S9876',55000,10),('U876567','Q239876','S4432',160000,5),('UUYWU9','Q09876','L9876',210000,1),('V765456','WWE876','S4432',160000,7),('Y09876','J229876','A8765',60000,2),('Y9989','JY09876','K9876',176000,1),('YTEW88','Q239876','N9876',86000,9),('Z234543','JY09876','S8766',45000,5);
/*!40000 ALTER TABLE `penjualan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `id_seller` varchar(10) NOT NULL,
  `alamat_email_seller` varchar(100) DEFAULT NULL,
  `nama_seller` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_seller`),
  KEY `alamat_email_seller` (`alamat_email_seller`),
  CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`alamat_email_seller`) REFERENCES `user` (`alamat_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES ('J229876','azizjalil@gmail.com','sri mulyanto'),('JY09876','azizaladrojalil@gmail.com','sri mulyadi'),('Q09876','wijayaa222@gmail.com','rahadian sumanto'),('Q239876','azizperiangcelalue@gmail.com','sri mulyano'),('WWE876','dewamadewijaya@gmail.com','jinaka olopo');
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toko`
--

DROP TABLE IF EXISTS `toko`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toko` (
  `id_toko` varchar(10) NOT NULL,
  `nama_toko` varchar(100) DEFAULT NULL,
  `alamat_toko` varchar(100) DEFAULT NULL,
  `id_seller` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_toko`),
  KEY `id_seller` (`id_seller`),
  CONSTRAINT `toko_ibfk_1` FOREIGN KEY (`id_seller`) REFERENCES `seller` (`id_seller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toko`
--

LOCK TABLES `toko` WRITE;
/*!40000 ALTER TABLE `toko` DISABLE KEYS */;
INSERT INTO `toko` VALUES ('IP2788','toko ada aja','jln tuan rumah no 22 gang akasia','Q09876'),('IPP986','toko serba ada','jln tuan rumah no 12 gang akasia','J229876'),('IPU788','toko lebih ada','jln tuan rumah no 11 gang akasia','JY09876'),('IT1118','toko aja aja ','jln tuan guru haji rohmah no 33 gang akasia','Q239876'),('WN98766','toko lancar amin ','jln marga satwa baja hitam no 90 gang wanita','WWE876');
/*!40000 ALTER TABLE `toko` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaksi` (
  `id_transaksi` varchar(10) NOT NULL,
  `id_buyer` varchar(10) DEFAULT NULL,
  `id_seller` varchar(10) DEFAULT NULL,
  `id_pembayaran` varchar(10) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `detail_pembayaran` varchar(100) DEFAULT NULL,
  `detail_buyer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `id_buyer` (`id_buyer`),
  KEY `id_seller` (`id_seller`),
  KEY `id_pembayaran` (`id_pembayaran`),
  CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_buyer`) REFERENCES `buyer` (`id_buyer`),
  CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_seller`) REFERENCES `seller` (`id_seller`),
  CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_pembayaran`) REFERENCES `pembayaran` (`id_pembayaran`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES ('B90000','76543WE','J229876','76093','Kurir Dalam Perjalanan Menuju Alamat','Lunas','Dikirim Ke Alamat Rumah'),('G78787','9876h','Q239876','89765','Sedang dalam perjalanan','Lunas','puas'),('H87659','7776W','JY09876','87667','Barang Sudah Sampai DI JNE pusat','Lunas','Di Ambil di JNE pusat'),('IOP99882','65434E','J229876','65434','Sedang dalam perjalanan','Lunas','Puas'),('K09876','7776W','Q239876','87656','Menunggu proses pembayaran','Belum Dibayar','Dikirim Ke alamat Kantor'),('L09988','7WWWQ1E','WWE876','98876','Dikemas','Lunas','Dikirim Ke alamat Rumah'),('L87656','9876h','Q09876','98878','Sudah Diterima','Lunas','puas'),('QWERTU2','76543WE','J229876','76434','Sampai ke alamat penerima','Lunas','Dikirimakan ke alamat kantor'),('T56754','65434E','J229876','07987','Dikemas','Lunas','Di Ambil Di JNE Pusat'),('T77654','76543WE','JY09876','08787','Menunggu proses pembayaran','Belum Dibayar','Dikirim Ke Alamat Rumah'),('T87657','65434E','JY09876','00987','Menunggu proses pembayaran','Belum Dibayar','Dikirim Ke alamat Kantor'),('Y76547','7776W','Q09876','76568','Sudah Diterima','Lunas','Puas'),('YH89087','7776W','Q09876','76545','Sedang di kemas','Lunas','Dikirimakan ke alamat rumah'),('YU8765','9876h','WWE876','98765','Sudah sampai di kantor cabang mataram','Lunas','Dikirimkan ke alamat nenek'),('YU87655','7776W','Q239876','88890','Sudah sampai di kantor cabang mataram','Lunas','Diambil di kantor JNE');
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `alamat_email` varchar(100) NOT NULL,
  PRIMARY KEY (`alamat_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Adindamonarch@gmail.com'),('azizaladrojalil@gmail.com'),('azizjalil@gmail.com'),('azizperiangcelalue@gmail.com'),('dewajaya@gmail.com'),('dewamadewijaya@gmail.com'),('Hanggina00@gmail.com'),('Hanungara89@gmail.com'),('Huruhara908@gmail.com'),('jaya2202@gmail.com'),('Kevin900@gmail.com'),('Kurniawan87@gmail.com'),('m.aziz@gmail.com'),('nanikurniakintara56@gmail.com'),('Sumiaji78@gmail.com'),('tiono89@gmail.com'),('wijayaa222@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-24 22:57:37
