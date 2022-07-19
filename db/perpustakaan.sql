/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : perpustakaan

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 21/06/2022 13:14:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_buku
-- ----------------------------
DROP TABLE IF EXISTS `tb_buku`;
CREATE TABLE `tb_buku`  (
  `kode_buku` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul_buku` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `pengarang` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`kode_buku`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_buku
-- ----------------------------
INSERT INTO `tb_buku` VALUES ('001', 'Kualitas I', '2016-01-09', 'asdasd ');
INSERT INTO `tb_buku` VALUES ('002', 'Kualitas III', '2016-01-02', 'kd kjbaksdb kjabs');

-- ----------------------------
-- Table structure for tb_mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `tb_mahasiswa`;
CREATE TABLE `tb_mahasiswa`  (
  `no_bp` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_lahir` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jurusan` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_masuk` date NOT NULL,
  PRIMARY KEY (`no_bp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_mahasiswa
-- ----------------------------
INSERT INTO `tb_mahasiswa` VALUES ('141400002', 'Sugi', 'Jepang', '1993-02-06', 'Sistem Informasi', '2016-01-02');
INSERT INTO `tb_mahasiswa` VALUES ('141400009', 'Mia Bi', 'Jepang', '2016-01-16', 'Teknik Informasi', '2019-01-11');
INSERT INTO `tb_mahasiswa` VALUES ('141400013', 'Joni ', 'Pantai Selatan', '1990-01-05', 'Sistem Informatika', '2016-01-02');

-- ----------------------------
-- Table structure for tb_peminjaman
-- ----------------------------
DROP TABLE IF EXISTS `tb_peminjaman`;
CREATE TABLE `tb_peminjaman`  (
  `no_bp` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jurusan` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_buku` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul_buku` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  PRIMARY KEY (`no_bp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_peminjaman
-- ----------------------------
INSERT INTO `tb_peminjaman` VALUES ('12121212', 'Federick', 'Sistem Informasi', '003', 'Habis Terang Timbul Malam', '1945-04-22', '2022-06-21');
INSERT INTO `tb_peminjaman` VALUES ('141400002', 'Sugi', 'Sistem Informasi', '002', 'Kualitas III', '2016-01-02', '2016-01-24');
INSERT INTO `tb_peminjaman` VALUES ('141400009', 'Mia Bi', 'Teknik Informasi', '001', 'Kualitas I', '2016-01-09', '2016-01-22');
INSERT INTO `tb_peminjaman` VALUES ('141400013', 'Joni ', 'Sistem Informatika', '002', 'Kualitas III', '2016-01-02', '2016-01-22');

SET FOREIGN_KEY_CHECKS = 1;
