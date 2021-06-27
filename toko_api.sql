/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : toko_api

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 27/06/2021 14:38:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'tabel untuk data member' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (12, 'Ade Suryadi', 'ade@gmail.com', '$2y$10$dciZpolIyJgK6THk0s7HF.ZQDsEpoAFKaE9LQxl4cKL/xK6hEdb0S');
INSERT INTO `member` VALUES (13, 'Ade Suryadi', 'ade@gmail.com', '$2y$10$j2JpgPO7hr.JBZ./tXWidewGn9R/bFT6b6quB5QsQVqlpr184aW7S');
INSERT INTO `member` VALUES (14, 'Jamal', 'jamal@gmail.com', '$2y$10$m0qebxBhnoIUyrbPhmIZv.WJcpqm30D3F7Gxsphme9yfRB/UH0PdG');
INSERT INTO `member` VALUES (15, 'Ade Nugraha', 'myaccpc@gmail.com', '$2y$10$UKfZUBd2uOjdRkGtDA..5eZin/SKb7h8QWmd4Qq18dXywPY3RdRsO');
INSERT INTO `member` VALUES (16, 'Ade Nugraha', 'myaccpc@gmail.com', '$2y$10$My3R1DIimOwmEU.Davk92OzTjNRZnRaNa6Fl.EYS9cUy0j.dg1vnq');
INSERT INTO `member` VALUES (17, 'ads', 'ade@gmail.com', '$2y$10$RXcMWWDiTsIloKUjrx55/.G8PRTo5TmE3NRcJP/V0Ir.eNFuzhGzC');
INSERT INTO `member` VALUES (18, 'ade nugraha', 'ade@gmail.com', '$2y$10$3CkfS.CGxJJ1FdnGEKBAveyINRLIJ0yjKkt//eIG5qxRpdFZhoPI.');
INSERT INTO `member` VALUES (19, 'Adam hilman', 'adam@gmail.com', '$2y$10$QU1t1q7J/VAUtcefP116/OirLD4fXhGlNhKtV.MxQFB.fveTG5j5C');

