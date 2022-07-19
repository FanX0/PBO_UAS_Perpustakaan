/*
 Navicat Premium Data Transfer

 Source Server         : perpustakaan
 Source Server Type    : MySQL
 Source Server Version : 100418
 Source Host           : localhost:3306
 Source Schema         : perpustakaan

 Target Server Type    : MySQL
 Target Server Version : 100418
 File Encoding         : 65001

 Date: 20/07/2022 00:04:32
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
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_buku
-- ----------------------------

-- ----------------------------
INSERT INTO `tb_buku` VALUES ('001', 'buku kode', '2019-11-15', 'Ahmad');
INSERT INTO `tb_buku` VALUES ('002', 'kode satu', '2020-01-09', 'Mahmud');
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
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_mahasiswa
-- ----------------------------
INSERT INTO `tb_mahasiswa` VALUES ('2021021', 'May', 'Sintang', '2002-09-07', 'Teknik Informasi', '2020-05-22');
INSERT INTO `tb_mahasiswa` VALUES ('2021023', 'Alim', 'Ketapang', '2002-10-16', 'Sistem Informasi', '2020-05-05');
INSERT INTO `tb_mahasiswa` VALUES ('2021233', 'Jainal', 'Mempawah', '2002-05-28', 'Sistem Informatika', '2020-05-15');

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
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_peminjaman
-- ----------------------------
INSERT INTO `tb_peminjaman` VALUES ('2021021', 'May', 'Teknik Informasi', '001', 'buku kode', '2019-11-15', '2021-08-22');
INSERT INTO `tb_peminjaman` VALUES ('2021023', 'Alim', 'Sistem Informasi', '003', 'saya kode', '2019-04-22', '2021-06-02');
INSERT INTO `tb_peminjaman` VALUES ('2021233', 'Jainal', 'Sistem Informasi', '002', 'kode satu', '2020-01-09', '2021-07-05');

SET FOREIGN_KEY_CHECKS = 1;
