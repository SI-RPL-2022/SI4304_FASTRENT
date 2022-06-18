-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2022 pada 09.41
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `program_sdm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `kode_akun` varchar(30) NOT NULL,
  `nama_akun` varchar(250) NOT NULL,
  `debet_kredit` set('DEBET','KREDIT') DEFAULT NULL,
  `kategori` set('NR','LR') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_akun`, `id_parent`, `kode_akun`, `nama_akun`, `debet_kredit`, `kategori`) VALUES
(1000, 0, '1-000', 'AKTIVA', '', 'NR'),
(1100, 1000, '1-100', 'AKTIVA LANCAR', NULL, 'NR'),
(1111, 1100, '1-111', 'Kas', 'DEBET', 'NR'),
(1114, 1100, '1-114', 'Piutang Usaha', 'DEBET', 'NR'),
(1200, 1000, '1-200', 'AKTIVA TETAP', NULL, 'NR'),
(2000, 0, '2-000', 'KEWAJIBAN', NULL, 'NR'),
(2100, 2000, '2-100', 'KEWAJIBAN LANCAR', NULL, 'NR'),
(2200, 2000, '2-200', 'KEWAJIBAN JANGKA PANJANG', NULL, 'NR'),
(3000, 0, '3-000', 'EKUITAS', NULL, 'NR'),
(3100, 3000, '3-100', 'Modal Saham', 'KREDIT', 'NR'),
(3200, 3000, '3-200', 'Laba Ditahan', 'KREDIT', 'NR'),
(4000, 0, '4-000', 'PENDAPATAN', NULL, 'LR'),
(4100, 4000, '4-100', 'Pendapatan Jasa', 'KREDIT', 'LR'),
(6000, 0, '6-000', 'BIAYA USAHA', NULL, 'LR'),
(6011, 6000, '6-011', 'Gaji', 'DEBET', 'LR'),
(6012, 6000, '6-012', 'Perlengkapan', 'DEBET', 'LR'),
(6014, 6000, '6-014', 'Listrik, Telepon, Internet, Biaya Lain', 'DEBET', 'LR'),
(6016, 6000, '6016', 'Biaya Sewa', 'DEBET', 'LR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `app_setting`
--

CREATE TABLE `app_setting` (
  `id_app_setting` int(11) NOT NULL,
  `setting_name` varchar(1500) NOT NULL,
  `is_image` int(1) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `app_setting`
--

INSERT INTO `app_setting` (`id_app_setting`, `setting_name`, `is_image`, `value`) VALUES
(1, 'APP-NAME', 0, 'KEL - 8'),
(2, 'APP-NAME-SINGKAT', 0, 'KEL 8'),
(3, 'APP-NAME-SINGKATAN', 0, 'PB'),
(4, 'Logo', 1, 'Logo.png'),
(5, 'Icon', 1, 'Icon.png'),
(6, 'ADDRESS', 0, 'Jalan Percetakan Negara Nomor 23 Jakarta - 10560 - Indonesia Selengkapnya'),
(7, 'Copyright', 0, 'Copyright 2022 KELOMPOK 8. All Right Reserved'),
(8, 'MAIN-BACKGROUND', 1, 'MAIN-BACKGROUND.jpg'),
(9, 'ABOUT-APP', 0, 'Aplikasi HRM'),
(10, 'APP-VERSION', 0, '1.0.0 (Beta)'),
(11, 'APP-RELEASE-DATE', 0, 'Juni 2021'),
(12, 'APP-CONTACT', 0, 'PPID BPOM'),
(13, 'WA-1', 0, '08123456789 (WA belum diset)'),
(14, 'WA-2', 0, '08123456789 (WA belum diset)'),
(15, 'IG', 0, 'IG PPID BPOM (Belum diset)'),
(16, 'WEBSITE', 0, 'https://www.pom.go.id'),
(17, 'EMAIL', 0, 'email.belumdiset@gmail.com'),
(18, 'ABOUT-WEB', 0, 'Sistem PPID BPOM'),
(19, 'GUDANG-DEFAULT', 0, '1'),
(20, 'LANDING-PAGE', 0, '0'),
(100, 'API-KEY', 0, 'LzloRzRtWjh0S3d3ZitTMko0UENYQT09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1542014079),
('admin', '7', 1552641965),
('member', '13', 1563241503),
('member', '14', 1547712959),
('produksi', '10', 1637317971),
('sales', '11', 1638343265),
('sales', '12', 1639095512),
('sales', '2', 1633397521),
('sales', '5', 1633413050),
('sales', '7', 1633413155),
('sales', '8', 1633420082),
('sales', '9', 1633932308);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1569471203, 1569471203),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1552641503, 1552641503),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1552641510, 1552641510),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1552641510, 1552641510),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1552641510, 1552641510),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1552641510, 1552641510),
('/admin/default/*', 2, NULL, NULL, NULL, 1552641513, 1552641513),
('/admin/default/index', 2, NULL, NULL, NULL, 1552641513, 1552641513),
('/admin/menu/*', 2, NULL, NULL, NULL, 1655523261, 1655523261),
('/admin/menu/create', 2, NULL, NULL, NULL, 1655523261, 1655523261),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1655523261, 1655523261),
('/admin/menu/index', 2, NULL, NULL, NULL, 1655523261, 1655523261),
('/admin/menu/update', 2, NULL, NULL, NULL, 1655523261, 1655523261),
('/admin/menu/view', 2, NULL, NULL, NULL, 1655523261, 1655523261),
('/admin/permission/*', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/permission/create', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/permission/index', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/permission/update', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/permission/view', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/role/*', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/role/assign', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/role/create', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/role/delete', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/role/index', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/role/remove', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/role/update', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/role/view', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/route/*', 2, NULL, NULL, NULL, 1552641523, 1552641523),
('/admin/route/assign', 2, NULL, NULL, NULL, 1552641523, 1552641523),
('/admin/route/create', 2, NULL, NULL, NULL, 1552641523, 1552641523),
('/admin/route/index', 2, NULL, NULL, NULL, 1552641523, 1552641523),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1552641523, 1552641523),
('/admin/route/remove', 2, NULL, NULL, NULL, 1552641523, 1552641523),
('/admin/rule/*', 2, NULL, NULL, NULL, 1552641527, 1552641527),
('/admin/rule/create', 2, NULL, NULL, NULL, 1552641527, 1552641527),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1552641527, 1552641527),
('/admin/rule/index', 2, NULL, NULL, NULL, 1552641527, 1552641527),
('/admin/rule/update', 2, NULL, NULL, NULL, 1552641527, 1552641527),
('/admin/rule/view', 2, NULL, NULL, NULL, 1552641527, 1552641527),
('/admin/user/delete', 2, NULL, NULL, NULL, 1552641538, 1552641538),
('/admin/user/index', 2, NULL, NULL, NULL, 1552641538, 1552641538),
('/admin/user/view', 2, NULL, NULL, NULL, 1552641538, 1552641538),
('/akun/*', 2, NULL, NULL, NULL, 1624525994, 1624525994),
('/app-setting/*', 2, NULL, NULL, NULL, 1623558891, 1623558891),
('/base-pendapatan/*', 2, NULL, NULL, NULL, 1629223425, 1629223425),
('/base-pendapatan/create', 2, NULL, NULL, NULL, 1629223437, 1629223437),
('/base-pendapatan/delete', 2, NULL, NULL, NULL, 1629223437, 1629223437),
('/base-pendapatan/index', 2, NULL, NULL, NULL, 1629223437, 1629223437),
('/base-pendapatan/update', 2, NULL, NULL, NULL, 1629223437, 1629223437),
('/base-pendapatan/view', 2, NULL, NULL, NULL, 1629223437, 1629223437),
('/base-salary/*', 2, NULL, NULL, NULL, 1629223429, 1629223429),
('/base-salary/create', 2, NULL, NULL, NULL, 1629223437, 1629223437),
('/base-salary/delete', 2, NULL, NULL, NULL, 1629223437, 1629223437),
('/base-salary/index', 2, NULL, NULL, NULL, 1629223437, 1629223437),
('/base-salary/update', 2, NULL, NULL, NULL, 1629223437, 1629223437),
('/base-salary/view', 2, NULL, NULL, NULL, 1629223437, 1629223437),
('/basic-packing-item/*', 2, NULL, NULL, NULL, 1625442083, 1625442083),
('/basic-packing/*', 2, NULL, NULL, NULL, 1625442065, 1625442065),
('/bd-mutasi-stock/*', 2, NULL, NULL, NULL, 1635771083, 1635771083),
('/contact-us/*', 2, NULL, NULL, NULL, 1566445209, 1566445209),
('/contact-us/create', 2, NULL, NULL, NULL, 1566445209, 1566445209),
('/contact-us/delete', 2, NULL, NULL, NULL, 1566445209, 1566445209),
('/contact-us/index', 2, NULL, NULL, NULL, 1566445209, 1566445209),
('/contact-us/update', 2, NULL, NULL, NULL, 1566445209, 1566445209),
('/contact-us/view', 2, NULL, NULL, NULL, 1566445209, 1566445209),
('/content/*', 2, NULL, NULL, NULL, 1566440059, 1566440059),
('/content/create', 2, NULL, NULL, NULL, 1566440059, 1566440059),
('/content/delete', 2, NULL, NULL, NULL, 1566440059, 1566440059),
('/content/index', 2, NULL, NULL, NULL, 1566440059, 1566440059),
('/content/reset-default-image', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/content/update', 2, NULL, NULL, NULL, 1566440059, 1566440059),
('/content/upload-image', 2, NULL, NULL, NULL, 1570060235, 1570060235),
('/content/view', 2, NULL, NULL, NULL, 1566440059, 1566440059),
('/cpanel-leftmenu/*', 2, NULL, NULL, NULL, 1552641574, 1552641574),
('/cpanel-leftmenu/create', 2, NULL, NULL, NULL, 1552641574, 1552641574),
('/cpanel-leftmenu/delete', 2, NULL, NULL, NULL, 1552641574, 1552641574),
('/cpanel-leftmenu/index', 2, NULL, NULL, NULL, 1552641574, 1552641574),
('/cpanel-leftmenu/update', 2, NULL, NULL, NULL, 1552641574, 1552641574),
('/cpanel-leftmenu/view', 2, NULL, NULL, NULL, 1552641574, 1552641574),
('/customer-sales/*', 2, NULL, NULL, NULL, 1635321990, 1635321990),
('/customer/*', 2, NULL, NULL, NULL, 1633408135, 1633408135),
('/dashboard/*', 2, NULL, NULL, NULL, 1552641577, 1552641577),
('/dashboard/main', 2, NULL, NULL, NULL, 1552641577, 1552641577),
('/frontend-topnav-parent/*', 2, NULL, NULL, NULL, 1624284213, 1624284213),
('/frontend-topnav/*', 2, NULL, NULL, NULL, 1567558594, 1567558594),
('/frontend-topnav/create', 2, NULL, NULL, NULL, 1567558594, 1567558594),
('/frontend-topnav/delete', 2, NULL, NULL, NULL, 1567558594, 1567558594),
('/frontend-topnav/index', 2, NULL, NULL, NULL, 1567558594, 1567558594),
('/frontend-topnav/reset-default-image', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/frontend-topnav/update', 2, NULL, NULL, NULL, 1567558594, 1567558594),
('/frontend-topnav/upload-image', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/frontend-topnav/view', 2, NULL, NULL, NULL, 1567558594, 1567558594),
('/gii/*', 2, NULL, NULL, NULL, 1552641560, 1552641560),
('/gridview/*', 2, NULL, NULL, NULL, 1628789886, 1628789886),
('/gridview/export/*', 2, NULL, NULL, NULL, 1629223476, 1629223476),
('/gudang/*', 2, NULL, NULL, NULL, 1629614431, 1629614431),
('/home-info/*', 2, NULL, NULL, NULL, 1623560246, 1623560246),
('/hrm-absensi-pegawai/*', 2, NULL, NULL, NULL, 1650433175, 1650433175),
('/hrm-mst-jenis-absensi/*', 2, NULL, NULL, NULL, 1650433175, 1650433175),
('/hrm-pegawai/*', 2, NULL, NULL, NULL, 1629224181, 1629224181),
('/image-management/*', 2, NULL, NULL, NULL, 1566440062, 1566440062),
('/image-management/create', 2, NULL, NULL, NULL, 1566440062, 1566440062),
('/image-management/delete', 2, NULL, NULL, NULL, 1566440062, 1566440062),
('/image-management/index', 2, NULL, NULL, NULL, 1566440062, 1566440062),
('/image-management/update', 2, NULL, NULL, NULL, 1566440062, 1566440062),
('/image-management/view', 2, NULL, NULL, NULL, 1566440062, 1566440062),
('/jpembelian/*', 2, NULL, NULL, NULL, 1625442088, 1625442088),
('/jurnal-type/*', 2, NULL, NULL, NULL, 1629223445, 1629223445),
('/jurnal/*', 2, NULL, NULL, NULL, 1629223445, 1629223445),
('/kantor/*', 2, NULL, NULL, NULL, 1655465566, 1655465566),
('/kantor/create', 2, NULL, NULL, NULL, 1655465566, 1655465566),
('/kantor/delete', 2, NULL, NULL, NULL, 1655465566, 1655465566),
('/kantor/index', 2, NULL, NULL, NULL, 1655465566, 1655465566),
('/kantor/update', 2, NULL, NULL, NULL, 1655465566, 1655465566),
('/kantor/view', 2, NULL, NULL, NULL, 1655465566, 1655465566),
('/language/*', 2, NULL, NULL, NULL, 1566440066, 1566440066),
('/language/create', 2, NULL, NULL, NULL, 1566440066, 1566440066),
('/language/delete', 2, NULL, NULL, NULL, 1566440066, 1566440066),
('/language/index', 2, NULL, NULL, NULL, 1566440065, 1566440065),
('/language/update', 2, NULL, NULL, NULL, 1566440066, 1566440066),
('/language/view', 2, NULL, NULL, NULL, 1566440066, 1566440066),
('/laporan/*', 2, NULL, NULL, NULL, 1552641588, 1552641588),
('/laporan/bulanan', 2, NULL, NULL, NULL, 1552641588, 1552641588),
('/laporan/captcha', 2, NULL, NULL, NULL, 1552641588, 1552641588),
('/laporan/error', 2, NULL, NULL, NULL, 1552641588, 1552641588),
('/laporan/harian', 2, NULL, NULL, NULL, 1552641588, 1552641588),
('/laporan/scan', 2, NULL, NULL, NULL, 1552641588, 1552641588),
('/material-finish-gudang/*', 2, NULL, NULL, NULL, 1642482756, 1642482756),
('/material-finish-outlet/*', 2, NULL, NULL, NULL, 1635154053, 1635154053),
('/material-finish/*', 2, NULL, NULL, NULL, 1629866367, 1629866367),
('/material-in-item-proc/*', 2, NULL, NULL, NULL, 1625442097, 1625442097),
('/material-in/*', 2, NULL, NULL, NULL, 1625442097, 1625442097),
('/material-kategori1/*', 2, NULL, NULL, NULL, 1629613758, 1629613758),
('/material-kategori2/*', 2, NULL, NULL, NULL, 1629613758, 1629613758),
('/material-kategori3/*', 2, NULL, NULL, NULL, 1629613758, 1629613758),
('/material-konsolidasi/*', 2, NULL, NULL, NULL, 1644404195, 1644404195),
('/material-raw-kategori1/*', 2, NULL, NULL, NULL, 1640234467, 1640234467),
('/material-sales/*', 2, NULL, NULL, NULL, 1633393905, 1633393905),
('/material-sampel/*', 2, NULL, NULL, NULL, 1640235773, 1640235773),
('/material-support/*', 2, NULL, NULL, NULL, 1625442097, 1625442097),
('/material/*', 2, NULL, NULL, NULL, 1624525185, 1624525185),
('/media-identity/*', 2, NULL, NULL, NULL, 1568270276, 1568270276),
('/media-identity/create', 2, NULL, NULL, NULL, 1568270276, 1568270276),
('/media-identity/delete', 2, NULL, NULL, NULL, 1568270276, 1568270276),
('/media-identity/index', 2, NULL, NULL, NULL, 1568270275, 1568270275),
('/media-identity/update', 2, NULL, NULL, NULL, 1568270276, 1568270276),
('/media-identity/view', 2, NULL, NULL, NULL, 1568270275, 1568270275),
('/menu-link/*', 2, NULL, NULL, NULL, 1568270278, 1568270278),
('/menu-link/create', 2, NULL, NULL, NULL, 1568270277, 1568270277),
('/menu-link/delete', 2, NULL, NULL, NULL, 1568270277, 1568270277),
('/menu-link/index', 2, NULL, NULL, NULL, 1568270276, 1568270276),
('/menu-link/update', 2, NULL, NULL, NULL, 1568270277, 1568270277),
('/menu-link/view', 2, NULL, NULL, NULL, 1568270277, 1568270277),
('/mst-jenjang-pendidikan/*', 2, NULL, NULL, NULL, 1655478491, 1655478491),
('/mst-jenjang-pendidikan/create', 2, NULL, NULL, NULL, 1655478491, 1655478491),
('/mst-jenjang-pendidikan/delete', 2, NULL, NULL, NULL, 1655478491, 1655478491),
('/mst-jenjang-pendidikan/index', 2, NULL, NULL, NULL, 1655478491, 1655478491),
('/mst-jenjang-pendidikan/update', 2, NULL, NULL, NULL, 1655478491, 1655478491),
('/mst-jenjang-pendidikan/view', 2, NULL, NULL, NULL, 1655478491, 1655478491),
('/mutasi-stock-item/*', 2, NULL, NULL, NULL, 1643277686, 1643277686),
('/mutasi-stock/*', 2, NULL, NULL, NULL, 1630612972, 1630612972),
('/news/*', 2, NULL, NULL, NULL, 1566440068, 1566440068),
('/news/create', 2, NULL, NULL, NULL, 1566440068, 1566440068),
('/news/delete', 2, NULL, NULL, NULL, 1566440068, 1566440068),
('/news/index', 2, NULL, NULL, NULL, 1566440068, 1566440068),
('/news/list', 2, NULL, NULL, NULL, 1568270278, 1568270278),
('/news/reset-default-image', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/news/update', 2, NULL, NULL, NULL, 1566440068, 1566440068),
('/news/upload-image', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/news/view', 2, NULL, NULL, NULL, 1566440068, 1566440068),
('/office-region/*', 2, NULL, NULL, NULL, 1568345553, 1568345553),
('/office-region/create', 2, NULL, NULL, NULL, 1568345553, 1568345553),
('/office-region/delete', 2, NULL, NULL, NULL, 1568345553, 1568345553),
('/office-region/index', 2, NULL, NULL, NULL, 1568345553, 1568345553),
('/office-region/reset-default-image', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/office-region/update', 2, NULL, NULL, NULL, 1568345553, 1568345553),
('/office-region/upload-image', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/office-region/view', 2, NULL, NULL, NULL, 1568345553, 1568345553),
('/outlet-penjualan/*', 2, NULL, NULL, NULL, 1633395620, 1633395620),
('/outsourcing-process-raw/*', 2, NULL, NULL, NULL, 1640235706, 1640235706),
('/pallet-gudang/*', 2, NULL, NULL, NULL, 1642481886, 1642481886),
('/pembelian-material-support/*', 2, NULL, NULL, NULL, 1629223462, 1629223462),
('/pembelian-material-support/create', 2, NULL, NULL, NULL, 1629223462, 1629223462),
('/pembelian-material-support/delete', 2, NULL, NULL, NULL, 1629223462, 1629223462),
('/pembelian-material-support/index', 2, NULL, NULL, NULL, 1629223462, 1629223462),
('/pembelian-material-support/update', 2, NULL, NULL, NULL, 1629223462, 1629223462),
('/pembelian-material-support/view', 2, NULL, NULL, NULL, 1629223462, 1629223462),
('/pendapatan/*', 2, NULL, NULL, NULL, 1629227877, 1629227877),
('/perusahaan/*', 2, NULL, NULL, NULL, 1552641592, 1552641592),
('/perusahaan/create', 2, NULL, NULL, NULL, 1552641592, 1552641592),
('/perusahaan/delete', 2, NULL, NULL, NULL, 1552641592, 1552641592),
('/perusahaan/index', 2, NULL, NULL, NULL, 1552641592, 1552641592),
('/perusahaan/update', 2, NULL, NULL, NULL, 1552641592, 1552641592),
('/perusahaan/view', 2, NULL, NULL, NULL, 1552641592, 1552641592),
('/product/*', 2, NULL, NULL, NULL, 1566440072, 1566440072),
('/product/create', 2, NULL, NULL, NULL, 1566440072, 1566440072),
('/product/delete', 2, NULL, NULL, NULL, 1566440072, 1566440072),
('/product/index', 2, NULL, NULL, NULL, 1566440072, 1566440072),
('/product/reset-default-file', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/product/reset-default-image', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/product/update', 2, NULL, NULL, NULL, 1566440072, 1566440072),
('/product/upload-file', 2, NULL, NULL, NULL, 1569976553, 1569976553),
('/product/upload-image', 2, NULL, NULL, NULL, 1569976553, 1569976553),
('/product/view', 2, NULL, NULL, NULL, 1566440072, 1566440072),
('/purchase-raw-item/*', 2, NULL, NULL, NULL, 1639473944, 1639473944),
('/purchase-raw/*', 2, NULL, NULL, NULL, 1639473807, 1639473807),
('/request-product-info/*', 2, NULL, NULL, NULL, 1566440077, 1566440077),
('/request-product-info/create', 2, NULL, NULL, NULL, 1566440077, 1566440077),
('/request-product-info/delete', 2, NULL, NULL, NULL, 1566440077, 1566440077),
('/request-product-info/index', 2, NULL, NULL, NULL, 1566440077, 1566440077),
('/request-product-info/update', 2, NULL, NULL, NULL, 1566440077, 1566440077),
('/request-product-info/view', 2, NULL, NULL, NULL, 1566440077, 1566440077),
('/riwayat-jabatan/*', 2, NULL, NULL, NULL, 1655478233, 1655478233),
('/riwayat-jabatan/create', 2, NULL, NULL, NULL, 1655478233, 1655478233),
('/riwayat-jabatan/delete', 2, NULL, NULL, NULL, 1655478233, 1655478233),
('/riwayat-jabatan/index', 2, NULL, NULL, NULL, 1655478233, 1655478233),
('/riwayat-jabatan/update', 2, NULL, NULL, NULL, 1655478233, 1655478233),
('/riwayat-jabatan/view', 2, NULL, NULL, NULL, 1655478233, 1655478233),
('/riwayat-pendidikan/*', 2, NULL, NULL, NULL, 1655478078, 1655478078),
('/riwayat-pendidikan/create', 2, NULL, NULL, NULL, 1655478078, 1655478078),
('/riwayat-pendidikan/delete', 2, NULL, NULL, NULL, 1655478078, 1655478078),
('/riwayat-pendidikan/index', 2, NULL, NULL, NULL, 1655478078, 1655478078),
('/riwayat-pendidikan/update', 2, NULL, NULL, NULL, 1655478078, 1655478078),
('/riwayat-pendidikan/view', 2, NULL, NULL, NULL, 1655478078, 1655478078),
('/salary-monthly/*', 2, NULL, NULL, NULL, 1629223462, 1629223462),
('/salary-monthly/create', 2, NULL, NULL, NULL, 1629223462, 1629223462),
('/salary-monthly/delete', 2, NULL, NULL, NULL, 1629223462, 1629223462),
('/salary-monthly/index', 2, NULL, NULL, NULL, 1629223462, 1629223462),
('/salary-monthly/update', 2, NULL, NULL, NULL, 1629223462, 1629223462),
('/salary-monthly/view', 2, NULL, NULL, NULL, 1629223462, 1629223462),
('/sales-custom/*', 2, NULL, NULL, NULL, 1635321980, 1635321980),
('/sales-invoice/*', 2, NULL, NULL, NULL, 1633925876, 1633925876),
('/sales-jurnal/*', 2, NULL, NULL, NULL, 1635077684, 1635077684),
('/sales-order/*', 2, NULL, NULL, NULL, 1633395214, 1633395214),
('/sales-pembayaran/*', 2, NULL, NULL, NULL, 1633927807, 1633927807),
('/sales-retur-cancel/*', 2, NULL, NULL, NULL, 1634855595, 1634855595),
('/sales-surat-jalan/*', 2, NULL, NULL, NULL, 1633946399, 1633946399),
('/section-content/*', 2, NULL, NULL, NULL, 1566440080, 1566440080),
('/section-content/create', 2, NULL, NULL, NULL, 1566440080, 1566440080),
('/section-content/delete', 2, NULL, NULL, NULL, 1566440080, 1566440080),
('/section-content/index', 2, NULL, NULL, NULL, 1566440079, 1566440079),
('/section-content/update', 2, NULL, NULL, NULL, 1566440080, 1566440080),
('/section-content/view', 2, NULL, NULL, NULL, 1566440080, 1566440080),
('/site/*', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/about', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/captcha', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/change-password', 2, NULL, NULL, NULL, 1637881688, 1637881688),
('/site/contact', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/error', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/index', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/login', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/logout', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/scan', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/stock-opname-item/*', 2, NULL, NULL, NULL, 1644831808, 1644831808),
('/stock-opname/*', 2, NULL, NULL, NULL, 1644831808, 1644831808),
('/struktur-material-mapping/*', 2, NULL, NULL, NULL, 1642485791, 1642485791),
('/struktur-material/*', 2, NULL, NULL, NULL, 1640234489, 1640234489),
('/subcontractor/*', 2, NULL, NULL, NULL, 1640235463, 1640235463),
('/supplier-delivery-order/*', 2, NULL, NULL, NULL, 1628735626, 1628735626),
('/supplier-do-item/*', 2, NULL, NULL, NULL, 1628735626, 1628735626),
('/supplier-raw/*', 2, NULL, NULL, NULL, 1640235153, 1640235153),
('/supplier/*', 2, NULL, NULL, NULL, 1628735619, 1628735619),
('/sustainability-impl-category/*', 2, NULL, NULL, NULL, 1569976554, 1569976554),
('/sustainability-impl-category/create', 2, NULL, NULL, NULL, 1569976554, 1569976554),
('/sustainability-impl-category/delete', 2, NULL, NULL, NULL, 1569976554, 1569976554),
('/sustainability-impl-category/index', 2, NULL, NULL, NULL, 1569976553, 1569976553),
('/sustainability-impl-category/update', 2, NULL, NULL, NULL, 1569976554, 1569976554),
('/sustainability-impl-category/view', 2, NULL, NULL, NULL, 1569976554, 1569976554),
('/sustainability-impl-news/*', 2, NULL, NULL, NULL, 1569976554, 1569976554),
('/sustainability-impl-news/create', 2, NULL, NULL, NULL, 1569976554, 1569976554),
('/sustainability-impl-news/delete', 2, NULL, NULL, NULL, 1569976554, 1569976554),
('/sustainability-impl-news/index', 2, NULL, NULL, NULL, 1569976554, 1569976554),
('/sustainability-impl-news/reset-default-image', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/sustainability-impl-news/update', 2, NULL, NULL, NULL, 1569976554, 1569976554),
('/sustainability-impl-news/upload-image', 2, NULL, NULL, NULL, 1569976554, 1569976554),
('/sustainability-impl-news/view', 2, NULL, NULL, NULL, 1569976554, 1569976554),
('/sustainability-report/*', 2, NULL, NULL, NULL, 1569471203, 1569471203),
('/sustainability-report/create', 2, NULL, NULL, NULL, 1569471203, 1569471203),
('/sustainability-report/delete', 2, NULL, NULL, NULL, 1569471203, 1569471203),
('/sustainability-report/index', 2, NULL, NULL, NULL, 1569471203, 1569471203),
('/sustainability-report/update', 2, NULL, NULL, NULL, 1569471203, 1569471203),
('/sustainability-report/view', 2, NULL, NULL, NULL, 1569471203, 1569471203),
('/unit-produksi/*', 2, NULL, NULL, NULL, 1625105212, 1625105212),
('/unit-produksi/create', 2, NULL, NULL, NULL, 1625105212, 1625105212),
('/unit-produksi/delete', 2, NULL, NULL, NULL, 1625105212, 1625105212),
('/unit-produksi/index', 2, NULL, NULL, NULL, 1625105212, 1625105212),
('/unit-produksi/update', 2, NULL, NULL, NULL, 1625105212, 1625105212),
('/unit-produksi/view', 2, NULL, NULL, NULL, 1625105212, 1625105212),
('/user-outlet/*', 2, NULL, NULL, NULL, 1633396116, 1633396116),
('/user-perusahaan/*', 2, NULL, NULL, NULL, 1552641605, 1552641605),
('/user-perusahaan/create', 2, NULL, NULL, NULL, 1552641604, 1552641604),
('/user-perusahaan/delete', 2, NULL, NULL, NULL, 1552641605, 1552641605),
('/user-perusahaan/index', 2, NULL, NULL, NULL, 1552641604, 1552641604),
('/user-perusahaan/update', 2, NULL, NULL, NULL, 1552641605, 1552641605),
('/user-perusahaan/view', 2, NULL, NULL, NULL, 1552641604, 1552641604),
('/user/*', 2, NULL, NULL, NULL, 1552641600, 1552641600),
('/user/create', 2, NULL, NULL, NULL, 1552641600, 1552641600),
('/user/delete', 2, NULL, NULL, NULL, 1552641600, 1552641600),
('/user/index', 2, NULL, NULL, NULL, 1552641600, 1552641600),
('/user/reset-password', 2, NULL, NULL, NULL, 1637883636, 1637883636),
('/user/update', 2, NULL, NULL, NULL, 1552641600, 1552641600),
('/user/view', 2, NULL, NULL, NULL, 1552641600, 1552641600),
('/web-page/*', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/web-page/create', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/web-page/delete', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/web-page/index', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/web-page/update', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/web-page/view', 2, NULL, NULL, NULL, 1570060236, 1570060236),
('/web-vocabulary/*', 2, NULL, NULL, NULL, 1568270282, 1568270282),
('/web-vocabulary/create', 2, NULL, NULL, NULL, 1568270282, 1568270282),
('/web-vocabulary/delete', 2, NULL, NULL, NULL, 1568270282, 1568270282),
('/web-vocabulary/index', 2, NULL, NULL, NULL, 1568270281, 1568270281),
('/web-vocabulary/update', 2, NULL, NULL, NULL, 1568270282, 1568270282),
('/web-vocabulary/view', 2, NULL, NULL, NULL, 1568270282, 1568270282),
('admin', 1, 'Application Admin', NULL, NULL, 1542013792, 1565583564),
('cpanel-leftmenu/create', 2, 'Create a menu', NULL, NULL, 1547712959, 1547712959),
('cpanel-leftmenu/delete', 2, 'delete a menu', NULL, NULL, 1547712959, 1547712959),
('cpanel-leftmenu/index', 2, 'Create a index', NULL, NULL, 1547712959, 1547712959),
('cpanel-leftmenu/update', 2, 'Update a menu', NULL, NULL, 1547713493, 1547713493),
('cpanel-leftmenu/view', 2, 'View a menu', NULL, NULL, 1547712959, 1547712959),
('grievance-list-request/index', 2, 'View Grievance List', NULL, NULL, 1563228150, 1563228150),
('member', 1, 'Member or supplier', NULL, NULL, 1563240747, 1563240747),
('owner', 1, 'Owner Account', NULL, NULL, 1542013792, 1552641921),
('produksi', 1, 'koordinator', NULL, NULL, 1563240797, 1623560370),
('sales', 1, 'writer', NULL, NULL, 1563240780, 1623560355),
('user/create', 2, 'Create a user', NULL, NULL, 1542013422, 1542013422),
('user/delete', 2, 'Delete a user', NULL, NULL, 1542013422, 1548749079),
('user/index', 2, 'Create a index', NULL, NULL, 1542013422, 1548749389),
('user/update', 2, 'Update a user', NULL, NULL, 1542013422, 1542013422),
('user/view', 2, 'View a user', NULL, NULL, 1542013422, 1548749426);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', '/admin/assignment/*'),
('admin', '/admin/assignment/assign'),
('admin', '/admin/assignment/index'),
('admin', '/admin/assignment/revoke'),
('admin', '/admin/assignment/view'),
('admin', '/admin/default/*'),
('admin', '/admin/default/index'),
('admin', '/admin/menu/*'),
('admin', '/admin/menu/create'),
('admin', '/admin/menu/delete'),
('admin', '/admin/menu/index'),
('admin', '/admin/menu/update'),
('admin', '/admin/menu/view'),
('admin', '/admin/permission/*'),
('admin', '/admin/permission/assign'),
('admin', '/admin/permission/create'),
('admin', '/admin/permission/delete'),
('admin', '/admin/permission/index'),
('admin', '/admin/permission/remove'),
('admin', '/admin/permission/update'),
('admin', '/admin/permission/view'),
('admin', '/admin/role/*'),
('admin', '/admin/role/assign'),
('admin', '/admin/role/create'),
('admin', '/admin/role/delete'),
('admin', '/admin/role/index'),
('admin', '/admin/role/remove'),
('admin', '/admin/role/update'),
('admin', '/admin/role/view'),
('admin', '/admin/route/*'),
('admin', '/admin/route/assign'),
('admin', '/admin/route/create'),
('admin', '/admin/route/index'),
('admin', '/admin/route/refresh'),
('admin', '/admin/route/remove'),
('admin', '/admin/rule/*'),
('admin', '/admin/rule/create'),
('admin', '/admin/rule/delete'),
('admin', '/admin/rule/index'),
('admin', '/admin/rule/update'),
('admin', '/admin/rule/view'),
('admin', '/admin/user/delete'),
('admin', '/admin/user/index'),
('admin', '/admin/user/view'),
('admin', '/akun/*'),
('admin', '/app-setting/*'),
('admin', '/base-pendapatan/*'),
('admin', '/base-salary/*'),
('admin', '/basic-packing-item/*'),
('admin', '/basic-packing/*'),
('admin', '/bd-mutasi-stock/*'),
('admin', '/contact-us/*'),
('admin', '/contact-us/create'),
('admin', '/contact-us/delete'),
('admin', '/contact-us/index'),
('admin', '/contact-us/update'),
('admin', '/contact-us/view'),
('admin', '/content/*'),
('admin', '/content/create'),
('admin', '/content/delete'),
('admin', '/content/index'),
('admin', '/content/update'),
('admin', '/content/view'),
('admin', '/cpanel-leftmenu/*'),
('admin', '/cpanel-leftmenu/create'),
('admin', '/cpanel-leftmenu/delete'),
('admin', '/cpanel-leftmenu/index'),
('admin', '/cpanel-leftmenu/update'),
('admin', '/cpanel-leftmenu/view'),
('admin', '/frontend-topnav-parent/*'),
('admin', '/frontend-topnav/*'),
('admin', '/frontend-topnav/create'),
('admin', '/frontend-topnav/delete'),
('admin', '/frontend-topnav/index'),
('admin', '/frontend-topnav/update'),
('admin', '/frontend-topnav/view'),
('admin', '/gii/*'),
('admin', '/gridview/*'),
('admin', '/gudang/*'),
('admin', '/home-info/*'),
('admin', '/hrm-absensi-pegawai/*'),
('admin', '/hrm-mst-jenis-absensi/*'),
('admin', '/hrm-pegawai/*'),
('admin', '/image-management/*'),
('admin', '/image-management/create'),
('admin', '/image-management/delete'),
('admin', '/image-management/index'),
('admin', '/image-management/update'),
('admin', '/image-management/view'),
('admin', '/jpembelian/*'),
('admin', '/jurnal-type/*'),
('admin', '/jurnal/*'),
('admin', '/kantor/*'),
('admin', '/kantor/create'),
('admin', '/kantor/delete'),
('admin', '/kantor/index'),
('admin', '/kantor/update'),
('admin', '/kantor/view'),
('admin', '/language/*'),
('admin', '/language/create'),
('admin', '/language/delete'),
('admin', '/language/index'),
('admin', '/language/update'),
('admin', '/language/view'),
('admin', '/material-finish-gudang/*'),
('admin', '/material-finish/*'),
('admin', '/material-in-item-proc/*'),
('admin', '/material-in/*'),
('admin', '/material-kategori1/*'),
('admin', '/material-kategori2/*'),
('admin', '/material-kategori3/*'),
('admin', '/material-konsolidasi/*'),
('admin', '/material-raw-kategori1/*'),
('admin', '/material-sales/*'),
('admin', '/material-sampel/*'),
('admin', '/material-support/*'),
('admin', '/material/*'),
('admin', '/media-identity/*'),
('admin', '/media-identity/create'),
('admin', '/media-identity/delete'),
('admin', '/media-identity/index'),
('admin', '/media-identity/update'),
('admin', '/media-identity/view'),
('admin', '/menu-link/*'),
('admin', '/menu-link/create'),
('admin', '/menu-link/delete'),
('admin', '/menu-link/index'),
('admin', '/menu-link/update'),
('admin', '/menu-link/view'),
('admin', '/mst-jenjang-pendidikan/*'),
('admin', '/mst-jenjang-pendidikan/create'),
('admin', '/mst-jenjang-pendidikan/delete'),
('admin', '/mst-jenjang-pendidikan/index'),
('admin', '/mst-jenjang-pendidikan/update'),
('admin', '/mst-jenjang-pendidikan/view'),
('admin', '/mutasi-stock-item/*'),
('admin', '/mutasi-stock/*'),
('admin', '/news/*'),
('admin', '/news/create'),
('admin', '/news/delete'),
('admin', '/news/index'),
('admin', '/news/update'),
('admin', '/news/view'),
('admin', '/office-region/*'),
('admin', '/office-region/create'),
('admin', '/office-region/delete'),
('admin', '/office-region/index'),
('admin', '/office-region/update'),
('admin', '/office-region/view'),
('admin', '/outlet-penjualan/*'),
('admin', '/outsourcing-process-raw/*'),
('admin', '/pallet-gudang/*'),
('admin', '/pembelian-material-support/*'),
('admin', '/pendapatan/*'),
('admin', '/perusahaan/*'),
('admin', '/perusahaan/create'),
('admin', '/perusahaan/delete'),
('admin', '/perusahaan/index'),
('admin', '/perusahaan/update'),
('admin', '/perusahaan/view'),
('admin', '/product/*'),
('admin', '/product/create'),
('admin', '/product/delete'),
('admin', '/product/index'),
('admin', '/product/update'),
('admin', '/product/view'),
('admin', '/purchase-raw-item/*'),
('admin', '/purchase-raw/*'),
('admin', '/request-product-info/*'),
('admin', '/request-product-info/create'),
('admin', '/request-product-info/delete'),
('admin', '/request-product-info/index'),
('admin', '/request-product-info/update'),
('admin', '/request-product-info/view'),
('admin', '/riwayat-jabatan/*'),
('admin', '/riwayat-jabatan/create'),
('admin', '/riwayat-jabatan/delete'),
('admin', '/riwayat-jabatan/index'),
('admin', '/riwayat-jabatan/update'),
('admin', '/riwayat-jabatan/view'),
('admin', '/riwayat-pendidikan/*'),
('admin', '/riwayat-pendidikan/create'),
('admin', '/riwayat-pendidikan/delete'),
('admin', '/riwayat-pendidikan/index'),
('admin', '/riwayat-pendidikan/update'),
('admin', '/riwayat-pendidikan/view'),
('admin', '/salary-monthly/*'),
('admin', '/sales-invoice/*'),
('admin', '/sales-jurnal/*'),
('admin', '/sales-order/*'),
('admin', '/sales-pembayaran/*'),
('admin', '/section-content/*'),
('admin', '/section-content/create'),
('admin', '/section-content/delete'),
('admin', '/section-content/index'),
('admin', '/section-content/update'),
('admin', '/section-content/view'),
('admin', '/site/error'),
('admin', '/site/index'),
('admin', '/site/login'),
('admin', '/site/logout'),
('admin', '/stock-opname-item/*'),
('admin', '/stock-opname/*'),
('admin', '/struktur-material-mapping/*'),
('admin', '/struktur-material/*'),
('admin', '/subcontractor/*'),
('admin', '/supplier-delivery-order/*'),
('admin', '/supplier-do-item/*'),
('admin', '/supplier-raw/*'),
('admin', '/supplier/*'),
('admin', '/sustainability-impl-category/*'),
('admin', '/sustainability-impl-category/create'),
('admin', '/sustainability-impl-category/delete'),
('admin', '/sustainability-impl-category/index'),
('admin', '/sustainability-impl-category/update'),
('admin', '/sustainability-impl-category/view'),
('admin', '/sustainability-impl-news/*'),
('admin', '/sustainability-impl-news/create'),
('admin', '/sustainability-impl-news/delete'),
('admin', '/sustainability-impl-news/index'),
('admin', '/sustainability-impl-news/update'),
('admin', '/sustainability-impl-news/upload-image'),
('admin', '/sustainability-impl-news/view'),
('admin', '/sustainability-report/*'),
('admin', '/sustainability-report/create'),
('admin', '/sustainability-report/delete'),
('admin', '/sustainability-report/index'),
('admin', '/sustainability-report/update'),
('admin', '/sustainability-report/view'),
('admin', '/unit-produksi/*'),
('admin', '/user-outlet/*'),
('admin', '/user-perusahaan/*'),
('admin', '/user-perusahaan/create'),
('admin', '/user-perusahaan/delete'),
('admin', '/user-perusahaan/index'),
('admin', '/user-perusahaan/update'),
('admin', '/user-perusahaan/view'),
('admin', '/user/*'),
('admin', '/user/create'),
('admin', '/user/delete'),
('admin', '/user/index'),
('admin', '/user/reset-password'),
('admin', '/user/update'),
('admin', '/user/view'),
('admin', '/web-page/*'),
('admin', '/web-page/create'),
('admin', '/web-page/delete'),
('admin', '/web-page/index'),
('admin', '/web-page/update'),
('admin', '/web-page/view'),
('admin', '/web-vocabulary/*'),
('admin', '/web-vocabulary/create'),
('admin', '/web-vocabulary/delete'),
('admin', '/web-vocabulary/index'),
('admin', '/web-vocabulary/update'),
('admin', '/web-vocabulary/view'),
('admin', 'cpanel-leftmenu/create'),
('admin', 'cpanel-leftmenu/delete'),
('admin', 'cpanel-leftmenu/index'),
('admin', 'cpanel-leftmenu/update'),
('admin', 'cpanel-leftmenu/view'),
('admin', 'user/create'),
('admin', 'user/delete'),
('admin', 'user/index'),
('admin', 'user/update'),
('admin', 'user/view'),
('member', '/site/index'),
('owner', '/dashboard/*'),
('owner', '/dashboard/main'),
('owner', '/laporan/*'),
('owner', '/laporan/bulanan'),
('owner', '/laporan/captcha'),
('owner', '/laporan/error'),
('owner', '/laporan/harian'),
('owner', '/laporan/scan'),
('owner', '/site/error'),
('owner', '/site/index'),
('owner', '/site/login'),
('owner', '/site/logout'),
('owner', '/site/scan'),
('produksi', '/material-in/*'),
('produksi', '/material/*'),
('sales', '/customer-sales/*'),
('sales', '/customer/*'),
('sales', '/material-finish-outlet/*'),
('sales', '/sales-custom/*'),
('sales', '/sales-invoice/*'),
('sales', '/sales-order/*'),
('sales', '/sales-pembayaran/*'),
('sales', '/sales-retur-cancel/*'),
('sales', '/sales-surat-jalan/*'),
('sales', '/site/change-password');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_pembayaran`
--

CREATE TABLE `bank_pembayaran` (
  `id_bank_pembayaran` int(11) NOT NULL,
  `nama_bank` varchar(250) NOT NULL,
  `nama_bank_short` varchar(20) NOT NULL,
  `nomor_rekening` varchar(100) NOT NULL,
  `atas_nama` varchar(250) NOT NULL,
  `kode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bank_pembayaran`
--

INSERT INTO `bank_pembayaran` (`id_bank_pembayaran`, `nama_bank`, `nama_bank_short`, `nomor_rekening`, `atas_nama`, `kode`) VALUES
(1, 'BNI', 'BNI', '12', '23', 'ABX');

-- --------------------------------------------------------

--
-- Struktur dari tabel `base_pendapatan`
--

CREATE TABLE `base_pendapatan` (
  `id_base_pendapatan` int(11) NOT NULL,
  `type_pendapatan` varchar(250) NOT NULL,
  `base` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `base_pendapatan`
--

INSERT INTO `base_pendapatan` (`id_base_pendapatan`, `type_pendapatan`, `base`) VALUES
(1, 'Pendapatan Packing Kain', 4000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `base_salary`
--

CREATE TABLE `base_salary` (
  `id_base_salary` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `gaji_pokok` bigint(20) NOT NULL,
  `tunjangan1` bigint(20) DEFAULT NULL,
  `tunjangan2` bigint(20) DEFAULT NULL,
  `tunjangan3` bigint(20) DEFAULT NULL,
  `tunjangan4` bigint(20) DEFAULT NULL,
  `tunjangan5` bigint(20) DEFAULT NULL,
  `rate_lembur` bigint(20) DEFAULT 0,
  `rate_kehadiran` bigint(20) DEFAULT 0,
  `property1` bigint(20) DEFAULT NULL,
  `property2` bigint(20) DEFAULT NULL,
  `property3` bigint(20) DEFAULT NULL,
  `property4` bigint(20) DEFAULT NULL,
  `property5` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `base_salary`
--

INSERT INTO `base_salary` (`id_base_salary`, `id_pegawai`, `gaji_pokok`, `tunjangan1`, `tunjangan2`, `tunjangan3`, `tunjangan4`, `tunjangan5`, `rate_lembur`, `rate_kehadiran`, `property1`, `property2`, `property3`, `property4`, `property5`) VALUES
(1, 4, 4500000, NULL, NULL, NULL, NULL, NULL, 45000, 125000, NULL, NULL, NULL, NULL, NULL),
(3, 3, 4500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `basic_packing`
--

CREATE TABLE `basic_packing` (
  `id_basic_packing` bigint(20) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `deskripsi` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `basic_packing`
--

INSERT INTO `basic_packing` (`id_basic_packing`, `nama`, `deskripsi`) VALUES
(1, 'Packing Standar', 'Packing Standard Kain'),
(2, 'Packing Baru', 'Test'),
(3, 'adas', 'asdasdas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basic_packing_item`
--

CREATE TABLE `basic_packing_item` (
  `id_basic_packing_item` bigint(20) NOT NULL,
  `id_basic_packing` int(11) NOT NULL,
  `id_material_support` bigint(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `basic_packing_item`
--

INSERT INTO `basic_packing_item` (`id_basic_packing_item`, `id_basic_packing`, `id_material_support`, `jumlah`, `keterangan`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(1, 1, 1, 1, NULL, NULL, NULL, NULL),
(2, 1, 2, 1, NULL, NULL, NULL, NULL),
(3, 1, 3, 1, NULL, NULL, NULL, NULL),
(4, 2, 2, 1, 'sadsda', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_us`
--

CREATE TABLE `contact_us` (
  `id_contact_us` bigint(20) NOT NULL,
  `id_office_region` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `request_date` date DEFAULT NULL,
  `request_time` datetime DEFAULT NULL,
  `registered_ip_address` varchar(64) DEFAULT NULL,
  `status` set('OPEN','CLOSE') DEFAULT NULL,
  `action_date` date DEFAULT NULL,
  `action_by` varchar(150) DEFAULT NULL,
  `action_notes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contact_us`
--

INSERT INTO `contact_us` (`id_contact_us`, `id_office_region`, `name`, `email`, `subject`, `message`, `request_date`, `request_time`, `registered_ip_address`, `status`, `action_date`, `action_by`, `action_notes`) VALUES
(1, 0, 'Rizky', 'rizky@gmail,com', 'Tanya Produk', 'Produk ini tentang apa sih ya?', '2019-08-14', '2019-08-14 04:33:00', '1', 'OPEN', NULL, NULL, NULL),
(2, 1, 'Amanda', 'sudirman@gmail.com', 'ddd', 'ddd', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 'Amanda', 'sudirman@gmail.com', 'ddd', 'ddd', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 'Nanda', 'nanda@gmail.com', 'Tanya Apa saja', 'Saya mau nanya dong kalau ini dan itu gimana ya?', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 'sss', 'sss', 'ssds', 'asdasdasdasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 'ss', 'rzk@gmail.com', 'sss', 'asd', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 'Amanda 5', 'sudirman@gmail.com', 'ddd', 'dfsdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 2, 's', 'sudirman@gmail.com', 'ss', 'sdasda ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 'ssda', 'sda', 'sda', 'sdasdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, 'ssda', 'sda@gmail.com', 'sda', 'sdasdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 2, 'aASas', 'as@ss.com', 'AS', 'asAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `content`
--

CREATE TABLE `content` (
  `id_content` bigint(20) NOT NULL,
  `keyname` varchar(100) NOT NULL,
  `id_section_content` int(11) NOT NULL,
  `id_frontend_topnav` int(11) NOT NULL,
  `content_lang1` text NOT NULL,
  `content_lang2` text NOT NULL,
  `have_image` int(1) DEFAULT 0,
  `image_filename` varchar(250) DEFAULT NULL,
  `have_colorbox` int(1) NOT NULL DEFAULT 0,
  `color_box` varchar(20) DEFAULT NULL,
  `have_info1` int(1) DEFAULT 0,
  `info1` text DEFAULT NULL,
  `have_info2` int(1) DEFAULT 0,
  `info2` text DEFAULT NULL,
  `have_info3` int(1) DEFAULT 0,
  `info3` text DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `updated_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `content`
--

INSERT INTO `content` (`id_content`, `keyname`, `id_section_content`, `id_frontend_topnav`, `content_lang1`, `content_lang2`, `have_image`, `image_filename`, `have_colorbox`, `color_box`, `have_info1`, `info1`, `have_info2`, `info2`, `have_info3`, `info3`, `updated_date`, `updated_user`, `updated_ip_address`) VALUES
(1, 'About Us-Group Policy-logo-1', 2, 1000, '<p>Profil</p>', '<p>Implementieren Sie integrierte Unternehmensmanagementsysteme und verbessern Sie die Wettbewerbsf&auml;higkeit</p>', 0, NULL, 0, '', 0, NULL, 0, NULL, 0, NULL, '2019-08-22 04:00:00', 1, '1:1:1:1'),
(10001, 'Home-Heading-1', 1, 100, '<p><span style=\"font-weight: bold; color: #9f191f;\">PPID BPOM </span>memberikan informasi terlengkap kepada masyarakat</p>', '<p>-</p>', 1, 'image_content_10001.png', 0, '', 0, NULL, 0, NULL, 0, NULL, '2019-08-22 04:00:00', 1, '1:1:1:1'),
(10002, 'Home-Heading-2', 1, 100, '<p><span style=\"font-weight: bold; color: #9f191f;\">Piagram Anugerah BPOM<br /></span></p>', '<p>Die weltweit f&uuml;hrenden Hersteller von nat&uuml;rlichen Fettalkoholen (2)</p>', 1, 'image_content_10002.png', 0, '', 0, NULL, 0, NULL, 0, NULL, '2019-08-22 04:00:00', 1, '1:1:1:1'),
(10003, 'Home-Heading-3', 1, 100, '<p><span style=\"font-weight: bold; color: #9f191f;\"> The Leading Producers</span> of Natural Fatty Alcohols in The World (3)</p>', '<p>Die weltweit f&uuml;hrenden Hersteller von nat&uuml;rlichen Fettalkoholen (3)</p>', 1, 'image_content_10003.jpg', 0, '', 0, NULL, 0, NULL, 0, NULL, '2019-08-22 04:00:00', 1, '1:1:1:1'),
(10004, 'Home-Heading-4', 1, 100, '<p><span style=\"font-weight: bold; color: #9f191f;\"> The Leading Producers</span> of Natural Fatty Alcohols in The World (3)</p>', '<p>Die weltweit f&uuml;hrenden Hersteller von nat&uuml;rlichen Fettalkoholen (3)</p>', 1, '', 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL),
(10005, 'Home-Heading-5', 1, 100, '<p><span style=\"font-weight: bold; color: #9f191f;\"> The Leading Producers</span> of Natural Fatty Alcohols in The World (3)</p>', '<p>Die weltweit f&uuml;hrenden Hersteller von nat&uuml;rlichen Fettalkoholen (3)</p>', 1, '', 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL),
(10010, 'Our Location', 1, 100, '--', '--', 1, '', 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL),
(100410, 'About Us-Vission, Mission and Values-Mission', 2, 1004, 'Our vision is a landmark of direction to grow profitability through delivery of high quality products competitively to customers and develop high skill of our people in the oleochemicals industry.', 'Unsere Vision ist ein Meilenstein in der Richtung, die Rentabilität durch wettbewerbsfähige Lieferung hochwertiger Produkte an Kunden zu steigern und die Fähigkeiten unserer Mitarbeiter in der Oleochemieindustrie zu entwickeln.', 0, '', 0, '', 0, NULL, 0, NULL, 0, NULL, '2019-08-22 04:00:00', 1, '1:1:1:1'),
(100602, 'About Us-Group Commitment-2', 2, 1006, '<p>Gambar Komitment 2</p>', '<p>Engagement Bild 2</p>', 0, '', 0, '', 0, NULL, 0, NULL, 0, NULL, '2019-08-22 04:00:00', 1, '1:1:1:1'),
(200200, 'Application', 3, 2002, 'Ecogreen Oleochemicals products are easily found in a wide range of applications from Personal Care, Household Care, Food, Pharmaceuticals, Lubricants, up to Industrial and Technical Applications. The wide ranges of products used in our daily life that contain oleochemicals are quite important.', 'Ecogreen Oleochemicals products are easily found in a wide range of applications from Personal Care, Household Care, Food, Pharmaceuticals, Lubricants, up to Industrial and Technical Applications. The wide ranges of products used in our daily life that contain oleochemicals are quite important.', 1, '', 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL),
(200201, 'Application-Image-1', 3, 2002, '--', '--', 1, '', 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL),
(300534, 'Corporate Social Responsibility-4', 4, 3004, '<p><strong>2. Mangrove for Sustainable Livelihood</strong></p>\r\n<p>Global warming has decreased the number of fish and sea creatures in Batam water and caused local fishers change to be sand miner. In addition, threat of coastal abrasion is also become other concern for surrounding community.</p>\r\n<p>On April 2019, Ecogreen Oleochemical, with Kampung Kelembak and Aliansi Rehab Bumi together initiated to plant 1000 mangroves at Kampung Kelembak coastal line. Ecogreen is committed to continuously plant mangroves as well as monitor the mangrove plantation. We believe that the initiatives would bring constructive impacts to the environment quality in Kampung Kelembak and vision for tourist village in the future.</p>', '<p><strong>2. Mangrove for Sustainable Livelihood</strong></p>\r\n<p>Global warming has decreased the number of fish and sea creatures in Batam water and caused local fishers change to be sand miner. In addition, threat of coastal abrasion is also become other concern for surrounding community.</p>\r\n<p>On April 2019, Ecogreen Oleochemical, with Kampung Kelembak and Aliansi Rehab Bumi together initiated to plant 1000 mangroves at Kampung Kelembak coastal line. Ecogreen is committed to continuously plant mangroves as well as monitor the mangrove plantation. We believe that the initiatives would bring constructive impacts to the environment quality in Kampung Kelembak and vision for tourist village in the future.</p>', 0, '', 0, '', 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cpanel_leftmenu`
--

CREATE TABLE `cpanel_leftmenu` (
  `id_leftmenu` int(11) NOT NULL,
  `id_parent_leftmenu` int(11) NOT NULL,
  `has_child` int(1) NOT NULL,
  `menu_name` varchar(200) NOT NULL,
  `menu_icon` varchar(100) NOT NULL,
  `value_indo` varchar(250) NOT NULL,
  `value_eng` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `is_public` int(1) NOT NULL DEFAULT 0,
  `auth` text NOT NULL,
  `mobile_display` set('NONE','MOBILE_TOP','MOBILE_BOTTOM') NOT NULL,
  `visible` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cpanel_leftmenu`
--

INSERT INTO `cpanel_leftmenu` (`id_leftmenu`, `id_parent_leftmenu`, `has_child`, `menu_name`, `menu_icon`, `value_indo`, `value_eng`, `url`, `is_public`, `auth`, `mobile_display`, `visible`) VALUES
(811, 0, 0, 'Kantor', 'link', 'Kantor', 'Kantor', '#', 1, 'admin', 'MOBILE_TOP', 1),
(812, 811, 0, 'Data Kantor', 'Cube', 'Data Kantor', 'Data Kantor', 'kantor/', 0, 'admin', 'MOBILE_TOP', 1),
(2100, 0, 1, 'Pegawai', 'handshake', 'Pegawai', 'Pegawai', '#', 0, 'admin, hrd', 'MOBILE_TOP', 1),
(2101, 2100, 0, 'Pegawai', 'arrow-circle-right', 'List Pegawai', 'Pegawai', 'hrm-pegawai/index', 0, 'admin, hrd', 'MOBILE_TOP', 1),
(2102, 2100, 0, 'History Pendidikan', 'cube', 'History Pendidikan', 'History Pendidikan', 'riwayat-pendidikan/', 1, 'admin, hrd', 'MOBILE_TOP', 1),
(2300, 0, 1, 'Absensi', 'link', 'Absensi', 'Absensi', '#', 0, 'admin, hrd', '', 1),
(2301, 2300, 0, 'Absensi', 'list-alt', 'Absensi', 'Absensi', 'hrm-absensi-pegawai/index', 0, 'admin, hrd', 'MOBILE_TOP', 1),
(2302, 2300, 0, 'Cuti', 'cube', 'Cuti', 'Cuti', 'hrm-pegawai/index', 0, 'admin, hrd', 'MOBILE_TOP', 1),
(3000, 0, 1, 'Data Master', 'link', 'Data Master', 'Data Master', '#', 0, 'admin', 'MOBILE_TOP', 1),
(3001, 3000, 0, 'Jenis Absensi', 'cube', 'Jenis Absensi', 'Jenis Absensi', 'hrm-mst-jenis-absensi/index', 0, 'admin', 'MOBILE_TOP', 1),
(14000, 0, 1, 'Setting', 'cogs', 'Setting', 'Setting', '#', 0, 'admin', '', 1),
(14001, 14000, 0, 'Setting', 'cog', 'Setting', 'Setting', 'app-setting/index', 0, 'admin', 'MOBILE_TOP', 1),
(14002, 14000, 0, 'Home Display', 'file-alt', 'Home Display', 'Home Display', 'home-info/index', 0, 'admin', 'MOBILE_TOP', 0),
(15000, 0, 1, 'User Management', 'users', 'User Management', 'User Management', '#', 0, 'admin', '', 1),
(15001, 15000, 0, 'User', 'user', 'User', 'User', 'user/index', 0, 'admin', 'MOBILE_TOP', 1),
(1100000, 0, 0, 'Logout ', 'sign-out', 'Logout ', 'Logout ', 'site/logout', 0, 'admin, member', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` bigint(20) NOT NULL,
  `nama_customer` varchar(250) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nomor_telepon` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `npwp` varchar(250) DEFAULT NULL,
  `nama_kontak` varchar(250) DEFAULT NULL,
  `limit_kredit` bigint(20) DEFAULT 0,
  `total_kredit` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `alamat`, `id_kabupaten`, `nomor_telepon`, `email`, `npwp`, `nama_kontak`, `limit_kredit`, `total_kredit`) VALUES
(1, 'Kampung Daun', 'Jl. Gajah', 1112, '09182312', 'kampungdaun@gmail.com', '801238012312', 'Data-data', 90000000, 0),
(2, 'Gani', 'Jl. Alamat', 1112, '08135546', 'gani@gmail.com', '123498765433', '', 50000000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_kredit`
--

CREATE TABLE `customer_kredit` (
  `id_customer_kredit` bigint(20) NOT NULL,
  `id_customer` bigint(20) NOT NULL,
  `id_sales_order` bigint(20) NOT NULL,
  `jumlah_kredit` bigint(20) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_kredit_bayar`
--

CREATE TABLE `customer_kredit_bayar` (
  `id_customer_kredit_bayar` bigint(20) NOT NULL,
  `id_customer` bigint(20) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `cara_bayar` set('TUNAI','TRANSFER') NOT NULL,
  `jumlah_bayar` bigint(20) NOT NULL,
  `id_bank_pembayaran` int(11) DEFAULT 0,
  `id_sales_order` int(11) DEFAULT NULL,
  `status_pembayaran` set('LUNAS','BELUM') NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cv_pendidikan`
--

CREATE TABLE `cv_pendidikan` (
  `id_cv_pendidikan` int(11) NOT NULL,
  `id_pegawai` bigint(20) NOT NULL,
  `id_jenjang_pendidikan` int(11) NOT NULL,
  `nama_sekolah` varchar(250) NOT NULL,
  `id_sekolah` int(11) DEFAULT NULL,
  `tahun_masuk` int(4) DEFAULT NULL,
  `tahun_lulus` int(4) DEFAULT NULL,
  `bidang` varchar(250) DEFAULT NULL,
  `gpa` double(8,2) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `frontend_topnav`
--

CREATE TABLE `frontend_topnav` (
  `id_frontend_topnav` int(11) NOT NULL,
  `id_parent_topnav` int(11) NOT NULL,
  `is_expanded` int(1) NOT NULL DEFAULT 0,
  `menu_name_lang1` varchar(250) DEFAULT NULL,
  `menu_name_lang2` varchar(250) DEFAULT NULL,
  `description_lang1` varchar(250) DEFAULT NULL,
  `description_lang2` varchar(250) DEFAULT NULL,
  `link_url` varchar(250) NOT NULL,
  `file_image` varchar(250) DEFAULT NULL,
  `is_visible` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `frontend_topnav`
--

INSERT INTO `frontend_topnav` (`id_frontend_topnav`, `id_parent_topnav`, `is_expanded`, `menu_name_lang1`, `menu_name_lang2`, `description_lang1`, `description_lang2`, `link_url`, `file_image`, `is_visible`) VALUES
(100, 0, 0, 'Beranda', 'Zuhause', '', '', 'index', '', 1),
(1000, 0, 1, 'Profil', 'Über uns', '<p>Profil PPID BPOM dapat dilihat di sini. Informasi seperti sejarah, tugas dan fungsi serta struktur organisasi</p>', '', '', 'topnav_1000.jpg', 1),
(1001, 1000, 0, 'Sejarah', 'Firmenlogo', '', '', 'sejarah', '', 1),
(1002, 1000, 0, 'Tugas dan Fungsi', 'Firmenprofil', '', '', 'tugas_dan_fungsi', '', 1),
(1003, 1000, 0, 'Stuktur Organisasi', 'Unsere Position', '', '', 'struktur_organisasi', '', 1),
(1004, 1000, 0, 'Galeri', 'Vision, Mission und Werte', '', '', 'galeri', '', 1),
(2000, 0, 0, 'Regulasi', '', '', '', 'regulasi', '', 1),
(3000, 0, 1, 'Informasi Publik', 'Nachhaltigkeit', '<p>Anda dapat melihat beberapa informasi publik seperti informasi berkala, informasi serta merta dan informasi setiap saat.</p>', '', '', 'topnav_3000.jpeg', 1),
(3001, 3000, 0, 'Informasi Secara Berkala', 'Nachhaltigkeits-Dashboard', NULL, NULL, 'informasi-berkala', '', 1),
(3002, 3000, 0, 'Informasi Serta Merta', 'Nachhaltigkeitsverpflichtung', '', '', 'informasi-serta-merta', '', 1),
(3003, 3000, 0, 'Informasi Setiap Saat', 'Beschwerde', '', '', 'informasi-setiap-saat', '', 1),
(4000, 0, 0, 'Laporan', '', '', '', 'laporan', '', 1),
(5000, 0, 1, 'Standard Layanan', '', '<p>Anda dapat memperoleh informasi terkait standard layanan seperti SOP, Media, Permohonan Informasi, pengajuan keberatan, dsb.</p>', '', '', 'topnav_5000.jpg', 1),
(5001, 5000, 0, 'SOP Layanan', 'Kontaktiere uns', '', '', 'sop-layanan', '', 1),
(5002, 5000, 0, 'Media Layanan', NULL, NULL, NULL, 'media-layanan', NULL, 1),
(5003, 5000, 0, 'Maklumat Layanan', NULL, NULL, NULL, 'maklumat-layanan', NULL, 1),
(5004, 5000, 0, 'Permohonan Informasi', NULL, NULL, NULL, 'permohonan-informasi', NULL, 1),
(5005, 5000, 0, 'Biaya Layanan', NULL, NULL, NULL, 'biaya-layanan', NULL, 1),
(5006, 5000, 0, 'Jadwal Layanan', NULL, NULL, NULL, 'jadwal-layanan', NULL, 1),
(5007, 5000, 0, 'Pengajuan Keberatan', NULL, NULL, NULL, 'pengajuan-keberatan', NULL, 1),
(5008, 5000, 0, 'Permohonan Penyelesaian Sengketa Informasi', NULL, NULL, NULL, 'penyelesaian-sengketa', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gudang`
--

CREATE TABLE `gudang` (
  `id_gudang` bigint(20) NOT NULL,
  `nama_gudang` varchar(250) NOT NULL,
  `kode_gudang` varchar(100) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `deskripsi` varchar(250) DEFAULT NULL,
  `id_outlet_penjualan` int(11) NOT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gudang`
--

INSERT INTO `gudang` (`id_gudang`, `nama_gudang`, `kode_gudang`, `alamat`, `deskripsi`, `id_outlet_penjualan`, `longitude`, `latitude`) VALUES
(1, 'Gudang Bawah', 'GB', 'Alamat Gudang Bawah', '', 0, '', ''),
(2, 'Gudang Atas', 'GA', 'Alamat Gudang Atas', NULL, 0, NULL, NULL),
(3, 'Gudang Kopo', 'KP', 'Kopo', '', 0, '', ''),
(4, 'Gudang Kuda Mas', 'KM', 'Kuda Mas Kopo', '', 0, '', ''),
(5, 'asdas', 'asd', 'as', 'asd', 0, 'asda', 'sdasdas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_info`
--

CREATE TABLE `home_info` (
  `id_home_info` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `home_info`
--

INSERT INTO `home_info` (`id_home_info`, `no`, `judul`, `deskripsi`) VALUES
(1, 1, 'Smart Farming', 'Smart Farming merupakan sebuah sistem yang digunakan untuk... (silakan diisi)'),
(2, 2, 'Drone & Sensor', 'Salah satu teknologi yang digunakan dalam smart farming ini adalah penggunaan teknologi drone dan sensor.'),
(3, 3, 'Aktif Monitoring', 'Anda sebagai pemilik lahan ataupun pengelola lahan (mandor / petani) dapat melakukan monitoring lahan pertanian secara aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hrm_absensi_pegawai`
--

CREATE TABLE `hrm_absensi_pegawai` (
  `id_hrm_absensi_pegawai` bigint(20) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `tanggal_absen` date NOT NULL,
  `id_mst_jenis_absensi` int(11) NOT NULL,
  `waktu_login` datetime DEFAULT NULL,
  `waktu_logout` datetime DEFAULT NULL,
  `izin_antara_logout` datetime DEFAULT NULL,
  `izin_antara_login` datetime DEFAULT NULL,
  `total_menit_kerja` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_id_user` int(11) DEFAULT NULL,
  `modified_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hrm_absensi_pegawai`
--

INSERT INTO `hrm_absensi_pegawai` (`id_hrm_absensi_pegawai`, `id_pegawai`, `tanggal_absen`, `id_mst_jenis_absensi`, `waktu_login`, `waktu_logout`, `izin_antara_logout`, `izin_antara_login`, `total_menit_kerja`, `created_date`, `created_id_user`, `created_ip_address`, `modified_date`, `modified_id_user`, `modified_ip_address`) VALUES
(1, 1, '0000-00-00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 100, '0000-00-00 00:00:00', 1, '1', '0000-00-00 00:00:00', 1, '1'),
(2, 3, '2022-04-13', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 6, '2022-04-08', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hrm_mst_jenis_absensi`
--

CREATE TABLE `hrm_mst_jenis_absensi` (
  `id_mst_jenis_absensi` int(11) NOT NULL,
  `jenis_absensi` varchar(200) NOT NULL,
  `is_aktif` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hrm_mst_jenis_absensi`
--

INSERT INTO `hrm_mst_jenis_absensi` (`id_mst_jenis_absensi`, `jenis_absensi`, `is_aktif`) VALUES
(1, 'MASUK', 1),
(2, 'SAKIT', 1),
(3, 'IZIN', 1),
(4, 'CUTI', 1),
(5, 'ALPHA', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hrm_pegawai`
--

CREATE TABLE `hrm_pegawai` (
  `id_pegawai` bigint(20) NOT NULL,
  `id_perusahaan` bigint(20) NOT NULL,
  `userid` varchar(45) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `cid` bigint(20) NOT NULL,
  `no_dossier` int(11) NOT NULL,
  `NIP` varchar(100) NOT NULL,
  `nama_lengkap` varchar(250) NOT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `tempat_lahir` varchar(250) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `usia` int(4) DEFAULT 0,
  `usia_lebih_bulan` int(2) NOT NULL,
  `jenis_kelamin` set('PRIA','WANITA') NOT NULL,
  `golongan_darah` set('A','B','AB','O','-') DEFAULT '-',
  `tinggi_badan` int(5) DEFAULT NULL,
  `berat_badan` int(5) DEFAULT NULL,
  `agama` set('ISLAM','KRISTEN','KATOLIK','HINDU','BUDHA','KONGHUCU','LAINNYA','-') DEFAULT '-',
  `status_pernikahan` set('BELUM MENIKAH','MENIKAH','DUDA/JANDA','-') DEFAULT '-',
  `no_identitas_pribadi` varchar(250) DEFAULT NULL,
  `NPWP` varchar(150) DEFAULT NULL,
  `no_kartu_kesehatan` varchar(150) DEFAULT NULL,
  `no_kartu_tenagakerja` varchar(150) DEFAULT NULL,
  `kartu_kesehatan` set('BPJS','ASURANSI') DEFAULT NULL,
  `no_kartu_keluarga` varchar(150) DEFAULT NULL,
  `scan_ktp` varchar(150) DEFAULT NULL,
  `scan_bpjs` varchar(150) DEFAULT NULL,
  `scan_npwp` varchar(150) DEFAULT NULL,
  `scan_paraf` varchar(150) DEFAULT NULL,
  `scan_kk` varchar(250) NOT NULL,
  `scan_tandatangan` varchar(150) DEFAULT NULL,
  `id_hrm_status_pegawai` int(11) NOT NULL DEFAULT 0,
  `id_hrm_status_organik` int(11) NOT NULL DEFAULT 0,
  `status_tenaga_kerja` set('WNI','WNA') NOT NULL DEFAULT 'WNI',
  `reg_tanggal_masuk` date DEFAULT NULL,
  `reg_tanggal_diangkat` date DEFAULT NULL,
  `reg_tanggal_training` date NOT NULL,
  `reg_status_pegawai` set('AKTIF','TIDAK AKTIF','PENSIUN','MPP') NOT NULL DEFAULT 'AKTIF',
  `tanggal_mpp` date DEFAULT NULL,
  `tanggal_pensiun` date DEFAULT NULL,
  `tanggal_terminasi` date NOT NULL,
  `id_hrm_mst_jenis_terminasi_bi` int(11) NOT NULL,
  `gelar_akademik` varchar(250) DEFAULT NULL,
  `gelar_profesi` varchar(250) DEFAULT NULL,
  `pdk_id_tingkatpendidikan` int(11) DEFAULT NULL,
  `pdk_sekolah_terakhir` varchar(250) DEFAULT NULL,
  `pdk_jurusan_terakhir` varchar(250) DEFAULT NULL,
  `pdk_ipk_terakhir` varchar(30) DEFAULT NULL,
  `pdk_tahun_lulus` int(4) DEFAULT NULL,
  `alamat_termutakhir` text DEFAULT NULL,
  `alamat_sesuai_identitas` text DEFAULT NULL,
  `mobilephone1` varchar(250) DEFAULT NULL,
  `mobilephone2` varchar(250) DEFAULT NULL,
  `telepon_rumah` varchar(250) DEFAULT NULL,
  `fax_rumah` varchar(250) DEFAULT NULL,
  `email1` varchar(200) NOT NULL,
  `email2` varchar(200) NOT NULL,
  `id_kk_profil_posisi` int(20) NOT NULL,
  `jbt_id_jabatan` bigint(20) DEFAULT NULL,
  `jbt_jabatan` varchar(250) DEFAULT NULL,
  `jbt_id_tingkat_jabatan` bigint(20) DEFAULT NULL,
  `jbt_no_sk_jabatan` varchar(250) DEFAULT NULL,
  `jbt_tgl_keputusan` date DEFAULT NULL,
  `jbt_tanggal_berlaku` date DEFAULT NULL,
  `jbt_keterangan_mutasi` varchar(250) DEFAULT NULL,
  `pkt_id_pangkat` int(11) DEFAULT NULL,
  `pkt_no_sk` varchar(250) DEFAULT NULL,
  `pkt_tgl_keputusan` date DEFAULT NULL,
  `pkt_tgl_berlaku` date DEFAULT NULL,
  `pkt_gaji_pokok` double(20,2) DEFAULT NULL,
  `pkt_id_jenis_kenaikan_pangkat` int(11) DEFAULT NULL,
  `pkt_eselon` varchar(64) NOT NULL,
  `pkt_ruang` varchar(64) NOT NULL,
  `pos_id_hrm_kantor` bigint(20) DEFAULT NULL,
  `pos_id_hrm_unit_kerja` bigint(20) DEFAULT NULL,
  `pos_kantor` varchar(250) NOT NULL,
  `pos_id_kk_profil_posisi` bigint(20) DEFAULT NULL,
  `sta_total_hukuman_disiplin` int(11) NOT NULL,
  `sta_total_penghargaan` int(11) NOT NULL,
  `pst_masabakti_20` date DEFAULT NULL,
  `pst_masabakti_25` date DEFAULT NULL,
  `pst_masabakti_30` date DEFAULT NULL,
  `pst_masabakti_35` date DEFAULT NULL,
  `pst_masabakti_40` date DEFAULT NULL,
  `cuti_besar_terakhir_start` date NOT NULL,
  `cuti_besar_terakhir_end` date NOT NULL,
  `cuti_besar_terakhir_ke` int(10) NOT NULL,
  `cuti_besar_plan_1` date DEFAULT NULL,
  `cuti_besar_plan_2` date DEFAULT NULL,
  `cuti_besar_plan_3` date DEFAULT NULL,
  `cuti_besar_plan_4` date DEFAULT NULL,
  `cuti_besar_plan_5` date DEFAULT NULL,
  `cuti_besar_plan_6` date DEFAULT NULL,
  `cuti_besar_plan_7` date DEFAULT NULL,
  `cuti_besar_ambil_1` int(1) DEFAULT NULL,
  `cuti_besar_ambil_2` int(1) DEFAULT NULL,
  `cuti_besar_ambil_3` int(1) DEFAULT NULL,
  `cuti_besar_ambil_4` int(1) DEFAULT NULL,
  `cuti_besar_ambil_5` int(1) DEFAULT NULL,
  `cuti_besar_ambil_6` int(1) DEFAULT NULL,
  `cuti_besar_ambil_7` int(1) DEFAULT NULL,
  `cuti_besar_aktual_1` date DEFAULT NULL,
  `cuti_besar_aktual_2` date DEFAULT NULL,
  `cuti_besar_aktual_3` date DEFAULT NULL,
  `cuti_besar_aktual_4` date DEFAULT NULL,
  `cuti_besar_aktual_5` date DEFAULT NULL,
  `cuti_besar_aktual_6` date DEFAULT NULL,
  `cuti_besar_aktual_7` date DEFAULT NULL,
  `cuti_besar_aktual_end_1` date DEFAULT NULL,
  `cuti_besar_aktual_end_2` date DEFAULT NULL,
  `cuti_besar_aktual_end_3` date DEFAULT NULL,
  `cuti_besar_aktual_end_4` date DEFAULT NULL,
  `cuti_besar_aktual_end_5` date DEFAULT NULL,
  `cuti_besar_aktual_end_6` date DEFAULT NULL,
  `cuti_besar_aktual_end_7` date DEFAULT NULL,
  `reff_id` varchar(100) DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_user` varchar(64) NOT NULL,
  `created_ip_address` varchar(64) NOT NULL,
  `modified_date` date NOT NULL,
  `modified_user` varchar(64) NOT NULL,
  `modified_ip_address` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hrm_pegawai`
--

INSERT INTO `hrm_pegawai` (`id_pegawai`, `id_perusahaan`, `userid`, `id_user`, `cid`, `no_dossier`, `NIP`, `nama_lengkap`, `foto`, `tempat_lahir`, `tanggal_lahir`, `usia`, `usia_lebih_bulan`, `jenis_kelamin`, `golongan_darah`, `tinggi_badan`, `berat_badan`, `agama`, `status_pernikahan`, `no_identitas_pribadi`, `NPWP`, `no_kartu_kesehatan`, `no_kartu_tenagakerja`, `kartu_kesehatan`, `no_kartu_keluarga`, `scan_ktp`, `scan_bpjs`, `scan_npwp`, `scan_paraf`, `scan_kk`, `scan_tandatangan`, `id_hrm_status_pegawai`, `id_hrm_status_organik`, `status_tenaga_kerja`, `reg_tanggal_masuk`, `reg_tanggal_diangkat`, `reg_tanggal_training`, `reg_status_pegawai`, `tanggal_mpp`, `tanggal_pensiun`, `tanggal_terminasi`, `id_hrm_mst_jenis_terminasi_bi`, `gelar_akademik`, `gelar_profesi`, `pdk_id_tingkatpendidikan`, `pdk_sekolah_terakhir`, `pdk_jurusan_terakhir`, `pdk_ipk_terakhir`, `pdk_tahun_lulus`, `alamat_termutakhir`, `alamat_sesuai_identitas`, `mobilephone1`, `mobilephone2`, `telepon_rumah`, `fax_rumah`, `email1`, `email2`, `id_kk_profil_posisi`, `jbt_id_jabatan`, `jbt_jabatan`, `jbt_id_tingkat_jabatan`, `jbt_no_sk_jabatan`, `jbt_tgl_keputusan`, `jbt_tanggal_berlaku`, `jbt_keterangan_mutasi`, `pkt_id_pangkat`, `pkt_no_sk`, `pkt_tgl_keputusan`, `pkt_tgl_berlaku`, `pkt_gaji_pokok`, `pkt_id_jenis_kenaikan_pangkat`, `pkt_eselon`, `pkt_ruang`, `pos_id_hrm_kantor`, `pos_id_hrm_unit_kerja`, `pos_kantor`, `pos_id_kk_profil_posisi`, `sta_total_hukuman_disiplin`, `sta_total_penghargaan`, `pst_masabakti_20`, `pst_masabakti_25`, `pst_masabakti_30`, `pst_masabakti_35`, `pst_masabakti_40`, `cuti_besar_terakhir_start`, `cuti_besar_terakhir_end`, `cuti_besar_terakhir_ke`, `cuti_besar_plan_1`, `cuti_besar_plan_2`, `cuti_besar_plan_3`, `cuti_besar_plan_4`, `cuti_besar_plan_5`, `cuti_besar_plan_6`, `cuti_besar_plan_7`, `cuti_besar_ambil_1`, `cuti_besar_ambil_2`, `cuti_besar_ambil_3`, `cuti_besar_ambil_4`, `cuti_besar_ambil_5`, `cuti_besar_ambil_6`, `cuti_besar_ambil_7`, `cuti_besar_aktual_1`, `cuti_besar_aktual_2`, `cuti_besar_aktual_3`, `cuti_besar_aktual_4`, `cuti_besar_aktual_5`, `cuti_besar_aktual_6`, `cuti_besar_aktual_7`, `cuti_besar_aktual_end_1`, `cuti_besar_aktual_end_2`, `cuti_besar_aktual_end_3`, `cuti_besar_aktual_end_4`, `cuti_besar_aktual_end_5`, `cuti_besar_aktual_end_6`, `cuti_besar_aktual_end_7`, `reff_id`, `created_date`, `created_user`, `created_ip_address`, `modified_date`, `modified_user`, `modified_ip_address`) VALUES
(1, 201501, '', 0, 145286948, 0, '12311', 'BRYAN RONALD TALISMAN', NULL, '', '2001-11-08', 0, 0, 'PRIA', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0, 'WNI', NULL, NULL, '0000-00-00', 'AKTIF', NULL, NULL, '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JL. MERDEKA NO.77 MANOKWARI', '082299790811', NULL, NULL, NULL, 'bryanronaldtalisman@mail.com', '', 0, NULL, 'TENGA LAPANGAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22', 'admin', '::1', '0000-00-00', '', ''),
(3, 0, '196505091993092002', 0, 154698399, 0, '7789', 'DEA GINA SIHOTANG', NULL, 'Soppeng', '2001-01-03', 54, 6, 'WANITA', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0, 'WNI', NULL, NULL, '0000-00-00', 'AKTIF', '1965-05-09', '1965-05-09', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JL. PERMATA BUAHBATU', '08123456789', NULL, NULL, NULL, 'deagina@gmail.com', '', 0, NULL, 'MANAGER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'III', 'IV /B', NULL, NULL, 'BADAN KESATUAN BANGSA DAN POLITIK', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '', '', '2019-11-12', '196505091993092002', '192.168.30.25'),
(4, 201501, '', 0, 30930530, 0, '9999', 'DARRYL BASTIAN', NULL, '', '1998-12-02', 0, 0, 'PRIA', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0, 'WNI', NULL, NULL, '0000-00-00', 'AKTIF', NULL, NULL, '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jl. GARUDA NO.47 BANDUNG', '085156703707', NULL, NULL, NULL, 'darrylbastian@gmail.com', '', 0, NULL, 'MANAGER KEPALA GUDANG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-18', 'admin', '::1', '0000-00-00', '', ''),
(5, 201501, '', 0, 123767543, 0, '89111', 'AGRIVA DETTA GINTING', NULL, '', '2021-08-30', 0, 0, 'WANITA', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0, 'WNI', NULL, NULL, '0000-00-00', 'AKTIF', NULL, NULL, '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jl. Jakarta 28 Jakrta Urta', '87291231', NULL, NULL, NULL, 'agrivadetta@gmail.com', '', 0, NULL, 'Kepala Cabang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-04', 'admin', '::1', '0000-00-00', '', ''),
(6, 201501, '', 0, 72566225, 0, '1810', 'SHINTA VALENINA', NULL, '', '1982-09-01', 0, 0, 'WANITA', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0, 'WNI', NULL, NULL, '0000-00-00', 'AKTIF', NULL, NULL, '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jl. Gajah Mungkur 28', '08192131', NULL, NULL, NULL, 'shintavalenina@gmail.com', '', 0, NULL, 'Kepala Cabang Sungkur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-04', 'admin', '::1', '0000-00-00', '', ''),
(7, 201501, '', 0, 126484571, 0, '7812', 'MICHAEL CHRISTENSEN BONAR', NULL, '', '2022-04-21', 0, 0, 'PRIA', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0, 'WNI', NULL, NULL, '0000-00-00', 'AKTIF', NULL, NULL, '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JL. KOPO', '082119680625', NULL, NULL, NULL, 'michaelchristensen@mial.com', '', 0, NULL, 'TENGA LAPANGAN 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22', 'admin', '::1', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `image_management`
--

CREATE TABLE `image_management` (
  `id_image_management` bigint(20) NOT NULL,
  `keyname` varchar(100) NOT NULL,
  `id_section_content` int(11) NOT NULL,
  `filename` varchar(250) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `updated_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `int_file_plr`
--

CREATE TABLE `int_file_plr` (
  `id_int_file_plr` bigint(20) NOT NULL,
  `nama_file` varchar(250) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` bigint(20) NOT NULL,
  `id_struktur_organisasi` int(11) NOT NULL,
  `kode_jabatan` varchar(50) NOT NULL,
  `nama_jabatan` varchar(250) NOT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `id_struktur_organisasi`, `kode_jabatan`, `nama_jabatan`, `keterangan`) VALUES
(1, 1, 'KPL', 'Kepala Cabang', NULL),
(2, 1, 'VP', 'Vice President', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal`
--

CREATE TABLE `jurnal` (
  `id_jurnal` bigint(20) NOT NULL,
  `id_type_jurnal` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_akun_debit` int(11) NOT NULL,
  `debit` bigint(20) NOT NULL,
  `id_akun_kredit` int(11) NOT NULL,
  `kredit` bigint(20) NOT NULL,
  `keterangan` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal_type`
--

CREATE TABLE `jurnal_type` (
  `id_jurnal_type` int(11) NOT NULL,
  `type_jurnal` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurnal_type`
--

INSERT INTO `jurnal_type` (`id_jurnal_type`, `type_jurnal`) VALUES
(1, 'Pembelian'),
(2, 'Penjualan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `j_pembelian`
--

CREATE TABLE `j_pembelian` (
  `id_j_pembelian` bigint(20) NOT NULL,
  `id_material_support` bigint(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_biaya` double NOT NULL,
  `no_bukti` varchar(250) DEFAULT NULL,
  `tanggal_pembelian` date NOT NULL,
  `bulan` int(2) NOT NULL,
  `tahun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `id_propinsi` int(11) NOT NULL,
  `nama_kabupaten` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `id_propinsi`, `nama_kabupaten`) VALUES
(1101, 11, 'Kab. Simeulue'),
(1102, 11, 'Kab. Aceh Singkil'),
(1103, 11, 'Kab. Aceh Selatan'),
(1104, 11, 'Kab. Aceh Tenggara'),
(1105, 11, 'Kab. Aceh Timur'),
(1106, 11, 'Kab. Aceh Tengah'),
(1107, 11, 'Kab. Aceh Barat'),
(1108, 11, 'Kab. Aceh Besar'),
(1109, 11, 'Kab. Pidie'),
(1110, 11, 'Kab. Bireuen'),
(1111, 11, 'Kab. Aceh Utara'),
(1112, 11, 'Kab. Aceh Barat Daya'),
(1113, 11, 'Kab. Gayo Lues'),
(1114, 11, 'Kab. Aceh Tamiang'),
(1115, 11, 'Kab. Nagan Raya'),
(1116, 11, 'Kab. Aceh Jaya'),
(1117, 11, 'Kab. Bener Meriah'),
(1118, 11, 'Kab. Pidie Jaya'),
(1171, 11, 'Kota Banda Aceh'),
(1172, 11, 'Kota Sabang'),
(1173, 11, 'Kota Langsa'),
(1174, 11, 'Kota Lhokseumawe'),
(1175, 11, 'Kota Subulussalam'),
(1201, 12, 'Kab. Nias'),
(1202, 12, 'Kab. Mandailing Natal'),
(1203, 12, 'Kab. Tapanuli Selatan'),
(1204, 12, 'Kab. Tapanuli Tengah'),
(1205, 12, 'Kab. Tapanuli Utara'),
(1206, 12, 'Kab. Toba Samosir'),
(1207, 12, 'Kab. Labuhan Batu'),
(1208, 12, 'Kab. Asahan'),
(1209, 12, 'Kab. Simalungun'),
(1210, 12, 'Kab. Dairi'),
(1211, 12, 'Kab. Karo'),
(1212, 12, 'Kab. Deli Serdang'),
(1213, 12, 'Kab. Langkat'),
(1214, 12, 'Kab. Nias Selatan'),
(1215, 12, 'Kab. Humbang Hasundutan'),
(1216, 12, 'Kab. Pakpak Bharat'),
(1217, 12, 'Kab. Samosir'),
(1218, 12, 'Kab. Serdang Bedagai'),
(1219, 12, 'Kab. Batu Bara'),
(1220, 12, 'Kab. Padang Lawas Utara'),
(1221, 12, 'Kab. Padang Lawas'),
(1222, 12, 'Kab. Labuhan Batu Selatan'),
(1223, 12, 'Kab. Labuhan Batu Utara'),
(1224, 12, 'Kab. Nias Utara'),
(1225, 12, 'Kab. Nias Barat'),
(1271, 12, 'Kota Sibolga'),
(1272, 12, 'Kota Tanjung Balai'),
(1273, 12, 'Kota Pematang Siantar'),
(1274, 12, 'Kota Tebing Tinggi'),
(1275, 12, 'Kota Medan'),
(1276, 12, 'Kota Binjai'),
(1277, 12, 'Kota Padangsidimpuan'),
(1278, 12, 'Kota Gunungsitoli'),
(1301, 13, 'Kab. Kepulauan Mentawai'),
(1302, 13, 'Kab. Pesisir Selatan'),
(1303, 13, 'Kab. Solok'),
(1304, 13, 'Kab. Sijunjung'),
(1305, 13, 'Kab. Tanah Datar'),
(1306, 13, 'Kab. Padang Pariaman'),
(1307, 13, 'Kab. Agam'),
(1308, 13, 'Kab. Lima Puluh Kota'),
(1309, 13, 'Kab. Pasaman'),
(1310, 13, 'Kab. Solok Selatan'),
(1311, 13, 'Kab. Dharmasraya'),
(1312, 13, 'Kab. Pasaman Barat'),
(1371, 13, 'Kota Padang'),
(1372, 13, 'Kota Solok'),
(1373, 13, 'Kota Sawah Lunto'),
(1374, 13, 'Kota Padang Panjang'),
(1375, 13, 'Kota Bukittinggi'),
(1376, 13, 'Kota Payakumbuh'),
(1377, 13, 'Kota Pariaman'),
(1401, 14, 'Kab. Kuantan Singingi'),
(1402, 14, 'Kab. Indragiri Hulu'),
(1403, 14, 'Kab. Indragiri Hilir'),
(1404, 14, 'Kab. Pelalawan'),
(1405, 14, 'Kab. S I A K'),
(1406, 14, 'Kab. Kampar'),
(1407, 14, 'Kab. Rokan Hulu'),
(1408, 14, 'Kab. Bengkalis'),
(1409, 14, 'Kab. Rokan Hilir'),
(1410, 14, 'Kab. Kepulauan Meranti'),
(1471, 14, 'Kota Pekanbaru'),
(1473, 14, 'Kota D U M A I'),
(1501, 15, 'Kab. Kerinci'),
(1502, 15, 'Kab. Merangin'),
(1503, 15, 'Kab. Sarolangun'),
(1504, 15, 'Kab. Batang Hari'),
(1505, 15, 'Kab. Muaro Jambi'),
(1506, 15, 'Kab. Tanjung Jabung Timur'),
(1507, 15, 'Kab. Tanjung Jabung Barat'),
(1508, 15, 'Kab. Tebo'),
(1509, 15, 'Kab. Bungo'),
(1571, 15, 'Kota Jambi'),
(1572, 15, 'Kota Sungai Penuh'),
(1601, 16, 'Kab. Ogan Komering Ulu'),
(1602, 16, 'Kab. Ogan Komering Ilir'),
(1603, 16, 'Kab. Muara Enim'),
(1604, 16, 'Kab. Lahat'),
(1605, 16, 'Kab. Musi Rawas'),
(1606, 16, 'Kab. Musi Banyuasin'),
(1607, 16, 'Kab. Banyu Asin'),
(1608, 16, 'Kab. Ogan Komering Ulu Selatan'),
(1609, 16, 'Kab. Ogan Komering Ulu Timur'),
(1610, 16, 'Kab. Ogan Ilir'),
(1611, 16, 'Kab. Empat Lawang'),
(1671, 16, 'Kota Palembang'),
(1672, 16, 'Kota Prabumulih'),
(1673, 16, 'Kota Pagar Alam'),
(1674, 16, 'Kota Lubuklinggau'),
(1701, 17, 'Kab. Bengkulu Selatan'),
(1702, 17, 'Kab. Rejang Lebong'),
(1703, 17, 'Kab. Bengkulu Utara'),
(1704, 17, 'Kab. Kaur'),
(1705, 17, 'Kab. Seluma'),
(1706, 17, 'Kab. Mukomuko'),
(1707, 17, 'Kab. Lebong'),
(1708, 17, 'Kab. Kepahiang'),
(1709, 17, 'Kab. Bengkulu Tengah'),
(1771, 17, 'Kota Bengkulu'),
(1801, 18, 'Kab. Lampung Barat'),
(1802, 18, 'Kab. Tanggamus'),
(1803, 18, 'Kab. Lampung Selatan'),
(1804, 18, 'Kab. Lampung Timur'),
(1805, 18, 'Kab. Lampung Tengah'),
(1806, 18, 'Kab. Lampung Utara'),
(1807, 18, 'Kab. Way Kanan'),
(1808, 18, 'Kab. Tulangbawang'),
(1809, 18, 'Kab. Pesawaran'),
(1810, 18, 'Kab. Pringsewu'),
(1811, 18, 'Kab. Mesuji'),
(1812, 18, 'Kab. Tulang Bawang Barat'),
(1813, 18, 'Kab. Pesisir Barat'),
(1871, 18, 'Kota Bandar Lampung'),
(1872, 18, 'Kota Metro'),
(1901, 19, 'Kab. Bangka'),
(1902, 19, 'Kab. Belitung'),
(1903, 19, 'Kab. Bangka Barat'),
(1904, 19, 'Kab. Bangka Tengah'),
(1905, 19, 'Kab. Bangka Selatan'),
(1906, 19, 'Kab. Belitung Timur'),
(1971, 19, 'Kota Pangkal Pinang'),
(2101, 21, 'Kab. Karimun'),
(2102, 21, 'Kab. Bintan'),
(2103, 21, 'Kab. Natuna'),
(2104, 21, 'Kab. Lingga'),
(2105, 21, 'Kab. Kepulauan Anambas'),
(2171, 21, 'Kota B A T A M'),
(2172, 21, 'Kota Tanjung Pinang'),
(3101, 31, 'Kab. Kepulauan Seribu'),
(3171, 31, 'Kota Jakarta Selatan'),
(3172, 31, 'Kota Jakarta Timur'),
(3173, 31, 'Kota Jakarta Pusat'),
(3174, 31, 'Kota Jakarta Barat'),
(3175, 31, 'Kota Jakarta Utara'),
(3201, 32, 'Kab. Bogor'),
(3202, 32, 'Kab. Sukabumi'),
(3203, 32, 'Kab. Cianjur'),
(3204, 32, 'Kab. Bandung'),
(3205, 32, 'Kab. Garut'),
(3206, 32, 'Kab. Tasikmalaya'),
(3207, 32, 'Kab. Ciamis'),
(3208, 32, 'Kab. Kuningan'),
(3209, 32, 'Kab. Cirebon'),
(3210, 32, 'Kab. Majalengka'),
(3211, 32, 'Kab. Sumedang'),
(3212, 32, 'Kab. Indramayu'),
(3213, 32, 'Kab. Subang'),
(3214, 32, 'Kab. Purwakarta'),
(3215, 32, 'Kab. Karawang'),
(3216, 32, 'Kab. Bekasi'),
(3217, 32, 'Kab. Bandung Barat'),
(3218, 32, 'Kab. Pangandaran'),
(3271, 32, 'Kota Bogor'),
(3272, 32, 'Kota Sukabumi'),
(3273, 32, 'Kota Bandung'),
(3274, 32, 'Kota Cirebon'),
(3275, 32, 'Kota Bekasi'),
(3276, 32, 'Kota Depok'),
(3277, 32, 'Kota Cimahi'),
(3278, 32, 'Kota Tasikmalaya'),
(3279, 32, 'Kota Banjar'),
(3301, 33, 'Kab. Cilacap'),
(3302, 33, 'Kab. Banyumas'),
(3303, 33, 'Kab. Purbalingga'),
(3304, 33, 'Kab. Banjarnegara'),
(3305, 33, 'Kab. Kebumen'),
(3306, 33, 'Kab. Purworejo'),
(3307, 33, 'Kab. Wonosobo'),
(3308, 33, 'Kab. Magelang'),
(3309, 33, 'Kab. Boyolali'),
(3310, 33, 'Kab. Klaten'),
(3311, 33, 'Kab. Sukoharjo'),
(3312, 33, 'Kab. Wonogiri'),
(3313, 33, 'Kab. Karanganyar'),
(3314, 33, 'Kab. Sragen'),
(3315, 33, 'Kab. Grobogan'),
(3316, 33, 'Kab. Blora'),
(3317, 33, 'Kab. Rembang'),
(3318, 33, 'Kab. Pati'),
(3319, 33, 'Kab. Kudus'),
(3320, 33, 'Kab. Jepara'),
(3321, 33, 'Kab. Demak'),
(3322, 33, 'Kab. Semarang'),
(3323, 33, 'Kab. Temanggung'),
(3324, 33, 'Kab. Kendal'),
(3325, 33, 'Kab. Batang'),
(3326, 33, 'Kab. Pekalongan'),
(3327, 33, 'Kab. Pemalang'),
(3328, 33, 'Kab. Tegal'),
(3329, 33, 'Kab. Brebes'),
(3371, 33, 'Kota Magelang'),
(3372, 33, 'Kota Surakarta'),
(3373, 33, 'Kota Salatiga'),
(3374, 33, 'Kota Semarang'),
(3375, 33, 'Kota Pekalongan'),
(3376, 33, 'Kota Tegal'),
(3401, 34, 'Kab. Kulon Progo'),
(3402, 34, 'Kab. Bantul'),
(3403, 34, 'Kab. Gunung Kidul'),
(3404, 34, 'Kab. Sleman'),
(3471, 34, 'Kota Yogyakarta'),
(3501, 35, 'Kab. Pacitan'),
(3502, 35, 'Kab. Ponorogo'),
(3503, 35, 'Kab. Trenggalek'),
(3504, 35, 'Kab. Tulungagung'),
(3505, 35, 'Kab. Blitar'),
(3506, 35, 'Kab. Kediri'),
(3507, 35, 'Kab. Malang'),
(3508, 35, 'Kab. Lumajang'),
(3509, 35, 'Kab. Jember'),
(3510, 35, 'Kab. Banyuwangi'),
(3511, 35, 'Kab. Bondowoso'),
(3512, 35, 'Kab. Situbondo'),
(3513, 35, 'Kab. Probolinggo'),
(3514, 35, 'Kab. Pasuruan'),
(3515, 35, 'Kab. Sidoarjo'),
(3516, 35, 'Kab. Mojokerto'),
(3517, 35, 'Kab. Jombang'),
(3518, 35, 'Kab. Nganjuk'),
(3519, 35, 'Kab. Madiun'),
(3520, 35, 'Kab. Magetan'),
(3521, 35, 'Kab. Ngawi'),
(3522, 35, 'Kab. Bojonegoro'),
(3523, 35, 'Kab. Tuban'),
(3524, 35, 'Kab. Lamongan'),
(3525, 35, 'Kab. Gresik'),
(3526, 35, 'Kab. Bangkalan'),
(3527, 35, 'Kab. Sampang'),
(3528, 35, 'Kab. Pamekasan'),
(3529, 35, 'Kab. Sumenep'),
(3571, 35, 'Kota Kediri'),
(3572, 35, 'Kota Blitar'),
(3573, 35, 'Kota Malang'),
(3574, 35, 'Kota Probolinggo'),
(3575, 35, 'Kota Pasuruan'),
(3576, 35, 'Kota Mojokerto'),
(3577, 35, 'Kota Madiun'),
(3578, 35, 'Kota Surabaya'),
(3579, 35, 'Kota Batu'),
(3601, 36, 'Kab. Pandeglang'),
(3602, 36, 'Kab. Lebak'),
(3603, 36, 'Kab. Tangerang'),
(3604, 36, 'Kab. Serang'),
(3671, 36, 'Kota Tangerang'),
(3672, 36, 'Kota Cilegon'),
(3673, 36, 'Kota Serang'),
(3674, 36, 'Kota Tangerang Selatan'),
(5101, 51, 'Kab. Jembrana'),
(5102, 51, 'Kab. Tabanan'),
(5103, 51, 'Kab. Badung'),
(5104, 51, 'Kab. Gianyar'),
(5105, 51, 'Kab. Klungkung'),
(5106, 51, 'Kab. Bangli'),
(5107, 51, 'Kab. Karang Asem'),
(5108, 51, 'Kab. Buleleng'),
(5171, 51, 'Kota Denpasar'),
(5201, 52, 'Kab. Lombok Barat'),
(5202, 52, 'Kab. Lombok Tengah'),
(5203, 52, 'Kab. Lombok Timur'),
(5204, 52, 'Kab. Sumbawa'),
(5205, 52, 'Kab. Dompu'),
(5206, 52, 'Kab. Bima'),
(5207, 52, 'Kab. Sumbawa Barat'),
(5208, 52, 'Kab. Lombok Utara'),
(5271, 52, 'Kota Mataram'),
(5272, 52, 'Kota Bima'),
(5301, 53, 'Kab. Sumba Barat'),
(5302, 53, 'Kab. Sumba Timur'),
(5303, 53, 'Kab. Kupang'),
(5304, 53, 'Kab. Timor Tengah Selatan'),
(5305, 53, 'Kab. Timor Tengah Utara'),
(5306, 53, 'Kab. Belu'),
(5307, 53, 'Kab. Alor'),
(5308, 53, 'Kab. Lembata'),
(5309, 53, 'Kab. Flores Timur'),
(5310, 53, 'Kab. Sikka'),
(5311, 53, 'Kab. Ende'),
(5312, 53, 'Kab. Ngada'),
(5313, 53, 'Kab. Manggarai'),
(5314, 53, 'Kab. Rote Ndao'),
(5315, 53, 'Kab. Manggarai Barat'),
(5316, 53, 'Kab. Sumba Tengah'),
(5317, 53, 'Kab. Sumba Barat Daya'),
(5318, 53, 'Kab. Nagekeo'),
(5319, 53, 'Kab. Manggarai Timur'),
(5320, 53, 'Kab. Sabu Raijua'),
(5371, 53, 'Kota Kupang'),
(6101, 61, 'Kab. Sambas'),
(6102, 61, 'Kab. Bengkayang'),
(6103, 61, 'Kab. Landak'),
(6104, 61, 'Kab. Pontianak'),
(6105, 61, 'Kab. Sanggau'),
(6106, 61, 'Kab. Ketapang'),
(6107, 61, 'Kab. Sintang'),
(6108, 61, 'Kab. Kapuas Hulu'),
(6109, 61, 'Kab. Sekadau'),
(6110, 61, 'Kab. Melawi'),
(6111, 61, 'Kab. Kayong Utara'),
(6112, 61, 'Kab. Kubu Raya'),
(6171, 61, 'Kota Pontianak'),
(6172, 61, 'Kota Singkawang'),
(6201, 62, 'Kab. Kotawaringin Barat'),
(6202, 62, 'Kab. Kotawaringin Timur'),
(6203, 62, 'Kab. Kapuas'),
(6204, 62, 'Kab. Barito Selatan'),
(6205, 62, 'Kab. Barito Utara'),
(6206, 62, 'Kab. Sukamara'),
(6207, 62, 'Kab. Lamandau'),
(6208, 62, 'Kab. Seruyan'),
(6209, 62, 'Kab. Katingan'),
(6210, 62, 'Kab. Pulang Pisau'),
(6211, 62, 'Kab. Gunung Mas'),
(6212, 62, 'Kab. Barito Timur'),
(6213, 62, 'Kab. Murung Raya'),
(6271, 62, 'Kota Palangka Raya'),
(6301, 63, 'Kab. Tanah Laut'),
(6302, 63, 'Kab. Kota Baru'),
(6303, 63, 'Kab. Banjar'),
(6304, 63, 'Kab. Barito Kuala'),
(6305, 63, 'Kab. Tapin'),
(6306, 63, 'Kab. Hulu Sungai Selatan'),
(6307, 63, 'Kab. Hulu Sungai Tengah'),
(6308, 63, 'Kab. Hulu Sungai Utara'),
(6309, 63, 'Kab. Tabalong'),
(6310, 63, 'Kab. Tanah Bumbu'),
(6311, 63, 'Kab. Balangan'),
(6371, 63, 'Kota Banjarmasin'),
(6372, 63, 'Kota Banjar Baru'),
(6401, 64, 'Kab. Paser'),
(6402, 64, 'Kab. Kutai Barat'),
(6403, 64, 'Kab. Kutai Kartanegara'),
(6404, 64, 'Kab. Kutai Timur'),
(6405, 64, 'Kab. Berau'),
(6409, 64, 'Kab. Penajam Paser Utara'),
(6471, 64, 'Kota Balikpapan'),
(6472, 64, 'Kota Samarinda'),
(6474, 64, 'Kota Bontang'),
(6501, 65, 'Kab. Malinau'),
(6502, 65, 'Kab. Bulungan'),
(6503, 65, 'Kab. Tana Tidung'),
(6504, 65, 'Kab. Nunukan'),
(6571, 65, 'Kota Tarakan'),
(7101, 71, 'Kab. Bolaang Mongondow'),
(7102, 71, 'Kab. Minahasa'),
(7103, 71, 'Kab. Kepulauan Sangihe'),
(7104, 71, 'Kab. Kepulauan Talaud'),
(7105, 71, 'Kab. Minahasa Selatan'),
(7106, 71, 'Kab. Minahasa Utara'),
(7107, 71, 'Kab. Bolaang Mongondow Utara'),
(7108, 71, 'Kab. Siau Tagulandang Biaro'),
(7109, 71, 'Kab. Minahasa Tenggara'),
(7110, 71, 'Kab. Bolaang Mongondow Selatan'),
(7111, 71, 'Kab. Bolaang Mongondow Timur'),
(7171, 71, 'Kota Manado'),
(7172, 71, 'Kota Bitung'),
(7173, 71, 'Kota Tomohon'),
(7174, 71, 'Kota Kotamobagu'),
(7201, 72, 'Kab. Banggai Kepulauan'),
(7202, 72, 'Kab. Banggai'),
(7203, 72, 'Kab. Morowali'),
(7204, 72, 'Kab. Poso'),
(7205, 72, 'Kab. Donggala'),
(7206, 72, 'Kab. Toli-toli'),
(7207, 72, 'Kab. Buol'),
(7208, 72, 'Kab. Parigi Moutong'),
(7209, 72, 'Kab. Tojo Una-una'),
(7210, 72, 'Kab. Sigi'),
(7271, 72, 'Kota Palu'),
(7301, 73, 'Kab. Kepulauan Selayar'),
(7302, 73, 'Kab. Bulukumba'),
(7303, 73, 'Kab. Bantaeng'),
(7304, 73, 'Kab. Jeneponto'),
(7305, 73, 'Kab. Takalar'),
(7306, 73, 'Kab. Gowa'),
(7307, 73, 'Kab. Sinjai'),
(7308, 73, 'Kab. Maros'),
(7309, 73, 'Kab. Pangkajene Dan Kepulauan'),
(7310, 73, 'Kab. Barru'),
(7311, 73, 'Kab. Bone'),
(7312, 73, 'Kab. Soppeng'),
(7313, 73, 'Kab. Wajo'),
(7314, 73, 'Kab. Sidenreng Rappang'),
(7315, 73, 'Kab. Pinrang'),
(7316, 73, 'Kab. Enrekang'),
(7317, 73, 'Kab. Luwu'),
(7318, 73, 'Kab. Tana Toraja'),
(7322, 73, 'Kab. Luwu Utara'),
(7325, 73, 'Kab. Luwu Timur'),
(7326, 73, 'Kab. Toraja Utara'),
(7371, 73, 'Kota Makassar'),
(7372, 73, 'Kota Parepare'),
(7373, 73, 'Kota Palopo'),
(7401, 74, 'Kab. Buton'),
(7402, 74, 'Kab. Muna'),
(7403, 74, 'Kab. Konawe'),
(7404, 74, 'Kab. Kolaka'),
(7405, 74, 'Kab. Konawe Selatan'),
(7406, 74, 'Kab. Bombana'),
(7407, 74, 'Kab. Wakatobi'),
(7408, 74, 'Kab. Kolaka Utara'),
(7409, 74, 'Kab. Buton Utara'),
(7410, 74, 'Kab. Konawe Utara'),
(7471, 74, 'Kota Kendari'),
(7472, 74, 'Kota Baubau'),
(7501, 75, 'Kab. Boalemo'),
(7502, 75, 'Kab. Gorontalo'),
(7503, 75, 'Kab. Pohuwato'),
(7504, 75, 'Kab. Bone Bolango'),
(7505, 75, 'Kab. Gorontalo Utara'),
(7571, 75, 'Kota Gorontalo'),
(7601, 76, 'Kab. Majene'),
(7602, 76, 'Kab. Polewali Mandar'),
(7603, 76, 'Kab. Mamasa'),
(7604, 76, 'Kab. Mamuju'),
(7605, 76, 'Kab. Mamuju Utara'),
(8101, 81, 'Kab. Maluku Tenggara Barat'),
(8102, 81, 'Kab. Maluku Tenggara'),
(8103, 81, 'Kab. Maluku Tengah'),
(8104, 81, 'Kab. Buru'),
(8105, 81, 'Kab. Kepulauan Aru'),
(8106, 81, 'Kab. Seram Bagian Barat'),
(8107, 81, 'Kab. Seram Bagian Timur'),
(8108, 81, 'Kab. Maluku Barat Daya'),
(8109, 81, 'Kab. Buru Selatan'),
(8171, 81, 'Kota Ambon'),
(8172, 81, 'Kota Tual'),
(8201, 82, 'Kab. Halmahera Barat'),
(8202, 82, 'Kab. Halmahera Tengah'),
(8203, 82, 'Kab. Kepulauan Sula'),
(8204, 82, 'Kab. Halmahera Selatan'),
(8205, 82, 'Kab. Halmahera Utara'),
(8206, 82, 'Kab. Halmahera Timur'),
(8207, 82, 'Kab. Pulau Morotai'),
(8271, 82, 'Kota Ternate'),
(8272, 82, 'Kota Tidore Kepulauan'),
(9101, 91, 'Kab. Fakfak'),
(9102, 91, 'Kab. Kaimana'),
(9103, 91, 'Kab. Teluk Wondama'),
(9104, 91, 'Kab. Teluk Bintuni'),
(9105, 91, 'Kab. Manokwari'),
(9106, 91, 'Kab. Sorong Selatan'),
(9107, 91, 'Kab. Sorong'),
(9108, 91, 'Kab. Raja Ampat'),
(9109, 91, 'Kab. Tambrauw'),
(9110, 91, 'Kab. Maybrat'),
(9171, 91, 'Kota Sorong'),
(9401, 94, 'Kab. Merauke'),
(9402, 94, 'Kab. Jayawijaya'),
(9403, 94, 'Kab. Jayapura'),
(9404, 94, 'Kab. Nabire'),
(9408, 94, 'Kab. Kepulauan Yapen'),
(9409, 94, 'Kab. Biak Numfor'),
(9410, 94, 'Kab. Paniai'),
(9411, 94, 'Kab. Puncak Jaya'),
(9412, 94, 'Kab. Mimika'),
(9413, 94, 'Kab. Boven Digoel'),
(9414, 94, 'Kab. Mappi'),
(9415, 94, 'Kab. Asmat'),
(9416, 94, 'Kab. Yahukimo'),
(9417, 94, 'Kab. Pegunungan Bintang'),
(9418, 94, 'Kab. Tolikara'),
(9419, 94, 'Kab. Sarmi'),
(9420, 94, 'Kab. Keerom'),
(9426, 94, 'Kab. Waropen'),
(9427, 94, 'Kab. Supiori'),
(9428, 94, 'Kab. Mamberamo Raya'),
(9429, 94, 'Kab. Nduga'),
(9430, 94, 'Kab. Lanny Jaya'),
(9431, 94, 'Kab. Mamberamo Tengah'),
(9432, 94, 'Kab. Yalimo'),
(9433, 94, 'Kab. Puncak'),
(9434, 94, 'Kab. Dogiyai'),
(9435, 94, 'Kab. Intan Jaya'),
(9436, 94, 'Kab. Deiyai'),
(9471, 94, 'Kota Jayapura');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kantor`
--

CREATE TABLE `kantor` (
  `id_kantor` int(11) NOT NULL,
  `nama_kantor` varchar(250) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `id_kabupaten` bigint(20) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `id_negara` int(11) NOT NULL,
  `longitude` varchar(150) DEFAULT NULL,
  `latitude` varchar(150) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kantor`
--

INSERT INTO `kantor` (`id_kantor`, `nama_kantor`, `alamat`, `id_kabupaten`, `id_provinsi`, `id_negara`, `longitude`, `latitude`, `keterangan`) VALUES
(1, 'Jakarta HQ', 'Jl. Sudirman', 1, 1, 1, '', '', ''),
(2, 'Cabang Jayapura - Papua', 'Jl. Merdeka 26 Papua Barat', 100, 10, 1, '', '', ''),
(3, 'CABANG MANOKWARI (PAPUA BARAT)', 'JL. MERDEKA NO.77 MANOKWARI', 77, 34, 8, '', '', 'KANTOR DI PAPUA BARAT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kantor_cabang`
--

CREATE TABLE `kantor_cabang` (
  `id_kantor_cabang` int(11) NOT NULL,
  `nama_kantor` varchar(250) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `id_kabupaten` bigint(20) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `id_negara` int(11) NOT NULL,
  `longitude` varchar(150) DEFAULT NULL,
  `latitude` varchar(150) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kantor_cabang`
--

INSERT INTO `kantor_cabang` (`id_kantor_cabang`, `nama_kantor`, `alamat`, `id_kabupaten`, `id_provinsi`, `id_negara`, `longitude`, `latitude`, `keterangan`) VALUES
(1, 'Jakarta HQ', 'Jl. Sudirman', 1, 1, 1, NULL, NULL, NULL),
(2, 'Cabang Jayapura - Papua', 'Jl. Merdeka 26 Papua Barat', 100, 10, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `language`
--

CREATE TABLE `language` (
  `id_language` int(11) NOT NULL,
  `language` varchar(150) NOT NULL,
  `short` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `language`
--

INSERT INTO `language` (`id_language`, `language`, `short`) VALUES
(1, 'English', 'EN'),
(2, 'Indonesia', 'ID');

-- --------------------------------------------------------

--
-- Struktur dari tabel `material`
--

CREATE TABLE `material` (
  `id_material` bigint(20) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `nama` varchar(250) NOT NULL,
  `deskripsi` varchar(500) DEFAULT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `material`
--

INSERT INTO `material` (`id_material`, `kode`, `nama`, `deskripsi`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(1, 'STB', 'SATIN DOBBY wsas', 'Bahan kain nyaman untuk di pakai', 0, '0000-00-00 00:00:00', ''),
(2, 'STN', 'SATIN', 'Bahannya ringan dan hangat', 0, '0000-00-00 00:00:00', ''),
(13, 'LNN', 'LINEN', 'Kainnya ini tekstur yang lebih halus dari katun', NULL, NULL, NULL),
(14, 'DNM', 'DENIM', 'Kainnya tebal mudah di cuci dan tidak mudah bau', NULL, NULL, NULL),
(15, 'DRL', 'DRILL', 'Kainnya lebih tebal dari linen sehingga cocok digunakan sebagai bahan bawahan', NULL, NULL, NULL),
(16, 'BCS', 'BABY CANVAS', 'Kain halus & lembut', NULL, NULL, NULL),
(17, 'LRA', 'LYCRA', 'Kain memiliki elastisitas yang tinggi ', NULL, NULL, NULL),
(18, 'ORZ', 'ORGANZA', 'Kain transparan serta siluet kain organza cocok untuk pakaian yang mewah ', NULL, NULL, NULL),
(19, 'PLS', 'POLYESTER', 'Kain tidak mudah kusut', NULL, NULL, NULL),
(20, 'TCE', 'TWISTCONE', 'Bahan kainnya tidak tembus pandang', NULL, NULL, NULL),
(21, 'DCN', 'DOUBLE CHIFFON', '', NULL, NULL, NULL),
(23, 'SGQ', 'As', 'asa', NULL, NULL, NULL),
(24, 'asasa', 'asasa', '', NULL, NULL, NULL),
(25, 'BAS', 'Bambang', 'asdasdas', NULL, NULL, NULL),
(26, 'BAGS', '1231', '2312', NULL, NULL, NULL),
(27, 'I lop yo', 'asd', 'asdas', NULL, NULL, NULL),
(28, 'BIASASU', 'baias asa', 'asda', NULL, NULL, NULL),
(29, 'BAS13231', 'Bambang', 'asa', NULL, NULL, NULL),
(30, 'BAG', 'Bagas1231', 'Bagasuakas', NULL, NULL, NULL),
(31, 'BBC', 'Barbeque', '', NULL, NULL, NULL),
(32, 'BABYBORN', 'Babyborn', 'Babyborn', NULL, NULL, NULL),
(33, 'BAPAKKu', 'Keren', '', NULL, NULL, NULL),
(34, 'GADANG', 'Gadang', 'Test Gadang', NULL, NULL, NULL),
(35, 'STBasdas', 'asdasdas', '', NULL, NULL, NULL),
(36, 'BAS2312', 'Sabana', '', NULL, NULL, NULL),
(37, 'BAS31231', 'Gasibu', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_finish`
--

CREATE TABLE `material_finish` (
  `id_material_finish` bigint(20) NOT NULL,
  `id_material` bigint(20) NOT NULL,
  `id_material_kategori1` bigint(20) NOT NULL,
  `id_material_kategori2` bigint(20) NOT NULL,
  `id_material_kategori3` bigint(20) NOT NULL,
  `yard` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `year` int(4) NOT NULL,
  `no_urut` int(11) DEFAULT NULL,
  `no_urut_kode` varchar(20) DEFAULT NULL,
  `no_splitting` int(11) DEFAULT NULL,
  `barcode_kode` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(500) DEFAULT NULL,
  `is_packing` int(1) DEFAULT NULL,
  `id_basic_packing` int(11) DEFAULT NULL,
  `id_material_in_item_proc` bigint(20) DEFAULT NULL,
  `id_material_in` bigint(20) DEFAULT NULL,
  `is_join_packing` int(1) DEFAULT 0,
  `join_info` varchar(250) DEFAULT NULL,
  `id_gudang` int(11) DEFAULT NULL,
  `id_gudang_area` bigint(20) NOT NULL DEFAULT 0,
  `id_pallet_gudang` bigint(20) DEFAULT NULL,
  `harga_beli_peryard` bigint(20) DEFAULT 0,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_user_id` bigint(20) DEFAULT NULL,
  `deleted_ip_address` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `material_finish`
--

INSERT INTO `material_finish` (`id_material_finish`, `id_material`, `id_material_kategori1`, `id_material_kategori2`, `id_material_kategori3`, `yard`, `kode`, `year`, `no_urut`, `no_urut_kode`, `no_splitting`, `barcode_kode`, `deskripsi`, `is_packing`, `id_basic_packing`, `id_material_in_item_proc`, `id_material_in`, `is_join_packing`, `join_info`, `id_gudang`, `id_gudang_area`, `id_pallet_gudang`, `harga_beli_peryard`, `created_id_user`, `created_date`, `created_ip_address`, `deleted_date`, `deleted_user_id`, `deleted_ip_address`) VALUES
(37, 16, 2, 2, 2, 37, 'BCS-BLU-MT-BMA-21-0027', 2021, 27, '0027', 2, '', NULL, 1, 1, 141, 57, 0, NULL, 2, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0028', 2021, 28, '0028', 1, '', NULL, 1, 1, 140, 58, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 16, 2, 2, 2, 70, 'BCS-BLU-MT-BMA-21-0029', 2021, 29, '0029', 2, '2010000000397', NULL, 1, 1, 140, 58, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 14, 2, 2, 3, 60, 'BC-qwqeq', 2020, 1, '', 0, '', '', 1, 2, 0, 0, 0, NULL, 4, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 14, 2, 2, 3, 56, 'DNM-BLU-MT-BMS-12-0002', 2012, 2, '0002', 0, '', '', 1, 1, 0, 0, 0, NULL, 4, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 16, 2, 2, 3, 60, 'BCS-BLU-MT-BMS-21-0001', 2021, 1, '0001', 0, '', '', 1, 2, 0, 0, 0, NULL, 2, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 16, 2, 2, 3, 20, 'BCS-BLU-MT-BMS-12-0001', 2012, 1, '0001', 0, '', 'Barang bagus ini', 1, 2, 0, 0, 0, NULL, 2, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 16, 2, 2, 3, 12, 'BCS-BLU-MT-BMS-12-0002', 2012, 2, '0002', 0, '', '', 1, 2, 0, 0, 1, '40+20', 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 15, 2, 2, 2, 60, 'DRL-BLU-MT-BMA-20-0001', 2020, 1, '0001', 0, '', '', 1, 2, 0, 0, 0, '', 4, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 16, 2, 1, 2, 60, NULL, 12, 0, '', 0, '', '', 1, 2, 0, 0, 1, '40+20', 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 16, 2, 1, 2, 60, 'BCS-BLU-PL-BMA--0001', 12, 1, '0001', 0, '2010000000489', '', 1, 2, 0, 0, 1, '40+20', 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 14, 2, 2, 3, 17, 'DNM-BLU-MT-BMS-21-0001', 2021, 1, '0001', 0, '2010000000496', 'diubah bos', 1, 2, 0, 0, 1, '56+40', 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 16, 2, 2, 3, 50, 'BCS-BLU-MT-BMS-21-0002', 2021, 2, '0002', 1, '2010000000502', NULL, 1, 1, 143, 59, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 16, 2, 2, 3, 50, 'BCS-BLU-MT-BMS-21-0003', 2021, 3, '0003', 2, '2010000000519', NULL, 1, 1, 143, 59, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 1, 0, 0, 0, 50, NULL, 2021, 0, '', 1, '', NULL, 1, 1, 1, 1, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 1, 0, 0, 0, 100, NULL, 2021, 0, '', 1, '', NULL, 1, 2, 144, 1, 0, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 16, 2, 2, 3, 50, 'BCS-BLU-MT-BMS-21-0009', 2021, 9, '0009', 2, '2010000000618', NULL, 1, 1, 171, 60, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 17, 2, 1, 2, 123, 'LRA-BLU-PL-BMA-02-0001', 2002, 1, '0001', 0, '2010000000632', 'asdas', 1, 2, 0, 0, 0, '', 2, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 19, 2, 2, 3, 2121, 'PLS-BLU-MT-BMS-21-0001', 2021, 1, '0001', 0, '2010000000649', 'as', 1, 2, 0, 0, 0, '', 4, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 14, 1, 2, 3, 2010, 'DNM-RDS-MT-BMS-21-0001', 2021, 1, '0001', 0, '2010000000694', '', 1, 2, 0, 0, 0, '', 2, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 14, 1, 2, 2, 202, 'DNM-RDS-MT-BMA-21-0001', 2021, 1, '0001', 0, '2010000000700', '', 1, 2, 0, 0, 0, '', 3, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 23, 2, 2, 3, 123, 'SGQ-BLU-MT-BMS-21-0001', 2021, 1, '0001', 1, '2010000000717', NULL, 1, 1, 172, 62, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 16, 2, 2, 3, 100, 'BCS-BLU-MT-BMS-2-0001', 212, 1, '0001', 0, '2010000000724', '', 1, 2, 0, 0, 1, '12+34', 2, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 16, 2, 2, 3, 123, 'BCS-BLU-MT-BMS-2-0002', 212, 2, '0002', 0, '2010000000731', '12312', 1, 2, 0, 0, 0, '', 3, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 23, 2, 2, 3, 10, 'SGQ-BLU-MT-BMS-21-0002', 2021, 2, '0002', 1, '2010000000748', NULL, 1, 1, 173, 62, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 23, 2, 2, 3, 10, 'SGQ-BLU-MT-BMS-21-0003', 2021, 3, '0003', 2, '2010000000755', NULL, 1, 1, 173, 62, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 23, 2, 2, 3, 10, 'SGQ-BLU-MT-BMS-21-0004', 2021, 4, '0004', 3, '2010000000762', NULL, 1, 1, 173, 62, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 16, 2, 2, 3, 200, 'BCS-BLU-MT-BMS-01-0001', 2001, 1, '0001', 0, '2010000000779', '', 1, 3, 0, 0, 0, '', 5, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 16, 1, 2, 3, 21, 'BCS-RDS-MT-BMS--0001', 2, 1, '0001', 0, '2010000000786', '2', 1, 3, 0, 0, 1, '12', 2, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 16, 2, 2, 3, 200, 'BCS-BLU-MT-BMS-01-0002', 2001, 2, '0002', 0, '2010000000793', 'asdas', 1, 3, 0, 0, 1, '12', 5, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 16, 2, 2, 3, 100, 'BCS-BLU-MT-BMS-22-0001', 2022, 1, '0001', 1, '2010000000809', NULL, 1, 1, 177, 64, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 16, 2, 2, 3, 100, 'BCS-BLU-MT-BMS-22-0002', 2022, 2, '0002', 2, '2010000000816', NULL, 1, 1, 177, 64, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 16, 2, 2, 3, 199, 'BCS-BLU-MT-BMS-22-0003', 2022, 3, '0003', 1, '2010000000823', NULL, 1, 2, 178, 64, 1, '99 + 100', 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 16, 2, 2, 3, 100, 'BCS-BLU-MT-BMS-22-0004', 2022, 4, '0004', 1, '2010000000830', NULL, 1, 1, 179, 64, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 16, 2, 2, 3, 100, 'BCS-BLU-MT-BMS-22-0005', 2022, 5, '0005', 2, '2010000000847', NULL, 1, 1, 179, 64, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 16, 2, 2, 3, 50, 'BCS-BLU-MT-BMS-22-0006', 2022, 6, '0006', 1, '2010000000854', NULL, 1, 1, 180, 64, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 16, 2, 2, 3, 30, 'BCS-BLU-MT-BMS-22-0007', 2022, 7, '0007', 2, '2010000000861', NULL, 1, 1, 180, 64, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 16, 2, 2, 3, 20, 'BCS-BLU-MT-BMS-22-0008', 2022, 8, '0008', 3, '2010000000878', NULL, 1, 1, 180, 64, 0, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 23, 2, 2, 3, 60, 'SGQ-BLU-MT-BMS--0001', 12, 1, '0001', NULL, '2010000000885', 'Barang bagus ini', 1, 2, 0, 0, 1, '40+20', 5, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 27, 2, 2, 3, 123, NULL, 231, 0, NULL, NULL, NULL, '123', 1, 2, 0, 0, 1, '23', 2, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 27, 2, 2, 3, 123, 'I lop yo-BLU-MT-BMS-1-0001', 231, 1, '0001', NULL, '2010000000908', '123', 1, 2, 0, 0, 1, '23', 2, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_finish_delete`
--

CREATE TABLE `material_finish_delete` (
  `id_material_finish_delete` bigint(20) NOT NULL,
  `id_material_finish` bigint(20) NOT NULL,
  `id_material` bigint(20) NOT NULL,
  `id_material_kategori1` bigint(20) NOT NULL,
  `id_material_kategori2` bigint(20) NOT NULL,
  `id_material_kategori3` bigint(20) NOT NULL,
  `yard` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `year` int(4) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `no_urut_kode` varchar(20) NOT NULL,
  `no_splitting` int(11) NOT NULL,
  `barcode_kode` varchar(50) NOT NULL,
  `deskripsi` varchar(500) DEFAULT NULL,
  `is_packing` int(1) NOT NULL,
  `id_basic_packing` int(11) NOT NULL,
  `id_material_in_item_proc` bigint(20) NOT NULL,
  `id_material_in` bigint(20) NOT NULL,
  `is_join_packing` int(1) NOT NULL DEFAULT 0,
  `join_info` varchar(250) DEFAULT NULL,
  `id_gudang` int(11) NOT NULL,
  `alasan_hapus` varchar(250) NOT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_user_id` bigint(20) DEFAULT NULL,
  `deleted_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_finish_drop`
--

CREATE TABLE `material_finish_drop` (
  `id_material_finish` bigint(20) NOT NULL,
  `id_material` bigint(20) NOT NULL,
  `id_material_kategori1` bigint(20) NOT NULL,
  `id_material_kategori2` bigint(20) NOT NULL,
  `id_material_kategori3` bigint(20) NOT NULL,
  `yard` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `year` int(4) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `no_urut_kode` varchar(20) NOT NULL,
  `no_splitting` int(11) NOT NULL,
  `barcode_kode` varchar(50) NOT NULL,
  `deskripsi` varchar(500) DEFAULT NULL,
  `is_packing` int(1) NOT NULL,
  `id_basic_packing` int(11) NOT NULL,
  `id_material_in_item_proc` bigint(20) NOT NULL,
  `id_material_in` bigint(20) NOT NULL,
  `is_join_packing` int(1) NOT NULL DEFAULT 0,
  `join_info` varchar(250) DEFAULT NULL,
  `id_gudang` int(11) NOT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `material_finish_drop`
--

INSERT INTO `material_finish_drop` (`id_material_finish`, `id_material`, `id_material_kategori1`, `id_material_kategori2`, `id_material_kategori3`, `yard`, `kode`, `year`, `no_urut`, `no_urut_kode`, `no_splitting`, `barcode_kode`, `deskripsi`, `is_packing`, `id_basic_packing`, `id_material_in_item_proc`, `id_material_in`, `is_join_packing`, `join_info`, `id_gudang`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(1, 16, 2, 2, 2, 100, 'BCS-BLU-MT-BMA-21-0001', 2021, 1, '0001', 1, '', NULL, 1, 1, 117, 57, 0, NULL, 2, NULL, NULL, NULL),
(2, 16, 2, 2, 2, 100, 'BCS-BLU-MT-BMA-21-0002', 2021, 2, '0002', 1, '', NULL, 1, 1, 118, 57, 0, NULL, 3, NULL, NULL, NULL),
(3, 16, 2, 2, 2, 98, 'BCS-BLU-MT-BMA-21-0003', 2021, 3, '0003', 2, '', NULL, 1, 1, 118, 57, 0, NULL, 1, NULL, NULL, NULL),
(4, 16, 2, 2, 2, 90, 'BCS-BLU-MT-BMA-21-0004', 2021, 4, '0004', 1, '', NULL, 1, 1, 121, 57, 0, NULL, 4, NULL, NULL, NULL),
(5, 16, 2, 2, 2, 90, 'BCS-BLU-MT-BMA-21-0005', 2021, 5, '0005', 1, '', NULL, 1, 1, 122, 57, 0, NULL, 2, NULL, NULL, NULL),
(6, 16, 2, 2, 2, 90, 'BCS-BLU-MT-BMA-21-0006', 2021, 6, '0006', 2, '', NULL, 1, 1, 122, 57, 0, NULL, 1, NULL, NULL, NULL),
(7, 16, 2, 2, 2, 29, 'BCS-BLU-MT-BMA-21-0007', 2021, 7, '0007', 2, '', NULL, 1, 2, 121, 57, 1, '9 + 20', 1, NULL, NULL, NULL),
(8, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0008', 2021, 8, '0008', 1, '', NULL, 1, 1, 123, 57, 0, NULL, 1, NULL, NULL, NULL),
(9, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0009', 2021, 9, '0009', 2, '', NULL, 1, 1, 123, 57, 0, NULL, 2, NULL, NULL, NULL),
(10, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0010', 2021, 10, '0010', 3, '', NULL, 1, 1, 123, 57, 0, NULL, 1, NULL, NULL, NULL),
(11, 16, 2, 2, 2, 20, 'BCS-BLU-MT-BMA-21-0011', 2021, 11, '0011', 4, '', NULL, 1, 1, 123, 57, 0, NULL, 1, NULL, NULL, NULL),
(12, 16, 2, 2, 2, 150, 'BCS-BLU-MT-BMA-21-0012', 2021, 12, '0012', 1, '', NULL, 1, 1, 130, 57, 0, NULL, 4, NULL, NULL, NULL),
(13, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0013', 2021, 13, '0013', 2, '', NULL, 1, 1, 130, 57, 0, NULL, 2, NULL, NULL, NULL),
(14, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0014', 2021, 14, '0014', 3, '', NULL, 1, 1, 130, 57, 0, NULL, 1, NULL, NULL, NULL),
(15, 16, 2, 2, 2, 40, 'BCS-BLU-MT-BMA-21-0015', 2021, 15, '0015', 4, '', NULL, 1, 2, 130, 57, 1, '20 + 20', 1, NULL, NULL, NULL),
(16, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0016', 2021, 16, '0016', 1, '', NULL, 1, 1, 131, 57, 0, NULL, 1, NULL, NULL, NULL),
(17, 16, 2, 2, 2, 40, 'BCS-BLU-MT-BMA-21-0017', 2021, 17, '0017', 2, '', NULL, 1, 1, 131, 57, 0, NULL, 1, NULL, NULL, NULL),
(18, 16, 2, 2, 2, 20, 'BCS-BLU-MT-BMA-21-0018', 2021, 18, '0018', 3, '', NULL, 1, 1, 131, 57, 0, NULL, 2, NULL, NULL, NULL),
(19, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0019', 2021, 19, '0019', 2, '', NULL, 1, 1, 132, 57, 1, '60 + 20', 1, NULL, NULL, NULL),
(20, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0020', 2021, 20, '0020', 1, '', NULL, 1, 1, 132, 57, 0, NULL, 1, NULL, NULL, NULL),
(21, 16, 2, 2, 2, 20, 'BCS-BLU-MT-BMA-21-0021', 2021, 21, '0021', 3, '', NULL, 1, 1, 132, 57, 0, NULL, 1, NULL, NULL, NULL),
(22, 16, 2, 2, 1, 60, 'BCS-BLU-MT-WPP-21-0001', 2021, 1, '0001', 1, '', NULL, 1, 1, 114, 56, 0, NULL, 1, NULL, NULL, NULL),
(23, 16, 2, 2, 1, 60, 'BCS-BLU-MT-WPP-21-0002', 2021, 2, '0002', 2, '', NULL, 1, 1, 114, 56, 0, NULL, 1, NULL, NULL, NULL),
(24, 16, 2, 2, 1, 80, 'BCS-BLU-MT-WPP-21-0003', 2021, 3, '0003', 1, '', NULL, 1, 1, 133, 56, 0, NULL, 1, NULL, NULL, NULL),
(25, 16, 2, 2, 1, 140, 'BCS-BLU-MT-WPP-21-0004', 2021, 4, '0004', 2, '', NULL, 1, 2, 133, 56, 1, '80 + 60', 1, NULL, NULL, NULL),
(26, 16, 2, 2, 1, 90, 'BCS-BLU-MT-WPP-21-0005', 2021, 5, '0005', 1, '', NULL, 1, 1, 135, 56, 0, NULL, 1, NULL, NULL, NULL),
(27, 16, 2, 2, 1, 50, 'BCS-BLU-MT-WPP-21-0006', 2021, 6, '0006', 2, '', NULL, 1, 1, 135, 56, 0, NULL, 1, NULL, NULL, NULL),
(28, 16, 2, 2, 1, 60, 'BCS-BLU-MT-WPP-21-0007', 2021, 7, '0007', 1, '', NULL, 1, 1, 134, 56, 0, NULL, 1, NULL, NULL, NULL),
(29, 16, 2, 2, 1, 60, 'BCS-BLU-MT-WPP-21-0008', 2021, 8, '0008', 3, '', NULL, 1, 1, 134, 56, 0, NULL, 1, NULL, NULL, NULL),
(30, 16, 2, 2, 1, 80, 'BCS-BLU-MT-WPP-21-0009', 2021, 9, '0009', 1, '', NULL, 1, 1, 136, 56, 0, NULL, 1, NULL, NULL, NULL),
(31, 16, 2, 2, 1, 70, 'BCS-BLU-MT-WPP-21-0010', 2021, 10, '0010', 2, '', NULL, 1, 1, 136, 56, 0, NULL, 1, NULL, NULL, NULL),
(32, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0022', 2021, 22, '0022', 1, '', NULL, 1, 1, 138, 58, 0, NULL, 1, NULL, NULL, NULL),
(33, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0023', 2021, 23, '0023', 2, '', NULL, 1, 1, 138, 58, 0, NULL, 1, NULL, NULL, NULL),
(34, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0024', 2021, 24, '0024', 3, '', NULL, 1, 1, 138, 58, 0, NULL, 1, NULL, NULL, NULL),
(35, 16, 2, 2, 2, 125, 'BCS-BLU-MT-BMA-21-0025', 2021, 25, '0025', 4, '', NULL, 1, 1, 138, 58, 1, '20 + 80 + 25', 1, NULL, NULL, NULL),
(36, 16, 2, 2, 2, 90, 'BCS-BLU-MT-BMA-21-0026', 2021, 26, '0026', 1, '', NULL, 1, 1, 141, 57, 0, NULL, 1, NULL, NULL, NULL),
(54, 16, 2, 2, 3, 110, 'BCS-BLU-MT-BMS-21-0004', 2021, 4, '0004', 1, '2005400000009', NULL, 1, 2, 164, 60, 1, '50 + 60', 0, NULL, NULL, NULL),
(55, 16, 2, 2, 3, 90, 'BCS-BLU-MT-BMS-21-0005', 2021, 5, '0005', 2, '2005500000008', NULL, 1, 2, 164, 60, 1, '50 + 40', 1, NULL, NULL, NULL),
(56, 16, 2, 2, 3, 80, 'BCS-BLU-MT-BMS-21-0006', 2021, 6, '0006', 1, '2005600000007', NULL, 1, 1, 167, 60, 0, NULL, 1, NULL, NULL, NULL),
(57, 16, 2, 2, 3, 20, 'BCS-BLU-MT-BMS-21-0007', 2021, 7, '0007', 2, '2005700000006', NULL, 1, 1, 167, 60, 0, NULL, 1, NULL, NULL, NULL),
(60, 16, 2, 2, 3, 40, 'BCS-BLU-MT-BMS-21-0008', 2021, 8, '0008', 1, '2006000000000', NULL, 1, 1, 171, 60, 0, NULL, 1, NULL, NULL, NULL),
(62, 14, 2, 2, 3, 120, 'DNM-BLU-MT-BMS-21-0002', 2021, 2, '0002', 0, '2006200000008', 'ss', 1, 2, 0, 0, 0, '', 3, NULL, NULL, NULL),
(63, 17, 2, 1, 2, 123, 'LRA-BLU-PL-BMA-02-0001', 2002, 1, '0001', 0, '2006300000007', 'asdas', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL),
(64, 19, 2, 2, 3, 2121, 'PLS-BLU-MT-BMS-21-0001', 2021, 1, '0001', 0, '2006400000006', 'as', 1, 2, 0, 0, 0, '', 4, NULL, NULL, NULL),
(65, 14, 1, 1, 3, 20, 'DNM-RDS-PL-BMS-21-0001', 2021, 1, '0001', 0, '2006500000005', '', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL),
(66, 14, 2, 2, 3, 1200, 'DNM-BLU-MT-BMS-21-0002', 2021, 2, '0002', 0, '2006600000004', '', 1, 2, 0, 0, 1, '90+12', 2, NULL, NULL, NULL),
(67, 19, 2, 2, 3, 2010, 'PLS-BLU-MT-BMS-21-0002', 2021, 2, '0002', 0, '2006700000003', '', 1, 2, 0, 0, 0, '', 1, NULL, NULL, NULL),
(68, 16, 2, 2, 3, 2121, 'BCS-BLU-MT-BMS-21-0010', 2021, 10, '0010', 0, '2006800000002', '', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL),
(69, 14, 1, 2, 3, 2010, 'DNM-RDS-MT-BMS-21-0001', 2021, 1, '0001', 0, '2006900000001', '', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL),
(70, 14, 1, 2, 2, 202, 'DNM-RDS-MT-BMA-21-0001', 2021, 1, '0001', 0, '2007000000007', '', 1, 2, 0, 0, 0, '', 3, NULL, NULL, NULL),
(77, 16, 2, 2, 3, 201, 'BCS-BLU-MT-BMS-1-0001', 201, 1, '0001', 0, '2010000000779', '', 1, 2, 0, 0, 0, '', 1, NULL, NULL, NULL),
(78, 23, 2, 2, 3, 10, 'SGQ-BLU-MT-BMS-21-0006', 2021, 6, '0006', 5, '2007800000009', NULL, 1, 1, 173, 62, 0, NULL, 1, NULL, NULL, NULL),
(79, 23, 2, 2, 3, 10, 'SGQ-BLU-MT-BMS-21-0007', 2021, 7, '0007', 6, '2007900000008', NULL, 1, 1, 173, 62, 0, NULL, 1, NULL, NULL, NULL),
(80, 23, 2, 2, 3, 70, 'SGQ-BLU-MT-BMS-21-0008', 2021, 8, '0008', 1, '2008000000004', NULL, 1, 2, 174, 62, 1, '20 + 50', 1, NULL, NULL, NULL),
(81, 16, 1, 2, 3, 60, 'BCS-RDS-MT-BMS-21-0001', 2021, 1, '0001', 0, '2008100000003', '', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL),
(82, 16, 1, 2, 3, 60, 'BCS-RDS-MT-BMS-21-0002', 2021, 2, '0002', 0, '2008200000002', '', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL),
(83, 15, 2, 2, 3, 201, 'DRL-BLU-MT-BMS-21-0001', 2021, 1, '0001', 0, '2010000000830', '', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL),
(84, 21, 2, 2, 3, 1200, 'DCN-BLU-MT-BMS-21-0001', 2021, 1, '0001', 0, '2010000000847', '', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_in`
--

CREATE TABLE `material_in` (
  `id_material_in` bigint(20) NOT NULL,
  `id_unit_poduksi` int(11) NOT NULL,
  `id_material` bigint(20) NOT NULL,
  `id_material_kategori1` int(11) NOT NULL,
  `id_material_kategori2` int(11) NOT NULL,
  `id_material_kategori3` int(11) NOT NULL,
  `varian` varchar(250) DEFAULT NULL,
  `id_supplier_delivery_order` bigint(20) DEFAULT NULL,
  `id_supplier` bigint(20) NOT NULL,
  `nomor_surat_jalan` varchar(200) DEFAULT NULL,
  `tanggal_surat_jalan` date DEFAULT NULL,
  `tanggal_proses` date NOT NULL,
  `total_yard_awal` int(11) DEFAULT 0,
  `total_yard_hasil` int(11) DEFAULT 0,
  `total_buang` int(11) DEFAULT 0,
  `harga_beli_peryard` bigint(20) DEFAULT 0,
  `catatan` varchar(250) DEFAULT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `material_in`
--

INSERT INTO `material_in` (`id_material_in`, `id_unit_poduksi`, `id_material`, `id_material_kategori1`, `id_material_kategori2`, `id_material_kategori3`, `varian`, `id_supplier_delivery_order`, `id_supplier`, `nomor_surat_jalan`, `tanggal_surat_jalan`, `tanggal_proses`, `total_yard_awal`, `total_yard_hasil`, `total_buang`, `harga_beli_peryard`, `catatan`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(1, 10, 1, 0, 0, 0, 'Merah dot', NULL, 0, NULL, NULL, '2021-07-22', 1750, 1660, 0, 0, '', NULL, NULL, NULL),
(2, 10, 2, 0, 0, 0, 'Merah maroon', NULL, 0, NULL, NULL, '2021-07-23', 110, 110, 0, 0, '', NULL, NULL, NULL),
(3, 10, 13, 0, 0, 0, 'Cokelat tua', NULL, 0, NULL, NULL, '2021-07-24', 110, 110, 0, 0, '', NULL, NULL, NULL),
(4, 10, 14, 0, 0, 0, 'Biru dongker', NULL, 0, NULL, NULL, '2021-07-25', 100, 100, 0, 0, '', NULL, NULL, NULL),
(5, 10, 15, 0, 0, 0, 'Hitam', NULL, 0, NULL, NULL, '2021-07-26', 100, 100, 0, 0, '', NULL, NULL, NULL),
(6, 10, 16, 0, 0, 0, 'Cokelat muda', NULL, 0, NULL, NULL, '2021-07-27', 100, 100, 0, 0, '', NULL, NULL, NULL),
(8, 10, 17, 0, 0, 0, 'Hijau', NULL, 0, NULL, NULL, '2021-07-28', 100, 100, 0, 0, '', NULL, NULL, NULL),
(9, 10, 18, 0, 0, 0, 'Putih', NULL, 0, NULL, NULL, '2021-07-29', 50, 49, 1, 0, '', NULL, NULL, NULL),
(11, 10, 19, 0, 0, 0, 'Orange', NULL, 0, NULL, NULL, '2021-07-30', 50, 50, 0, 0, '', NULL, NULL, NULL),
(12, 10, 20, 0, 0, 0, 'Silver', NULL, 0, NULL, NULL, '2021-07-31', 150, 148, 2, 0, '', NULL, NULL, NULL),
(14, 10, 14, 0, 0, 0, 'Biru dongker', NULL, 0, NULL, NULL, '2021-06-24', 410, 409, 1, 0, '', NULL, NULL, NULL),
(16, 10, 20, 0, 0, 0, 'Silver', NULL, 0, NULL, NULL, '2021-05-26', 305, 304, 1, 0, '', NULL, NULL, NULL),
(21, 10, 2, 0, 0, 0, 'Merah maroon', NULL, 0, NULL, NULL, '2021-05-31', 100, 100, 0, 0, '', NULL, NULL, NULL),
(22, 10, 14, 0, 0, 0, 'Biru dongker', NULL, 0, NULL, NULL, '2021-04-25', 150, 150, 0, 0, '', NULL, NULL, NULL),
(23, 10, 15, 0, 0, 0, 'Hitam', NULL, 0, NULL, NULL, '2021-04-26', 150, 149, 1, 0, '', NULL, NULL, NULL),
(25, 10, 20, 0, 0, 0, 'Silver', NULL, 0, NULL, NULL, '2021-06-25', 100, 100, 0, 0, '', NULL, NULL, NULL),
(26, 10, 19, 0, 0, 0, 'Orange', NULL, 0, NULL, NULL, '2020-11-25', 100, 100, 0, 0, '', NULL, NULL, NULL),
(27, 10, 18, 0, 0, 0, 'Putih', NULL, 0, NULL, NULL, '2020-11-26', 130, 130, 0, 0, '', NULL, NULL, NULL),
(28, 10, 13, 0, 0, 0, 'Cokelat tua', NULL, 0, NULL, NULL, '2020-11-27', 170, 170, 0, 0, '', NULL, NULL, NULL),
(29, 10, 15, 0, 0, 0, 'Hitam', NULL, 0, NULL, NULL, '2020-11-28', 55, 55, 0, 0, '', NULL, NULL, NULL),
(30, 10, 17, 0, 0, 0, 'Hijau', NULL, 0, NULL, NULL, '2020-11-29', 55, 54, 1, 0, '', NULL, NULL, NULL),
(31, 10, 1, 0, 0, 0, 'Merah dot', NULL, 0, NULL, NULL, '2020-12-05', 100, 100, 0, 0, '', NULL, NULL, NULL),
(32, 10, 18, 0, 0, 0, 'Putih', NULL, 0, NULL, NULL, '2020-12-06', 65, 65, 0, 0, '', NULL, NULL, NULL),
(33, 10, 13, 0, 0, 0, 'Cokelat tua', NULL, 0, NULL, NULL, '2020-12-07', 55, 55, 0, 0, '', NULL, NULL, NULL),
(34, 10, 15, 0, 0, 0, 'Hitam', NULL, 0, NULL, NULL, '2020-12-08', 177, 175, 2, 0, '', NULL, NULL, NULL),
(35, 10, 19, 0, 0, 0, 'Orange', NULL, 0, NULL, NULL, '2020-12-09', 95, 95, 0, 0, '', NULL, NULL, NULL),
(36, 10, 2, 0, 0, 0, 'Warna Merah Dot', NULL, 0, NULL, NULL, '2021-08-02', 300, 294, 10, 0, '', NULL, NULL, NULL),
(37, 10, 1, 0, 0, 0, 'Putih', NULL, 0, NULL, NULL, '2021-08-02', 240, 237, 3, 0, '', NULL, NULL, NULL),
(38, 10, 19, 0, 0, 0, 'Putih', NULL, 0, NULL, NULL, '2021-08-02', 160, 158, 0, 0, '', NULL, NULL, NULL),
(39, 10, 17, 0, 0, 0, 'Coklat', NULL, 0, NULL, NULL, '2021-08-02', 0, 0, 0, 0, '', NULL, NULL, NULL),
(40, 10, 14, 0, 0, 0, 'maroon', NULL, 0, NULL, NULL, '2021-07-30', 240, 242, 0, 0, '', NULL, NULL, NULL),
(41, 10, 16, 0, 0, 0, 'Varian Kita', NULL, 0, NULL, NULL, '2021-08-12', 0, 0, 0, 0, 'sdasda', NULL, NULL, NULL),
(42, 10, 16, 0, 0, 0, 'Varian Kita', NULL, 0, 'D-2901/W1234', '2021-08-11', '2021-08-12', 0, 0, 0, 0, 'Baby Boom', NULL, NULL, NULL),
(43, 10, 16, 0, 0, 0, 'Varian Baru', NULL, 0, 'B-2342', '2021-08-11', '2021-08-12', 0, 0, 0, 0, '', NULL, NULL, NULL),
(44, 10, 14, 0, 0, 0, 'Merah Linen', NULL, 0, 'B-12312312', '2021-08-18', '2021-08-18', 190, 185, 5, 0, '', NULL, NULL, NULL),
(45, 10, 16, 0, 0, 0, 'Merah Linen', NULL, 0, '1231231', '2021-08-12', '2021-08-18', 290, 289, 1, 0, '', NULL, NULL, NULL),
(46, 10, 14, 0, 0, 0, 'BW', NULL, 0, '1109', '2021-08-06', '2021-08-18', 647, 644, 0, 0, '', NULL, NULL, NULL),
(47, 10, 21, 0, 0, 0, 'MAROON', NULL, 0, '015/SS/W/VIII/21', '2021-08-18', '2021-08-18', 2270, 2280, 0, 0, '', NULL, NULL, NULL),
(48, 10, 16, 0, 0, 0, 'TAmbahan', NULL, 0, '201', '2021-08-19', '2021-08-19', 345, 344, 1, 0, 'Asdas', NULL, NULL, NULL),
(49, 10, 16, 2, 2, 1, 'Varian Kita', NULL, 0, '1109', '2021-08-05', '2021-08-22', 0, 0, 0, 0, 'sdasda', NULL, NULL, NULL),
(50, 10, 16, 2, 2, 1, '', NULL, 1, 'D-2901/W1234', '2021-08-06', '2021-08-22', 0, 0, 0, 0, 'Baby Boom', NULL, NULL, NULL),
(51, 10, 16, 2, 1, 2, '', NULL, 1, '1109', '2021-08-12', '2021-08-22', 0, 0, 0, 0, '', NULL, NULL, NULL),
(52, 10, 16, 2, 2, 1, '', NULL, 1, '1109-2311', '2021-08-05', '2021-08-22', 0, 0, 0, 0, '', NULL, NULL, NULL),
(53, 10, 14, 2, 2, 2, '', 3, 1, '1109', '2021-08-18', '2021-08-22', 0, 0, 0, 0, 'Bagus lah', NULL, NULL, NULL),
(54, 10, 15, 1, 1, 1, '', 4, 1, '1109-2311', '2021-08-17', '2021-08-22', 0, 0, 0, 0, 'Bagus siap digunakan', NULL, NULL, NULL),
(55, 10, 1, 2, 2, 1, '', 5, 2, '92012', '2021-08-10', '2021-08-22', 169, 391, 35, 0, '', NULL, NULL, NULL),
(56, 10, 16, 2, 2, 1, '', 6, 3, '1109', '2021-08-06', '2021-08-23', 880, 880, 0, 0, '', NULL, NULL, NULL),
(57, 10, 16, 2, 2, 2, '', 7, 1, '1109-2311', '2021-08-05', '2021-08-23', 1627, 1624, 3, 0, 'sdasda', NULL, NULL, NULL),
(58, 10, 16, 2, 2, 2, '', 8, 3, 'D-2901/W1234', '2021-08-18', '2021-08-26', 535, 533, 0, 0, 'Baby Boom', NULL, NULL, NULL),
(59, 10, 16, 2, 2, 3, '', 9, 1, '1109', '2021-08-11', '2021-09-04', 100, 100, 0, 0, '', NULL, NULL, NULL),
(60, 10, 16, 2, 2, 3, '', 10, 1, 'as', '2021-09-14', '2021-09-16', 290, 290, 0, 0, '', NULL, NULL, NULL),
(61, 10, 16, 2, 2, 3, '', 11, 1, '12', '2021-10-07', '2021-10-08', 0, 0, 0, 0, '', NULL, NULL, NULL),
(62, 10, 23, 2, 2, 3, '', 12, 1, '12132', '2021-10-13', '2021-10-29', 673, 513, 0, 0, '12312', NULL, NULL, NULL),
(63, 10, 23, 2, 2, 3, '', 13, 1, 'B-2342', '2021-08-12', '2021-12-08', 0, 0, 0, 0, '', NULL, NULL, NULL),
(64, 10, 16, 2, 2, 3, '', 14, 1, 'D-2901/W1234', '2021-08-06', '2022-02-03', 700, 699, 1, 0, '', NULL, NULL, NULL),
(65, 10, 24, 2, 2, 3, NULL, 15, 1, 'asd', '2021-08-12', '2022-02-19', 0, 0, 0, 123, '', NULL, NULL, NULL),
(66, 10, 24, 2, 2, 3, NULL, 16, 1, 'asd', '2021-08-12', '2022-02-19', 0, 0, 0, 34121231, '23123', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_in_item_proc`
--

CREATE TABLE `material_in_item_proc` (
  `id_material_in_item_proc` bigint(20) NOT NULL,
  `id_material_in` bigint(20) NOT NULL,
  `yard_awal` int(11) NOT NULL,
  `yard_hasil1` int(11) NOT NULL,
  `yard_hasil2` int(11) DEFAULT 0,
  `yard_hasil3` int(11) DEFAULT 0,
  `yard_hasil4` int(11) DEFAULT 0,
  `yard_hasil5` int(11) DEFAULT 0,
  `yard_hasil6` int(11) DEFAULT 0,
  `yard_hasil7` int(11) DEFAULT NULL,
  `yard_hasil8` int(11) DEFAULT NULL,
  `yard_hasil9` int(11) DEFAULT NULL,
  `yard_hasil10` int(11) DEFAULT NULL,
  `yard_hasil_total` int(11) NOT NULL DEFAULT 0,
  `buang1` int(11) DEFAULT 0,
  `buang2` int(11) DEFAULT 0,
  `selisih_lebih` int(11) DEFAULT NULL,
  `selisih_kurang` int(11) DEFAULT NULL,
  `is_packing` int(11) DEFAULT 0,
  `id_basic_packing` int(11) DEFAULT 0,
  `id_basic_packing1` int(11) DEFAULT NULL,
  `id_basic_packing2` int(11) DEFAULT NULL,
  `id_basic_packing3` int(11) DEFAULT NULL,
  `id_basic_packing4` int(11) DEFAULT NULL,
  `id_basic_packing5` int(11) DEFAULT NULL,
  `id_basic_packing6` int(11) DEFAULT NULL,
  `id_basic_packing7` int(11) DEFAULT NULL,
  `id_basic_packing8` int(11) DEFAULT NULL,
  `id_basic_packing9` int(11) DEFAULT NULL,
  `id_basic_packing10` int(11) DEFAULT NULL,
  `id_material_finish1` bigint(20) DEFAULT NULL,
  `id_material_finish2` bigint(20) DEFAULT NULL,
  `id_material_finish3` bigint(20) DEFAULT NULL,
  `id_material_finish4` bigint(20) DEFAULT NULL,
  `id_material_finish5` bigint(20) DEFAULT NULL,
  `id_material_finish6` bigint(20) DEFAULT NULL,
  `id_material_finish7` bigint(20) DEFAULT NULL,
  `id_material_finish8` bigint(20) DEFAULT NULL,
  `id_material_finish9` bigint(20) DEFAULT NULL,
  `id_material_finish10` bigint(20) DEFAULT NULL,
  `label_barcode_number1` varchar(250) DEFAULT NULL,
  `label_barcode_number2` varchar(250) DEFAULT NULL,
  `label_barcode_number3` varchar(250) DEFAULT NULL,
  `label_barcode_number4` varchar(250) DEFAULT NULL,
  `label_barcode_number5` varchar(250) DEFAULT NULL,
  `label_barcode_number6` varchar(250) DEFAULT NULL,
  `label_barcode_number7` varchar(250) DEFAULT NULL,
  `label_barcode_number8` varchar(250) DEFAULT NULL,
  `label_barcode_number9` varchar(250) DEFAULT NULL,
  `label_barcode_number10` varchar(250) DEFAULT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `material_in_item_proc`
--

INSERT INTO `material_in_item_proc` (`id_material_in_item_proc`, `id_material_in`, `yard_awal`, `yard_hasil1`, `yard_hasil2`, `yard_hasil3`, `yard_hasil4`, `yard_hasil5`, `yard_hasil6`, `yard_hasil7`, `yard_hasil8`, `yard_hasil9`, `yard_hasil10`, `yard_hasil_total`, `buang1`, `buang2`, `selisih_lebih`, `selisih_kurang`, `is_packing`, `id_basic_packing`, `id_basic_packing1`, `id_basic_packing2`, `id_basic_packing3`, `id_basic_packing4`, `id_basic_packing5`, `id_basic_packing6`, `id_basic_packing7`, `id_basic_packing8`, `id_basic_packing9`, `id_basic_packing10`, `id_material_finish1`, `id_material_finish2`, `id_material_finish3`, `id_material_finish4`, `id_material_finish5`, `id_material_finish6`, `id_material_finish7`, `id_material_finish8`, `id_material_finish9`, `id_material_finish10`, `label_barcode_number1`, `label_barcode_number2`, `label_barcode_number3`, `label_barcode_number4`, `label_barcode_number5`, `label_barcode_number6`, `label_barcode_number7`, `label_barcode_number8`, `label_barcode_number9`, `label_barcode_number10`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(1, 1, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 60, 60, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, 30, 30, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 80, 80, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 4, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 5, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 6, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 7, 150, 150, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 9, 50, 49, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 10, 70, 70, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 11, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 12, 50, 49, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 8, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 7, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 13, 150, 150, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 13, 150, 150, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 13, 100, 99, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 13, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 14, 200, 199, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 15, 75, 75, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 15, 75, 75, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 16, 150, 150, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 16, 75, 75, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 16, 80, 79, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 17, 75, 75, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 17, 85, 84, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 8, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 15, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 18, 135, 135, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 19, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 20, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 20, 50, 49, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 21, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 22, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 22, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 23, 75, 75, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 23, 75, 74, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 24, 75, 75, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 24, 125, 125, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 14, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 14, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 14, 60, 60, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 25, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 25, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 21, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 26, 65, 65, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 26, 35, 35, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 27, 75, 75, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 27, 55, 55, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 28, 70, 70, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 29, 55, 55, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 30, 55, 54, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 31, 60, 60, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 31, 40, 40, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 32, 65, 65, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 33, 55, 55, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 34, 77, 75, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 2, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 35, 45, 45, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 35, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 28, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 34, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 12, 50, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 12, 50, 30, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '12-80-1-30', '12-80-2-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 36, 100, 90, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 10, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '36-81-1-90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 37, 100, 60, 40, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '37-82-1-60', '37-82-2-40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 37, 80, 60, 19, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '37-83-1-60', '37-83-2-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 37, 60, 58, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '37-84-1-58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 38, 100, 60, 40, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '38-85-1-60', '38-85-2-40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 38, 60, 58, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '38-86-1-58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 40, 120, 60, 59, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '40-87-1-60', '40-87-2-59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 40, 120, 60, 63, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '40-88-1-60', '40-88-2-63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 36, 100, 102, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '36-89-1-102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 36, 100, 50, 52, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '36-90-1-50', '36-90-2-52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 44, 100, 100, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '44-91-1-100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 44, 90, 85, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 5, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '44-92-1-85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 45, 80, 80, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '45-93-1-80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 45, 90, 89, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '45-94-1-89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 45, 120, 120, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '45-95-1-120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 46, 190, 102, 89, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '46-96-1-102', '46-96-2-89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 46, 220, 100, 88, 30, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '46-97-1-100', '46-97-2-88', '46-97-3-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 46, 237, 100, 100, 35, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '46-98-1-100', '46-98-2-100', '46-98-3-35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 47, 236, 75, 100, 61, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '47-99-1-75', '47-99-2-100', '47-99-3-61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 47, 206, 100, 47, 60, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '47-100-1-100', '47-100-2-47', '47-100-3-70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 47, 183, 115, 71, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '47-101-1-115', '47-101-2-71', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 47, 204, 100, 105, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '47-102-1-100', '47-102-2-105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 47, 187, 88, 100, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '47-103-1-88', '47-103-2-100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 47, 101, 101, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '47-104-1-101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 47, 161, 61, 100, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '47-105-1-61', '47-105-2-100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 47, 72, 72, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '47-106-1-72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 47, 100, 100, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '47-107-1-100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 47, 270, 70, 100, 100, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '47-108-1-70', '47-108-2-100', '47-108-3-100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 47, 278, 100, 100, 82, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '47-109-1-100', '47-109-2-100', '47-109-3-82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 47, 272, 100, 100, 72, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '47-110-1-100', '47-110-2-100', '47-110-3-72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 48, 200, 50, 50, 50, 49, 0, 0, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '48-111-1-50', '48-111-2-50', '48-111-3-50', '48-111-4-49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 48, 70, 50, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '48-112-1-50', '48-112-2-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 48, 75, 50, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '48-113-1-50', '48-113-2-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 56, 120, 60, 60, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 22, 23, 0, 0, 0, 0, 0, 0, 0, 0, '56-114-1-60', '56-114-2-60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 55, 12, 45, 12, 23, 21, 121, 12, NULL, NULL, NULL, NULL, 0, 12, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '55-115-1-45', '55-115-2-12', '55-115-3-23', '55-115-4-21', '55-115-5-121', '55-115-6-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 57, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '57-117-1-6788', '57-117-2-8999', '57-117-3-1020', '57-117-4-2020', '57-117-5-2020', '57-117-6-1010', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 57, 200, 100, 98, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, '57-118-1-1020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 55, 34, 34, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '55-119-1-34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 55, 123, 23, 40, 20, 30, 10, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '55-120-1-23', '55-120-2-40', '55-120-3-20', '55-120-4-30', '55-120-5-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 57, 100, 90, 9, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, '57-121-1-90', '57-121-2-9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 57, 200, 90, 90, 20, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 5, 6, 7, 0, 0, 0, 0, 0, 0, 0, '57-122-1-90', '57-122-2-90', '57-122-3-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 57, 200, 60, 60, 60, 20, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 2, 0, 0, 0, 0, 0, 0, 8, 9, 10, 11, 0, 0, 0, 0, 0, 0, '57-123-1-60', '57-123-2-60', '57-123-3-60', '57-123-4-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 57, 150, 100, 50, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 11, 12, 0, 0, 0, 0, 0, 0, 0, 0, '57-124-1-100', '57-124-2-50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 57, 290, 150, 60, 60, 20, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 2, 0, 0, 0, 0, 0, 0, 12, 13, 14, 15, 0, 0, 0, 0, 0, 0, '57-130-1-150', '57-130-2-60', '57-130-3-60', '57-130-4-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 57, 120, 60, 40, 20, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 2, 2, 0, 0, 0, 0, 0, 0, 0, 16, 17, 18, 0, 0, 0, 0, 0, 0, 0, '57-131-1-60', '57-131-2-40', '57-131-3-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 57, 140, 60, 60, 20, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 2, 2, 0, 0, 0, 0, 0, 0, 0, 20, 19, 21, 0, 0, 0, 0, 0, 0, 0, '57-132-1-60', '57-132-2-60', '57-132-3-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 56, 160, 80, 80, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 24, 25, 0, 0, 0, 0, 0, 0, 0, 0, '56-133-1-80', '56-133-2-80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 56, 180, 60, 60, 60, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 28, 0, 29, 0, 0, 0, 0, 0, 0, 0, '56-134-1-60', '56-134-2-60', '56-134-3-60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 56, 140, 90, 50, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 26, 27, 0, 0, 0, 0, 0, 0, 0, 0, '56-135-1-90', '56-135-2-50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 56, 160, 80, 70, 10, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 30, 31, 0, 0, 0, 0, 0, 0, 0, 0, '56-136-1-80', '56-136-2-70', '56-136-3-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 56, 120, 60, 50, 10, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '56-137-1-60', '56-137-2-50', '56-137-3-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 58, 200, 60, 60, 60, 20, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 32, 33, 34, 35, 0, 0, 0, 0, 0, 0, '58-138-1-60', '58-138-2-60', '58-138-3-60', '58-138-4-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 58, 105, 80, 25, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 35, 35, 0, 0, 0, 0, 0, 0, 0, 0, '58-139-1-80', '58-139-2-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 58, 130, 60, 70, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 38, 39, 0, 0, 0, 0, 0, 0, 0, 0, '58-140-1-60', '58-140-2-70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 57, 127, 90, 37, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 36, 37, 0, 0, 0, 0, 0, 0, 0, 0, '57-141-1-90', '57-141-2-37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 58, 100, 98, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '58-142-1-98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 59, 100, 50, 50, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 50, 51, 0, 0, 0, 0, 0, 0, 0, 0, '59-143-1-50', '59-143-2-50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 1, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-144-1-100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 1, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-145-1-100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 1, 90, 50, 40, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-146-1-50', '1-146-2-40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 1, 100, 50, 50, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-147-1-50', '1-147-2-50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 1, 70, 70, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-148-1-7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 1, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-149-1-100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 1, 70, 70, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-150-1-70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 1, 60, 60, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-151-1-60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 1, 100, 90, 10, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-152-1-90', '1-152-2-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 1, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-153-1-100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 1, 60, 60, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-154-1-60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 1, 70, 30, 40, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-155-1-30', '1-155-2-40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 1, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-156-1-100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 1, 70, 30, 40, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-157-1-30', '1-157-2-40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 1, 80, 40, 40, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-158-1-40', '1-158-2-40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 1, 80, 80, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-159-1-80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 1, 90, 90, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-160-1-90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 1, 100, 100, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-161-1-100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 1, 70, 70, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1-162-1-70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 1, 90, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 60, 100, 60, 40, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 54, 55, 0, 0, 0, 0, 0, 0, 0, 0, '60-165-1-60', '60-165-2-40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 60, 100, 80, 20, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 56, 57, 0, 0, 0, 0, 0, 0, 0, 0, '60-167-1-80', '60-167-2-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 60, 90, 40, 50, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 60, 61, 0, 0, 0, 0, 0, 0, 0, 0, '60-171-1-40', '60-171-2-50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 62, 123, 123, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, '62-172-1-123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 62, 100, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 1, 2, 1, 1, 1, 1, 0, 0, 0, 0, 74, 75, 76, 77, 78, 79, 0, 0, 0, 0, '62-173-1-10', '62-173-2-10', '62-173-3-10', '62-173-4-10', '62-173-5-10', '62-173-6-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 62, 200, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, '62-174-1-20', '62-174-2-20', '62-174-3-20', '62-174-4-20', '62-174-5-20', '62-174-6-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 62, 150, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, '62-175-1-50', '62-175-2-50', '62-175-3-50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 62, 100, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '62-176-1-10', '62-176-2-10', '62-176-3-10', '62-176-4-10', '62-176-5-10', '62-176-6-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 64, 200, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 80, 81, 0, 0, 0, 0, 0, 0, 0, 0, '64-177-1-100', '64-177-2-100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 64, 200, 99, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, '64-178-1-99', '64-178-2-100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 64, 200, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 83, 84, 0, 0, 0, 0, 0, 0, 0, 0, '64-179-1-100', '64-179-2-100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 64, 100, 50, 30, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 85, 86, 87, 0, 0, 0, 0, 0, 0, 0, '64-180-1-50', '64-180-2-30', '64-180-3-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_kategori1`
--

CREATE TABLE `material_kategori1` (
  `id_material` bigint(20) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `material_kategori1`
--

INSERT INTO `material_kategori1` (`id_material`, `kode`, `nama`, `is_active`) VALUES
(1, 'RDS', 'Merah', 1),
(2, 'BLU', 'Biru As', 1),
(3, 'RED', 'Merah', 1),
(4, 'RDW', 'Red Saja', 1),
(5, 'BLS', 'Bulus', 1),
(6, 'GGA', 'SAS', 1),
(7, 'daS', 'DADANG', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_kategori2`
--

CREATE TABLE `material_kategori2` (
  `id_material` bigint(20) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `material_kategori2`
--

INSERT INTO `material_kategori2` (`id_material`, `kode`, `nama`, `is_active`) VALUES
(1, 'PL', 'Polos', 1),
(2, 'MT', 'Motif', 1),
(3, 'JN', 'Jenis', 1),
(4, 'BS', 'Jeans', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_kategori3`
--

CREATE TABLE `material_kategori3` (
  `id_material` bigint(20) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `material_kategori3`
--

INSERT INTO `material_kategori3` (`id_material`, `kode`, `nama`, `is_active`) VALUES
(1, 'WPP', 'Woll Piece Printing', 1),
(2, 'BMA', 'Baby Masmara', 1),
(3, 'BMS', 'Baby Asmara', 1),
(4, 'MTF', 'Motif', 1),
(5, 'JKG', 'Jkg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_raw_kategori1`
--

CREATE TABLE `material_raw_kategori1` (
  `id_material_raw_kategori` bigint(20) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `material_raw_kategori1`
--

INSERT INTO `material_raw_kategori1` (`id_material_raw_kategori`, `kode`, `nama`, `is_active`) VALUES
(1, 'KGB', 'Greige', 1),
(2, 'DMZ', 'White Label', 1),
(3, 'BAS', 'Basoki', 1),
(4, 'GKJ', 'Bandung', 1),
(5, 'BWA', 'Blood Last', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_sales`
--

CREATE TABLE `material_sales` (
  `id_material_sales` bigint(20) NOT NULL,
  `sales_id_sales_order` bigint(20) NOT NULL,
  `sales_harga_jual` bigint(20) DEFAULT NULL,
  `sales_id_outlet_penjualan` int(11) NOT NULL,
  `sales_created_id_user` int(11) DEFAULT NULL,
  `sales_created_date` datetime DEFAULT NULL,
  `sales_created_ip_address` varchar(64) DEFAULT NULL,
  `id_material_finish` bigint(20) NOT NULL,
  `id_material` bigint(20) NOT NULL,
  `id_material_kategori1` bigint(20) NOT NULL,
  `id_material_kategori2` bigint(20) NOT NULL,
  `id_material_kategori3` bigint(20) NOT NULL,
  `yard` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `year` int(4) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `no_urut_kode` varchar(20) NOT NULL,
  `no_splitting` int(11) NOT NULL,
  `barcode_kode` varchar(50) NOT NULL,
  `deskripsi` varchar(500) DEFAULT NULL,
  `is_packing` int(1) NOT NULL,
  `id_basic_packing` int(11) NOT NULL,
  `id_material_in_item_proc` bigint(20) NOT NULL,
  `id_material_in` bigint(20) NOT NULL,
  `is_join_packing` int(1) NOT NULL DEFAULT 0,
  `join_info` varchar(250) DEFAULT NULL,
  `id_gudang` int(11) NOT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `material_sales`
--

INSERT INTO `material_sales` (`id_material_sales`, `sales_id_sales_order`, `sales_harga_jual`, `sales_id_outlet_penjualan`, `sales_created_id_user`, `sales_created_date`, `sales_created_ip_address`, `id_material_finish`, `id_material`, `id_material_kategori1`, `id_material_kategori2`, `id_material_kategori3`, `yard`, `kode`, `year`, `no_urut`, `no_urut_kode`, `no_splitting`, `barcode_kode`, `deskripsi`, `is_packing`, `id_basic_packing`, `id_material_in_item_proc`, `id_material_in`, `is_join_packing`, `join_info`, `id_gudang`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(10, 5, 12000, 2, 7, '2021-10-22 06:26:29', '::1', 55, 16, 2, 2, 3, 90, 'BCS-BLU-MT-BMS-21-0005', 2021, 5, '0005', 2, '2005500000008', NULL, 1, 2, 164, 60, 1, '50 + 40', 1, NULL, NULL, NULL),
(11, 5, 12000, 2, 7, '2021-10-22 06:26:34', '::1', 56, 16, 2, 2, 3, 80, 'BCS-BLU-MT-BMS-21-0006', 2021, 6, '0006', 1, '2005600000007', NULL, 1, 1, 167, 60, 0, NULL, 1, NULL, NULL, NULL),
(12, 5, 12000, 2, 7, '2021-10-22 06:26:59', '::1', 60, 16, 2, 2, 3, 40, 'BCS-BLU-MT-BMS-21-0008', 2021, 8, '0008', 1, '2006000000000', NULL, 1, 1, 171, 60, 0, NULL, 1, NULL, NULL, NULL),
(13, 6, 12888, 2, 7, '2021-10-24 19:46:03', '::1', 62, 14, 2, 2, 3, 120, 'DNM-BLU-MT-BMS-21-0002', 2021, 2, '0002', 0, '2006200000008', 'ss', 1, 2, 0, 0, 0, '', 3, NULL, NULL, NULL),
(15, 7, 65000, 2, 7, '2021-10-25 14:10:03', '::1', 67, 19, 2, 2, 3, 2010, 'PLS-BLU-MT-BMS-21-0002', 2021, 2, '0002', 0, '2006700000003', '', 1, 2, 0, 0, 0, '', 1, NULL, NULL, NULL),
(16, 7, 65000, 2, 7, '2021-10-25 14:10:38', '::1', 65, 14, 1, 1, 3, 20, 'DNM-RDS-PL-BMS-21-0001', 2021, 1, '0001', 0, '2006500000005', '', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL),
(25, 7, 65000, 2, 7, '2021-10-25 16:43:37', '::1', 68, 16, 2, 2, 3, 2121, 'BCS-BLU-MT-BMS-21-0010', 2021, 10, '0010', 0, '2006800000002', '', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL),
(26, 7, 65000, 2, 7, '2021-10-25 16:44:31', '::1', 66, 14, 2, 2, 3, 1200, 'DNM-BLU-MT-BMS-21-0002', 2021, 2, '0002', 0, '2006600000004', '', 1, 2, 0, 0, 1, '90+12', 2, NULL, NULL, NULL),
(27, 8, 1200, 2, 7, '2021-11-16 14:45:36', '::1', 1, 16, 2, 2, 2, 100, 'BCS-BLU-MT-BMA-21-0001', 2021, 1, '0001', 1, '', NULL, 1, 1, 117, 57, 0, NULL, 2, NULL, NULL, NULL),
(28, 8, 1200, 2, 7, '2021-11-16 14:45:49', '::1', 2, 16, 2, 2, 2, 100, 'BCS-BLU-MT-BMA-21-0002', 2021, 2, '0002', 1, '', NULL, 1, 1, 118, 57, 0, NULL, 3, NULL, NULL, NULL),
(29, 9, 12500, 2, 7, '2021-11-17 08:04:14', '::1', 78, 23, 2, 2, 3, 10, 'SGQ-BLU-MT-BMS-21-0006', 2021, 6, '0006', 5, '2007800000009', NULL, 1, 1, 173, 62, 0, NULL, 1, NULL, NULL, NULL),
(30, 9, 25000, 2, 7, '2021-11-17 08:04:21', '::1', 79, 23, 2, 2, 3, 10, 'SGQ-BLU-MT-BMS-21-0007', 2021, 7, '0007', 6, '2007900000008', NULL, 1, 1, 173, 62, 0, NULL, 1, NULL, NULL, NULL),
(31, 10, 12300, 2, 7, '2021-11-17 08:18:43', '::1', 80, 23, 2, 2, 3, 70, 'SGQ-BLU-MT-BMS-21-0008', 2021, 8, '0008', 1, '2008000000004', NULL, 1, 2, 174, 62, 1, '20 + 50', 1, NULL, NULL, NULL),
(32, 10, 125000, 2, 7, '2021-11-17 08:18:51', '::1', 81, 16, 1, 2, 3, 60, 'BCS-RDS-MT-BMS-21-0001', 2021, 1, '0001', 0, '2008100000003', '', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL),
(33, 11, 65000, 2, 7, '2021-11-18 08:44:38', '::1', 77, 23, 2, 2, 3, 10, 'SGQ-BLU-MT-BMS-21-0005', 2021, 5, '0005', 4, '2007700000000', NULL, 1, 1, 173, 62, 0, NULL, 1, NULL, NULL, NULL),
(34, 12, 12434, 2, 7, '2021-11-18 08:46:49', '::1', 82, 16, 1, 2, 3, 60, 'BCS-RDS-MT-BMS-21-0002', 2021, 2, '0002', 0, '2008200000002', '', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL),
(35, 13, 45000, 2, 7, '2021-11-18 09:37:12', '::1', 83, 15, 2, 2, 3, 201, 'DRL-BLU-MT-BMS-21-0001', 2021, 1, '0001', 0, '2010000000830', '', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL),
(36, 14, 125000, 2, 7, '2021-11-18 11:08:16', '::1', 84, 21, 2, 2, 3, 1200, 'DCN-BLU-MT-BMS-21-0001', 2021, 1, '0001', 0, '2010000000847', '', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL),
(37, 15, NULL, 2, 7, '2021-11-21 09:36:41', '::1', 77, 16, 2, 2, 3, 201, 'BCS-BLU-MT-BMS-1-0001', 201, 1, '0001', 0, '2010000000779', '', 1, 2, 0, 0, 0, '', 1, NULL, NULL, NULL),
(39, 16, 65000, 2, 7, '2021-12-01 05:29:17', '::1', 4, 16, 2, 2, 2, 90, 'BCS-BLU-MT-BMA-21-0004', 2021, 4, '0004', 1, '', NULL, 1, 1, 121, 57, 0, NULL, 4, NULL, NULL, NULL),
(46, 17, NULL, 2, 7, '2021-12-01 06:12:05', '::1', 11, 16, 2, 2, 2, 20, 'BCS-BLU-MT-BMA-21-0011', 2021, 11, '0011', 4, '', NULL, 1, 1, 123, 57, 0, NULL, 1, NULL, NULL, NULL),
(47, 17, NULL, 2, 7, '2021-12-01 06:12:10', '::1', 12, 16, 2, 2, 2, 150, 'BCS-BLU-MT-BMA-21-0012', 2021, 12, '0012', 1, '', NULL, 1, 1, 130, 57, 0, NULL, 4, NULL, NULL, NULL),
(48, 17, NULL, 2, 7, '2021-12-01 06:12:15', '::1', 13, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0013', 2021, 13, '0013', 2, '', NULL, 1, 1, 130, 57, 0, NULL, 2, NULL, NULL, NULL),
(49, 17, NULL, 2, 7, '2021-12-01 06:12:24', '::1', 14, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0014', 2021, 14, '0014', 3, '', NULL, 1, 1, 130, 57, 0, NULL, 1, NULL, NULL, NULL),
(51, 16, 65000, 2, 7, '2021-12-01 05:29:43', '::1', 8, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0008', 2021, 8, '0008', 1, '', NULL, 1, 1, 123, 57, 0, NULL, 1, NULL, NULL, NULL),
(53, 16, 65000, 2, 7, '2021-12-01 05:29:24', '::1', 5, 16, 2, 2, 2, 90, 'BCS-BLU-MT-BMA-21-0005', 2021, 5, '0005', 1, '', NULL, 1, 1, 122, 57, 0, NULL, 2, NULL, NULL, NULL),
(58, 25, 1200, 2, 7, '2021-12-02 15:10:26', '::1', 7, 16, 2, 2, 2, 29, 'BCS-BLU-MT-BMA-21-0007', 2021, 7, '0007', 2, '', NULL, 1, 2, 121, 57, 1, '9 + 20', 1, NULL, NULL, NULL),
(59, 25, 2600, 2, 7, '2021-12-02 15:10:35', '::1', 9, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0009', 2021, 9, '0009', 2, '', NULL, 1, 1, 123, 57, 0, NULL, 2, NULL, NULL, NULL),
(60, 25, 2500, 2, 7, '2021-12-02 15:10:50', '::1', 10, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0010', 2021, 10, '0010', 3, '', NULL, 1, 1, 123, 57, 0, NULL, 1, NULL, NULL, NULL),
(61, 26, 12500, 2, 7, '2021-12-03 06:22:55', '::1', 3, 16, 2, 2, 2, 98, 'BCS-BLU-MT-BMA-21-0003', 2021, 3, '0003', 2, '', NULL, 1, 1, 118, 57, 0, NULL, 1, NULL, NULL, NULL),
(62, 26, 12500, 2, 7, '2021-12-03 06:23:00', '::1', 6, 16, 2, 2, 2, 90, 'BCS-BLU-MT-BMA-21-0006', 2021, 6, '0006', 2, '', NULL, 1, 1, 122, 57, 0, NULL, 1, NULL, NULL, NULL),
(63, 26, 12500, 2, 7, '2021-12-03 06:23:05', '::1', 15, 16, 2, 2, 2, 40, 'BCS-BLU-MT-BMA-21-0015', 2021, 15, '0015', 4, '', NULL, 1, 2, 130, 57, 1, '20 + 20', 1, NULL, NULL, NULL),
(64, 26, 12500, 2, 7, '2021-12-03 06:23:13', '::1', 16, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0016', 2021, 16, '0016', 1, '', NULL, 1, 1, 131, 57, 0, NULL, 1, NULL, NULL, NULL),
(65, 26, 12500, 2, 7, '2021-12-03 06:23:18', '::1', 17, 16, 2, 2, 2, 40, 'BCS-BLU-MT-BMA-21-0017', 2021, 17, '0017', 2, '', NULL, 1, 1, 131, 57, 0, NULL, 1, NULL, NULL, NULL),
(66, 26, 12500, 2, 7, '2021-12-03 06:23:25', '::1', 18, 16, 2, 2, 2, 20, 'BCS-BLU-MT-BMA-21-0018', 2021, 18, '0018', 3, '', NULL, 1, 1, 131, 57, 0, NULL, 2, NULL, NULL, NULL),
(67, 26, 12500, 2, 7, '2021-12-03 06:24:23', '::1', 19, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0019', 2021, 19, '0019', 2, '', NULL, 1, 1, 132, 57, 1, '60 + 20', 1, NULL, NULL, NULL),
(68, 27, NULL, 2, 7, '2021-12-03 13:55:13', '::1', 20, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0020', 2021, 20, '0020', 1, '', NULL, 1, 1, 132, 57, 0, NULL, 1, NULL, NULL, NULL),
(69, 27, NULL, 2, 7, '2021-12-03 13:55:25', '::1', 21, 16, 2, 2, 2, 20, 'BCS-BLU-MT-BMA-21-0021', 2021, 21, '0021', 3, '', NULL, 1, 1, 132, 57, 0, NULL, 1, NULL, NULL, NULL),
(70, 27, NULL, 2, 7, '2021-12-03 13:55:32', '::1', 22, 16, 2, 2, 1, 60, 'BCS-BLU-MT-WPP-21-0001', 2021, 1, '0001', 1, '', NULL, 1, 1, 114, 56, 0, NULL, 1, NULL, NULL, NULL),
(71, 27, NULL, 2, 7, '2021-12-03 13:55:42', '::1', 23, 16, 2, 2, 1, 60, 'BCS-BLU-MT-WPP-21-0002', 2021, 2, '0002', 2, '', NULL, 1, 1, 114, 56, 0, NULL, 1, NULL, NULL, NULL),
(72, 27, NULL, 2, 7, '2021-12-03 13:55:50', '::1', 24, 16, 2, 2, 1, 80, 'BCS-BLU-MT-WPP-21-0003', 2021, 3, '0003', 1, '', NULL, 1, 1, 133, 56, 0, NULL, 1, NULL, NULL, NULL),
(75, 28, 12500, 2, 7, '2021-12-07 14:21:14', '::1', 27, 16, 2, 2, 1, 50, 'BCS-BLU-MT-WPP-21-0006', 2021, 6, '0006', 2, '', NULL, 1, 1, 135, 56, 0, NULL, 1, NULL, NULL, NULL),
(76, 28, 12500, 2, 7, '2021-12-07 14:21:21', '::1', 28, 16, 2, 2, 1, 60, 'BCS-BLU-MT-WPP-21-0007', 2021, 7, '0007', 1, '', NULL, 1, 1, 134, 56, 0, NULL, 1, NULL, NULL, NULL),
(78, 28, 12500, 2, 7, '2021-12-07 14:31:43', '::1', 29, 16, 2, 2, 1, 60, 'BCS-BLU-MT-WPP-21-0008', 2021, 8, '0008', 3, '', NULL, 1, 1, 134, 56, 0, NULL, 1, NULL, NULL, NULL),
(81, 29, 15000, 2, 7, '2021-12-07 15:17:57', '::1', 26, 16, 2, 2, 1, 90, 'BCS-BLU-MT-WPP-21-0005', 2021, 5, '0005', 1, '', NULL, 1, 1, 135, 56, 0, NULL, 1, NULL, NULL, NULL),
(83, 29, 15000, 2, 7, '2021-12-07 15:18:16', '::1', 31, 16, 2, 2, 1, 70, 'BCS-BLU-MT-WPP-21-0010', 2021, 10, '0010', 2, '', NULL, 1, 1, 136, 56, 0, NULL, 1, NULL, NULL, NULL),
(84, 29, 15000, 2, 7, '2021-12-07 15:18:26', '::1', 32, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0022', 2021, 22, '0022', 1, '', NULL, 1, 1, 138, 58, 0, NULL, 1, NULL, NULL, NULL),
(85, 30, 15000, 2, 7, '2021-12-08 14:59:57', '::1', 25, 16, 2, 2, 1, 140, 'BCS-BLU-MT-WPP-21-0004', 2021, 4, '0004', 2, '', NULL, 1, 2, 133, 56, 1, '80 + 60', 1, NULL, NULL, NULL),
(86, 30, 15000, 2, 7, '2021-12-08 15:00:09', '::1', 30, 16, 2, 2, 1, 80, 'BCS-BLU-MT-WPP-21-0009', 2021, 9, '0009', 1, '', NULL, 1, 1, 136, 56, 0, NULL, 1, NULL, NULL, NULL),
(87, 30, 15000, 2, 7, '2021-12-08 15:00:21', '::1', 33, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0023', 2021, 23, '0023', 2, '', NULL, 1, 1, 138, 58, 0, NULL, 1, NULL, NULL, NULL),
(88, 31, NULL, 2, 12, '2021-12-10 07:19:38', '127.0.0.1', 34, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0024', 2021, 24, '0024', 3, '', NULL, 1, 1, 138, 58, 0, NULL, 1, NULL, NULL, NULL),
(89, 31, NULL, 2, 12, '2021-12-10 07:19:45', '127.0.0.1', 35, 16, 2, 2, 2, 125, 'BCS-BLU-MT-BMA-21-0025', 2021, 25, '0025', 4, '', NULL, 1, 1, 138, 58, 1, '20 + 80 + 25', 1, NULL, NULL, NULL),
(90, 31, NULL, 2, 12, '2021-12-10 07:19:52', '127.0.0.1', 36, 16, 2, 2, 2, 90, 'BCS-BLU-MT-BMA-21-0026', 2021, 26, '0026', 1, '', NULL, 1, 1, 141, 57, 0, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_sales_cancel`
--

CREATE TABLE `material_sales_cancel` (
  `id_material_sales` bigint(20) NOT NULL,
  `sales_id_sales_order` bigint(20) NOT NULL,
  `sales_harga_jual` bigint(20) DEFAULT NULL,
  `sales_id_outlet_penjualan` int(11) NOT NULL,
  `sales_created_id_user` int(11) DEFAULT NULL,
  `sales_created_date` datetime DEFAULT NULL,
  `sales_created_ip_address` varchar(64) DEFAULT NULL,
  `id_material_finish` bigint(20) NOT NULL,
  `id_material` bigint(20) NOT NULL,
  `id_material_kategori1` bigint(20) NOT NULL,
  `id_material_kategori2` bigint(20) NOT NULL,
  `id_material_kategori3` bigint(20) NOT NULL,
  `yard` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `year` int(4) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `no_urut_kode` varchar(20) NOT NULL,
  `no_splitting` int(11) NOT NULL,
  `barcode_kode` varchar(50) NOT NULL,
  `deskripsi` varchar(500) DEFAULT NULL,
  `is_packing` int(1) NOT NULL,
  `id_basic_packing` int(11) NOT NULL,
  `id_material_in_item_proc` bigint(20) NOT NULL,
  `id_material_in` bigint(20) NOT NULL,
  `is_join_packing` int(1) NOT NULL DEFAULT 0,
  `join_info` varchar(250) DEFAULT NULL,
  `id_gudang` int(11) NOT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_sampel`
--

CREATE TABLE `material_sampel` (
  `id_material_sampel` bigint(20) NOT NULL,
  `id_customer` bigint(20) NOT NULL,
  `nama_sampel` varchar(250) NOT NULL,
  `id_material_raw_kategori` bigint(20) NOT NULL,
  `tanggal_minta_sampel` date NOT NULL,
  `tanggal_keluar_sampel` date NOT NULL,
  `id_subcontractor` int(11) NOT NULL,
  `id_material` bigint(20) NOT NULL,
  `id_material_kategori1` int(11) NOT NULL,
  `id_material_kategori2` int(11) NOT NULL,
  `id_material_kategori3` int(11) NOT NULL,
  `kode_barcode` varchar(50) DEFAULT NULL,
  `keterangan` varchar(250) NOT NULL,
  `status` set('DITOLAK','ACC','DIUBAH') NOT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `material_sampel`
--

INSERT INTO `material_sampel` (`id_material_sampel`, `id_customer`, `nama_sampel`, `id_material_raw_kategori`, `tanggal_minta_sampel`, `tanggal_keluar_sampel`, `id_subcontractor`, `id_material`, `id_material_kategori1`, `id_material_kategori2`, `id_material_kategori3`, `kode_barcode`, `keterangan`, `status`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(1, 2, 'Babaus', 2, '2021-12-21', '2021-12-17', 1, 16, 2, 2, 3, '12', '1231', 'DITOLAK', NULL, NULL, NULL),
(2, 2, 'Sampel', 2, '2022-01-18', '2022-01-26', 1, 16, 2, 2, 3, '', 'Barang bagus', 'ACC', NULL, NULL, NULL),
(3, 2, 'Sampel Lagi', 2, '2022-01-18', '2022-01-19', 1, 17, 2, 2, 3, '', 'Barang Bagus', 'DITOLAK', NULL, NULL, NULL),
(4, 2, 'Sampel Lagi', 2, '2022-01-18', '2022-01-19', 1, 17, 2, 2, 3, '2010000000045', 'Barang Bagus', 'DITOLAK', NULL, NULL, NULL),
(5, 2, 'Nama sampel', 2, '2022-01-26', '2022-01-25', 1, 23, 2, 2, 3, '2010000000052', 'Barang apa ini', 'DITOLAK', NULL, NULL, NULL),
(6, 2, 'Sampel Lagi', 2, '2022-01-26', '2022-01-26', 1, 23, 2, 2, 3, '1010000000060', 'Keterangan dari mana', 'DITOLAK', NULL, NULL, NULL),
(7, 2, 'Sampel Lagi', 2, '2022-01-26', '2022-01-13', 1, 16, 2, 2, 3, '1010000000077', 'Sales', 'DITOLAK', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_support`
--

CREATE TABLE `material_support` (
  `id_material_support` bigint(20) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `nama` varchar(250) NOT NULL,
  `deskripsi` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `material_support`
--

INSERT INTO `material_support` (`id_material_support`, `kode`, `nama`, `deskripsi`) VALUES
(1, 'PLSTK', 'Plastik Packing', 'Plastik Pembungkus Untuk Packing Kain'),
(2, 'CN', 'Cone', 'Tabung / Batang untuk penyangga / meletakkan kain'),
(3, 'LBL', 'Label', 'Label Nama'),
(4, 'BN', 'BAN', 'Untuk mengikat kain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `media_identity`
--

CREATE TABLE `media_identity` (
  `id_media_identity` int(11) NOT NULL,
  `media_name` varchar(200) NOT NULL,
  `icon` varchar(150) NOT NULL,
  `url` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `media_identity`
--

INSERT INTO `media_identity` (`id_media_identity`, `media_name`, `icon`, `url`) VALUES
(1, 'Facebook', 'fa fa-facebook', 'http://www.facebook.com/'),
(2, 'Linkedin', 'fa fa-linkedin-square ', 'https://www.linkedin.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_link`
--

CREATE TABLE `menu_link` (
  `id_menu_link` int(11) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_name_lang1` varchar(50) DEFAULT NULL,
  `menu_name_lang2` varchar(50) DEFAULT NULL,
  `url` varchar(250) NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu_link`
--

INSERT INTO `menu_link` (`id_menu_link`, `menu_name`, `menu_name_lang1`, `menu_name_lang2`, `url`, `is_active`) VALUES
(1, 'Home', 'Home', 'Zuhause', 'index', 1),
(2, 'Tentang Kami', 'About Us', 'Über uns', 'company_profile', 1),
(4, 'Kantor', 'Kantor', 'Kantor', 'kantor', 1),
(6, 'Contact Us', 'Contact Us', 'Kontaktiere uns', 'Kontak Kami', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_jenjang_pendidikan`
--

CREATE TABLE `mst_jenjang_pendidikan` (
  `id_mst_jenjang_pendidikan` int(11) NOT NULL,
  `jenjang_pendidikan` varchar(250) NOT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mst_jenjang_pendidikan`
--

INSERT INTO `mst_jenjang_pendidikan` (`id_mst_jenjang_pendidikan`, `jenjang_pendidikan`, `keterangan`) VALUES
(11, 'SD atau Sederajat', NULL),
(12, 'SMP/SLTP atau sederajat', NULL),
(13, 'SMA/SLTA/SMK atau sederejat', NULL),
(20, 'D1', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi_stock`
--

CREATE TABLE `mutasi_stock` (
  `id_mutasi_stock` bigint(20) NOT NULL,
  `tanggal_mutasi` date NOT NULL,
  `id_gudang_asal` int(11) NOT NULL,
  `id_gudang_tujuan` int(11) NOT NULL,
  `id_pemberi_perintah` int(11) NOT NULL,
  `id_pelaksana_perintah` int(11) NOT NULL,
  `nomor_surat` varchar(200) DEFAULT NULL,
  `nomor_urut` int(11) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  `is_approved` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mutasi_stock`
--

INSERT INTO `mutasi_stock` (`id_mutasi_stock`, `tanggal_mutasi`, `id_gudang_asal`, `id_gudang_tujuan`, `id_pemberi_perintah`, `id_pelaksana_perintah`, `nomor_surat`, `nomor_urut`, `keterangan`, `is_approved`) VALUES
(1, '2021-07-07', 1, 2, 3, 4, '1/SS', 1, '', 0),
(2, '2021-07-07', 2, 3, 3, 4, '2/SS', NULL, 'AMman', 0),
(3, '2021-08-31', 2, 1, 3, 4, '3/SS', NULL, 'Diminta Pak Bos', 0),
(4, '2021-08-31', 2, 4, 4, 3, '4/SS', NULL, 'sas', 0),
(5, '2021-08-11', 1, 2, 3, 4, '5/SS', NULL, '', 0),
(6, '2021-10-07', 2, 3, 3, 5, '6/SS', NULL, '', 0),
(7, '2022-01-30', 1, 2, 3, 6, NULL, NULL, 'Diminta Pak Bos', 0),
(8, '2022-01-30', 1, 2, 5, 3, NULL, NULL, 'Diminta Pak Bos', 0),
(9, '2022-01-30', 2, 4, 5, 5, NULL, NULL, 'Diminta Pak Bos', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi_stock_item`
--

CREATE TABLE `mutasi_stock_item` (
  `id_mutasi_stock_item` bigint(20) NOT NULL,
  `id_mutasi_stock` bigint(20) NOT NULL,
  `id_material_finish` bigint(20) NOT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mutasi_stock_item`
--

INSERT INTO `mutasi_stock_item` (`id_mutasi_stock_item`, `id_mutasi_stock`, `id_material_finish`, `keterangan`) VALUES
(4, 4, 5, ''),
(5, 4, 12, ''),
(7, 4, 40, ''),
(8, 3, 40, '1231'),
(9, 3, 40, '1231'),
(10, 5, 5, ''),
(11, 5, 9, ''),
(12, 5, 13, ''),
(13, 5, 18, ''),
(14, 3, 65, ''),
(28, 2, 73, ''),
(29, 8, 37, ''),
(30, 8, 42, ''),
(31, 9, 42, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id_news` bigint(20) NOT NULL,
  `title_lang1` varchar(250) NOT NULL,
  `title_lang2` varchar(250) DEFAULT NULL,
  `content_lang1` text NOT NULL,
  `content_lang2` text DEFAULT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL,
  `file_image` varchar(250) DEFAULT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id_news`, `title_lang1`, `title_lang2`, `content_lang1`, `content_lang2`, `created_id_user`, `created_date`, `created_ip_address`, `file_image`, `is_active`) VALUES
(1, 'PPID Test Berita Part 1 (dengan judul yang agak panjang)', '', '<p><strong>Cirebon</strong>&nbsp;- Sejumlah jurnalis yang tergabung dari Aliansi Jurnalis Ciayumajakuning (Kota-Kabupaten Cirebon, Majalengka, Kuningan dan Indramayu) berunjuk rasa di depan Gedung DPRD Kota Cirebon, Jawa Barat. Jurnalis menolak pengesahan Rancangan Kitab Undang-undang Hukum Pidana (RKUHP).<br /><br />Koordinator aksi Muhamad Syahrir Romdhon menyebut, sejumlah pasal yang ada pada RKUHP mengancam kebebasan jurnalis. Sebab, pasal-pasal tersebut berbenturan dengan UU No 44 tahun 1999 tentang pers.<br /><br />\"Setelah kami kaji, ada 13 pasal yang bertabrakan dengan UU No 44 tahun 1999 tentang pers. Seperti Pasal 217, 218 dan 219 tentang penyerangan terhadap presiden dan wakil presiden. Bahkan, presiden dan wakil presiden bisa membuat aduan secara tertulis. Hukuman penjara sampai empat setengah tahun,\" kata pria yang akrab disapa Aray itu usai aksi, Kamis (26/9/2019).<br /><br /></p>\r\n<center></center>\r\n<table class=\"linksisip\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"lihatjg\"><strong>Baca juga:&nbsp;</strong><a href=\"https://news.detik.com/read/2019/09/26/080949/4722347/10/ruu-kuhp-ditunda-kumpul-kebo-tidak-dihukum-hina-presiden-tak-dipidana\" data-label=\"List Berita\" data-action=\"Berita Pilihan\" data-category=\"Detil Artikel\">RUU KUHP Ditunda: Kumpul Kebo Tidak Dihukum, Hina Presiden Tak Dipidana</a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br />Lebih lanjut, Aray mengatakan 13 pasal yang bertabrakan dengan UU No 44 tahun 1999 itu melemahkan kerja-kerja jurnalistik. Kendati saat ini pemerintah tengah menunda pengesahan RKUHP, itu bukan jaminan bahwa akan dibatalkan.<br /><br />\"Padahal pers itu salah satu pilar demokrasi yang harus terbebas dari berbagai pengekangan. Kami jurnalis menolak RKUHP ini, kami mendesak pemerintah membatalkan pengesahan RKUHP,\" katanya.</p>', '', 1, '2019-03-07 00:00:00', '1', '', 0),
(2, 'PPID BPOM Berita 1 - Lorem Ipsum', '', '<div id=\"lipsum\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec suscipit metus ullamcorper elit dignissim scelerisque. Maecenas et metus gravida tortor sodales luctus a vitae arcu. Aenean sem odio, pharetra non fermentum vitae, dapibus eget odio. Quisque porttitor maximus porttitor. Quisque ullamcorper tristique tempus. Nam finibus quis enim quis sagittis. Mauris vehicula vel ex scelerisque rutrum. Suspendisse orci nibh, bibendum id mollis quis, lacinia non nulla. Duis nec ex quam. Vestibulum quis nulla massa. Sed augue sapien, viverra vitae odio in, consequat viverra lacus. Donec a mi mauris. Maecenas pharetra magna eget tempor pellentesque. Etiam auctor arcu a tincidunt pretium. Sed pulvinar vel ligula consequat interdum. Integer blandit cursus auctor.</p>\r\n<p>Nulla id tincidunt odio. Etiam hendrerit enim a ligula tincidunt, pulvinar porttitor diam molestie. Pellentesque feugiat faucibus magna, in lobortis tellus dignissim vehicula. Cras condimentum, turpis imperdiet commodo rutrum, leo felis ultrices sapien, vel accumsan mi urna a purus. Integer quis leo porttitor, facilisis dolor sed, elementum dui. Vestibulum molestie posuere porttitor. Quisque non viverra lorem. Proin nec viverra nibh. Sed maximus nisi vel commodo suscipit. Donec dignissim turpis non velit cursus, vitae vulputate urna consectetur. Suspendisse ut turpis nunc. Quisque ullamcorper, erat ut eleifend eleifend, tortor nibh lacinia urna, eu volutpat elit ante a nisl. Etiam non neque ac ante lacinia tincidunt id nec ante. Aliquam non nibh nec orci consequat placerat. Morbi tincidunt enim quis diam consectetur, quis commodo magna interdum.</p>\r\n<p>Fusce nec luctus massa. Donec malesuada pulvinar convallis. Vestibulum aliquam mollis viverra. Aliquam sit amet pellentesque nisi, eget porttitor metus. Aliquam in convallis mauris. Suspendisse lobortis libero eget eros hendrerit aliquet. Donec a sapien vestibulum, tempus odio varius, auctor neque. Integer a felis sed justo venenatis rhoncus id ut quam. Nunc ut molestie leo, sed egestas nunc. Aliquam erat volutpat. Nulla nec massa quis quam pulvinar tincidunt.</p>\r\n<p>Morbi tortor ante, vulputate sed libero sit amet, aliquet varius massa. Sed finibus feugiat est sed condimentum. Donec in metus in orci placerat elementum. Vestibulum at porta tortor. Praesent posuere, sapien sed rhoncus dignissim, ante eros gravida velit, a bibendum neque ipsum nec nunc. In condimentum sit amet ante eget faucibus. Phasellus tempus ligula id convallis feugiat. Nulla at diam auctor, sodales neque nec, dictum nisi. Integer sem orci, imperdiet et euismod ac, varius nec turpis. Etiam vitae auctor est. Integer ut sollicitudin ipsum. Sed condimentum egestas luctus. Nullam est tortor, bibendum eu pharetra vel, efficitur nec massa. Donec sed malesuada libero. Integer accumsan, mi a cursus molestie, felis nibh sollicitudin justo, at consequat ligula nunc id est.</p>\r\n<p>Nullam consectetur sed justo vitae molestie. Fusce nec finibus sapien, sagittis dapibus nisi. In quis est non ipsum maximus interdum. Praesent egestas eros a sem fermentum fermentum. Suspendisse sit amet magna posuere, semper nisl nec, laoreet enim. Mauris lectus ligula, ultricies eget ultricies at, volutpat vitae nibh. Curabitur velit urna, sollicitudin ac ante nec, pharetra convallis ante.</p>\r\n</div>', '', 1, '2021-06-18 12:08:46', '127.0.0.1', NULL, 1),
(3, 'PPID Launching Website Baru', NULL, '<div class=\"col-md-12 col-sm-12 col-xs-12\">\r\n<div class=\"well-middle\">\r\n<div class=\"single-well\">\r\n<p>Sebagai kementerian yang ikut membidani lahirnya Undang-Undang Nomor 14 Tahun 2008 tentang Keterbukaan Informasi Publik (UU KIP), Kementerian Komunikasi dan Informatika hadir sebagai Badan Publik yang mendukung dan berkomitmen terhadap pelaksanaan Keterbukaan Informasi Publik di masyarakat. &nbsp;Komitmen dalam pelaksanaan UU KIP ini tercermin dengan tidak pernah absennya Kementerian Kominfo untuk masuk dalam peringkat 10 (sepuluh) besar dalam penilaian pelaksanaan UU KIP yang diselenggarakan oleh Komisi Informasi Pusat.</p>\r\n<p>Sebagai salah satu Badan Publik yang pada periode awal hadirnya UU KIP telah membentuk Pejabat Pengelola Informasi dan Dokumentasi (PPID) melalui Keputusan Menteri Komunikasi dan Informatika Nomor 117/KEP/M.KOMINFO/03/2010 tentang Organisasi Pengelola Informasi dan Dokumentasi. Kementerian Kominfo terus berupaya untuk menjaga momentum keterbukaan informasi di masyarakat. Oleh karena itu, PPID Kementerian Kominfo bersungguh-sungguh untuk dapat :<br />1.&nbsp;&nbsp; &nbsp;Memberikan pelayanan informasi yang cepat dan tepat waktu<br />2.&nbsp;&nbsp; &nbsp;Memberikan kemudahan dalam mendapatkan informasi publik bidang komunikasi dan informatika yang diperlukan dengan murah dan sederhana<br />3.&nbsp;&nbsp; &nbsp;Menyediakan dan memberikan informasi publik yang akurat, benar, dan tidak menyesatkan<br />4.&nbsp;&nbsp; &nbsp;Menyediakan daftar informasi publik untuk informasi yang wajib disediakan dan diumumkan<br />5.&nbsp;&nbsp; &nbsp;Menjamin penggunaan seluruh informasi publik dan fasilitasi pelayanan sesuai dengan ketentuan dan tata tertib yang berlaku<br />6.&nbsp;&nbsp; &nbsp;Menyiapkan ruang dan fasilitas yang nyaman dan tertata baik<br />7.&nbsp;&nbsp; &nbsp;Merespon dengan cepat permintaan informasi dan keberatan atas informasi publik yang disampaikan baik langsung maupun melalui media<br />8.&nbsp;&nbsp; &nbsp;Menyiapkan petugas informasi yang berdedikasi dan siap melayani<br />9.&nbsp;&nbsp; &nbsp;Melakukan pengawasan internal dan evaluasi kinerja pelaksana</p>\r\n<p>Seiring dengan perkembangan organisasi di Kementerian Kominfo, pada tahun 2016 PPID melakukan perubahan organisasi dan tata kerja. Dengan disahkannya Keputusan Menteri Kominfo Nomor 1740 Tahun 2016 PPID Kementerian Kominfo bertransformasi untuk meningkatkan layanan informasi publik ke masyarakat.&nbsp;</p>\r\n<p>Hadirnya pucuk pimpinan Kementerian Kominfo sebagai Pengarah dan Para Eselon&nbsp;I sebagai Tim Pertimbangan Pelayanan Informasi merepresentasikan komitmen pimpinan dalam ikut melaksanakan UU KIP ini. Dalam struktur ini juga, kolaborasi antar satuan kerja benar-benar diprioritaskan dalam memberikan layanan informasi kepada masyarakat secara tepat dan akurat sesuai undang-undang.</p>\r\n<p>Kepala Biro Hubungan Masyarakat yang sejak awal berdirinya PPID berperan sebagai Pejabat Pengelola Informasi dan Dokumentasi, menjadi garda terdepan dalam pelaksanaan UU KIP di Kementerian Kominfo serta terus menjalankan tugas yang diamanatkan dalam KM Kominfo No 1740 Tahun 2016. Dibantu dengan personil-personil dibawahnya, Kepala Biro Hubungan Masyarakat menjalankan layanan rutin harian pelayanan informasi serta bersinergi dengan Pusat Data dan Sarana Informatika untuk fungsi pengelolaan informasi, Biro Umum untuk Dokumentasi dan Arsip, serta Biro Hukum dalam proses pengaduan dan penyelesaian sengketa.</p>\r\n</div>\r\n</div>\r\n</div>', NULL, 1, '2021-06-18 12:50:33', '127.0.0.1', NULL, 1),
(4, 'PENJELASAN BADAN POM RI tentang Isu Nata De Coco', NULL, '<p>Sehubungan dengan kembali merebaknya isu negatif di media sosial terkait Nata de Coco, Badan POM perlu memberikan penjelasan sebagai berikut:</p>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>Nata de Coco merupakan pangan yang dibuat dari bahan baku air kelapa, sehingga termasuk sebagai kelompok bahan baku berbasis buah di dalam kategori pangan.</li>\r\n<li>Nata de Coco terbentuk dari jutaan benang serat tipis atau selulosa yang sering juga disebut sebagai&nbsp;<em>dietary fiber</em>&nbsp;atau serat pangan.</li>\r\n<li>Kandungan&nbsp;<em>dietary fiber&nbsp;</em>atau serat pangan pada Nata de Coco baik untuk tubuh karena memang diperlukan dan penting untuk pencernaan.</li>\r\n<li>Lapisan yang banyak tersebut juga membuat Nata de Coco bisa memerangkap cairan. Jika ditekan, maka cairan tersebut akan keluar dan yang tertinggal adalah benang-benang serat yang menyerupai lembaran tipis. Lembaran tipis ini lah yang diisukan atau disebut-sebut seolah-olah lembaran plastik.</li>\r\n<li>Potongan Nata de Coco yang semula lembut kenyal bisa digigit putus, akan menjadi sangat liat, dan sangat sulit untuk disobek jika cairannya berkurang karena yang tertinggal adalah kumpulan benang-benang serat tipis.</li>\r\n<li>Kualitas Nata de Coco yang baik ditandai dengan warnanya yang putih bersih, transparan, struktur kuat, tidak mudah hancur, tidak lengket, tidak berbau asam, serta tidak mengandung kotoran.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>Badan POM terus mengimbau masyarakat agar menjadi konsumen cerdas dan tidak mudah terpengaruh dengan isu yang beredar melalui media sosial. Selalu lakukan Cek KLIK (Cek Kemasan, Cek Label, Cek Izin edar, dan Cek Kedaluwarsa) sebelum membeli atau mengonsumsi produk pangan.</p>\r\n<p>&nbsp;</p>\r\n<p>Jika masyarakat menemukan produk yang mencurigakan atau ingin mendapatkan informasi lebih lanjut, hubungi&nbsp;<em>Contact Center</em>&nbsp;HALOBPOM 1500533 (pulsa lokal), SMS 0812-1-9999-533,&nbsp;<em>WhatsApp&nbsp;</em>0811-9181-533,&nbsp;<em>e-mail</em>&nbsp;halobpom@pom.go.id,&nbsp;<em>Twitter&nbsp;</em>@BPOM_RI, atau Unit Layanan Pengaduan Konsumen (ULPK) Balai Besar/Balai POM di seluruh Indonesia.</p>', NULL, 1, '2021-06-22 07:36:16', '::1', NULL, 1),
(5, 'PPID BPOM Test Berita III', NULL, '<p>Sehubungan dengan beredarnya pemberitaan di media daring tentang cacing yang ditemukan dalam ikan makerel kemasan kaleng, BPOM RI memandang perlu memberikan penjelasan sebagai berikut:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<ol>\r\n<li>BPOM RI telah berkoordinasi dengan dinas terkait di Provinsi Riau untuk melakukan penelusuran dan pemeriksaan guna memastikan adanya dugaan cacing dalam ikan makerel dalam kaleng.</li>\r\n<li>Hasil pemeriksaan dan pengujian BPOM RI menemukan adanya cacing dengan kondisi mati pada produk ikan makerel dalam saus tomat dalam kaleng ukuran 425 gr, yaitu:&nbsp;\r\n<ul>\r\n<li>Merek Farmerjack, nomor izin edar (NIE) BPOM RI ML 543929007175, nomor bets 3502/01106 35 1 356;</li>\r\n<li>Merek IO, NIE BPOM RI ML 543929070004, nomor bets 370/12 Oktober 2020; dan</li>\r\n<li>Merek HOKI, NIE BPOM RI ML 543909501660, nomor Bets 3502/01103/-.</li>\r\n</ul>\r\n</li>\r\n<li>BPOM RI telah memerintahkan kepada importir untuk menarik produk FARMERJACK, IO dan HOKI dengan bets tersebut di atas dari peredaran dan melakukan pemusnahan.</li>\r\n<li>Produk yang mengandung cacing tidak layak dikonsumsi dan pada konsumen tertentu dapat menyebabkan reaksi alergi (hipersensitifitas) pada orang yang sensitif.</li>\r\n<li>BPOM RI terus memantau pelaksanaan penarikan dan pemusnahan serta meningkatkan sampling dan pengujian terhadap peredaran bets lainnya dan semua produk ikan dalam kaleng lainnya baik produk dalam maupun luar negeri.</li>\r\n</ol>\r\n<p>Masyarakat dihimbau untuk lebih cermat dan hati-hati dalam membeli produk pangan. Selalu ingat cek &ldquo;KLIK&rdquo; (Kemasan, Label, Izin Edar, dan Kedaluwarsa) sebelum membeli atau mengonsumsi produk pangan. Pastikan kemasannya dalam kondisi utuh, baca informasi pada label, pastikan memiliki izin edar dari BPOM RI, dan tidak melebihi masa kedaluwarsa. Masyarakat yang menemukan produk bermasalah dapat menghubungi Contact Center HALO BPOM di nomor telepon 1-500-533 (pulsa lokal), SMS 0812-1-9999-533, e-mail: halobpom@pom.go.id, atau Unit Layanan Pengaduan Konsumen (ULPK) Balai Besar/Balai POM di seluruh Indonesia.</p>', NULL, 1, '2021-06-22 07:40:19', '::1', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `outlet_penjualan`
--

CREATE TABLE `outlet_penjualan` (
  `id_outlet_penjualan` int(11) NOT NULL,
  `nama_outlet` varchar(250) NOT NULL,
  `kode_outlet` varchar(4) NOT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `kota` varchar(250) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `longitude` varchar(150) DEFAULT NULL,
  `latitude` varchar(150) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `outlet_penjualan`
--

INSERT INTO `outlet_penjualan` (`id_outlet_penjualan`, `nama_outlet`, `kode_outlet`, `alamat`, `kota`, `logo`, `longitude`, `latitude`, `keterangan`) VALUES
(1, 'Outlet Nanjung', 'BDG', 'Najung', 'Bandung', '', '', '', ''),
(2, 'Outlet Jakarta', 'JKT', 'Alamat Jakarta', 'Bandung', '', '', '', 'Keterangan'),
(3, 'Outlet Surabaya', 'SBY', 'Alamat Surabaya', 'Surabaya', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `outsourcing_process_raw`
--

CREATE TABLE `outsourcing_process_raw` (
  `id_outsourcing_process_raw` bigint(20) NOT NULL,
  `tanggal_proses` date NOT NULL,
  `id_subcontractor` bigint(20) NOT NULL,
  `nomor_kontrak` varchar(250) NOT NULL,
  `nomor_surat_jalan` varchar(250) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `total_tagihan` bigint(20) DEFAULT NULL,
  `bayar_total_bayar` bigint(20) DEFAULT NULL,
  `bayar_cara` set('TUNAI','TRANSFER') DEFAULT NULL,
  `bayar_tanggal_bayar` date DEFAULT NULL,
  `bayar_id_bank_pembayaran` int(11) DEFAULT NULL,
  `bayar_bukti` varchar(250) DEFAULT NULL,
  `status_proses` set('CLOSED','OPEN','CANCEL','PROCESS') DEFAULT NULL,
  `status_pembayaran` set('BELUM','PARTIAL','LUNAS','LEBIH BAYAR') DEFAULT 'BELUM',
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `outsourcing_process_raw`
--

INSERT INTO `outsourcing_process_raw` (`id_outsourcing_process_raw`, `tanggal_proses`, `id_subcontractor`, `nomor_kontrak`, `nomor_surat_jalan`, `month`, `year`, `total_tagihan`, `bayar_total_bayar`, `bayar_cara`, `bayar_tanggal_bayar`, `bayar_id_bank_pembayaran`, `bayar_bukti`, `status_proses`, `status_pembayaran`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(1, '2021-12-06', 1, 'ss', 'asdasda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BELUM', NULL, NULL, NULL),
(2, '2022-01-10', 1, '12/231/12', '23/12/231/12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BELUM', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `outsourcing_process_raw_item`
--

CREATE TABLE `outsourcing_process_raw_item` (
  `id_outsourcing_process_raw_item` bigint(20) NOT NULL,
  `id_outsourcing_process_raw` bigint(20) NOT NULL,
  `id_material_raw_kategori` bigint(20) DEFAULT NULL,
  `yard` bigint(20) DEFAULT NULL,
  `harga` bigint(20) DEFAULT 0,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `outsourcing_process_raw_item`
--

INSERT INTO `outsourcing_process_raw_item` (`id_outsourcing_process_raw_item`, `id_outsourcing_process_raw`, `id_material_raw_kategori`, `yard`, `harga`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(1, 2, 2, 23, 12312312, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pallet_gudang`
--

CREATE TABLE `pallet_gudang` (
  `id_pallet_gudang` bigint(20) NOT NULL,
  `id_gudang` int(11) NOT NULL,
  `nomor_pallet` varchar(200) NOT NULL,
  `kode` varchar(30) DEFAULT NULL,
  `pallet_group` varchar(100) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pallet_gudang`
--

INSERT INTO `pallet_gudang` (`id_pallet_gudang`, `id_gudang`, `nomor_pallet`, `kode`, `pallet_group`, `keterangan`) VALUES
(1, 2, 'B1', 'Kode', 'B', 'Keteranga'),
(2, 2, 'B2', 'Kode', 'B', 'Keteranga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_material_support`
--

CREATE TABLE `pembelian_material_support` (
  `id_pembelian_material_support` bigint(20) NOT NULL,
  `id_material_support` bigint(20) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `nomor_faktur` varchar(250) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_satuan` bigint(20) NOT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian_material_support`
--

INSERT INTO `pembelian_material_support` (`id_pembelian_material_support`, `id_material_support`, `tanggal_pembelian`, `nomor_faktur`, `jumlah`, `harga_satuan`, `keterangan`, `created_date`, `created_id_user`, `created_ip_address`) VALUES
(1, 2, '2021-07-27', '12/24/2001', 1, 45000, 'Waktu itu beli', NULL, NULL, NULL),
(2, 2, '2021-08-03', '12/24/2001', 10, 125000, '-', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `picking_list`
--

CREATE TABLE `picking_list` (
  `id_picking_list` bigint(20) NOT NULL,
  `id_customer` bigint(20) DEFAULT 0,
  `customer_name` varchar(250) NOT NULL,
  `customer_delivery_name` varchar(250) NOT NULL,
  `customer_city` varchar(250) NOT NULL,
  `picking_route` varchar(250) NOT NULL,
  `sales_order_number` varchar(100) DEFAULT '0',
  `id_sales_order` bigint(20) NOT NULL,
  `activation_date` datetime NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `requisition` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `picking_list_item`
--

CREATE TABLE `picking_list_item` (
  `id_picking_list_item` bigint(20) NOT NULL,
  `id_picking_list` bigint(20) NOT NULL,
  `item_id` varchar(100) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `size` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `id_gudang` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_raw`
--

CREATE TABLE `purchase_raw` (
  `id_purchase_raw` bigint(20) NOT NULL,
  `tanggal_order` date NOT NULL,
  `id_supplier` bigint(20) NOT NULL,
  `nomor_kontrak` varchar(250) NOT NULL,
  `nomor_surat_jalan` varchar(250) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `total_tagihan` bigint(20) DEFAULT NULL,
  `bayar_total_bayar` bigint(20) DEFAULT NULL,
  `bayar_cara` set('TUNAI','TRANSFER') DEFAULT NULL,
  `bayar_tanggal_bayar` date DEFAULT NULL,
  `bayar_id_bank_pembayaran` int(11) DEFAULT NULL,
  `bayar_bukti` varchar(250) DEFAULT NULL,
  `status_purchasing` set('CLOSED','OPEN','INVOICE','CANCEL','PARTIAL') DEFAULT NULL,
  `status_pembayaran` set('BELUM','PARTIAL','LUNAS','LEBIH BAYAR') DEFAULT 'BELUM',
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `purchase_raw`
--

INSERT INTO `purchase_raw` (`id_purchase_raw`, `tanggal_order`, `id_supplier`, `nomor_kontrak`, `nomor_surat_jalan`, `month`, `year`, `total_tagihan`, `bayar_total_bayar`, `bayar_cara`, `bayar_tanggal_bayar`, `bayar_id_bank_pembayaran`, `bayar_bukti`, `status_purchasing`, `status_pembayaran`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(1, '2021-11-30', 1, 'adas', 'asdasda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BELUM', NULL, NULL, NULL),
(2, '2021-11-30', 1, 'adas', 'asdasda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BELUM', NULL, NULL, NULL),
(3, '2022-01-10', 1, '819/120/12', 'Abc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BELUM', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_raw_item`
--

CREATE TABLE `purchase_raw_item` (
  `id_purchase_raw_item` bigint(20) NOT NULL,
  `id_purchase_raw` bigint(20) NOT NULL,
  `id_material_raw_kategori` bigint(20) DEFAULT NULL,
  `yard` bigint(20) DEFAULT NULL,
  `harga` bigint(20) DEFAULT 0,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `purchase_raw_item`
--

INSERT INTO `purchase_raw_item` (`id_purchase_raw_item`, `id_purchase_raw`, `id_material_raw_kategori`, `yard`, `harga`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(1, 1, 1, 1234232, 12312, NULL, NULL, NULL),
(2, 2, 1, 231231, 12312312, NULL, NULL, NULL),
(3, 2, 1, 45, 123121, NULL, NULL, NULL),
(4, 3, 2, 23, 12, NULL, NULL, NULL),
(5, 3, 2, 23, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_jabatan`
--

CREATE TABLE `riwayat_jabatan` (
  `id_riwayat_jabatan` bigint(20) NOT NULL,
  `id_pegawai` bigint(20) NOT NULL,
  `id_jabatan` bigint(20) NOT NULL,
  `id_kantor` int(11) NOT NULL DEFAULT 0,
  `tanggal_mulai` date NOT NULL,
  `tahun_mulai` int(4) DEFAULT NULL,
  `tanggal_berakhir` date DEFAULT NULL,
  `tahun_berakhir` int(4) DEFAULT NULL,
  `nomor_sk` varchar(250) DEFAULT NULL,
  `bukti_sk` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_pendidikan`
--

CREATE TABLE `riwayat_pendidikan` (
  `id_riwayat_pendidikan` bigint(20) NOT NULL,
  `id_pegawai` bigint(20) NOT NULL,
  `id_jenjang_pendidikan` int(11) NOT NULL,
  `nama_sekolah` varchar(250) NOT NULL,
  `id_sekolah` int(11) DEFAULT NULL,
  `tahun_masuk` int(4) DEFAULT NULL,
  `tahun_lulus` int(4) DEFAULT NULL,
  `bidang` varchar(250) DEFAULT NULL,
  `gpa` double(8,2) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `riwayat_pendidikan`
--

INSERT INTO `riwayat_pendidikan` (`id_riwayat_pendidikan`, `id_pegawai`, `id_jenjang_pendidikan`, `nama_sekolah`, `id_sekolah`, `tahun_masuk`, `tahun_lulus`, `bidang`, `gpa`, `keterangan`) VALUES
(1, 12311, 1, 'TELKOM UNIVERSITY', 40257, 2019, 2024, 'S1 SISTEM INFORMASI', 3.00, 'LULUSS'),
(2, 2, 1, 'TELKOM UNIVERSITY', 40257, 2015, 2019, 'S1 INFORMATIKA', 4.00, 'LULUSS'),
(3, 3, 1, 'UNIVERSITAS PAPUA', 1, 2017, 2022, 'S1 GEOLOGI', 3.00, 'LULUSS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `salary_monthly`
--

CREATE TABLE `salary_monthly` (
  `id_salary_monthly` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `bulan` int(2) NOT NULL,
  `tahun` int(4) NOT NULL,
  `gaji_pokok` bigint(20) NOT NULL,
  `tunjangan1` bigint(20) DEFAULT NULL,
  `tunjangan2` int(11) DEFAULT NULL,
  `tunjangan3` int(11) DEFAULT NULL,
  `tunjangan4` int(11) DEFAULT NULL,
  `tunjangan5` int(11) DEFAULT NULL,
  `jml_lembur` int(11) DEFAULT 0,
  `jml_kehadiran` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `salary_monthly`
--

INSERT INTO `salary_monthly` (`id_salary_monthly`, `id_pegawai`, `bulan`, `tahun`, `gaji_pokok`, `tunjangan1`, `tunjangan2`, `tunjangan3`, `tunjangan4`, `tunjangan5`, `jml_lembur`, `jml_kehadiran`) VALUES
(1, 3, 2, 2021, 650000, 250000, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_cashflow`
--

CREATE TABLE `sales_cashflow` (
  `id_sales_cashflow` bigint(20) NOT NULL,
  `id_sales_order` bigint(20) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `jumlah_bayar` double NOT NULL,
  `id_bank_pembayaran` int(11) NOT NULL,
  `bayar_bukti` varchar(250) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_jurnal`
--

CREATE TABLE `sales_jurnal` (
  `id_sales_jurnal` bigint(20) NOT NULL,
  `type` set('PENJUALAN','PEMBAYARAN PENJUALAN','RETUR PENJUALAN','PEMBAYARAN RETUR PENJUALAN') NOT NULL,
  `id_sales_order` bigint(20) NOT NULL,
  `id_customer` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `id_akun_debit` int(11) NOT NULL,
  `debit` bigint(20) NOT NULL,
  `id_akun_kredit` int(11) NOT NULL,
  `kredit` bigint(20) NOT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `bayar_cara` set('TUNAI','TRANSFER') NOT NULL,
  `id_bank_pembayaran` int(11) DEFAULT NULL,
  `bayar_bukti` varchar(250) DEFAULT NULL,
  `jumlah_bayar` bigint(20) DEFAULT NULL,
  `id_reference` bigint(20) NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_ip_address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sales_jurnal`
--

INSERT INTO `sales_jurnal` (`id_sales_jurnal`, `type`, `id_sales_order`, `id_customer`, `tanggal`, `id_akun_debit`, `debit`, `id_akun_kredit`, `kredit`, `keterangan`, `bayar_cara`, `id_bank_pembayaran`, `bayar_bukti`, `jumlah_bayar`, `id_reference`, `created_date`, `created_user_id`, `created_ip_address`) VALUES
(4, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-11-16', 1111, 2520000, 1114, 0, 'Super Sekali', 'TUNAI', 1, 'fbuktibyr-so-VEJnSDJqNWpvRFRiRStJbTQ1Ly9LQT09.jpg', 2520000, 0, '2021-11-16 14:08:52', 7, '::1'),
(5, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-26', 1111, 167000, 1114, 0, '', '', 1, '', 167000, 0, '2021-10-26 00:00:00', 7, '::1'),
(6, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-13', 1111, 65000, 1114, 0, '', '', 1, '', 65000, 0, '2021-10-26 00:00:00', 7, '::1'),
(7, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-26', 1111, 124000, 1114, 0, 'Ditambahkan', 'TUNAI', 1, '', 124000, 0, '2021-10-26 00:00:00', 7, '::1'),
(12, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-27', 1111, 65000, 1114, 0, '', '', NULL, '', 65000, 0, '2021-10-27 00:00:00', 7, '::1'),
(13, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-12', 1111, 167000, 1114, 0, 'Super Sekali', '', 1, '', 167000, 0, '2021-10-27 00:00:00', 7, '::1'),
(14, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-27', 1111, 65000, 1114, 0, 'Super Sekali', '', 1, '', 65000, 0, '2021-10-27 00:00:00', 7, '::1'),
(15, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-27', 1111, 65000, 1114, 0, 'Super Sekali', '', 1, '', 65000, 0, '2021-10-27 00:00:00', 7, '::1'),
(16, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-27', 1111, 65000, 1114, 0, 'Super Sekali', '', 1, '', 65000, 0, '2021-10-27 00:00:00', 7, '::1'),
(17, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-27', 1111, 65000, 1114, 0, 'Super Sekali', '', 1, '', 65000, 0, '2021-10-27 00:00:00', 7, '::1'),
(18, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-27', 1111, 65000, 1114, 0, 'Super Sekali', 'TRANSFER', 1, '', 65000, 0, '2021-10-27 00:00:00', 7, '::1'),
(19, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-27', 1111, 65000, 1114, 0, 'Super Sekali', '', 1, '', 65000, 0, '2021-10-27 00:00:00', 7, '::1'),
(20, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-14', 1111, 165000, 1114, 0, '', 'TUNAI', 1, '', 165000, 0, '2021-10-27 00:00:00', 7, '::1'),
(21, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-14', 1111, 167000, 1114, 0, '', '', 1, '', 167000, 0, '2021-10-27 00:00:00', 7, '::1'),
(22, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-09', 1111, 65000, 1114, 0, '', '', NULL, '', 65000, 0, '2021-10-27 00:00:00', 7, '::1'),
(23, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-27', 1111, 65000, 1114, 0, '', '', NULL, '', 65000, 0, '2021-10-27 00:00:00', 7, '::1'),
(24, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-27', 1111, 65000, 1114, 0, '', '', NULL, '', 65000, 0, '2021-10-27 00:00:00', 7, '::1'),
(25, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-10-27', 1111, 65000, 1114, 0, '125000', 'TRANSFER', NULL, '', 65000, 0, '2021-10-27 00:00:00', 7, '::1'),
(30, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-11-16', 1111, 65000, 1114, 0, 'Super Sekali', '', 1, '', 65000, 0, '2021-11-16 00:00:00', 7, '::1'),
(31, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-11-16', 1111, 65000, 1114, 0, 'Super Sekali', '', 1, '', 65000, 0, '2021-11-16 00:00:00', 7, '::1'),
(32, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-11-16', 1111, 125000, 1114, 0, 'Keren cak', 'TRANSFER', 1, '', 125000, 0, '2021-11-16 10:52:32', 7, '::1'),
(37, 'PEMBAYARAN PENJUALAN', 5, 1, '2021-11-16', 1111, 465000, 1114, 0, 'Sekliguas saja', 'TUNAI', 1, '', 465000, 0, '2021-11-16 11:22:22', 7, '::1'),
(39, 'PEMBAYARAN PENJUALAN', 6, 2, '2021-11-16', 1111, 2346000, 1114, 0, NULL, 'TUNAI', 1, 'fbuktibyr-so-ZHhlRHQyYmhiejhvUEFPck5LV1ErQT09.jpeg', 2346000, 0, '2021-11-16 13:56:48', 7, '::1'),
(40, 'PEMBAYARAN PENJUALAN', 8, 2, '2021-11-16', 1111, 167000, 1114, 0, 'Keren cak', 'TRANSFER', 1, 'fbuktibyr-sj-RUI5MFJsY1B5WTBQQ1NUUkpTNXZtZz09.jpg', 167000, 0, '2021-11-16 15:12:17', 7, '::1'),
(41, 'PEMBAYARAN PENJUALAN', 8, 2, '2021-11-16', 1111, 65000, 1114, 0, '125000', 'TUNAI', 1, 'fbuktibyr-sj-a0ZRR3ZaYjRYZUd1YlV1eHJlTmRaQT09.jpeg', 65000, 0, '2021-11-16 15:15:52', 7, '::1'),
(42, 'PEMBAYARAN PENJUALAN', 9, 2, '2021-11-17', 1111, 375000, 1114, 0, NULL, 'TRANSFER', 1, NULL, 375000, 0, '2021-11-17 08:16:37', 7, '::1'),
(43, 'PEMBAYARAN PENJUALAN', 10, 2, '2021-11-17', 1111, 65000, 1114, 0, 'Super Sekali', 'TUNAI', 1, 'fbuktibyr-sj-TE1ZekVVc3liTmxpWllMeUhkakFhUT09.jpg', 65000, 0, '2021-11-17 08:20:11', 7, '::1'),
(44, 'PEMBAYARAN PENJUALAN', 7, 2, '2021-11-17', 1111, 347815000, 1114, 0, NULL, 'TUNAI', 1, 'fbuktibyr-so-RGdVU0V5aUhkVDRTbXY1Q3lHQmZtdz09.jpg', 347815000, 0, '2021-11-17 08:40:23', 7, '::1'),
(45, 'PEMBAYARAN PENJUALAN', 11, 2, '2021-11-18', 1111, 650000, 1114, 0, NULL, 'TUNAI', 1, 'fbuktibyr-so-S2x4eERHSDBQL0FRM0ZRdTBkejlXdz09.jpeg', 650000, 0, '2021-11-18 08:45:33', 7, '::1'),
(46, 'PEMBAYARAN PENJUALAN', 12, 2, '2021-11-18', 1111, 746040, 1114, 0, NULL, 'TUNAI', 1, 'fbuktibyr-so-SWppcUNQWkZZRkExS2didFZOS3lJQT09.png', 746040, 0, '2021-11-18 08:47:42', 7, '::1'),
(47, 'PEMBAYARAN PENJUALAN', 10, 2, '2021-11-18', 1111, 65000, 1114, 0, 'Super Sekali', 'TUNAI', 1, 'fbuktibyr-sj-bXdOY3JBMnpDdzlsOEovNkpva1padz09.jpeg', 65000, 0, '2021-11-18 09:35:25', 7, '::1'),
(53, 'PEMBAYARAN PENJUALAN', 13, 2, '2021-11-18', 1111, 125000, 1114, 0, '', 'TUNAI', NULL, NULL, 125000, 0, '2021-11-18 10:53:19', 7, '::1'),
(55, 'PEMBAYARAN PENJUALAN', 13, 2, '2021-11-18', 1111, 12312, 1114, 0, 'Super Sekali', 'TUNAI', NULL, NULL, 12312, 0, '2021-11-18 10:54:34', 7, '::1'),
(56, 'PEMBAYARAN PENJUALAN', 16, 2, '2021-12-01', 1111, 2400000, 1114, 0, '', 'TUNAI', 1, NULL, 2400000, 0, '2021-12-01 07:52:39', 7, '::1'),
(59, 'RETUR PENJUALAN', 16, 2, '2021-12-01', 1111, 0, 1114, 21905000, NULL, '', 0, '', 21905000, 2, '2021-12-01 18:40:18', 7, '::1'),
(60, 'PEMBAYARAN PENJUALAN', 16, 2, '2021-12-01', 1111, 1200000, 1114, 0, 'Super Sekali', 'TUNAI', 1, '', 2400000, 0, '2021-12-01 19:01:49', 7, '::1'),
(61, 'PEMBAYARAN PENJUALAN', 25, 2, '2021-12-02', 1111, 1948800, 1114, 0, NULL, 'TUNAI', 1, NULL, 1948800, 0, '2021-12-02 15:59:30', 7, '::1'),
(62, 'RETUR PENJUALAN', 25, 2, '2021-12-08', 4100, 0, 1114, 1608000, NULL, '', 0, '', 1608000, 3, '2021-12-08 16:06:18', 7, '::1'),
(64, 'PEMBAYARAN PENJUALAN', 28, 2, '2021-12-07', 1111, 5000000, 1114, 0, NULL, 'TUNAI', 1, NULL, 5000000, 0, '2021-12-07 14:34:37', 7, '::1'),
(65, 'RETUR PENJUALAN', 28, 2, '2021-12-08', 4100, 0, 1114, 1125000, NULL, '', 0, '', 1125000, 4, '2021-12-08 16:18:24', 7, '::1'),
(66, 'PEMBAYARAN PENJUALAN', 29, 2, '2021-12-07', 1111, 6600000, 1114, 0, NULL, 'TUNAI', 1, NULL, 6600000, 0, '2021-12-07 15:19:30', 7, '::1'),
(67, 'RETUR PENJUALAN', 29, 2, '2021-12-08', 4100, 0, 1114, 3300000, NULL, '', 0, '', 3300000, 5, '2021-12-08 16:17:19', 7, '::1'),
(68, 'PEMBAYARAN PENJUALAN', 28, 2, '2021-12-07', 1111, 65000, 1114, 0, 'Super Sekali', 'TUNAI', 1, NULL, 65000, 0, '2021-12-07 16:10:37', 7, '::1'),
(69, 'RETUR PENJUALAN', 6, 2, '2021-12-07', 4100, 0, 1114, 799500, NULL, '', 0, '', 799500, 6, '2021-12-07 17:22:48', 7, '::1'),
(70, 'PEMBAYARAN PENJUALAN', 30, 2, '2021-12-08', 1111, 4200000, 1114, 0, NULL, 'TUNAI', 1, NULL, 4200000, 0, '2021-12-08 15:04:53', 7, '::1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_order`
--

CREATE TABLE `sales_order` (
  `id_sales_order` bigint(20) NOT NULL,
  `tanggal_order` date NOT NULL,
  `id_customer` bigint(20) NOT NULL,
  `id_outlet_penjualan` int(11) NOT NULL,
  `nomor_sales_order` varchar(250) DEFAULT NULL,
  `nomor` int(11) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `invoice_total` bigint(20) NOT NULL,
  `bayar_total_bayar` bigint(20) NOT NULL,
  `bayar_cara` set('TUNAI','TRANSFER') NOT NULL,
  `bayar_mode` set('SEKALI','MULTIPLE') NOT NULL,
  `bayar_tanggal_bayar` date NOT NULL,
  `bayar_id_bank_pembayaran` int(11) NOT NULL,
  `bayar_uang_muka` bigint(20) NOT NULL,
  `bayar_bukti` varchar(250) DEFAULT NULL,
  `status_order` set('CLOSED','OPEN','INVOICE','CANCEL','PARTIAL') NOT NULL,
  `status_invoice` set('BELUM','INVOICE','CANCEL') NOT NULL DEFAULT 'BELUM',
  `status_pembayaran` set('BELUM','PARTIAL','LUNAS','LEBIH BAYAR') NOT NULL DEFAULT 'BELUM',
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sales_order`
--

INSERT INTO `sales_order` (`id_sales_order`, `tanggal_order`, `id_customer`, `id_outlet_penjualan`, `nomor_sales_order`, `nomor`, `month`, `year`, `invoice_total`, `bayar_total_bayar`, `bayar_cara`, `bayar_mode`, `bayar_tanggal_bayar`, `bayar_id_bank_pembayaran`, `bayar_uang_muka`, `bayar_bukti`, `status_order`, `status_invoice`, `status_pembayaran`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(3, '2021-10-21', 2, 2, '0002/SO/10/2021', 2, 10, 2021, 95445000, 56000, '', '', '2021-10-21', 1, 250000, '', '', 'CANCEL', 'BELUM', NULL, NULL, NULL),
(4, '2021-10-22', 2, 2, '0003/SO/10/2021', 3, 10, 2021, 0, 0, '', '', '0000-00-00', 0, 0, NULL, '', 'BELUM', 'BELUM', NULL, NULL, NULL),
(5, '2021-10-22', 1, 2, '0004/SO/10/2021', 4, 10, 2021, 2520000, 2520000, 'TUNAI', '', '2021-11-16', 1, 0, 'fbuktibyr-so-VEJnSDJqNWpvRFRiRStJbTQ1Ly9LQT09.jpg', '', 'INVOICE', 'BELUM', NULL, NULL, NULL),
(6, '2021-10-24', 2, 2, '0005/SO/10/2021', 5, 10, 2021, 2346060, 2346000, 'TUNAI', '', '2021-10-24', 1, 0, 'fbuktibyr-so-ZHhlRHQyYmhiejhvUEFPck5LV1ErQT09.jpeg', '', 'INVOICE', 'PARTIAL', NULL, NULL, NULL),
(7, '2021-10-25', 2, 2, '0011/SO/10/2021', 11, 10, 2021, 347815000, 347815000, 'TUNAI', '', '2021-11-17', 1, 0, 'fbuktibyr-so-RGdVU0V5aUhkVDRTbXY1Q3lHQmZtdz09.jpg', '', 'INVOICE', 'LUNAS', NULL, NULL, NULL),
(8, '2021-10-27', 2, 2, '0012/SO/10/2021', 12, 10, 2021, 240000, 0, '', '', '0000-00-00', 0, 0, NULL, '', 'INVOICE', 'BELUM', NULL, NULL, NULL),
(9, '2021-11-17', 2, 2, '0001/SO/11/2021', 1, 11, 2021, 375000, 375000, 'TRANSFER', '', '2021-11-17', 1, 0, NULL, '', 'INVOICE', 'LUNAS', NULL, NULL, NULL),
(10, '2021-11-17', 2, 2, '0002/SO/11/2021', 2, 11, 2021, 8361000, 0, '', '', '2021-12-01', 0, 0, NULL, '', 'INVOICE', 'PARTIAL', NULL, NULL, NULL),
(11, '2021-11-18', 2, 2, '0003/SO/11/2021', 3, 11, 2021, 650000, 650000, 'TUNAI', '', '2021-11-18', 1, 0, 'fbuktibyr-so-S2x4eERHSDBQL0FRM0ZRdTBkejlXdz09.jpeg', '', 'BELUM', 'LUNAS', NULL, NULL, NULL),
(12, '2021-11-18', 2, 2, '0004/SO/11/2021', 4, 11, 2021, 746040, 746040, 'TUNAI', '', '2021-11-18', 1, 0, 'fbuktibyr-so-SWppcUNQWkZZRkExS2didFZOS3lJQT09.png', '', 'CANCEL', 'LUNAS', NULL, NULL, NULL),
(13, '2021-11-18', 2, 2, '0005/SO/11/2021', 5, 11, 2021, 9045000, 9045000, 'TUNAI', '', '2021-11-18', 1, 0, 'fbuktibyr-so-d3BGVTRIQ0EySUgxNXpzS09Zc1c5QT09.jpg', '', 'INVOICE', 'PARTIAL', NULL, NULL, NULL),
(14, '2021-11-18', 2, 2, '0006/SO/11/2021', 6, 11, 2021, 150000000, 0, '', '', '2021-11-18', 0, 0, NULL, '', 'INVOICE', 'BELUM', NULL, NULL, NULL),
(15, '2021-11-21', 2, 2, '0007/SO/11/2021', 7, 11, 2021, 0, 0, '', '', '0000-00-00', 0, 0, NULL, '', 'BELUM', 'BELUM', NULL, NULL, NULL),
(16, '2021-12-01', 2, 2, '0001/SO/12/2021', 1, 12, 2021, 37505000, 0, '', '', '2021-12-01', 0, 0, NULL, '', 'INVOICE', 'PARTIAL', NULL, NULL, NULL),
(17, '2021-12-01', 2, 2, '0002/SO/12/2021', 2, 12, 2021, 0, 0, '', '', '0000-00-00', 0, 0, NULL, '', 'BELUM', 'BELUM', NULL, NULL, NULL),
(18, '2021-12-01', 2, 2, '0003//SO/12/2021', 3, 12, 2021, 0, 0, '', '', '0000-00-00', 0, 0, NULL, '', 'BELUM', 'BELUM', NULL, NULL, NULL),
(19, '2021-12-01', 1, 2, '0004/JKT/SO/12/2021', 4, 12, 2021, 0, 0, '', '', '0000-00-00', 0, 0, NULL, '', 'BELUM', 'BELUM', NULL, NULL, NULL),
(20, '2021-12-01', 2, 1, '0001/BDG/SO/12/2021', 1, 12, 2021, 0, 0, '', '', '0000-00-00', 0, 0, NULL, '', 'BELUM', 'BELUM', NULL, NULL, NULL),
(21, '2021-12-01', 2, 2, '0005/JKT/SO/12/2021', 5, 12, 2021, 0, 0, '', '', '0000-00-00', 0, 0, NULL, '', 'BELUM', 'BELUM', NULL, NULL, NULL),
(22, '2021-12-01', 1, 1, '0002/BDG/SO/12/2021', 2, 12, 2021, 0, 0, '', '', '0000-00-00', 0, 0, NULL, '', 'BELUM', 'BELUM', NULL, NULL, NULL),
(23, '2021-12-01', 2, 1, '0003/BDG/SO/12/2021', 3, 12, 2021, 0, 0, '', '', '0000-00-00', 0, 0, NULL, '', 'BELUM', 'BELUM', NULL, NULL, NULL),
(24, '2021-12-01', 2, 1, '0004/BDG/SO/12/2021', 4, 12, 2021, 0, 0, '', '', '0000-00-00', 0, 0, NULL, '', 'BELUM', 'BELUM', NULL, NULL, NULL),
(25, '2021-12-02', 2, 2, '0006/JKT/SO/12/2021', 6, 12, 2021, 1948800, 1948800, 'TUNAI', '', '2021-12-02', 1, 0, NULL, '', 'INVOICE', 'LEBIH BAYAR', NULL, NULL, NULL),
(26, '2021-12-03', 2, 2, '0007/JKT/SO/12/2021', 7, 12, 2021, 0, 0, '', '', '0000-00-00', 0, 0, NULL, '', 'BELUM', 'BELUM', NULL, NULL, NULL),
(27, '2021-12-03', 1, 2, '0008/JKT/SO/12/2021', 8, 12, 2021, 0, 0, '', '', '0000-00-00', 0, 0, NULL, '', 'BELUM', 'BELUM', NULL, NULL, NULL),
(28, '2021-12-07', 2, 2, '0009/JKT/SO/12/2021', 9, 12, 2021, 5000000, 5000000, 'TUNAI', '', '2021-12-07', 1, 0, NULL, '', 'INVOICE', 'LEBIH BAYAR', NULL, NULL, NULL),
(29, '2021-12-07', 2, 2, '0010/JKT/SO/12/2021', 10, 12, 2021, 6600000, 6600000, 'TUNAI', '', '2021-12-07', 1, 0, NULL, '', 'INVOICE', 'LEBIH BAYAR', NULL, NULL, NULL),
(30, '2021-12-08', 2, 2, '0011/JKT/SO/12/2021', 11, 12, 2021, 4200000, 4200000, 'TUNAI', '', '2021-12-08', 1, 0, NULL, '', 'INVOICE', 'LUNAS', NULL, NULL, NULL),
(31, '2021-12-10', 2, 2, '0012/JKT/SO/12/2021', 12, 12, 2021, 0, 0, '', '', '0000-00-00', 0, 0, NULL, '', 'BELUM', 'BELUM', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_pembayaran`
--

CREATE TABLE `sales_pembayaran` (
  `id_sales_pembayaran` bigint(20) NOT NULL,
  `id_sales_order` bigint(20) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `jumlah_bayar` double NOT NULL,
  `id_bank_pembayaran` int(11) NOT NULL,
  `bayar_bukti` varchar(250) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_retur`
--

CREATE TABLE `sales_retur` (
  `id_sales_retur` bigint(20) NOT NULL,
  `id_sales_order` bigint(20) NOT NULL,
  `tanggal_retur` date NOT NULL,
  `alasan_retur` varchar(250) DEFAULT NULL,
  `id_penerima_barang` int(11) NOT NULL,
  `catatan_kondisi_barang` varchar(250) DEFAULT NULL,
  `total_tagihan_retur` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sales_retur`
--

INSERT INTO `sales_retur` (`id_sales_retur`, `id_sales_order`, `tanggal_retur`, `alasan_retur`, `id_penerima_barang`, `catatan_kondisi_barang`, `total_tagihan_retur`) VALUES
(1, 14, '2021-11-30', 'asdas', 5, 'bagus', 0),
(2, 16, '2021-12-01', 'asdas', 3, 'bagus', 21905000),
(3, 25, '2021-12-02', 'asdas', 3, 'bagus', 1608000),
(4, 28, '2021-12-07', 'Barang tidak bagus', 5, 'bagus', 1125000),
(5, 29, '2021-12-07', '1231', 3, '12312', 3300000),
(6, 6, '2021-12-07', '12312', 3, '12312', 799500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_retur_item`
--

CREATE TABLE `sales_retur_item` (
  `id_sales_retur_item` bigint(20) NOT NULL,
  `retur_id_sales_order` bigint(20) NOT NULL,
  `retur_id_sales_retur` bigint(20) NOT NULL,
  `retur_id_outlet_penjualan` int(11) NOT NULL,
  `retur_created_id_user` int(11) DEFAULT NULL,
  `retur_created_date` datetime DEFAULT NULL,
  `retur_created_ip_address` varchar(64) DEFAULT NULL,
  `sales_id_sales_order` bigint(20) NOT NULL,
  `sales_harga_jual` bigint(20) NOT NULL,
  `sales_id_outlet_penjualan` int(11) NOT NULL,
  `sales_created_id_user` int(11) NOT NULL,
  `sales_created_date` datetime NOT NULL,
  `sales_created_ip_address` varchar(64) NOT NULL,
  `id_material_finish` bigint(20) NOT NULL,
  `id_material` bigint(20) NOT NULL,
  `id_material_kategori1` bigint(20) NOT NULL,
  `id_material_kategori2` bigint(20) NOT NULL,
  `id_material_kategori3` bigint(20) NOT NULL,
  `yard` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `year` int(4) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `no_urut_kode` varchar(20) NOT NULL,
  `no_splitting` int(11) NOT NULL,
  `barcode_kode` varchar(50) NOT NULL,
  `deskripsi` varchar(500) DEFAULT NULL,
  `is_packing` int(1) NOT NULL,
  `id_basic_packing` int(11) NOT NULL,
  `id_material_in_item_proc` bigint(20) NOT NULL,
  `id_material_in` bigint(20) NOT NULL,
  `is_join_packing` int(1) NOT NULL DEFAULT 0,
  `join_info` varchar(250) DEFAULT NULL,
  `id_gudang` int(11) NOT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sales_retur_item`
--

INSERT INTO `sales_retur_item` (`id_sales_retur_item`, `retur_id_sales_order`, `retur_id_sales_retur`, `retur_id_outlet_penjualan`, `retur_created_id_user`, `retur_created_date`, `retur_created_ip_address`, `sales_id_sales_order`, `sales_harga_jual`, `sales_id_outlet_penjualan`, `sales_created_id_user`, `sales_created_date`, `sales_created_ip_address`, `id_material_finish`, `id_material`, `id_material_kategori1`, `id_material_kategori2`, `id_material_kategori3`, `yard`, `kode`, `year`, `no_urut`, `no_urut_kode`, `no_splitting`, `barcode_kode`, `deskripsi`, `is_packing`, `id_basic_packing`, `id_material_in_item_proc`, `id_material_in`, `is_join_packing`, `join_info`, `id_gudang`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(1, 14, 1, 2, 7, '2021-11-30 16:00:52', '::1', 0, 0, 0, 0, '0000-00-00 00:00:00', '', 84, 21, 2, 2, 3, 1200, 'DCN-BLU-MT-BMS-21-0001', 2021, 1, '0001', 0, '2010000000847', '', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL),
(7, 16, 2, 2, 7, '2021-12-01 06:40:49', '::1', 16, 65000, 2, 7, '2021-12-01 05:29:58', '::1', 10, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0010', 2021, 10, '0010', 3, '', NULL, 1, 1, 123, 57, 0, NULL, 1, NULL, NULL, NULL),
(8, 16, 2, 2, 7, '2021-12-01 07:47:17', '::1', 16, 65000, 2, 7, '2021-12-01 05:29:36', '::1', 7, 16, 2, 2, 2, 29, 'BCS-BLU-MT-BMA-21-0007', 2021, 7, '0007', 2, '', NULL, 1, 2, 121, 57, 1, '9 + 20', 1, NULL, NULL, NULL),
(9, 25, 3, 2, 7, '2021-12-02 16:00:00', '::1', 25, 4800, 2, 7, '2021-12-02 15:10:19', '::1', 6, 16, 2, 2, 2, 90, 'BCS-BLU-MT-BMA-21-0006', 2021, 6, '0006', 2, '', NULL, 1, 1, 122, 57, 0, NULL, 1, NULL, NULL, NULL),
(10, 16, 2, 2, 7, '2021-12-01 08:03:14', '::1', 16, 65000, 2, 7, '2021-12-01 05:29:50', '::1', 9, 16, 2, 2, 2, 60, 'BCS-BLU-MT-BMA-21-0009', 2021, 9, '0009', 2, '', NULL, 1, 1, 123, 57, 0, NULL, 2, NULL, NULL, NULL),
(11, 25, 3, 2, 7, '2021-12-02 15:59:54', '::1', 25, 12000, 2, 7, '2021-12-02 15:10:11', '::1', 3, 16, 2, 2, 2, 98, 'BCS-BLU-MT-BMA-21-0003', 2021, 3, '0003', 2, '', NULL, 1, 1, 118, 57, 0, NULL, 1, NULL, NULL, NULL),
(14, 28, 4, 2, 7, '2021-12-07 15:06:39', '::1', 28, 12500, 2, 7, '2021-12-07 14:21:06', '::1', 26, 16, 2, 2, 1, 90, 'BCS-BLU-MT-WPP-21-0005', 2021, 5, '0005', 1, '', NULL, 1, 1, 135, 56, 0, NULL, 1, NULL, NULL, NULL),
(15, 29, 5, 2, 7, '2021-12-07 15:20:10', '::1', 29, 15000, 2, 7, '2021-12-07 15:17:48', '::1', 25, 16, 2, 2, 1, 140, 'BCS-BLU-MT-WPP-21-0004', 2021, 4, '0004', 2, '', NULL, 1, 2, 133, 56, 1, '80 + 60', 1, NULL, NULL, NULL),
(16, 29, 5, 2, 7, '2021-12-07 15:21:45', '::1', 29, 15000, 2, 7, '2021-12-07 15:18:05', '::1', 30, 16, 2, 2, 1, 80, 'BCS-BLU-MT-WPP-21-0009', 2021, 9, '0009', 1, '', NULL, 1, 1, 136, 56, 0, NULL, 1, NULL, NULL, NULL),
(17, 6, 6, 2, 7, '2021-12-07 16:42:53', '::1', 6, 6500, 2, 7, '2021-10-24 19:46:10', '::1', 63, 17, 2, 1, 2, 123, 'LRA-BLU-PL-BMA-02-0001', 2002, 1, '0001', 0, '2006300000007', 'asdas', 1, 2, 0, 0, 0, '', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `section_content`
--

CREATE TABLE `section_content` (
  `id_section_content` int(11) NOT NULL,
  `section_content` varchar(250) NOT NULL,
  `is_active` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `section_content`
--

INSERT INTO `section_content` (`id_section_content`, `section_content`, `is_active`) VALUES
(1, 'HOME', 1),
(2, 'ABOUT US', 1),
(3, 'PRODUCT', 1),
(5, 'CONTACT US', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_opname`
--

CREATE TABLE `stock_opname` (
  `id_stock_opname` bigint(20) NOT NULL,
  `tanggal_stock_opname` date NOT NULL,
  `nama_kegiatan` varchar(250) NOT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `created_ip_address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stock_opname`
--

INSERT INTO `stock_opname` (`id_stock_opname`, `tanggal_stock_opname`, `nama_kegiatan`, `keterangan`, `created_date`, `created_user_id`, `created_ip_address`) VALUES
(1, '2022-02-14', 'Stock Opname 2022-02-14', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_opname_item`
--

CREATE TABLE `stock_opname_item` (
  `id_stock_opname_item` bigint(20) NOT NULL,
  `id_stock_opname` bigint(20) NOT NULL,
  `id_material_finish` bigint(20) NOT NULL,
  `id_gudang` bigint(20) NOT NULL,
  `redundat_barcode_code` varchar(100) DEFAULT NULL,
  `keterangan` varchar(250) NOT NULL,
  `entry_time` datetime NOT NULL,
  `created_user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stock_opname_item`
--

INSERT INTO `stock_opname_item` (`id_stock_opname_item`, `id_stock_opname`, `id_material_finish`, `id_gudang`, `redundat_barcode_code`, `keterangan`, `entry_time`, `created_user_id`) VALUES
(1, 1, 48, 1, '2010000000489', '', '2022-02-16 08:56:54', 1),
(2, 1, 49, 1, '2010000000496', '', '2022-02-16 14:13:02', 1),
(3, 1, 50, 1, '2005000000003', '', '2022-02-16 14:13:10', 1),
(4, 1, 51, 1, '2010000000519', '', '2022-02-16 14:13:16', 1),
(5, 1, 61, 1, '2006100000009', '', '2022-02-16 14:14:35', 1),
(6, 1, 63, 1, '2006300000007', '', '2022-02-16 14:15:40', 1),
(7, 1, 64, 1, '2006400000006', '', '2022-02-16 14:15:51', 1),
(8, 1, 69, 1, '2006900000001', '', '2022-02-16 14:16:23', 1),
(10, 1, 71, 1, '2007100000006', '', '2022-02-16 14:17:53', 1),
(11, 1, 72, 1, '2007200000005', '', '2022-02-16 14:19:59', 1),
(16, 1, 77, 1, '2010000000779', '', '2022-02-16 14:22:15', 1),
(19, 1, 74, 1, '2007400000003', 'Sesuai', '2022-02-16 15:11:04', 1),
(21, 1, 70, 1, '2007000000007', 'Gudang tidak sesuai', '2022-02-16 15:17:34', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur_material`
--

CREATE TABLE `struktur_material` (
  `id_struktur_material` bigint(20) NOT NULL,
  `id_material` bigint(20) NOT NULL,
  `id_material_kategori1` int(11) NOT NULL,
  `id_material_kategori2` int(11) NOT NULL,
  `id_material_kategori3` int(11) NOT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `struktur_material`
--

INSERT INTO `struktur_material` (`id_struktur_material`, `id_material`, `id_material_kategori1`, `id_material_kategori2`, `id_material_kategori3`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(1, 23, 2, 2, 3, NULL, NULL, NULL),
(2, 23, 2, 2, 3, NULL, NULL, NULL),
(3, 23, 2, 2, 3, NULL, NULL, NULL),
(4, 16, 1, 2, 3, NULL, NULL, NULL),
(5, 16, 2, 2, 3, NULL, NULL, NULL),
(6, 14, 2, 2, 3, NULL, NULL, NULL),
(7, 21, 1, 2, 1, NULL, NULL, NULL),
(8, 16, 1, 2, 2, NULL, NULL, NULL),
(9, 23, 1, 2, 3, NULL, NULL, NULL),
(10, 16, 2, 1, 3, NULL, NULL, NULL),
(11, 16, 2, 2, 3, NULL, NULL, NULL),
(12, 16, 2, 2, 3, NULL, NULL, NULL),
(13, 16, 2, 2, 3, NULL, NULL, NULL),
(14, 15, 1, 1, 2, NULL, NULL, NULL),
(15, 14, 2, 2, 3, NULL, NULL, NULL),
(16, 14, 2, 2, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur_material_item`
--

CREATE TABLE `struktur_material_item` (
  `id_struktur_material_item` bigint(20) NOT NULL,
  `id_struktur_material` bigint(20) NOT NULL,
  `id_material_raw_kategori` bigint(20) DEFAULT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `struktur_material_item`
--

INSERT INTO `struktur_material_item` (`id_struktur_material_item`, `id_struktur_material`, `id_material_raw_kategori`, `created_id_user`, `created_date`, `created_ip_address`) VALUES
(1, 1, 1, NULL, NULL, NULL),
(2, 6, 4, NULL, NULL, NULL),
(3, 6, 3, NULL, NULL, NULL),
(4, 7, 2, NULL, NULL, NULL),
(5, 8, 2, NULL, NULL, NULL),
(6, 12, 2, NULL, NULL, NULL),
(7, 13, 2, NULL, NULL, NULL),
(8, 14, 2, NULL, NULL, NULL),
(9, 15, 3, NULL, NULL, NULL),
(10, 10, 3, NULL, NULL, NULL),
(11, 11, 4, NULL, NULL, NULL),
(12, 5, 3, NULL, NULL, NULL),
(13, 16, 5, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subcontractor`
--

CREATE TABLE `subcontractor` (
  `id_subcontractor` bigint(20) NOT NULL,
  `nama_subcontractor` varchar(250) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nomor_telepon` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `npwp` varchar(250) DEFAULT NULL,
  `nama_kontak` varchar(250) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subcontractor`
--

INSERT INTO `subcontractor` (`id_subcontractor`, `nama_subcontractor`, `alamat`, `id_kabupaten`, `nomor_telepon`, `email`, `npwp`, `nama_kontak`, `created_date`, `created_user_id`, `created_ip_address`) VALUES
(1, 'Bagas', 'Jl. Jakarta 28 Utara', 1112, '', '', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` bigint(20) NOT NULL,
  `name_short` varchar(250) NOT NULL,
  `name_company` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `zip` varchar(200) NOT NULL,
  `country` varchar(150) NOT NULL,
  `email_address` varchar(250) DEFAULT NULL,
  `phone_number` varchar(150) DEFAULT NULL,
  `id_type_of_supplier` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_ip_address` varchar(100) DEFAULT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `name_short`, `name_company`, `address`, `city`, `state`, `zip`, `country`, `email_address`, `phone_number`, `id_type_of_supplier`, `created_date`, `created_time`, `created_ip_address`, `created_id_user`, `id_user`) VALUES
(1, 'Abc', 'PT. Abc Gosari', 'Jl. Jakarta 28 Jakrta Urta', 'Bandung', 'Jakarta', '8290', 'Indonesia', 'sudirman@gmail.com', '8729123', 2, NULL, NULL, NULL, NULL, NULL),
(2, 'PT. BERONICA', 'Beronica', 'Jl. Gajah', 'Bandung', 'Jawa Tengah', '45111', 'Indonesia', 'beronica@gmail.com', '08123912', 0, NULL, NULL, NULL, NULL, NULL),
(3, 'SM', 'PT. Samsan', 'Jl. Jakarta 28 Jakrta Urta', 'Bandung', 'Jakarta', '8290', 'Indonesia', 'sudirman@gmail.com', '8729123', 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier_delivery_order`
--

CREATE TABLE `supplier_delivery_order` (
  `id_supplier_delivery_order` bigint(20) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `nomor_surat_jalan` varchar(200) NOT NULL,
  `tanggal_surat_jalan` date NOT NULL,
  `nomor_invoice` varchar(200) DEFAULT NULL,
  `catatan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier_delivery_order`
--

INSERT INTO `supplier_delivery_order` (`id_supplier_delivery_order`, `id_supplier`, `nomor_surat_jalan`, `tanggal_surat_jalan`, `nomor_invoice`, `catatan`) VALUES
(1, 1, 'xxyyyzzz', '0000-00-00', '09182', 'Tidak ada catatan'),
(2, 1, '1109', '2021-08-06', '', ''),
(3, 1, '1109', '2021-08-18', '', 'Bagus lah'),
(4, 1, '1109-2311', '2021-08-17', '', 'Bagus siap digunakan'),
(5, 2, '92012', '2021-08-10', '', ''),
(6, 3, '1109', '2021-08-06', '', ''),
(7, 1, '1109-2311', '2021-08-05', '', 'sdasda'),
(8, 3, 'D-2901/W1234', '2021-08-18', '', 'Baby Boom'),
(9, 1, '1109', '2021-08-11', '', ''),
(10, 1, 'as', '2021-09-14', '', ''),
(11, 1, '12', '2021-10-07', '', ''),
(12, 1, '12132', '2021-10-13', '', '12312'),
(13, 1, 'B-2342', '2021-08-12', '', ''),
(14, 1, 'D-2901/W1234', '2021-08-06', '', ''),
(15, 1, 'asd', '2021-08-12', NULL, ''),
(16, 1, 'asd', '2021-08-12', NULL, '23123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier_do_item`
--

CREATE TABLE `supplier_do_item` (
  `id_supplier_do_item` bigint(20) NOT NULL,
  `id_supplier_delivery_order` bigint(20) NOT NULL,
  `id_material` int(11) NOT NULL,
  `varian` varchar(250) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` double(16,2) NOT NULL,
  `total_price` double(16,2) NOT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier_do_item`
--

INSERT INTO `supplier_do_item` (`id_supplier_do_item`, `id_supplier_delivery_order`, `id_material`, `varian`, `qty`, `unit_price`, `total_price`, `keterangan`, `created_date`, `created_user_id`, `created_ip_address`) VALUES
(1, 1, 1, '12', 12, 12.00, 4000.00, '', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier_raw`
--

CREATE TABLE `supplier_raw` (
  `id_supplier_raw` bigint(20) NOT NULL,
  `nama_supplier` varchar(250) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nomor_telepon` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `npwp` varchar(250) DEFAULT NULL,
  `nama_kontak` varchar(250) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier_raw`
--

INSERT INTO `supplier_raw` (`id_supplier_raw`, `nama_supplier`, `alamat`, `id_kabupaten`, `nomor_telepon`, `email`, `npwp`, `nama_kontak`, `created_date`, `created_user_id`, `created_ip_address`) VALUES
(1, 'Pt. Beronica', 'Jalan Gajah', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Supplier B', 'Jl. Gajah', 1112, '123', 'sudirman@gmail.com', '0180123', 'Kontak Bos', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit_produksi`
--

CREATE TABLE `unit_produksi` (
  `id_unit_produksi` bigint(20) NOT NULL,
  `nama_unit` varchar(250) NOT NULL,
  `lokasi` varchar(250) DEFAULT NULL,
  `foto1` varchar(250) NOT NULL,
  `desc_fungsi` varchar(250) DEFAULT NULL,
  `desc_material_in` varchar(250) DEFAULT NULL,
  `desc_proses` varchar(500) DEFAULT NULL,
  `desc_material_out` varchar(250) DEFAULT NULL,
  `jumlah_operator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `unit_produksi`
--

INSERT INTO `unit_produksi` (`id_unit_produksi`, `nama_unit`, `lokasi`, `foto1`, `desc_fungsi`, `desc_material_in`, `desc_proses`, `desc_material_out`, `jumlah_operator`) VALUES
(10, 'UNIT PACKING KAIN', 'Pabrik 2 - TAMAN KOPO INDAH 3 E5 Blok 00 No-1 Kel. MEKAR RAHAYU Kec. MARGAASIH Kota BANDUNG', '', '1) Menghitung ulang kain yang datang (yard ulang)\r\n2) Melaporkan hasil hitungan dan berapa yang dibuang\r\n3) Mengemas ulang dengan plastik baru, cone baru dan label baru', 'Kain yang sudah dimakloon dari pihak ketiga', 'Menghitung ulang kain, menghitung BS, mengemas (packing) dengan yang baru', 'Kain yang sudah dipacking dengan potongan atau ukuran tertentu', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `auth_key` varchar(250) NOT NULL,
  `status` smallint(6) NOT NULL,
  `password_reset_token` varchar(250) NOT NULL,
  `user_level` enum('admin','member','produksi','sales','management (ST)','ADM') NOT NULL DEFAULT 'ADM',
  `role` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `full_name`, `username`, `email`, `password_hash`, `auth_key`, `status`, `password_reset_token`, `user_level`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@admin.com', '$2y$13$wUP89zDmoJhxVQ55PqilV.K/5e3.K2RSRuhHShtr5zVJzSXZtBFJS', 'GL63CdJxr0wI2BuKh7JNC8rJU7XNUY24', 10, 'asdas', 'admin', 20, 1530780329, 1557132823),
(2, 'amanda', 'amanda', 'amanda@gmail.com', '$2y$13$HOmDlRno1UuYKruSiCCloeFYl42kgo.Xe/YQkhJ7rT5UqzgVOk8km', '_zeXxi6iVr_xs-FqKaD4Gyc6gk1oQPSi', 10, '-eQBpDCsiG-WVNzoR7Na8Np0nPMLgPpr_1633397521', 'sales', 10, 1633397521, 1633397521),
(3, 'Amanda', 'suppliertest1', 'sudirmans@gmail.com', '$2y$13$CSMzk9sQ8oRHAnjpmxKq7.pwwX6PdqfR.zo5Wl9kS7Uaazac.43zW', 'HMddwQmHLuiS_Zr4PeXZNFKFTJYmyfAR', 10, 'gXqy7NycH5Llh2TG3gaxo30Ni3J9LCQ5_1633412685', 'sales', 10, 1633412685, 1633412685),
(4, 'badak', 'badak', 'badak@gmail.com', '$2y$13$dGB1UbrwcjR6ia0HINlkIOqWrVsa5MDl2KqWlvaufYGcWT3bKfYue', 'BU11S0MYHqIajs0crfbLGwa6XLP8V2Tm', 10, '9UFEWmCQdTdbzVKgRuNuGdu4mCNryPcc_1633412961', 'sales', 10, 1633412961, 1633412961),
(5, 'cicak', 'cicak', 'badak@gmail.com', '$2y$13$0ix5aSza9TaQe/sTZePRVewqWclltHfOhmmLr6nqvdAz1dGOVYitq', 'E2TwV7p0va1Mx7d_hc0p7kixVe6n8DFI', 10, 'Znib2lA4kDw4Kb0H_E_6_h5Ae5pHIq6j_1633413050', 'sales', 10, 1633413050, 1633413050),
(6, 'dana', 'dana', 'dana@gmail.com', '$2y$13$dpaCW9gZ5VwtiMu6mKaN0.jSEmcVyXeqpCoQ9Hlp/Uw8wQ1OCzuSy', 'x2vAcCIgVx3O2A5CYBrqst_5ZgJvIyjq', 10, 'qlLsauvlCxfCOl9WQf4UTk7NjHxHhG60_1633413126', 'sales', 10, 1633413126, 1633413126),
(7, 'edane', 'edane', 'edane@gmail.com', '$2y$13$hpUJwJbZDhUwargdlP/gPOfbPPg55EGQ8Bg2KbvPPsA16Ele6puNO', 'sd8Vt6rhcpnB0GIrGCPG5DivJXxeL5VJ', 10, 'gKJllGZg69i-x4Ryf_Y7Rxd7sJd5yCEM_1633413155', 'sales', 10, 1633413155, 1637881922),
(8, 'fafa', 'fafa', 'fafa@gmail.com', '$2y$13$QePfjZeow1IT/8nfW6XT1upknZy5JaUI2hJqMFeo7kwDDT0NAidvO', 'i2v3u3b7BSh2th53lx6nF33pXu3eLCQs', 10, 'rKIDO7W-6KjAv3pGjGXNtyjujtnSpUyk_1633420082', 'sales', 10, 1633420082, 1633420082),
(9, 'maria', 'maria', 'maria@gmail.com', '$2y$13$a9gU9aRmYVbAC15gzQG2t.ErV2fIL1sp2a6pFtZ2eTN.fs9BfKYJC', 'KNgle8pr2uCN0yHPzthO5ZkLZWAujtfe', 10, 'KNb7TJdDo0bBp4UyWmZrDpi0UcGHO02b_1633932308', 'sales', 10, 1633932308, 1643874577),
(10, 'dudung', 'dudung', 'dudung@mail.com', '$2y$13$q2p0JKebK0FaNjoSTO8B6u/Zj3u.ZkrMKhEP7kBuJhYPFQqYimdUq', 'CWPbj5JkcMEJ0-zwhikfigXXW2OVF2Qu', 10, 'znQZmKoTvTMKGrFzUsrPGoaCuSZ_jGbN_1637317971', 'produksi', 10, 1637317971, 1637317971),
(11, 'mamaria', 'mamari', 'mamari@mail.com', '$2y$13$6/io6nV/mv9PTLNaKJrNhuhtbSTFyVDEk5h54OCtauXbpt0ISjFci', 'IXQ24vtqjr8-0wSyCpnCO-AWSrZDelmK', 10, 'dExfX_HafUKMdZk-XIspJQ1cbXLhELDA_1638343265', 'sales', 10, 1638343265, 1638343265),
(12, 'Outlet Jakarta', 'jakarta', 'outja@mail.com', '$2y$13$ZMt/apiZ8Q7gIlYoHFedlulorEbT9iVPvwhnBRQZ3FfQCFHgixSL2', 'u3F2t0S5zLwtLaKx8DOKTqxvVct-w2R7', 10, 'O7-VXPcO_1Mixx4dO7hFcy7hOvyHo1de_1639095512', 'sales', 10, 1639095512, 1639095512);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_outlet`
--

CREATE TABLE `user_outlet` (
  `id_user_outlet` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_outlet_penjualan` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_user_id` int(11) DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_outlet`
--

INSERT INTO `user_outlet` (`id_user_outlet`, `id_user`, `id_outlet_penjualan`, `created_date`, `created_user_id`, `created_ip_address`) VALUES
(1, 7, 2, NULL, NULL, NULL),
(2, 8, 1, NULL, NULL, NULL),
(3, 9, 1, NULL, NULL, NULL),
(4, 11, 1, NULL, NULL, NULL),
(5, 12, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_perusahaan`
--

CREATE TABLE `user_perusahaan` (
  `id_user_perusahaan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_ip_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_perusahaan`
--

INSERT INTO `user_perusahaan` (`id_user_perusahaan`, `id_user`, `id_perusahaan`, `created_date`, `created_user`, `created_ip_address`) VALUES
(1, 5, 1, '0000-00-00 00:00:00', 0, ''),
(2, 8, 15, '0000-00-00 00:00:00', 0, ''),
(3, 1, 2, '0000-00-00 00:00:00', 0, ''),
(4, 10, 1, '2019-02-25 06:14:48', 0, '::1'),
(5, 12, 99, '2019-03-08 04:20:19', 0, '::1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_system`
--

CREATE TABLE `user_system` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `user_systemname` varchar(250) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `auth_key` varchar(250) NOT NULL,
  `status` smallint(6) NOT NULL,
  `password_reset_token` varchar(250) NOT NULL,
  `user_system_level` enum('admin','member','produksi','sales','management (ST)','ADM') NOT NULL DEFAULT 'ADM',
  `role` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_system`
--

INSERT INTO `user_system` (`id`, `full_name`, `user_systemname`, `email`, `password_hash`, `auth_key`, `status`, `password_reset_token`, `user_system_level`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@admin.com', '$2y$13$wUP89zDmoJhxVQ55PqilV.K/5e3.K2RSRuhHShtr5zVJzSXZtBFJS', 'GL63CdJxr0wI2BuKh7JNC8rJU7XNUY24', 10, 'asdas', 'admin', 20, 1530780329, 1557132823),
(2, 'amanda', 'amanda', 'amanda@gmail.com', '$2y$13$HOmDlRno1UuYKruSiCCloeFYl42kgo.Xe/YQkhJ7rT5UqzgVOk8km', '_zeXxi6iVr_xs-FqKaD4Gyc6gk1oQPSi', 10, '-eQBpDCsiG-WVNzoR7Na8Np0nPMLgPpr_1633397521', 'sales', 10, 1633397521, 1633397521),
(3, 'Amanda', 'suppliertest1', 'sudirmans@gmail.com', '$2y$13$CSMzk9sQ8oRHAnjpmxKq7.pwwX6PdqfR.zo5Wl9kS7Uaazac.43zW', 'HMddwQmHLuiS_Zr4PeXZNFKFTJYmyfAR', 10, 'gXqy7NycH5Llh2TG3gaxo30Ni3J9LCQ5_1633412685', 'sales', 10, 1633412685, 1633412685),
(4, 'badak', 'badak', 'badak@gmail.com', '$2y$13$dGB1UbrwcjR6ia0HINlkIOqWrVsa5MDl2KqWlvaufYGcWT3bKfYue', 'BU11S0MYHqIajs0crfbLGwa6XLP8V2Tm', 10, '9UFEWmCQdTdbzVKgRuNuGdu4mCNryPcc_1633412961', 'sales', 10, 1633412961, 1633412961),
(5, 'cicak', 'cicak', 'badak@gmail.com', '$2y$13$0ix5aSza9TaQe/sTZePRVewqWclltHfOhmmLr6nqvdAz1dGOVYitq', 'E2TwV7p0va1Mx7d_hc0p7kixVe6n8DFI', 10, 'Znib2lA4kDw4Kb0H_E_6_h5Ae5pHIq6j_1633413050', 'sales', 10, 1633413050, 1633413050),
(6, 'dana', 'dana', 'dana@gmail.com', '$2y$13$dpaCW9gZ5VwtiMu6mKaN0.jSEmcVyXeqpCoQ9Hlp/Uw8wQ1OCzuSy', 'x2vAcCIgVx3O2A5CYBrqst_5ZgJvIyjq', 10, 'qlLsauvlCxfCOl9WQf4UTk7NjHxHhG60_1633413126', 'sales', 10, 1633413126, 1633413126),
(7, 'edane', 'edane', 'edane@gmail.com', '$2y$13$hpUJwJbZDhUwargdlP/gPOfbPPg55EGQ8Bg2KbvPPsA16Ele6puNO', 'sd8Vt6rhcpnB0GIrGCPG5DivJXxeL5VJ', 10, 'gKJllGZg69i-x4Ryf_Y7Rxd7sJd5yCEM_1633413155', 'sales', 10, 1633413155, 1637881922),
(8, 'fafa', 'fafa', 'fafa@gmail.com', '$2y$13$QePfjZeow1IT/8nfW6XT1upknZy5JaUI2hJqMFeo7kwDDT0NAidvO', 'i2v3u3b7BSh2th53lx6nF33pXu3eLCQs', 10, 'rKIDO7W-6KjAv3pGjGXNtyjujtnSpUyk_1633420082', 'sales', 10, 1633420082, 1633420082),
(9, 'maria', 'maria', 'maria@gmail.com', '$2y$13$oQ/ysg5HWdhzCQZKN3tfd.KQBys0UtLQMeyycey4tPCeGcX2U/pLG', 'KNgle8pr2uCN0yHPzthO5ZkLZWAujtfe', 10, 'KNb7TJdDo0bBp4UyWmZrDpi0UcGHO02b_1633932308', 'sales', 10, 1633932308, 1633932308),
(10, 'dudung', 'dudung', 'dudung@mail.com', '$2y$13$q2p0JKebK0FaNjoSTO8B6u/Zj3u.ZkrMKhEP7kBuJhYPFQqYimdUq', 'CWPbj5JkcMEJ0-zwhikfigXXW2OVF2Qu', 10, 'znQZmKoTvTMKGrFzUsrPGoaCuSZ_jGbN_1637317971', 'produksi', 10, 1637317971, 1637317971),
(11, 'mamaria', 'mamari', 'mamari@mail.com', '$2y$13$6/io6nV/mv9PTLNaKJrNhuhtbSTFyVDEk5h54OCtauXbpt0ISjFci', 'IXQ24vtqjr8-0wSyCpnCO-AWSrZDelmK', 10, 'dExfX_HafUKMdZk-XIspJQ1cbXLhELDA_1638343265', 'sales', 10, 1638343265, 1638343265),
(12, 'Outlet Jakarta', 'jakarta', 'outja@mail.com', '$2y$13$ZMt/apiZ8Q7gIlYoHFedlulorEbT9iVPvwhnBRQZ3FfQCFHgixSL2', 'u3F2t0S5zLwtLaKx8DOKTqxvVct-w2R7', 10, 'O7-VXPcO_1Mixx4dO7hFcy7hOvyHo1de_1639095512', 'sales', 10, 1639095512, 1639095512);

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_page`
--

CREATE TABLE `web_page` (
  `id_web_page` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `with_banner` int(1) NOT NULL,
  `content_lang1` text NOT NULL,
  `content_lang2` text DEFAULT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `web_page`
--

INSERT INTO `web_page` (`id_web_page`, `title`, `with_banner`, `content_lang1`, `content_lang2`, `created_id_user`, `created_date`, `created_ip_address`, `is_active`) VALUES
(1, 'custom-page', 1, '<h2 class=\"featurette-heading\">COMPANY INTRODUCTION</h2>\r\n<hr />\r\n<p class=\"lead\">Founded in 1990, Ecogreen Oleochemicals is one of the leading producers of Natural Fatty Alcohols in the world. Ecogreen Oleochemicals has production facilities in Indonesia which producing various cuts of Saturated Fatty Alcohols (from C8 to C18). Unsaturated Fatty Alcohols (Oleyl Alcohols), Oleic Acid, Refined Glycerin and Specialty Esters such as Medium Chain Triglycerides (MCT for Food, Cosmetics, Pharmaceutical and Lubricant application).</p>\r\n<p class=\"lead\">Ecogreen Oleochemicals has also Ethoxylation Plant (EMPL) in Singapore producing Fatty Alcohol Ethoxylates (downstream of fatty alcohol). In Germany, Ecogreen Oleochemicals (DHW Deutsche Hydrierwerke GmbH Rodleben) has production facilities to produce Unsaturated Fatty Alcohols (Oleyl Alcohols), Primary Fatty Amines, Specialty Esters, Sorbitol powder. In France, Ecogreen Oleochemicals (E&amp;S Chimie) has production facilities to produce Fatty Alcohol Ethoxylates, Fatty Alcohol Esther Sulfates, Fatty Alcohol Sulfates and Specialty Esters. Currently Ecogreen Oleochemicals employs about 1,300 people globally.</p>\r\n<p class=\"lead\">To serve customers globally, Ecogreen Oleochemicals establishes marketing offices in Singapore, Germany and USA.</p>', '<h2 class=\"featurette-heading\">COMPANY INTRODUCTION</h2>\r\n<hr />\r\n<p class=\"lead\">Founded in 1990, Ecogreen Oleochemicals is one of the leading producers of Natural Fatty Alcohols in the world. Ecogreen Oleochemicals has production facilities in Indonesia which producing various cuts of Saturated Fatty Alcohols (from C8 to C18). Unsaturated Fatty Alcohols (Oleyl Alcohols), Oleic Acid, Refined Glycerin and Specialty Esters such as Medium Chain Triglycerides (MCT for Food, Cosmetics, Pharmaceutical and Lubricant application).</p>\r\n<p class=\"lead\">Ecogreen Oleochemicals has also Ethoxylation Plant (EMPL) in Singapore producing Fatty Alcohol Ethoxylates (downstream of fatty alcohol). In Germany, Ecogreen Oleochemicals (DHW Deutsche Hydrierwerke GmbH Rodleben) has production facilities to produce Unsaturated Fatty Alcohols (Oleyl Alcohols), Primary Fatty Amines, Specialty Esters, Sorbitol powder. In France, Ecogreen Oleochemicals (E&amp;S Chimie) has production facilities to produce Fatty Alcohol Ethoxylates, Fatty Alcohol Esther Sulfates, Fatty Alcohol Sulfates and Specialty Esters. Currently Ecogreen Oleochemicals employs about 1,300 people globally.</p>\r\n<p class=\"lead\">To serve customers globally, Ecogreen Oleochemicals establishes marketing offices in Singapore, Germany and USA.</p>', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_vocabulary`
--

CREATE TABLE `web_vocabulary` (
  `id_web_vocabulary` bigint(20) NOT NULL,
  `vocab_lang1` varchar(250) NOT NULL,
  `vocab_lang2` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `web_vocabulary`
--

INSERT INTO `web_vocabulary` (`id_web_vocabulary`, `vocab_lang1`, `vocab_lang2`) VALUES
(1, 'Read More', 'Baca Lagi'),
(2, 'Berita', 'Berita'),
(3, 'Our Vission', 'Unsere Vision'),
(4, 'Our Mission', 'Unsere Aufgabe'),
(5, 'Our Values', 'Unsere Werte'),
(6, 'Corporate News', 'Unternehmensnachrichten'),
(7, 'Back', 'Zurück'),
(8, 'Create', 'Buat');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`),
  ADD KEY `id_parent` (`id_parent`);

--
-- Indeks untuk tabel `app_setting`
--
ALTER TABLE `app_setting`
  ADD PRIMARY KEY (`id_app_setting`);

--
-- Indeks untuk tabel `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `auth_assignment_user_id_idx` (`user_id`);

--
-- Indeks untuk tabel `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indeks untuk tabel `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indeks untuk tabel `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indeks untuk tabel `bank_pembayaran`
--
ALTER TABLE `bank_pembayaran`
  ADD PRIMARY KEY (`id_bank_pembayaran`);

--
-- Indeks untuk tabel `base_pendapatan`
--
ALTER TABLE `base_pendapatan`
  ADD PRIMARY KEY (`id_base_pendapatan`);

--
-- Indeks untuk tabel `base_salary`
--
ALTER TABLE `base_salary`
  ADD PRIMARY KEY (`id_base_salary`);

--
-- Indeks untuk tabel `basic_packing`
--
ALTER TABLE `basic_packing`
  ADD PRIMARY KEY (`id_basic_packing`);

--
-- Indeks untuk tabel `basic_packing_item`
--
ALTER TABLE `basic_packing_item`
  ADD PRIMARY KEY (`id_basic_packing_item`),
  ADD KEY `id_basic_packing` (`id_basic_packing`,`id_material_support`);

--
-- Indeks untuk tabel `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id_contact_us`),
  ADD KEY `id_office_region` (`id_office_region`);

--
-- Indeks untuk tabel `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id_content`),
  ADD KEY `keyname` (`keyname`),
  ADD KEY `id_section_content` (`id_section_content`),
  ADD KEY `id_frontend_topnav` (`id_frontend_topnav`);

--
-- Indeks untuk tabel `cpanel_leftmenu`
--
ALTER TABLE `cpanel_leftmenu`
  ADD PRIMARY KEY (`id_leftmenu`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `id_kabupaten` (`id_kabupaten`);

--
-- Indeks untuk tabel `customer_kredit`
--
ALTER TABLE `customer_kredit`
  ADD PRIMARY KEY (`id_customer_kredit`),
  ADD KEY `id_customer` (`id_customer`,`id_sales_order`,`tanggal`);

--
-- Indeks untuk tabel `customer_kredit_bayar`
--
ALTER TABLE `customer_kredit_bayar`
  ADD PRIMARY KEY (`id_customer_kredit_bayar`),
  ADD KEY `id_customer` (`id_customer`,`tanggal_bayar`,`id_bank_pembayaran`,`id_sales_order`);

--
-- Indeks untuk tabel `cv_pendidikan`
--
ALTER TABLE `cv_pendidikan`
  ADD PRIMARY KEY (`id_cv_pendidikan`),
  ADD KEY `id_pegawai` (`id_pegawai`,`id_jenjang_pendidikan`,`id_sekolah`);

--
-- Indeks untuk tabel `frontend_topnav`
--
ALTER TABLE `frontend_topnav`
  ADD PRIMARY KEY (`id_frontend_topnav`);

--
-- Indeks untuk tabel `gudang`
--
ALTER TABLE `gudang`
  ADD PRIMARY KEY (`id_gudang`),
  ADD KEY `id_outlet_penjualan` (`id_outlet_penjualan`);

--
-- Indeks untuk tabel `home_info`
--
ALTER TABLE `home_info`
  ADD PRIMARY KEY (`id_home_info`);

--
-- Indeks untuk tabel `hrm_absensi_pegawai`
--
ALTER TABLE `hrm_absensi_pegawai`
  ADD PRIMARY KEY (`id_hrm_absensi_pegawai`);

--
-- Indeks untuk tabel `hrm_mst_jenis_absensi`
--
ALTER TABLE `hrm_mst_jenis_absensi`
  ADD PRIMARY KEY (`id_mst_jenis_absensi`);

--
-- Indeks untuk tabel `hrm_pegawai`
--
ALTER TABLE `hrm_pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `jenis_kelamin` (`jenis_kelamin`),
  ADD KEY `NIP` (`NIP`),
  ADD KEY `agama` (`agama`),
  ADD KEY `status_pernikahan` (`status_pernikahan`),
  ADD KEY `golongan_darah` (`golongan_darah`),
  ADD KEY `cid` (`cid`),
  ADD KEY `id_hrm_status_pegawai` (`id_hrm_status_pegawai`),
  ADD KEY `id_hrm_status_organik` (`id_hrm_status_organik`),
  ADD KEY `pdk_id_tingkatpendidikan` (`pdk_id_tingkatpendidikan`),
  ADD KEY `reg_status_pegawai` (`reg_status_pegawai`),
  ADD KEY `id_perusahaan` (`id_perusahaan`),
  ADD KEY `userid` (`userid`),
  ADD KEY `pos_id_kk_profil_posisi` (`pos_id_kk_profil_posisi`);

--
-- Indeks untuk tabel `int_file_plr`
--
ALTER TABLE `int_file_plr`
  ADD PRIMARY KEY (`id_int_file_plr`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`id_jurnal`),
  ADD KEY `id_type_jurnal` (`id_type_jurnal`,`id_akun_debit`,`id_akun_kredit`);

--
-- Indeks untuk tabel `jurnal_type`
--
ALTER TABLE `jurnal_type`
  ADD PRIMARY KEY (`id_jurnal_type`);

--
-- Indeks untuk tabel `j_pembelian`
--
ALTER TABLE `j_pembelian`
  ADD PRIMARY KEY (`id_j_pembelian`),
  ADD KEY `id_material_support` (`id_material_support`,`tanggal_pembelian`,`bulan`,`tahun`);

--
-- Indeks untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`),
  ADD KEY `id_propinsi` (`id_propinsi`),
  ADD KEY `id_propinsi_2` (`id_propinsi`);

--
-- Indeks untuk tabel `kantor`
--
ALTER TABLE `kantor`
  ADD PRIMARY KEY (`id_kantor`);

--
-- Indeks untuk tabel `kantor_cabang`
--
ALTER TABLE `kantor_cabang`
  ADD PRIMARY KEY (`id_kantor_cabang`);

--
-- Indeks untuk tabel `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id_language`);

--
-- Indeks untuk tabel `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id_material`);

--
-- Indeks untuk tabel `material_finish`
--
ALTER TABLE `material_finish`
  ADD PRIMARY KEY (`id_material_finish`),
  ADD KEY `barcode_kode` (`barcode_kode`),
  ADD KEY `id_material_in_item_proc` (`id_material_in_item_proc`,`id_material_in`),
  ADD KEY `id_material` (`id_material`,`id_material_kategori1`,`id_material_kategori2`,`id_material_kategori3`,`yard`),
  ADD KEY `is_packing` (`is_packing`,`id_basic_packing`),
  ADD KEY `id_gudang` (`id_gudang`),
  ADD KEY `kode` (`kode`),
  ADD KEY `no_splitting` (`no_splitting`);

--
-- Indeks untuk tabel `material_finish_delete`
--
ALTER TABLE `material_finish_delete`
  ADD PRIMARY KEY (`id_material_finish_delete`),
  ADD KEY `barcode_kode` (`barcode_kode`),
  ADD KEY `id_material_in_item_proc` (`id_material_in_item_proc`,`id_material_in`),
  ADD KEY `id_material` (`id_material`,`id_material_kategori1`,`id_material_kategori2`,`id_material_kategori3`,`yard`),
  ADD KEY `is_packing` (`is_packing`,`id_basic_packing`),
  ADD KEY `id_gudang` (`id_gudang`),
  ADD KEY `kode` (`kode`),
  ADD KEY `no_splitting` (`no_splitting`),
  ADD KEY `id_material_finish` (`id_material_finish`) USING BTREE;

--
-- Indeks untuk tabel `material_finish_drop`
--
ALTER TABLE `material_finish_drop`
  ADD PRIMARY KEY (`id_material_finish`),
  ADD KEY `barcode_kode` (`barcode_kode`),
  ADD KEY `id_material_in_item_proc` (`id_material_in_item_proc`,`id_material_in`),
  ADD KEY `id_material` (`id_material`,`id_material_kategori1`,`id_material_kategori2`,`id_material_kategori3`,`yard`),
  ADD KEY `is_packing` (`is_packing`,`id_basic_packing`),
  ADD KEY `id_gudang` (`id_gudang`),
  ADD KEY `kode` (`kode`),
  ADD KEY `no_splitting` (`no_splitting`);

--
-- Indeks untuk tabel `material_in`
--
ALTER TABLE `material_in`
  ADD PRIMARY KEY (`id_material_in`),
  ADD KEY `id_supplier_delivery_order` (`id_supplier_delivery_order`),
  ADD KEY `id_unit_poduksi` (`id_unit_poduksi`,`id_material`,`id_material_kategori1`,`id_material_kategori2`,`id_material_kategori3`,`id_supplier_delivery_order`,`id_supplier`);

--
-- Indeks untuk tabel `material_in_item_proc`
--
ALTER TABLE `material_in_item_proc`
  ADD PRIMARY KEY (`id_material_in_item_proc`),
  ADD KEY `id_material_in` (`id_material_in`),
  ADD KEY `id_material_finish1` (`id_material_finish1`,`id_material_finish2`,`id_material_finish3`,`id_material_finish4`,`id_material_finish5`,`id_material_finish6`),
  ADD KEY `id_basic_packing1` (`id_basic_packing1`,`id_basic_packing2`,`id_basic_packing3`,`id_basic_packing4`,`id_basic_packing5`,`id_basic_packing6`);

--
-- Indeks untuk tabel `material_kategori1`
--
ALTER TABLE `material_kategori1`
  ADD PRIMARY KEY (`id_material`);

--
-- Indeks untuk tabel `material_kategori2`
--
ALTER TABLE `material_kategori2`
  ADD PRIMARY KEY (`id_material`);

--
-- Indeks untuk tabel `material_kategori3`
--
ALTER TABLE `material_kategori3`
  ADD PRIMARY KEY (`id_material`);

--
-- Indeks untuk tabel `material_raw_kategori1`
--
ALTER TABLE `material_raw_kategori1`
  ADD PRIMARY KEY (`id_material_raw_kategori`);

--
-- Indeks untuk tabel `material_sales`
--
ALTER TABLE `material_sales`
  ADD PRIMARY KEY (`id_material_sales`),
  ADD KEY `barcode_kode` (`barcode_kode`),
  ADD KEY `id_material_in_item_proc` (`id_material_in_item_proc`,`id_material_in`),
  ADD KEY `id_material` (`id_material`,`id_material_kategori1`,`id_material_kategori2`,`id_material_kategori3`,`yard`),
  ADD KEY `is_packing` (`is_packing`,`id_basic_packing`),
  ADD KEY `id_gudang` (`id_gudang`),
  ADD KEY `kode` (`kode`),
  ADD KEY `no_splitting` (`no_splitting`),
  ADD KEY `id_material_finish` (`id_material_finish`),
  ADD KEY `sales_created_id_user` (`sales_created_id_user`),
  ADD KEY `sales_id_outlet_penjualan` (`sales_id_outlet_penjualan`),
  ADD KEY `sales_id_sales_order` (`sales_id_sales_order`);

--
-- Indeks untuk tabel `material_sales_cancel`
--
ALTER TABLE `material_sales_cancel`
  ADD PRIMARY KEY (`id_material_sales`),
  ADD KEY `barcode_kode` (`barcode_kode`),
  ADD KEY `id_material_in_item_proc` (`id_material_in_item_proc`,`id_material_in`),
  ADD KEY `id_material` (`id_material`,`id_material_kategori1`,`id_material_kategori2`,`id_material_kategori3`,`yard`),
  ADD KEY `is_packing` (`is_packing`,`id_basic_packing`),
  ADD KEY `id_gudang` (`id_gudang`),
  ADD KEY `kode` (`kode`),
  ADD KEY `no_splitting` (`no_splitting`),
  ADD KEY `id_material_finish` (`id_material_finish`),
  ADD KEY `sales_created_id_user` (`sales_created_id_user`),
  ADD KEY `sales_id_outlet_penjualan` (`sales_id_outlet_penjualan`),
  ADD KEY `sales_id_sales_order` (`sales_id_sales_order`);

--
-- Indeks untuk tabel `material_sampel`
--
ALTER TABLE `material_sampel`
  ADD PRIMARY KEY (`id_material_sampel`),
  ADD KEY `id_material` (`id_material`,`id_material_kategori1`,`id_material_kategori2`,`id_material_kategori3`),
  ADD KEY `id_customer` (`id_customer`,`id_material_raw_kategori`,`id_subcontractor`,`id_material`,`id_material_kategori1`,`id_material_kategori2`,`id_material_kategori3`);

--
-- Indeks untuk tabel `material_support`
--
ALTER TABLE `material_support`
  ADD PRIMARY KEY (`id_material_support`);

--
-- Indeks untuk tabel `media_identity`
--
ALTER TABLE `media_identity`
  ADD PRIMARY KEY (`id_media_identity`);

--
-- Indeks untuk tabel `menu_link`
--
ALTER TABLE `menu_link`
  ADD PRIMARY KEY (`id_menu_link`);

--
-- Indeks untuk tabel `mst_jenjang_pendidikan`
--
ALTER TABLE `mst_jenjang_pendidikan`
  ADD PRIMARY KEY (`id_mst_jenjang_pendidikan`);

--
-- Indeks untuk tabel `mutasi_stock`
--
ALTER TABLE `mutasi_stock`
  ADD PRIMARY KEY (`id_mutasi_stock`),
  ADD KEY `tanggal_mutasi` (`tanggal_mutasi`,`id_gudang_asal`,`id_gudang_tujuan`,`id_pemberi_perintah`,`id_pelaksana_perintah`);

--
-- Indeks untuk tabel `mutasi_stock_item`
--
ALTER TABLE `mutasi_stock_item`
  ADD PRIMARY KEY (`id_mutasi_stock_item`),
  ADD KEY `id_mutasi_stock` (`id_mutasi_stock`,`id_material_finish`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Indeks untuk tabel `outlet_penjualan`
--
ALTER TABLE `outlet_penjualan`
  ADD PRIMARY KEY (`id_outlet_penjualan`);

--
-- Indeks untuk tabel `outsourcing_process_raw`
--
ALTER TABLE `outsourcing_process_raw`
  ADD PRIMARY KEY (`id_outsourcing_process_raw`),
  ADD KEY `id_customer` (`id_subcontractor`,`month`,`year`),
  ADD KEY `tanggal_order` (`tanggal_proses`),
  ADD KEY `bayar_cara` (`bayar_cara`,`status_proses`),
  ADD KEY `bayar_id_bank_pembayaran` (`bayar_id_bank_pembayaran`),
  ADD KEY `status_invoice` (`status_pembayaran`);

--
-- Indeks untuk tabel `outsourcing_process_raw_item`
--
ALTER TABLE `outsourcing_process_raw_item`
  ADD PRIMARY KEY (`id_outsourcing_process_raw_item`),
  ADD KEY `id_customer` (`id_outsourcing_process_raw`);

--
-- Indeks untuk tabel `pallet_gudang`
--
ALTER TABLE `pallet_gudang`
  ADD PRIMARY KEY (`id_pallet_gudang`),
  ADD KEY `pallet_group` (`pallet_group`),
  ADD KEY `nomor_pallet` (`nomor_pallet`);

--
-- Indeks untuk tabel `pembelian_material_support`
--
ALTER TABLE `pembelian_material_support`
  ADD PRIMARY KEY (`id_pembelian_material_support`);

--
-- Indeks untuk tabel `picking_list`
--
ALTER TABLE `picking_list`
  ADD PRIMARY KEY (`id_picking_list`);

--
-- Indeks untuk tabel `picking_list_item`
--
ALTER TABLE `picking_list_item`
  ADD PRIMARY KEY (`id_picking_list_item`),
  ADD KEY `id_picking_list` (`id_picking_list`);

--
-- Indeks untuk tabel `purchase_raw`
--
ALTER TABLE `purchase_raw`
  ADD PRIMARY KEY (`id_purchase_raw`),
  ADD KEY `id_customer` (`id_supplier`,`month`,`year`),
  ADD KEY `tanggal_order` (`tanggal_order`),
  ADD KEY `bayar_cara` (`bayar_cara`,`status_purchasing`),
  ADD KEY `bayar_id_bank_pembayaran` (`bayar_id_bank_pembayaran`),
  ADD KEY `status_invoice` (`status_pembayaran`);

--
-- Indeks untuk tabel `purchase_raw_item`
--
ALTER TABLE `purchase_raw_item`
  ADD PRIMARY KEY (`id_purchase_raw_item`),
  ADD KEY `id_customer` (`id_purchase_raw`);

--
-- Indeks untuk tabel `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  ADD PRIMARY KEY (`id_riwayat_jabatan`),
  ADD KEY `id_pegawai` (`id_pegawai`,`id_jabatan`,`id_kantor`);

--
-- Indeks untuk tabel `riwayat_pendidikan`
--
ALTER TABLE `riwayat_pendidikan`
  ADD PRIMARY KEY (`id_riwayat_pendidikan`),
  ADD KEY `id_pegawai` (`id_pegawai`,`id_jenjang_pendidikan`,`id_sekolah`);

--
-- Indeks untuk tabel `salary_monthly`
--
ALTER TABLE `salary_monthly`
  ADD PRIMARY KEY (`id_salary_monthly`);

--
-- Indeks untuk tabel `sales_cashflow`
--
ALTER TABLE `sales_cashflow`
  ADD PRIMARY KEY (`id_sales_cashflow`),
  ADD KEY `id_sales_order` (`id_sales_order`,`id_customer`,`tanggal_transaksi`,`id_bank_pembayaran`);

--
-- Indeks untuk tabel `sales_jurnal`
--
ALTER TABLE `sales_jurnal`
  ADD PRIMARY KEY (`id_sales_jurnal`),
  ADD KEY `id_type_jurnal` (`type`,`id_akun_debit`,`id_akun_kredit`),
  ADD KEY `id_sales_order` (`id_sales_order`,`id_customer`);

--
-- Indeks untuk tabel `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`id_sales_order`),
  ADD KEY `id_customer` (`id_customer`,`nomor`,`month`,`year`),
  ADD KEY `tanggal_order` (`tanggal_order`),
  ADD KEY `id_outlet_penjualan` (`id_outlet_penjualan`),
  ADD KEY `bayar_cara` (`bayar_cara`,`status_order`),
  ADD KEY `bayar_id_bank_pembayaran` (`bayar_id_bank_pembayaran`),
  ADD KEY `status_invoice` (`status_invoice`,`status_pembayaran`);

--
-- Indeks untuk tabel `sales_pembayaran`
--
ALTER TABLE `sales_pembayaran`
  ADD PRIMARY KEY (`id_sales_pembayaran`),
  ADD KEY `id_sales_order` (`id_sales_order`,`id_customer`,`tanggal_bayar`,`id_bank_pembayaran`);

--
-- Indeks untuk tabel `sales_retur`
--
ALTER TABLE `sales_retur`
  ADD PRIMARY KEY (`id_sales_retur`),
  ADD KEY `id_sales_order` (`id_sales_order`,`tanggal_retur`,`id_penerima_barang`);

--
-- Indeks untuk tabel `sales_retur_item`
--
ALTER TABLE `sales_retur_item`
  ADD PRIMARY KEY (`id_sales_retur_item`),
  ADD KEY `barcode_kode` (`barcode_kode`),
  ADD KEY `id_material_in_item_proc` (`id_material_in_item_proc`,`id_material_in`),
  ADD KEY `id_material` (`id_material`,`id_material_kategori1`,`id_material_kategori2`,`id_material_kategori3`,`yard`),
  ADD KEY `is_packing` (`is_packing`,`id_basic_packing`),
  ADD KEY `id_gudang` (`id_gudang`),
  ADD KEY `kode` (`kode`),
  ADD KEY `no_splitting` (`no_splitting`),
  ADD KEY `id_material_finish` (`id_material_finish`),
  ADD KEY `retur_created_id_user` (`retur_created_id_user`),
  ADD KEY `retur_id_outlet_penjualan` (`retur_id_outlet_penjualan`),
  ADD KEY `retur_id_sales_order` (`retur_id_sales_order`),
  ADD KEY `retur_id_sales_retur` (`retur_id_sales_retur`);

--
-- Indeks untuk tabel `section_content`
--
ALTER TABLE `section_content`
  ADD PRIMARY KEY (`id_section_content`);

--
-- Indeks untuk tabel `stock_opname`
--
ALTER TABLE `stock_opname`
  ADD PRIMARY KEY (`id_stock_opname`);

--
-- Indeks untuk tabel `stock_opname_item`
--
ALTER TABLE `stock_opname_item`
  ADD PRIMARY KEY (`id_stock_opname_item`),
  ADD KEY `id_stock_opname` (`id_stock_opname`,`id_material_finish`);

--
-- Indeks untuk tabel `struktur_material`
--
ALTER TABLE `struktur_material`
  ADD PRIMARY KEY (`id_struktur_material`),
  ADD KEY `id_material` (`id_material`,`id_material_kategori1`,`id_material_kategori2`,`id_material_kategori3`),
  ADD KEY `id_material_2` (`id_material`,`id_material_kategori1`,`id_material_kategori2`,`id_material_kategori3`);

--
-- Indeks untuk tabel `struktur_material_item`
--
ALTER TABLE `struktur_material_item`
  ADD PRIMARY KEY (`id_struktur_material_item`),
  ADD KEY `id_material_raw_kategori` (`id_material_raw_kategori`),
  ADD KEY `id_struktur_material` (`id_struktur_material`,`id_material_raw_kategori`);

--
-- Indeks untuk tabel `subcontractor`
--
ALTER TABLE `subcontractor`
  ADD PRIMARY KEY (`id_subcontractor`),
  ADD KEY `id_kabupaten` (`id_kabupaten`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `supplier_delivery_order`
--
ALTER TABLE `supplier_delivery_order`
  ADD PRIMARY KEY (`id_supplier_delivery_order`),
  ADD KEY `nomor_surat_jalan` (`nomor_surat_jalan`,`nomor_invoice`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indeks untuk tabel `supplier_do_item`
--
ALTER TABLE `supplier_do_item`
  ADD PRIMARY KEY (`id_supplier_do_item`),
  ADD KEY `id_supplier_delivery_order` (`id_supplier_delivery_order`,`id_material`);

--
-- Indeks untuk tabel `supplier_raw`
--
ALTER TABLE `supplier_raw`
  ADD PRIMARY KEY (`id_supplier_raw`),
  ADD KEY `id_kabupaten` (`id_kabupaten`);

--
-- Indeks untuk tabel `unit_produksi`
--
ALTER TABLE `unit_produksi`
  ADD PRIMARY KEY (`id_unit_produksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `password_reset_token` (`password_reset_token`);

--
-- Indeks untuk tabel `user_outlet`
--
ALTER TABLE `user_outlet`
  ADD PRIMARY KEY (`id_user_outlet`);

--
-- Indeks untuk tabel `user_perusahaan`
--
ALTER TABLE `user_perusahaan`
  ADD PRIMARY KEY (`id_user_perusahaan`);

--
-- Indeks untuk tabel `user_system`
--
ALTER TABLE `user_system`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_systemname` (`user_systemname`),
  ADD KEY `email` (`email`),
  ADD KEY `password_reset_token` (`password_reset_token`);

--
-- Indeks untuk tabel `web_page`
--
ALTER TABLE `web_page`
  ADD PRIMARY KEY (`id_web_page`);

--
-- Indeks untuk tabel `web_vocabulary`
--
ALTER TABLE `web_vocabulary`
  ADD PRIMARY KEY (`id_web_vocabulary`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6017;

--
-- AUTO_INCREMENT untuk tabel `app_setting`
--
ALTER TABLE `app_setting`
  MODIFY `id_app_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `cv_pendidikan`
--
ALTER TABLE `cv_pendidikan`
  MODIFY `id_cv_pendidikan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hrm_absensi_pegawai`
--
ALTER TABLE `hrm_absensi_pegawai`
  MODIFY `id_hrm_absensi_pegawai` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `hrm_mst_jenis_absensi`
--
ALTER TABLE `hrm_mst_jenis_absensi`
  MODIFY `id_mst_jenis_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `hrm_pegawai`
--
ALTER TABLE `hrm_pegawai`
  MODIFY `id_pegawai` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kantor`
--
ALTER TABLE `kantor`
  MODIFY `id_kantor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kantor_cabang`
--
ALTER TABLE `kantor_cabang`
  MODIFY `id_kantor_cabang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mst_jenjang_pendidikan`
--
ALTER TABLE `mst_jenjang_pendidikan`
  MODIFY `id_mst_jenjang_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  MODIFY `id_riwayat_jabatan` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `riwayat_pendidikan`
--
ALTER TABLE `riwayat_pendidikan`
  MODIFY `id_riwayat_pendidikan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