-- ----------------------------
-- Table structure for member_token
-- ----------------------------
DROP TABLE IF EXISTS `member_token`;
CREATE TABLE `member_token`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `auth_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_token
-- ----------------------------
INSERT INTO `member_token` VALUES (1, 12, '0iDDfbTFkgafaihT5Ijfh5TLe2cgcDh0LK2kfcAf7i8F3299eYLTAgL9a2936130AjL31bhL83FK7KLaA3g0ac9gc1Tgf3YI5dT6');
INSERT INTO `member_token` VALUES (2, 12, 'KaAe4dDgaibFbLD468e0LhT567151j1IK50j0dcfd6gh4680jTccKI4Tie02338Y8i5I2jAhK8g39514694hkdkbF6g73Ff1b709');
INSERT INTO `member_token` VALUES (3, 12, 'UdR51y64F6p7UdYBksFAwcrR997Bl4OpsYBA4Id0B5cCcU86UsRa3o6FYsYw7YCUDIIrFpOkBblTCT98bCI5bd4IFD0TFrrc74d');
INSERT INTO `member_token` VALUES (4, 12, '7BYs0A36lF7yDbD9Oo67096OrUdA57l1CpkbD8OpA8Ys2yBs9YTTo0Fo7o2Da3kRC15TspsYR5IF2Y1FAU6o3a9AB8bccDdDsa7');
INSERT INTO `member_token` VALUES (5, 12, 'FOYw8wUT3T7orBUTF2325pa8cr3596A1Ods5dylboCClrDFscIayDcYR9TklOpFpI9w9A8UrAklD7Okd4yalpy4wTFsR70D7Y2w');
INSERT INTO `member_token` VALUES (6, 14, 'py7p7b29Oa4dUkF4s2T8IT4kUyRoBYAakca8wl9lT6aTdY27pF74Ab9so4IlTw3F4UAo7232Bl7A5pk6Ta17k99TU5CB7TpO7Dr');
INSERT INTO `member_token` VALUES (7, 15, 'Y28TIT3Ysl4Clo8Rlk76d7yw9osIoTCYRcFsb6UIA3Ur09Tr26653d8a00DrR0p37c5AdFk6BdU9oDsF39Ta8sTF33wkl99oadR');
INSERT INTO `member_token` VALUES (8, 15, '2ODOA5U13y2bDY2b0p1bcbkdyIoUkTykI41Fc4I3bB1AOI6lCaRR6kls105c0rBs6oRlowIaBr4wAa5r8UIb00l8sTl161R21Rd');
INSERT INTO `member_token` VALUES (9, 15, 'B6FCraURd6laCOc9a9RF563YObcya54ORlk4yOFkO3kdl3sF88yUDFkow6wI3C8Uy3lps2wpAD67ATRTA0DRTFObUa8Fr75513R');
INSERT INTO `member_token` VALUES (10, 15, '6ORA9kCa7r7C5r7C44Ra664p3ow6o1A009Tr1r7I78sUC21Y4bD23bdRTasA6aBoBTOBCOda3Dso4Oa2ByOrOD6oTcRIA75R8s9');
INSERT INTO `member_token` VALUES (11, 15, 'wRwB19drB0o0pDD2CY88UU0pC0Rrc830UY5bR01bTO71d56c2oTpr21Dd1w0d5Y4slR36ka3Clk834w8Ud94FkaTFOyprlATls5');
INSERT INTO `member_token` VALUES (12, 15, '9sr75awa90I3oF9Tds8FAwIkrC6Csw4oIoT5Cs3y5B2BA8kslaCplAkOkUC5pF9Dkk8Io3pOl6UTkBUsbroFRAFdY8ROy17d0cO');
INSERT INTO `member_token` VALUES (13, 15, 'BO7c0IOT8sk6y07lprUDFc2U0Roo75OTbkRs4A7YadaaYcoacwy4IF3kFrBD4dD94DUw24IlpI4owAr3bpc9rBR1kkIB88RwdoR');
INSERT INTO `member_token` VALUES (14, 15, 'cll0rOywdR4csoypT8CUDy8lc31UF8yskR0Dl7ykC462y6boBYUDowO8occdbAdYy0UB7dIBIY6d7rlTkYl9c4Ro7k1B0kpO0kA');
INSERT INTO `member_token` VALUES (15, 15, 'oIa35RO2kFOYUb2TOw5RII7Fc76TwlB530Bd1wdB4BlU073lsURO6AlC3UUTcI380BY9O0lllclls381cbl0sF4oYobdA7Dad6D');
INSERT INTO `member_token` VALUES (16, 15, 'yblOdO8sspbryUO9YObd6o19yy2FDFp8D05IUw8II2sUFAFy8T6840781CcacOoTFDArc0UCbCIBy4l36C598ds8TFps0lob67p');
INSERT INTO `member_token` VALUES (17, 15, '47I6la1RcYFaRwT485Dys5TIod674daw1TC9TRdCOIskU0c41oIIUpkp562I6BbY148l74D9rrCl37p32wDIIkC6I4y96c28Apb');
INSERT INTO `member_token` VALUES (18, 15, 'lTdROIb5Bo6D3dF4Tkr07YdkBC89BBAk9wRIacad5Rslc6sUABkaUlY3Yy2ba6Or91a6DOC8p3aUyylRb9lAk78FpBs5594T7dR');
INSERT INTO `member_token` VALUES (19, 15, 'y28oOkoYo488OrU1s20Fb1Osb2OUTIr8wr1llD0U69RwCkOABc7315y7oAwU2FATc3dU2po52457ATF8kR8racpplpBUO174688');
INSERT INTO `member_token` VALUES (20, 15, 'TIB3ykUY2cDl7Tr93obCbDw6T3Rc0CsaDsA3469Y3FRRAw08dwbOs9wokll84CcF8p8CyOcO9RaUw6Fb727021wO2s4C1A82cDy');
INSERT INTO `member_token` VALUES (21, 15, 'o7oYYr4I93Y9T41sUF17wI3cd0CDlUwIbawsI34o794o17p35A1AlaT4rlsTbFsr01oRT5rsyRODoBTr8okak77Fo4C60dDT28d');
INSERT INTO `member_token` VALUES (22, 15, 'bcsAsFa081l7TRw0crYw7rOaa4wawlBpcposD8sboOaBRCA3ka42w2aYoFY54A5rocR61O9RoOYTkAUb02o6RdaDY22347wI5BD');
INSERT INTO `member_token` VALUES (23, 15, 'c0lYrksT99Tr00BBbcTTrRT4Y1cpTCDIRb4A7op17kbb4y0TF78s90lR0U6o66s019ooUd6D24T44w2Ta9AI1AbB9Tp6byT638A');
INSERT INTO `member_token` VALUES (24, 15, 'RBdwcsDpb0Cdslld7AcsC4615UAdIpdYbURbUb8O3wIIUR5D39dw3lc9IO6sOaylA9Db4cO0wk53dpDrwa0pCoyYBB88l4kUo2U');
INSERT INTO `member_token` VALUES (25, 15, 'dD1yCTlb8Uylr1AdwsDRl9yyaRs2py07ya81Tl7ORROyY1Osb1F1IrBr67yA7wYO87krlU1I730sycAbyU7IdY3b1BDp92D36wa');
INSERT INTO `member_token` VALUES (26, 15, 'C2AFACU1spaspD7cy984yoUoIs83dOwabrbC3sYR1p25Tr525AcRYRIdcBs6kaF5a8YDCO0Y1yFIckOoBOs6D84kb5olClAYsIA');
INSERT INTO `member_token` VALUES (27, 15, 'o3ORbDCpDFss8o6CO9p9UD9ICa056F1Oc0rF6Dk794ypF1rOpr0Fbpk4rBT0AA3R0T39Db6sl8RsCAFR68YT1p6FB7AOYpyl7YB');
INSERT INTO `member_token` VALUES (28, 15, '168Rp9d7AwB4r193O6I2D9Iwks3bRl92RB88CA1co9rwTpwaDr95372aD0bkblUY1IR4sRs5U49C993dAr2Ck2rAp3803dIlr7F');
INSERT INTO `member_token` VALUES (29, 15, '3C8YFk0kAO191C943d6ppB3yO9y3lRbF1cl9IpobaOF40dooRw1IlkrFc7TBy9yUB8ROpa7TC1cbdAc2wo82wTAbsY9T3YsOlCO');
INSERT INTO `member_token` VALUES (30, 15, 'U69lCYa6OYcr1O2bcl9yaYFIOOs0878IsRcFCBYCCAFD21YrdOpTl58p25s9bAdk90oDlosakrBDbaA01cD0D8B0llT059lUdsC');
INSERT INTO `member_token` VALUES (31, 15, '18R4lO6Y46UCco3a091wal4B7AlTddT4BRDRUdk5oas1d7dd5CDUyorD0wIDDl29apOAYI3w2dO6ssRUCyd7wolywAByYOR0rIT');
INSERT INTO `member_token` VALUES (32, 15, 'wpRy5dOO481lwOR3kF8DD6UlUlwpBDIa8rcU4aRbw9pUTb8lF8ssR1DD1dFDTBCda2p0YUr9O1UCOY8yDlO452T603ORkaDcRYI');
INSERT INTO `member_token` VALUES (33, 15, '5bCF2p2wp6688ls5sROB7co6aYbcUUk13Yd4wYr2ldaR9A9dapo62cFaDwCwwTcRoU3l3cyR1yUUyo1sDalC6BlbTT69l0cD198');
INSERT INTO `member_token` VALUES (34, 15, '75650lC2oR48Rs52YROTcaoFF90ybbdsowoIAoI8yUsYarY5URTp1232ccObO3bI549rlDC36UkYyB8obcbDD892w015c5DIoY6');
INSERT INTO `member_token` VALUES (35, 15, 'odpYAAUAlIR0Y3c0AO1wR78pdsc57b5sDT0RRb2a8k0rIdYb9y3IoC7F72dlaFsY3a1ya91rlObC62300767wc0rFBs9dO4O48s');
INSERT INTO `member_token` VALUES (36, 15, '4Y1D0kU47yaYF2oIa5aywRDAcwFrTF7U8RpO0ly8bRw1OFAbwRkDwUOCID0s59a65drwc2T011BIkOITFIrCo5yUO3DaAdl3yr2');
INSERT INTO `member_token` VALUES (37, 15, 'OIBy48lI4w04D8398yCBTlTrYcYTyO9koBAk8wABI0d9s89FB2YdF8kaTFsD9ys006cccIa1sBlsc3sU6dTb2RIwlyl00rw0dlR');
INSERT INTO `member_token` VALUES (38, 15, 'ssa6FwR9Tka8lccA2A0T38oYpr55O1T1rpTapkRw7FRc4c5T3T35T681kD70y1s1DRDl8D8sByaFYRDT9ROAp3p7o4Ioy9awpkr');
INSERT INTO `member_token` VALUES (39, 15, '8lT4YpORp07IYY4bwC0paUpCrd37brs1sUBr76aBbwY8okRrc07F3Up61aUIaTTryco3T2Y5lo7ka6CTOrIRcTOrl6k78yFFF4T');
INSERT INTO `member_token` VALUES (40, 15, 'YFYlcdb84883D3TkpBD6R2126rU1C8lD8O825IpT11cCB42D9494dRr4clpwl9A0B3RCOYaBd99yl118wTR3Oa0w4rIkC7l4Ady');
INSERT INTO `member_token` VALUES (41, 15, 'OyY9Abbp1T9RbYFRYod770r0b8da3d19BD6cwbsCIo8oU4IkAY784AYYcU63A83TAU4CdOr33w0O6Tl05da052RFpI6rpa8O956');
INSERT INTO `member_token` VALUES (42, 15, 'Dc10BBBkrD58Uco8yYCpIc5s6FDTBlIYlUIss78AU7pr41sCBwAFDsb6TlbU3bTrl8l3I0sRFCRIkyAF2sc24rb73b4r3sA8klp');
INSERT INTO `member_token` VALUES (43, 15, 'laR6I3I0IT38CD0Y3FCyIUB51A9Dy7kycyURb90Ip4s0po39209wDcTId3o26db6rbF3a8codscyYBTIO7rdCrTUrBy2A8I0Fd3');

-- ----------------------------
-- Table structure for produk
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_produk` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama_produk` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `judul` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `harga` int NOT NULL,
  `deskripsi` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `stok` int NULL DEFAULT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of produk
-- ----------------------------
INSERT INTO `produk` VALUES (3, 'Macbookm12020', 'Apple MacBook Pro 13 Inch', '64GB , 128GB , 256GB', 19450000, 'Ringan dan portabel, ultrabook ini adalah pilihan yang cocok untuk bekerja atau bepergian. Laptop ini dilengkapi dengan CPU yang terjangkau dan produktif, kinerja grafis yang hebat, dan daya tahan baterai yang luar biasa selama 13 jam', 91, 'https://d2pa5gi5n2e1an.cloudfront.net/webp/global/images/product/laptops/Apple_MacBook_Pro_13_M1_2020/Apple_MacBook_Pro_13_M1_2020_L_1.jpg');
INSERT INTO `produk` VALUES (5, 'A111', 'Microsoft Surface Go', '10th Gen Intel Core i5-1035G1', 9452000, 'Apple MacBook Pro 13 dengan chip 5 nm M1 baru menjadi 2,8 kali lebih cepat dari generasi sebelumnya yang dilengkapi dengan dua port Thunderbolt dengan dukungan USB 4.0 bersama dengan ISP kamera canggih dan fitur keamanan.', 12, 'https://d2pa5gi5n2e1an.cloudfront.net/webp/global/images/product/laptops/Microsoft_Surface_Laptop_Go/Microsoft_Surface_Laptop_Go_L_1.jpg');
INSERT INTO `produk` VALUES (14, 'mi11', 'Xiaomi Mi 11 Pro', 'Xiaomi Mi 11 Pro SD888', 16250000, 'Xiaomi Mi 11 Pro adalah smartphone beast yang memiliki warna yang menarik dan stylish, penyimpanan yang mengesankan hingga 12GB + 256GB, baterai 5.000 mAh yang luar biasa dan kamera belakang triple 50MP yang jelas\nQualcomm SM8350 Snapdragon 888 5G (5 nm)\nOcta-core Kryo 680', 13, 'https://d2pa5gi5n2e1an.cloudfront.net/webp/global/images/product/mobilephones/Xiaomi_Mi_11_Pro/Xiaomi_Mi_11_Pro_L_1.jpg');

SET FOREIGN_KEY_CHECKS = 1;
