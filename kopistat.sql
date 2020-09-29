-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 06:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kopistat`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(2) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Sosial dan Kependudukan');

-- --------------------------------------------------------

--
-- Table structure for table `masterjenismedia`
--

CREATE TABLE `masterjenismedia` (
  `jenismediaid` int(1) NOT NULL,
  `jenismedia` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masterjenismedia`
--

INSERT INTO `masterjenismedia` (`jenismediaid`, `jenismedia`) VALUES
(1, 'Media Cetak'),
(2, 'Media Online'),
(3, 'Media Cetak dan Online');

-- --------------------------------------------------------

--
-- Table structure for table `masterunitkerja`
--

CREATE TABLE `masterunitkerja` (
  `unitkerja` varchar(255) DEFAULT NULL,
  `unitkerjaid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `masterunitkerja`
--

INSERT INTO `masterunitkerja` (`unitkerja`, `unitkerjaid`) VALUES
('Kepala Badan Pusat Statistik', '10000'),
('Sekretariat Utama', '20000'),
('Biro Bina Program', '21000'),
('Bagian Penyusunan Rencana', '21100'),
('Bagian Penyusunan Anggaran', '21200'),
('Bagian Monitoring dan Evaluasi', '21300'),
('Bagian Transformasi Statistik', '21400'),
('Biro Keuangan', '22000'),
('Bagian Administrasi Keuangan', '22100'),
('Bagian Perbendaharaan ', '22200'),
('Bagian Verifikasi', '22300'),
('Bagian Akuntansi', '22400'),
('Biro Kepegawaian', '23000'),
('Bagian Administrasi Kepegawaian', '23100'),
('Bagian Mutasi Pegawai', '23200'),
('Bagian Kesejahteraan dan Pengembangan Pegawai', '23300'),
('Bagian Jabatan Fungsional ', '23400'),
('Biro Hubungan Masyarakat dan Hukum  ', '24000'),
('Bagian Kerja Sama, Protokol, dan Penyiapan Materi Pimpinan', '24100'),
('Bagian Hubungan Masyarakat', '24200'),
('Bagian Hukum dan Organisasi', '24300'),
('Biro Umum', '25000'),
('Bagian Rumah Tangga', '25100'),
('Bagian Inventarisasi, Penyimpanan, dan Penghapusan', '25200'),
('Bagian Pengadaan Barang / Jasa', '25300'),
('Pusat Pendidikan dan Pelatihan', '26000'),
('Bagian Tata Usaha   ', '26100'),
('Bidang Pendidikan dan Pelatihan Prajabatan dan Kepemimpinan', '26200'),
('Subbidang Program dan Evaluasi Pendidikan dan Pelatihan Prajabatan dan Kepemimpinan', '26210'),
('Subbidang Penyelenggaraan Pendidikan dan Pelatihan Prajabatan dan Kepemimpinan', '26220'),
('Bidang Pendidikan dan Pelatihan Teknis dan Fungsional', '26300'),
('Subbidang Program dan Evaluasi Pendidikan dan Pelatihan Teknis dan Fungsional', '26310'),
('Subbidang Penyelenggaraan Pendidikan dan Pelatihan Teknis dan Fungsional', '26320'),
('Pejabat Fungsional', '26400'),
('Politeknik Statistika STIS', '27000'),
('Bagian Administrasi Akademik dan Kemahasiswaan', '27100'),
('Bagian Administrasi Umum', '27200'),
('Pejabat Fungsional STIS', '27300'),
('Wakil Direktur', '27400'),
('Deputi Bidang Metodologi dan Informasi Statistik  ', '30000'),
('Direktorat Pengembangan Metodologi Sensus dan Survei', '31000'),
('Subdirektorat Pengembangan Desain Sensus dan Survei', '31100'),
('Subdirektorat Pengembangan Standardisasi dan Klasifikasi Statistik', '31200'),
('Subdirektorat Pengembangan Kerangka Sampel', '31300'),
('Subdirektorat Pengembangan Pemetaan Statistik', '31400'),
('Direktorat Diseminasi Statistik', '32000'),
('Subdirektorat Rujukan Statistik', '32100'),
('Subdirektorat Publikasi dan Kompilasi Statistik', '32200'),
('Subdirektorat Layanan dan Promosi Statistik', '32300'),
('Subdirektorat Perpustakaan dan Dokumentasi Statistik', '32400'),
('Direktorat Sistem Informasi Statistik', '33000'),
('Subdirektorat Integrasi Pengolahan Data', '33100'),
('Subdirektorat Jaringan Komunikasi Data', '33200'),
('Subdirektorat Pengembangan Basis Data', '33300'),
('Subdirektorat Pengelolaan Teknologi Informasi', '33400'),
('Deputi Bidang Statistik Sosial', '40000'),
('Direktorat Statistik Kependudukan dan Ketenagakerjaan', '41000'),
('Subdirektorat Statistik Demografi', '41100'),
('Subdirektorat Statistik Ketenagakerjaan', '41200'),
('Subdirektorat Statistik Upah dan Pendapatan', '41300'),
('Subdirektorat Statistik Mobilitas Penduduk dan Tenaga Kerja', '41400'),
('Direktorat Statistik Kesejahteraan Rakyat', '42000'),
('Subdirektorat Statistik Rumah Tangga', '42100'),
('Subdirektorat Statistik Pendidikan dan Kesejahteraan Sosial', '42200'),
('Subdirektorat Statistik Kesehatan dan Perumahan', '42300'),
('Direktorat Statistik Ketahanan Sosial', '43000'),
('Subdirektorat Statistik Ketahanan Wilayah', '43100'),
('Subdirektorat Statistik Lingkungan Hidup', '43200'),
('Subdirektorat Statistik Politik dan Keamanan', '43300'),
('Subdirektorat Statistik Kerawanan Sosial', '43400'),
('Deputi Bidang Statistik Produksi', '50000'),
('Direktorat Statistik Tanaman Pangan, Hortikultura, dan Perkebunan ', '51000'),
('Subdirektorat Statistik Tanaman Pangan', '51100'),
('Subdirektorat Statistik Hortikultura', '51200'),
('Subdirektorat Statistik Tanaman Perkebunan', '51300'),
('Direktorat Statistik Peternakan, Perikanan, dan Kehutanan', '52000'),
('Subdirektorat Statistik Peternakan', '52100'),
('Subdirektorat Statistik Perikanan', '52200'),
('Subdirektorat Statistik Kehutanan   ', '52300'),
('Direktorat Statistik Industri', '53000'),
('Subdirektorat Statistik Industri Besar dan Sedang', '53100'),
('Subdirektorat Statistik Industri Kecil dan Rumah Tangga ', '53200'),
('Subdirektorat Statistik Pertambangan dan Energi', '53300'),
('Subdirektorat Statistik Konstruksi', '53400'),
('Deputi Bidang Statistik Distribusi dan Jasa', '60000'),
('Direktorat Statistik Distribusi', '61000'),
('Subdirektorat Statistik Ekspor', '61100'),
('Subdirektorat Statistik Impor', '61200'),
('Subdirektorat Statistik Perdagangan Dalam Negeri', '61300'),
('Subdirektorat Statistik Transportasi', '61400'),
('Direktorat Statistik Harga', '62000'),
('Subdirektorat Statistik Harga Produsen', '62100'),
('Subdirektorat Statistik Harga Perdagangan Besar', '62200'),
('Subdirektorat Statistik Harga Konsumen', '62300'),
('Subdirektorat Statistik Harga Pedesaan', '62400'),
('Direktorat Statistik Keuangan, Teknologi Informasi, dan Pariwisata', '63000'),
('Subdirektorat Statistik Keuangan', '63100'),
('Subdirektorat Statistik Komunikasi dan Teknologi Informasi', '63200'),
('Subdirektorat Statistik Pariwisata', '63300'),
('Deputi Bidang Neraca dan Analisis Statistik', '70000'),
('Direktorat Neraca Produksi', '71000'),
('Subdirektorat Neraca Barang', '71100'),
('Subdirektorat Neraca Jasa', '71200'),
('Subdirektorat Konsolidasi Neraca Produksi Nasional', '71300'),
('Subdirektorat Konsolidasi Neraca Produksi Regional', '71400'),
('Direktorat Neraca Pengeluaran', '72000'),
('Subdirektorat Neraca Rumah Tangga dan Institusi Nirlaba', '72100'),
('Subdirektorat Neraca Pemerintah dan Badan Usaha', '72200'),
('Subdirektorat Neraca Modal dan Luar Negeri', '72300'),
('Subdirektorat Konsolidasi Neraca Pengeluaran', '72400'),
('Direktorat Analisis dan Pengembangan Statistik', '73000'),
('Subdirektorat Analisis Statistik', '73100'),
('Subdirektorat Konsistensi Statistik ', '73200'),
('Subdirektorat Indikator Statistik   ', '73300'),
('Subdirektorat Pengembangan Model Statistik', '73400'),
('Pejabat Fungsional', '73500'),
('Inspektorat Utama   ', '80000'),
('Bagian Administrasi', '80100'),
('Inspektorat Wilayah I', '81000'),
('Inspektorat Wilayah II', '82000'),
('Inspektorat Wilayah III', '83000'),
('BPS Propinsi', '92000'),
('Bagian Tata Usaha', '92100'),
('Bidang Statistik Sosial', '92200'),
('Bidang Statistik Produksi', '92300'),
('Bidang Statistik Distribusi', '92400'),
('Bidang Neraca Wilayah dan Analisis Statistik', '92500'),
('Bidang Integrasi Pengolahan dan Diseminasi Statistik', '92600'),
('BPS Kabupaten/Kota', '92800');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1599373041),
('m130524_201442_init', 1599373055),
('m190124_110200_add_verification_token_column_to_user_table', 1599373056);

-- --------------------------------------------------------

--
-- Table structure for table `opini`
--

CREATE TABLE `opini` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `konten` text NOT NULL,
  `kategori` int(2) NOT NULL,
  `namamedia` varchar(50) NOT NULL,
  `jenismedia` int(1) NOT NULL,
  `tautanopini` varchar(100) DEFAULT NULL,
  `dokumentasiopini` varchar(30) DEFAULT NULL,
  `tanggalterbit` date NOT NULL,
  `nip` varchar(9) NOT NULL,
  `unitkerja` varchar(5) NOT NULL,
  `kodeprovinsi` varchar(2) NOT NULL,
  `kodekabupaten` varchar(2) NOT NULL,
  `nipatasan` varchar(9) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `catatanatasan` text DEFAULT NULL,
  `tanggalbuat` datetime NOT NULL DEFAULT current_timestamp(),
  `tanggalupdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `opini`
--

INSERT INTO `opini` (`id`, `judul`, `konten`, `kategori`, `namamedia`, `jenismedia`, `tautanopini`, `dokumentasiopini`, `tanggalterbit`, `nip`, `unitkerja`, `kodeprovinsi`, `kodekabupaten`, `nipatasan`, `status`, `catatanatasan`, `tanggalbuat`, `tanggalupdate`) VALUES
(1, 'Sejarah Baru Sensus Penduduk Indonesia', '<p>Sebanyak 313 pasukan muslim, itulah angka yang tercatat dalam sejarah sebagai pasukan muslim pertama yang terbentuk menjelang terjadinya perang badar. Guna mengetahui kekuatan pasukan musuh yang akan dihadapi, Rasulullah mengorek informasi tentang jumlah pasukan lawan dari 2 orang tukang masak pasukan Qurais yang tertangkap ketika hendak mengambil pasokan air. Mengingat kapasitasnya hanya sebagai tukang masak, informan ini tidak bisa menyebutkan secara pasti berapa jumlah pasukan yang dibawa oleh Abu Jahal kala itu. Namun yang pasti, lanjut mereka, kami memotong 9 sampai 10 ekor unta setiap hari untuk kebutuhan makan pasukan Qurais. Dari angka inilah, Rasulullah memperkirakan bahwa jumlah lawan sekitar 900 sampai 1.000 orang, angka perkiraan yang dikemudian hari terkonfirmasi dan tercatat dalam sejarah.</p>\r\n<p>Hasil akhir peperangan itu menorehkan kemenangan besar di pihak kaum muslimin. Tercatat di kala itu 14 orang syahid dari pihak kaum muslimin, di pihak Qurais sebanyak 70 orang tewas serta 70 orang jadi tawanan. Itulah sepenggal kisah Perang Badar dengan beberapa angka statistik yang tercatat dalam sejarah. Bagi kita yang hidup di zaman now, tentu angka statistik sangat penting. Dalam kehidupan yang lebih kompleks di zaman sekarang, angka statistik yang dibutuhkan tentu semakin beragam. Sebut saja angka jumlah penduduk, angka kelahiran, kematian, rasio penduduk, inflasi, kemiskinan, PDRB, IPM serta beragam statistik lainnya sangat menentukan arah perencanaan, tools evaluasi, hingga mengukur capaian pembangunan. Ujung dari semua itu adalah bagaimana kualitas hidup manusia di masa depan bisa lebih baik lagi.</p>\r\n<p>Basic-nya adalah sensus penduduk. Manusia adalah subjek pembangunan sekaligus sebagai objek dari pembangunan itu sendiri. Sehingga statistik yang terkait manusia, baik itu jumlah, komposisi, hingga karakteristiknya sangat diperlukan untuk diketahui. Oleh karena itu United Nations (UN/PBB) merekomendasikan seluruh negara yang ada di dunia ini untuk melakukan sensus penduduk (SP) paling tidak sepuluh tahun sekali. Di Indonesia, SP dilaksanakan 6 kali yaitu di 1961, 1971, 1980, 1990, 2000, dan 2010.</p>\r\n<p>Membayangkan sensus sama dengan membayangkan adanya petugas pendata, datang ke rumah-rumah yang menanyakan serta mencatat informasi anda, istri, anak-anak, serta siapapun yang ada di rumah Anda. Itulah yang terjadi dalam 6 kali sensus yang telah dilaksanakan. Akankah itu akan terjadi lagi di sensus berikutnya?</p>\r\n<p><strong>Sejarah baru itu adalah SP Online. </strong></p>\r\n<p>Tahun 2020, diwacanakan oleh pemerintah Indonesia melalui BPS sebagai tahun sensus untuk ketujuh kalinya. Combine Method, menjadi pembeda pertama SP 2020 dengan sensus-sensus sebelumnya. Metode ini mengkombinasikan antara metode canvasing melalui pendataan door-to-door dengan metode registrasi penduduk. Data hasil registrasi penduduk dari Kementerian Dalam Negeri yang yang mencatat penduduk secara dejure digunakan sebagai data dasar dalam Sensus Penduduk 2020 untuk mendapatkan penduduk secara defacto dalam lokasi tempat tinggal dan termutakhir dalam karakteristik penduduk. Combine method tidak memberikan \"rasa\" sensus yang berbeda bagi masyarakat.</p>\r\n<p>Mengambil potensi infrastruktur teknologi informasi yang tumbuh dengan pesat, BPS menawarkan \"rasa\" sensus berbeda melalui penggunaan 3 jenis moda pendataan sekaligus yaitu: Computer Assisted Web Interviewing (CAWI), Computer Assisted Personal Interviewing (CAPI), dan Paper and Pencil Interviewing (PAPI). CAPI dan PAPI keduanya merupakan tools pendataan canvasing (door-to-door) dengan alat catat yang berbeda, CAPI menggunakan gadget petugas dan PAPI menggunakan kertas. Dari ketiga moda pendataan di atas, CAWI atau BPS menyebutnya dengan istilah SP Online-lah yang akan memberikan rasa sensus berbeda untuk pertama kalinya dalam sejarah perjalanan sensus di Indonesia.</p>\r\n<p>SP Online mengubah cara pandang dan bayangan sensus yang telah lalu. Sekaligus mengubah posisi objek sensus (penduduk) dari pasif menjadi aktif. Penduduklah yang aktif memutakhirkan informasi diri dan keluarganya sendiri menggunakan moda SP Online yang telah disiapkan. Kunci sukses itu adalah \"response rate\", yang hadir dari kepedulian setiap warga negara untuk ikut berpartisipasi aktif dalam SP Online. Yang rela mengorbankan waktu barang beberapa menit untuk memutakhirkan data diri serta keluarganya secara mandiri.</p>\r\n<p>Sejarah itu ditorehkan mulai 15 Februari-31 Maret 2020 melalui sistem SP Online di alamat sensus.bps.go.id oleh para \"pahlawan\" data bangsa Indonesia. Buktikan bahwa anda adalah Indonesia dan Cinta Indonesia dengan mencatatkan diri anda secara mandiri sebagai bagian dari usaha #MencatatIndonesia.</p>', 1, 'Riau Pos', 2, 'https://riaupos.jawapos.com/5795/opini/19/02/2020/sejarah-baru-sensus-penduduk-indonesia.html', 'eewrwr', '2020-02-19', '340019148', '92600', '14', '00', '', '1', '', '0000-00-00 00:00:00', '2020-09-08 06:53:24'),
(2, 'Menepis Terjangan “Tsunami Informasi”', '<p>Tak sengaja ketika berkendara sambil mendengarkan sesi <em>Smart Parenting</em> di salah satu channel radio di Pekanbaru, narsum menyampaikan terkait bahaya Sosial Media terhadap anak-anak. Dalam salah satu penjelasannya bahwa anak-anak bisa gundah/gelisah/emosi tidak stabil bahkan ada kasus sampai bunuh diri karena begitu banyaknya &ldquo;informasi&rdquo; yang diterima melalui sosial media yang terus bergerak setiap detik maupun menit.</p>\r\n<p><strong>Kenapa disebut &ldquo;Tsunami Informasi&rdquo;? </strong></p>\r\n<p>Terlepas dari definisi awalnya terkait tsunami, yang jelas tsunami yang kita bayangkan adalah adanya ombak besar menghantam daratan yang memporak-porandakan setiap apa yang dilewatinya dan membawa serta setiap partikel yang dilewatinya. Sehingga yang tadinya murni berupa terjangan air berubah menjadi air yang bercampur tanah, kayu, sampah, alat rumah tangga, plastik, dan apapun yang bisa terangkat oleh air tersebut.</p>\r\n<p>Demikian juga dengan &ldquo;Informasi&rdquo; yang bersliweran melalui media online, media sosial, dan sebagainya. Apakah itu fakta, gosip, <em>fake</em>, iklan, <em>hoax</em>, <em>cyberbullying</em>, pornografi, SARA, maupun ujaran kebencian bergerak silih berganti hingga menjadi tsunami yang menerjang para pengguna internet. Dan tidak jarang ditemukan ada ulasan yang dikemas seolah merupakan hasil investigasi, berisi fakta yang seolah riil, tapi ternyata hanya sebuah kebohongan belaka. Dalam kondisi seperti ini, jika tidak pandai memfilter &ldquo;informasi&rdquo; yang sebenarnya bukan sebuah informasi bisa memberikan efek sosial hingga kejiwaan yang mendalam.</p>\r\n<p>Merujuk laporan kemkominfo, hingga tahun 2018 saja jumlah situs yang bermuatan negatif yang &ldquo;ditangani&rdquo; mencapai 912.659 situs, 528.262 konten negatif pada media sosial twitter, 2.232 konten pada jejaring facebook, dan 6.123 konten pada instagram. Perlu dicatat angka-angka ini adalah statistik yang telah ditangani oleh pihak kemkominfo, riilnya tentu saja jauh lebih besar dari angka tersebut.</p>\r\n<p><strong>Bagaimana Tsunami Informasi terbentuk</strong></p>\r\n<p>Berbeda dengan tsunami, yang terbentuk karena kehendak yang maha kuasa atau sebagian orang mengatakan karena fenomena alam. Dalam posisi itu manuasia hanya menjadi Objek dari tsunami tersebut, meskipun para ahli bisa membuat perkiraan, tsunami <em>early warning,</em> dan berbagai cara untuk meningkatkan kewaspadaan dalam menghadapi tsunami namun pada akhirnya manusia hanyalah objek yang tidak bisa menolak datangnya tsunami tersebut.</p>\r\n<p>Lain halnya dengan Tsunami Informasi, subjek maupun objeknya adalah Manusia itu sendiri. Pembuatnya adalah manusia, yang menghembuskannya/memviralkannya juga manusia yang ditambah robot-robot buatan manusia, dan objeknya juga manusia. Dan tidak jarang dalam beberapa kasus, sang Objek juga berubah menjadi buzzer yang urun rempug menghembuskan &ldquo;informasi&rdquo; tersebut hingga menambah dan memperbesar daya sebarnya hingga jadilah tsunami informasi.</p>\r\n<p>Kebiasaan <em>like and share</em> tanpa proses filterisasi bisa menjadi salah satu pemicu terjadinya gelombang tsunami informasi ini. Satu orang pembuat konten, 10 orang melakukan <em>share</em> di tahap awal, berkembang berikutnya menjadi 100 orang hingga jutaan orang yang membaca, mengomentari, memviralkan hingga sampailah ke <em>gadget</em> bapak, ibu, anak-anak melalui halaman facebook, twitter, instagram maupun saluran <em>online</em> lainnya.</p>\r\n<p><strong>Bagaimana Seharusnya?</strong></p>\r\n<p>Islam demikian lengkap memandu hambanya tidak hanya dalam perihal <em>Hablum Minallah</em> tapi demikian luas mengatur urusan <em>Hablum Minannas</em> salah satunya adalah bab penyebarluasan informasi.</p>\r\n<p><strong>Pertama</strong> - Janganlah tergesa-gesa menyebarkanluaskan informasi. <em>Cek and ricek</em> terlebih dahulu. <em>&ldquo;Cukuplah seseorang dikatakan sebagai pendusta apabila dia mengatakan semua yang didengar.&rdquo;</em> (HR. Muslim no.7)</p>\r\n<p><strong>Kedua</strong> - Periksalah Kebenaran sebuah berita dengan cermat<em>.&ldquo;Wahai orang-orang yang beriman, jika datang kepadamu orang fasik membawa suatu berita, maka periksalah dengan teliti, agar kamu tidak menimpakan suatu musibah kepada suatu kaum tanpa mengetahui keadaannya yang menyebabkan kamu menyesal atas perbuatanmu itu.&rdquo;</em> (QS. Al-Hujuraat [49]: 6)</p>\r\n<p><strong>Ketiga </strong>- Bertanyalah, Adakah Manfaat Menyebarkan suatu Berita Tertentu?, <em>&ldquo;Barangsiapa beriman kepada Allah dan hari akhir, hendaklah berkata yang baik atau diam.&rdquo;</em> (HR. Bukhari no. 6018 dan Muslim no. 74)</p>', 1, 'DataRiau.Com', 2, 'https://datariau.com/opini/Menepis-Terjangan--quot-Tsunami-Informasi-quot-', '', '2020-01-23', '340019148', '92600', '14', '00', NULL, '1', NULL, '2020-09-08 07:21:27', '2020-09-08 07:21:27'),
(3, 'Potensi Sektor Non-Migas Riau', '<p dir=\"ltr\">Provinsi Riau adalah salah satu dari empat provinsi yang ada di Indonesia yang merupakan &nbsp;daerah pusat penghasil sumber minyak dan gas alam (migas). &nbsp;Sektor ini memang mempengaruhi pertumbuhan ekonomi dan struktur perekonomian di Provinsi Riau secara sangat signifikan, namun demikian, dalam kenyataannya pembangunan ekonomi suatu daerah tidak akan dapat berjalan dalam jangka panjang jika daerah tersebut terlalu bergantung pada sumber daya alam yang tidak dapat diperbaharui. &nbsp;Untuk itu sumber daya alam yang ada perlu diimbangi dengan sumber daya manusia yang berkualitas dan teknologi yang tinggi.</p>\r\n<p dir=\"ltr\">Pembangunan sistem perekonomian di Provinsi Riau seharusnya lebih mengarah kepada pengembangan sektor-sektor di luar sektor migas. &nbsp;Jika dilihat dari laju pertumbuhan ekonomi di Provinsi Riau selama kurun waktu tiga tahun terakhir, &nbsp;terlihat bahwa laju pertumbuhan ekonomi tanpa migas lebih tinggi dibandingkan pertumbuhan ekonomi dengan memasukkan sektor migas di dalamnya. &nbsp;Data dari Badan Pusat Statistik Provinsi Riau menyebutkan bahwa laju pertumbuhan ekonomi di Riau dengan menghilangkan sektor migas di dalamnya pada tahun 2016 sebesar 3,68 persen, meningkat di tahun 2017 mencapai 4,57 persen, dan 3,95 persen pada tahun 2018. &nbsp;Jika ditelusuri menurut kabupaten/kota, tercatat laju pertumbuhan ekonomi tertinggi di Kota Dumai dan diikuti oleh Kota Pekanbaru.</p>\r\n<p dir=\"ltr\">Dalam upaya mencapai tujuan pembangunan ekonomi suatu daerah, langkah utama yang perlu dilakukan adalah mengetahui sektor ekonomi yang potensial di daerah tersebut untuk kemudian didorong semaksimal mungkin agar prioritas pembangunan daerah dapat tercapai. &nbsp;Hal ini terkait dengan potensi pembangunan yang dimiliki setiap kabupaten/kota &nbsp;di Provinsi Riau yang tergolong cukup &nbsp;bervariasi. &nbsp;Untuk dapat memanfaatkan dan mengelola kekayaan dan potensi yang dimiliki tersebut, maka perhatian utama ditujukan untuk melihat komposisi ekonomi, yakni dengan mengetahui kontribusi atau peranan yang diberikan oleh tiap-tiap sektor yang ada. &nbsp;</p>\r\n<p dir=\"ltr\">Sektor primer yang meliputi sektor pertanian serta pertambangan dan penggalian mendominasi struktur ekonomi di delapan kabupaten/kota di Provinsi Riau. &nbsp;Kabupaten Kuantan Singingi, Indragiri Hilir, Rokan Hulu, dan Kepulauan Meranti lebih didominasi oleh sektor pertanian, khususnya perkebunan, sedangkan Kabupaten Siak, Kampar, Bengkalis, dan Rokan Hilir lebih didominasi oleh sektor pertambangan dan penggalian. &nbsp;</p>\r\n<p dir=\"ltr\">Di Kabupaten Kuantan Singingi komoditas perkebunan seperti karet dan kelapa sawit masih menjadi komoditas andalan, namun hendaknya ada komoditas lain yang bisa dikembangkan selain kedua komoditas tersebut. &nbsp;Pemerintah Daerah Kuantan Singingi hendaknya bisa bersinergi bersama masyarakat dalam upaya mendorong &nbsp;pengembangan sektor pertanian dengan meningkatkan poduksi komoditas pertanian lainnya. &nbsp;</p>\r\n<p dir=\"ltr\">Setiap daerah biasanya memiliki komoditas unggulan yang dapat diandalkan untuk mensejahterakan masyarakatnya. &nbsp;Di &nbsp;Kabupaten Indragiri Hilir &nbsp;misalnya, komoditas kelapa merupakan komoditas unggulan yang menjadi urat nadi masyarakat, bahkan beberapa pihak menyebutkan Indragiri Hilir sebagai \"Negeri Hamparan Kelapa Dunia\". &nbsp;Mengingat besarnya peranan komoditas ini dalam menopang perekonomian masyarakat Indragiri Hilir, maka perlu mendapat perhatian serius dari Pemerintah Daerah. &nbsp;Upaya yang perlu dilakukan selain peningkatan hasil produksi juga peningkatan kualitas kelapa rakyat itu sendiri, sehingga dapat meningkatkan daya saing daerah penghasil kelapa terbesar di dunia ini. &nbsp;</p>\r\n<p dir=\"ltr\">Begitu juga dengan Kabupaten Kepulauan Meranti. &nbsp;Dari data &nbsp;Dinas Perkebunan dan Hortikultura, tercatat ada sebanyak lima komoditas unggulan daerah ini, yaitu sagu, kelapa, karet, kopi, dan pinang. &nbsp;Namun dari kelima komoditas tersebut, sagu merupakan komoditas yang sangat potensial untuk terus dikembangkan. &nbsp;Upaya peralihan dari sektor yang berbasis agraris menuju sektor industri juga harus terus dilakukan. &nbsp;&nbsp;Mengingat besarnya hasil produksi komoditas tersebut setiap tahunnya, maka industri pengolahan dengan bahan baku sagu perlu ditingkatkan, bukan hanya sebatas pengolahan sagu menjadi tepung, tetapi lebih dari itu dapat menghasilkan produk dengan nilai tambah yang lebih tinggi.</p>\r\n<p dir=\"ltr\">Sektor sekunder yang meliputi sektor industri pengolahan, listrik dan gas, &nbsp;pengadaan air dan pengelolaan sampah, serta konstruksi mendominasi struktur ekonomi di empat kabupaten/kota lainnya, yakni Indragiri Hulu, Pelalawan, Dumai dan Pekanbaru. &nbsp;Besarnya kontribusi sektor ini terhadap total Produk Domestik Regional Bruto (PDRB) &nbsp;menunjukkan bahwa sektor ini merupakan penggerak utama roda perekonomian di daerah tersebut. &nbsp;Kabupaten Pelalawan dengan industri kertas yang menjadi&nbsp;<em>icon</em>&nbsp;nya yang juga merupakan industri kebanggan Provinsi Riau ini harus terus dijaga dan dijamin kelangsungan usahanya. &nbsp;&nbsp;Pentingnya sinergitas antara Pemerintah Daerah dan perusahaan &nbsp;dalam upaya mendorong pengembangan industri nasional yang berkelanjutan. &nbsp;</p>\r\n<p dir=\"ltr\">Sementara itu, pengembangan kawasan industri di Kota Dumai juga perlu terus dilakukan. &nbsp;Kawasan industri tersebut menampung beberapa perusahaan industri, salah satunya industri pupuk NPK yang merupakan salah satu industri besar di Asia Tenggara. &nbsp;Posisi Kota Dumai yang strategis menjadikan daerah ini sebagai tujuan investasi para investor. &nbsp;Untuk itu Pemerintah perlu lebih proaktif dalam menarik minat investor asing agar bersedia menanamkan modalnya di kawasan indutri tersebut. &nbsp;Pada tahun 2018, sektor sekunder memberikan kontribusi dalam perekonomian Kota Pekanbaru sebesar 50,05 persen, &nbsp;diikuti oleh sektor tersier dengan kontribusi 48,34 persen. &nbsp;Saat ini Pemerintah Kota Pekanbaru mulai fokus pada pengembangan investasi di tiga sektor unggulannya, yakni industri, perdagangan, dan jasa. &nbsp;</p>\r\n<p dir=\"ltr\">Kontribusi dominan dari sektor-sektor non migas ini diharapkan dapat membangun struktur perekonomian Provinsi Riau yang memiliki daya saing, sebagaimana yang ditetapkan dalam RPJMD (Rencana Pembangunan Jangka Menengah Daerah) 2019-2024 untuk pencapaian visi jangka panjang Riau 2025.</p>', 1, 'DataRiau.Com', 2, 'http://www.datariau.com/opini/Potensi-Sektor-Non-Migas-Riau', '', '2020-02-05', '340020080', '92600', '14', '00', NULL, '1', NULL, '2020-09-09 10:01:00', '2020-09-09 10:01:00'),
(4, 'Perempuan di Dunia Birokrasi', '<p>Dilahirkan menjadi seorang perempuan adalah sesuatu hal yang harus disyukuri, karena banyak kelebihan dan keutamaan yang Allah berikan untuk kaum hawa ini.&nbsp; Acapkali kita mendengar quote yang tidak asing di telinga kita, \"Behind every great man, there\'s a great woman- Di balik laki-laki kuat, ada wanita hebat\". Artinya seorang perempuan memiliki pengaruh yang sangat besar dalam kehidupan seorang pria. Dalam kehidupan rumah tangga, suami akan merasa sepi tanpa kehadiran seorang istri, anak-anak akan merasakan pilu tanpa kehadiran seorang ibu.&nbsp; Dalam kehidupan bermasyarakat, peran perempuan juga tidak dapat dipandang sebelah mata.<br /><br />Saat ini, banyak perempuan yang memilih memiliki peran ganda dalam kehidupannya. Selain berperan sebagai istri dan ibu di rumah, juga berperan aktif di lingkungan masyarakat, bahkan ikut mengambil peran di dunia kerja. Sudah menjadi pemandangan yang lumrah kita temui, perempuan bekerja di perusahaan, kantor pemerintah, dan duduk di parlemen. Data yang diperoleh dari Sekretariat DPRD Provinsi Riau tercatat dari 65 anggota DPRD di Provinsi Riau, sebanyak 18 orang adalah perempuan atau sekitar 27,7 persen.<br /><br />Data dari Badan Kepegawaian Daerah Provinsi Riau menyebutkan jumlah Pegawai Negeri Sipil (PNS) di lingkungan Pemerintah Daerah Provinsi Riau&nbsp; pada tahun 2018 sebanyak 15.779 orang, yang terdiri dari 7.284 laki-laki (46,16%) dan 8.495 perempuan (53,84%).&nbsp; Dari komposisi ini terlihat jelas bahwa jumlah pegawai negeri sipil perempuan lebih banyak dibandingkan laki-laki.&nbsp; Jika dirinci lebih jauh menurut jabatan (struktural atau fungsional), ternyata lebih dari 90 persen PNS perempuan memilih menduduki jabatan fungsional, dan kurang dari 5 persen yang memilih jabatan struktural.&nbsp; Data yang sama juga menunjukkan bahwa dari 1.165 pegawai yang menduduki jabatan struktural, hanya 33,73 persen yang berjenis kelamin perempuan, sedangkan sisanya 66,27&nbsp; persen atau sekitar 772 pegawai berjenis kelamin laki-laki.&nbsp; Ini berarti jabatan struktural yang ada di lingkungan Pemerintah Daerah Provinsi Riau masih didominasi oleh kaum adam.<br /><br />Data dari&nbsp; Badan Kepegawaian Daerah Provinsi Riau juga menunjukkan tren yang&nbsp; \'semakin tinggi posisi jabatan di birokrasi, jumlah perempuan semakin sedikit\'. Artinya, ada korelasi negatif antara posisi jabatan di birokrasi dengan jumlah PNS perempuan. Hal ini juga menunjukkan kaum perempuan lebih tertarik pada proses peningkatan ketrampilan dan pengetahuan sesuai dengan jabatan fungsional yang diikuti dan lebih memilih berkiprah di belakang layar. Jabatan fungsional itu sendiri secara garis besar terbagi menjadi dua, yakni jabatan fungsional tertentu dan jabatan fungsional umum atau staf.&nbsp; Sebagian besar pegawai perempuan lebih memilih jabatan fungsional umum/staf.&nbsp; Tercatat sebanyak lebih dari 60 persen pegawai perempuan yang memilih jabatan fungsional umum/staf, dan kurang dari 35 persen yang memilih jabatan fungsional tertentu.<br /><br />Isu terkini yang berhembus kencang di telinga aparatur sipil negara belakangan ini terkait perampingan birokrasi yang akan dilakukan dalam waktu dekat, terutama di tingkat eselon, menuai pro kontra dari berbagai pihak.&nbsp; Perampingan birokrasi yang dimaksud lebih kepada pengalihan jabatan struktural menjadi jabatan fungsional, dimana akan banyak jabatan struktural yang akan dipangkas dan diganti menjadi jabatan fungsional.&nbsp; Berbagai respon pegawai pun terlihat, ada yang merespon negatif dengan rencana tersebut, ada yang bersikap apatis, namun tidak sedikit juga yang memberikan respon positif.&nbsp; Respon yang positif lebih banyak diberikan oleh pegawai negeri sipil perempuan.&nbsp; Hal ini tidaklah mengherankan mengingat hanya sedikit pegawai perempuan yang memilih meniti karir lewat jenjang jabatan struktural, sehingga isu terkait perampingan jabatan eselon ini tidak begitu menjadi polemik yang berarti.<br /><br />Jabatan struktural lebih banyak berperan dalam pengambilan keputusan, sedangkan jabatan fungsional lebih kepada proses pengembangan diri dan potensi.&nbsp; Banyaknya pegawai perempuan yang lebih memilih jabatan fungsional dibandingkan jabatan struktural mengindikasikan bahwa dunia kerja bagi seorang perempuan lebih kepada wadah untuk mengembangkan potensi dan aktualisasi diri, bukan untuk mengejar karir.&nbsp; Walaupun hal ini tidak berlaku untuk semua kaum perempuan, karena dalam kenyataannya masih ada perempuan yang fokus dan capable dalam menggapai puncak karir.<br /><br />Sementara itu, jika dilihat dari sudut lain, yakni dari profesi yang digeluti, terlihat bahwa di instansi pemerintah, profesi guru dan perawat masih menjadi profesi primadona bagi kaum hawa.&nbsp; Jika dirinci menurut dinas/instansi pemerintahan di lingkungan Pemerintah Daerah Provinsi Riau, terlihat bahwa jumlah pegawai perempuan mendominasi hanya di beberapa instansi saja, seperti dinas pendidikan, dinas kesehatan, dinas pemberdayaan perempuan dan perlindungan anak, RSUD Arifin Ahmad, RSJ Tampan, dan RSUD Petala Bumi.<br /><br />Di dinas pendidikan tercatat pada tahun 2018 jumlah pegawai perempuan (termasuk guru di dalamnya) sebanyak 5.210 atau 63,75 persen.&nbsp; Hampir di setiap sekolah, guru perempuan memang lebih mendominasi dalam segi jumlah.&nbsp; Profesi guru sendiri selama ini memang dipandang sebagai profesi yang cocok untuk perempuan, dikarenakan tugas mendidik pada umumnya melekat pada diri seorang ibu yang notabene adalah seorang perempuan.&nbsp; Kita juga sering mendengar istilah dalam agama Islam bahwa ibu adalah madrasah pertama bagi seorang anak.<br /><br />Di beberapa instansi kesehatan, seperti dinas kesehatan, RSUD Arifin Ahmad, RSJ Tampan, dan RSUD Petala Bumi, pegawai perempuan&nbsp; juga mendominasi.&nbsp; Tercatat&nbsp; pada tahun 2018, persentase jumlah pegawai perempuan (termasuk perawat di dalamnya) di masing-masing instansi tersebut sebesar 71 persen, 74 persen, 71 persen, dan 78 persen.&nbsp; Sama halnya dengan profesi guru, profesi perawat juga lebih banyak digeluti oleh kaum perempuan.&nbsp; Menjadi seorang perawat membutuhkan skill ketelitian dan ketelatenan yang selama ini dianggap lebih cocok dilakukan oleh perempuan.<br /><br />Bekerja di dunia birokrasi bagi perempuan adalah sebuah pilihan, dan dalam setiap pilihan selalu ada manfaat dan resiko yang mengiringi.&nbsp; Pada kenyataannya, sudah banyak kontribusi yang diberikan oleh kaum perempuan di dunia kerjanya masing-masing, baik di instansi atau lembaga milik pemerintah maupun swasta.&nbsp; Bagaimanapun, kaum perempuan memegang peranan penting di semua lini kehidupan, mulai dari lingkungan terkecil yakni keluarga, masyarakat, dunia kerja, hingga kehidupan bernegara.</p>', 1, 'DataRiau.Com', 2, 'http://www.datariau.com/opini/Perempuan-di-Dunia-Birokrasi', '', '2020-01-21', '340020080', '92600', '14', '00', NULL, '1', NULL, '2020-09-09 10:02:41', '2020-09-09 10:02:41'),
(5, '75 Tahun dan Potret Lingkungan Indonesia', '<p>Tepat 75 tahun Indonesia merdeka. Begitu banyak permasalahan yang tengah dihadapi Indonesia yang belum dapat diselesaikan. Mulai dari bagaimana mengembalikan kondisi perekonomian; bagaimana meningkatkan neraca perdagangan di tengah ketidakpastian kondisi global; bagaimana menurunkan angka kemiskinan dan pengangguran; dan masalah lainnya terkait kondisi sosial dan ekonomi Indonesia. Selain itu, masih ada masalah penting lainnya yang sangat berarti dan menjadi daya dukung bagi kehidupan yaitu &ldquo;Masalah Lingkungan&rdquo;.<br /><br />Masalah lingkungan yang tengah dihadapi Indoenesia tercermin dari nilai &ldquo;<em>Environmental Performance Index&nbsp;</em>&ldquo; (EPI) atau Indeks Kinerja Lingkungan tahun 2020. Nilai EPI yang dihasilkan oleh&nbsp;<em>Yale Center for Environmental Law &amp; Policy</em>&nbsp;memperlihatkan seberapa besar keseriusan dan upaya pemerintah Indonesia dalam mengatasi permasalahan lingkungan.<br /><br />Dilansir dari epi.yale.edu, Indonesia berada pada peringkat 116 dari 180 negara di dunia. Posisi ini jauh di bawah dibandingkan dengan negara-negara tetangga Indonesia seperti Malaysia dan Singapura yang masing-masing berada pada peringkat 68 dan 39. Mengapa peringkat Indonesia jauh di bawah dan seperti apakah kondisi lingkungan di Indonesia hingga penilaian kinerja lingkungan sangat jauh tertinggal? Terdapat beberapa hal yang dapat mencerminkan kondisi tersebut (data publish Badan Pusat Statistik).<br /><br />Hal pertama yang dapat kita lihat adalah masalah yang ditimbulkan karena pemanfaatan sumber daya alam. Istilah &ldquo;Gemah Ripah loh Jinawi&rdquo; yang memiliki arti tenteram dan makmur serta sangat subur tanahnya, menggambarkan betapa kayanya negeri Indonesia dengan limpahan sumber daya alam baik hayati maupun non hayati.<br /><br />Salah satunya bahan tambang, melimpahnya bahan tambang dan bahan galian menimbulkan permasalahan yang tidak kecil bagi Indonesia. Di beberapa provinsi, lahan bekas tambang yang tidak dilakukan reklamasi menyebabkan masalah baik sosial maupun lingkungan. Contoh di Kalimantan Timur, lahan bekas tambang batu bara dibiarkan terbuka dan membahayakan bagi masyarakat sekitar bahkan sampai menelan korban jiwa (regional.kompas.com).<br /><br />Permasalahan juga terjadi pada hutan Indonesia. Selama kurun waktu 8 tahun (2011-2018), telah terjadi penurunan luas hutan dari 98,7 juta ha menjadi 93,52 juta ha yang disebabkan karena adanya kerusakan hutan. Penurunan ini terjadi hampir di seluruh wilayah Indonesia, paling luas adalah Papua diikuti oleh Kalimantan, Sumatera, Sulawesi, Maluku, Jawa, dan Bali serta NTT. Bukan tidak mungkin hutan yang semula menjadi Mega Biodiversity dan paru-paru dunia lambat laun akan terus berkurang akibat perubahan fungsi dan peruntukannya.<br /><br />Salah satu bentuk kerusakan hutan adalah kegiatan deforestasi yang dilakukan karena desakan konversi lahan untuk pemukiman, infrastruktur, pertanian, pertambangan, perkebunan, dan pemanenan hasil kayu untuk industri. Salah satu kegiatan deforestasi adalah pembakaran lahan dan penebangan kayu liar di kawasan hutan. Deforestasi kawasan hutan yang terjadi di Indonesia di tahun 2017-2018 adalah sebesar 195,73 ribu ha (KLHK).<br /><br />Residu berbahaya yang dihasilkan dari hasil akhir dari proses produksi, konsumsi atau akumulasi keduanya pun menjadi masalah yang tidak kalah beratnya. Residu berbahaya yang langsung dilepaskan ke lingkungan dapat mengakibatkan kerusakan lingkungan contohnya: emisi ke udara, gas rumah kaca (GRK), limbah cair, sampah, dan penghasil zat kimia. Selama kurun waktu 2000-2015, Emisi GRK yang dihasilkan meningkat sebesar 1.440 juta CO2e.<br /><br />Efek dari peningkatan GRK secara global dapat menyebabkan peningkatan suhu bumi dan pemanasan global yang berujung kepada bencana dan perubahan iklim atau &ldquo;Climate Change&rdquo;. Selama kurun waktu 1961-1990, Indonesia mengalami peningkatan suhu rata-rata 0,5 derajat celcius dan diproyeksikan antara tahun 2020 &ndash; 2050, rata-rata suhu di Indonesia akan meningkat 0,8 &ndash; 1,0 derajat celcius. Pada kurun waktu 2017-2018 terjadi peningkatan suhu maksimal sebesar 1,2 derajat celcius di DKI Jakarta dan maksimal sebesar 3,6 derajat celcius di Kalimantan Timur. Begitu juga di beberapa provinsi lainnya di Indonesia.<br /><br />Dari semua masalah lingkungan yang dihadapi, sangat dibutuhkan keseriusan dan kerjasama semua pihak untuk mengatasi masalah lingkungan. Tidak hanya pemerintah sebagai pelaku yang harus bertanggung jawab tetapi juga harus didukung oleh perusahaan, masyarakat, dan individu sebagai manusia yang memiliki moral.<br /><br />Pemerintah harus lebih fokus dalam menjalankan perannya. Salah satunya dalam hal pencapaian&nbsp;<em>Sustainable Development Goals&nbsp;</em>(SDGs). Setelah lima tahun sejak dicetuskannya SDGs, atau sepertiga dari target di tahun 2030, pemerintah masih berkutat dengan penyusunan Rencana Aksi Daerah (RAD) dan mengumpulkan data-data indikator SDGs. Dibuktikan dengan jumlah provinsi yang telah membuat Rencana Aksi Daerah (RAD) untuk mendukung pelaksanaan SDGs sebanyak 25 provinsi (Bappenas.go.id).<br /><br />Belum lagi ditambah dengan masalah data yang bersumber dari mana yang akan digunakan. Begitu juga dengan pencapaian target-target SDGs, boleh dibilang masih terfokus pada capaian sosial dan ekonomi saja. Sementara untuk capaian lingkungan masih jauh tertinggal bahkan data yang digunakan untuk indikator-indikator SDGs dimensi lingkungan masih banyak belum tersedia.<br /><br />Selain pemerintah, peran perusahaan tidak kalah pentingnya untuk mengatasi masalah lingkungan di Indonesia. Tanggung jawab perusahaan dalam bentuk&nbsp;<em>Corporate Sosial Resposibility</em>&nbsp;(CSR) dan Lembaga Filantropi di bidang lingkungan harus dapat diapresiasi dan dikelola dengan baik. Menurut Hamid Abidin, Direktur Eksekutif Filantropi Indonesia mengatakan dalam perkembangannya, filantropi dimaknai sebagai upaya untuk berbagi menyalurkan sumber daya dan berderma secara terorganisir untuk kepentingan strategis jangka panjang dan berkelanjutan (kabar24.bisnis.com)<br /><br />Walaupun demikian, perusahaan tidak boleh lupa dengan tanggung jwabnya dalam pengelolaan lingkungan akibat dari kegiatan atau proses bisnis yang dilakukan. Jangan sampai pemberian CSR dan keterlibatannya dalam Lembaga Filantropi hanya menjadi kedok untuk menutupi dosa lainnya terhadap lingkungan.<br /><br />Masyarakat pun berperan penting dalam mengatasi masalah lingkungan. Peran masyarakat dapat diwujudkan dalam bentuk membentuk kelompok-kelompok sadar lingkungan, membentuk kampung bersih dan sehat, melakukan kegiatan pengelolaan limbah rumah tangga di tingkat RT atau RW, dan berpartisipasi aktif dan masih dalam memperbaiki dan menjaga lingkungan. Akan tetapi, saat ini peran aktif dan kepedulian masyarakat masih sangat sedikit dan rendah. Lebih banyak masyarakat yang bersikap tidak peduli terhadap kondisi lingkungan.<br /><br />Masalah lingkungan hidup yang terjadi dapat dikatakan sebagai masalah moral karena berhubungan dengan perilaku manusia. Pencemaran dan kerusakan yang terjadi di hutan, laut, air, tanah, atmosfer dan berbagai macam bentuk kerusakan lainnya diakibatkan oleh perilaku manusia yang tidak peduli dan tidak bertanggung jawab dan hanya memikirkan kebutuhan hidupnya saja (Keraf, 2010).<br /><br />Sikap egosentrime manusia terhadap lingkungan dapat dilihat dari kebiasaan dalam hidup sehari-hari, contohnya membuang sampah sembarangan padahal mengetahui aturan dan akibat yang ditimbulkan. Yang membuat miris adalah perilaku tersebut juga dilakukan oleh individu yang mengenyam pendidikan tinggi, bukan hanya oleh mereka yang tidak mengerti tentang aturan dan akibatnya.<br /><br />Dengan melihat banyaknya kondisi dan permasalahan lingkungan yang dihadapi, menjadi hal yang wajar jika saat ini Indonesia berada pada peringkat 116 dunia. Ditambah dengan sikap dan perilaku kita yang kurang peduli terhadap lingkungan. Apakah kita bangga dengan posisi ini? Mudah-mudahan bertepatan dengan 75 tahun Indonesia Merdeka, kita semua mau membuka mata dan hati untuk lebih peduli terhadap kondisi lingkungan di sekitar kita.</p>', 1, 'thecolumnist.id', 2, 'https://thecolumnist.id/artikel/75-tahun-dan-potret-lingkungan-indonesia-1118#', '', '2020-08-19', '340016156', '92600', '14', '00', NULL, '1', NULL, '2020-09-09 10:23:11', '2020-09-09 10:23:11'),
(6, 'Penyimpangan Adaptasi Kebiasaan Baru', '<p>idak salah rasanya saat media Sydney Morning Herald (SMH) memberitakan Indonesia berpotensi menjadi episentrum virus corona dunia. Hal ini juga di-amin-kan oleh dosen&nbsp;<em>public health</em>&nbsp;di University of Derby, Dono Widiatmoko yang mengatakan \"Menurut saya sudah, bukan cuma bisa, sudah jadi episentrum baru virus corona di dunia\" (kompas.com). Mengapa Indonesia bisa menjadi epicentrum corona, apakah kebijakan pemerintah yang salah atau sikap tidak peduli masyarakat yang jadi penyebabnya?<br /><br />Penambahan kasus baru Covid-19 di Indonesia kian hari kian banyak. Sampai saat ini lebih dari 115 ribu kasus. Angka tersebut sudah melebihi kasus Covid-19 di China tempat virus ini muncul pertama kali. Tidak hanya bertambah dari sisi jumlah tetapi penyebaran virus ini semakin meluas. Ditandai dengan semakin banyaknya kabupaten/kota yang pada awalnya berada pada zona hijau kini berubah menjadi zona merah karena mulai terjangkit virus ini.<br /><br />Untuk melihat lebih jelas penambahan kasus corona di Indonesia, mari kita pilah menjadi dua kondisi yaitu:&nbsp;<em>pertama</em>, sejak diumumkannya pertama kali kasus Covid-19 di Indonesia (2 Maret 2020) sampai berakhirnya masa social distancing sekitar akhir Mei 2020 jumlah kasus sebanyak 26.473.&nbsp;<em>Kedua</em>, sejak diberlakukannya&nbsp;<em>&ldquo;New Normal&rdquo;&nbsp;</em>atau &ldquo;Adaptasi Kebiasaan baru&rdquo; sampai tanggal 4 Agustus 2020&nbsp;jumlah kasus sebanyak 88.583. Terjadi kenaikan tiga kali lipat dengan jangka waktu yang lebih pendek.<br /><br /><strong>&ldquo;Adaptasi Kebiasaan Baru&rdquo;</strong><br /><br />Haruskah kita khawatir, mengingat bahwa jumlah yang disampaikan secara resmi oleh lembaga terkait adalah data yang hanya mencakup orang yang sudah dites dan dinyatakan positif saja? Padahal kenyataannya banyak warga yang belum atau tidak melakukan tes dan berpotensi tinggi membawa serta menyebarkan virus ini di luar rumah.<br /><br />Kekhawatiran kita cukup beralasan, mengingat aktivitas di luar rumah saat ini sudah mulai kembali normal. Sebenarnya pemerintah sudah cukup tanggap untuk mengantisipasi masalah penyebaran virus corona, yaitu melalui kebijakan&nbsp;<em>&ldquo;New Normal&rdquo;</em>&nbsp;atau &ldquo;Adaptasi Kebiasaan Baru&rdquo;. Secara konsep, kebijakan atau aturan ini sangat baik. Dengan menimbang dan mengkhawatirkan kondisi perekonomian, pemerintah membolehkan masyarakat untuk beraktivitas kembali di luar rumah dengan tetap memperhatikan protokol kesehatan.<br /><br />Protokol kesehatan yang dimaksud yaitu dengan tetap menggunakan masker, menggunakan&nbsp;<em>hand sanitizer,</em>&nbsp;menghindari berjabat tangan, menjaga jarak, menghindari keramaian atau pertemuan, dan membiasakan mencuci tangan. Harapan pemerintah dengan memberlakukan protokol kesehatan, penyebaran virus corona dapat ditekan, masyarakat dapat beraktivitas, dan roda perekonomian dapat berputar kembali.<br /><br /><strong>Kondisi Menyimpang</strong><br /><br />Namun apa yang terjadi, ternyata kenyataan tidak sesuai harapan. Saat masyarakat sudah kembali beraktivitas di luar rumah dan roda perekonomian pun sudah mulai berjalan, ternyata jumlah kasus covid-19 justru semakin bertambah di saat kondisi &ldquo;Adaptasi Kebiasaan Baru&rdquo;.<br /><br />Hal ini tidak mengherankan mengingat masih banyak perilaku masyarakat yang cenderung abai, misalnya dalam hal penggunaan masker. Masker memang menjadi barang wajib yang harus ada saat kondisi sekarang. Tetapi masih banyak masyarakat yang tidak membawa dan menggunakan masker saat beraktivitas di luar rumah. Yang lebih konyol lagi, ada yang sudah menggunakan tetapi tidak tepat, seperti dibiarkan tergantung di dada atau justru digunakan untuk menutupi dagu atau leher.<br /><br />Selain abai dalam menggunakan masker, masih banyak juga masyarakat yang kurang disiplin dalam menghindari keramaian atau pertemuan. Dibuktikan dengan mulai banyak digelarnya pesta/hajatan yang dihadiri banyak orang yang berpotensi terjadi penyebaran virus corona. Ibu-ibu sosialita yang selama beberapa bulan terakhir terkungkung tidak bisa berkumpul, saat ini mulai melepaskan kerinduannya walau hanya sebatas bertemu di kafe&nbsp;atau rumah makan.<br /><br />Tidak terkecuali perkantoran, saat ini telah menjadi&nbsp;<em>cluster</em>&nbsp;baru penyebaran virus corona. Beberapa kasus baru muncul dan merebak dari perkantoran dimana terdapat pegawai atau pimpinan yang dinyatakan positif corona. Istana negara pun sempat dibuat heboh setelah mendapat kunjungan dari wakil wali kota Solo, Achmad Purnomo yang ternyata dinyatakan positif corona (cnnindonesia.com).<br /><br />Sikap abai masyarakat juga terjadi pada perilaku menjaga jarak. Perilaku ini seharusnya diterapkan saat mendatangi keramaian dan pertemuan, berada dalam antrian, mengunjungi rumah makan atau pusat perbelanjaan, dan fasilitas-fasilitas umum lainnya. Dengan mendatangi keramaian saja resiko penyebaran sudah cukup tinggi, apalagi jika perilaku menjaga jaga tidak diterapkan, maka resiko penyebaran menjadi semakin besar. Terbukti dengan munculnya&nbsp;<em>cluster&nbsp;</em>baru di mal. Masih banyak lagi penyimpangan perilaku lainnya yang dilakukan oleh masyarakat yang menyebabkan terjadinya penambahan kasus Covid-19.<br /><br /><strong>Sikap Apatis Masyarakat</strong><br /><br />Penyimpangan perilaku yang dilakukan masyarakat dalam mematuhi protokol kesehatan lebih disebabkan karena sikap tidak peduli atau &ldquo;apatis&rdquo;. Walaupun tidak menutup kemungkinan ada beberapa masyarakat yang tidak mengetahui tentang penerapan protokol kesehatan di luar rumah. Hal inilah yang menyebabkan terjadi peningkatan jumlah kasus Covid-19 yang cukup pesat baik untuk orang yang paham maupun yang tidak paham tentang protokol kesehatan.<br /><br />Sikap apatis menurut Luis Rey merupakan kondisi dimana kejiwaan seseorang atau individu ditandai dengan ketidaktertarikan, ketidakpedulian, atau ketidakpekaan terhadap kehidupan sosial, emosional, atau fisik. Jika seseorang memiliki sikap ini maka dampak negatif akan muncul seperti tidak peduli, meningkatkan potensi individualisme, dan bisa menimbulkan masalah yang lebih besar yaitu perpecahan (maxmanroe.com).</p>\r\n<p>Menghadapi sikap apatis masyarakat dalam penerapan protokol kesehatan saat &ldquo;Adaptasi Kebiasaan baru&rdquo; tidaklah mudah. Penegakan dalam pemberian sanksi atau hukuman saat terjadi pelanggaran sangat dibutuhkan untuk masyarakat yang bersikap apatis. Penerapan protokol kesehatan oleh pemilik usaha yang memaksa pengunjung untuk mentaati protokol kesehatan juga dapat membantu menekan penyebaran virus corona.<br /><br />Selain itu, peran semua pihak seperti pimpinan/kepala, guru, pemuka agama atau masyarakat serta pemerintah untuk saling mengingatkan pentingnya penerapan protokol kesehatan sangat dibutuhkan. Jika ini berhasil kita lakukan maka penyebaran virus corona dapat kita tekan dan Indonesia dapat segera terbebas dari Covid-19. Semoga.</p>', 1, 'thecolumnist.id', 2, 'https://thecolumnist.id/artikel/penyimpangan-adaptasi-kebiasaan-baru-1089#', '', '2020-08-08', '340016156', '92600', '14', '00', NULL, '1', NULL, '2020-09-09 10:24:57', '2020-09-09 11:04:49'),
(7, 'Ekonomi Riau: Upaya Bertahan Menghadapi Ancaman Resesi', '<p>April 2020, <em>Internasional Monetary Fund (IMF</em>) memprediksi pertumbuhan ekonomi Indonesia masih akan tumbuh 1,5 persen. Tetapi beberapa hari yang lalu prediksi ini diralatnya dengan menyatakan bahwa pertumbuhan ekonomi RI pada 2020 sebesar -0,3 persen dan akan rebound di 2021 menjadi 6,1 persen (cnbcindonesia.com). Prediksi ekonomi ini merupakan peringatan bagi Indonesia akan kemungkinan terjadinya resesi. Ekonomi Indonesia yang terpuruk pada triwulan I 2020 tercermin pada kondisi ekonomi provinsi-provinsi di Indonesia, tidak terkecuali Provinsi Riau. Pertumbuhan ekonomi Riau triwulan I 2020 (2,24 persen) yang tumbuh tetapi melambat boleh dibilang masih agak lebih baik dibandingkan dengan provinsi lainnya yang sangat menggantungkan ekonominya pada sektor pariwisata.<br /><br />Untuk mengatasi keterpurukan ekonomi, pemerintah melakukan intervensi berupa kebijakan &ldquo;<em>New Normal</em>&rdquo; yaitu pola atau gaya hidup baru dengan cara menjalani hidup kembali seperti sebelumnya dengan tetap mengikuti protokol Kesehatan. Riau mulai memberlakukan kebijakan ini pada awal Juni setelah PSBB Tahap 4 berakhir (4 Juni 2020), dengan harapan ekonomi dapat kembali berjalan dan normal walaupun harus perlahan-lahan.<br /><br /><strong>Kondisi Ekonomi Riau Saat ini</strong><br /><br />Pandemi Covid-19 menyebabkan perubahan perilaku individu dan juga masyarakat Riau. Dari hasil Survei Sosial Demografi Dampak Covid-19 yang dilakukan oleh Badan Pusat Statistik (BPS) secara online, diketahui responden lebih mengurangi aktivitas di luar rumah seperti berkumpul, jalan-jalan, belanja, menghindari keramaian. Sebaliknya, aktivitas di rumah menjadi lebih sering dilakukan seperti memasak, bersih-bersih rumah, mencuci, menonton, belajar di rumah dan lain sebagainya. Ini sejalan dengan himbauan pemerintah untuk melakukan&nbsp;<em>social distancing</em>&nbsp;dan kebijakan Pembatasan Sosial Berskala Besar (PSBB).<br /><br />Hal tersebut mempengaruhi kondisi ekonomi Riau salah satunya sektor transportasi. PSBB menyebabkan sektor transportasi baik darat, laut maupun udara menjadi lumpuh. Ditambah dengan penutupan Bandara Sultan Syarif Qasim II menyebabkan tidak adanya kunjungan wisatawan mancanegara (wisman) di bulan April (nol persen).<br /><br />Penurunan wisman sejalan dengan berkurangnya Tingkat Penghunian Kamar (TPK). Penurunan TPK terjadi sejak kasus perdana Covid-19 Riau diumumkan, dengan nilai TPK bulan Maret yang sebesar 26,71 persen menjadi 14,73 persen di bulan April. Begitu juga dengan usaha restoran dan rumah makan sebagai sektor pendukung, banyak yang tutup dan tidak beroperasi selama pemberlakuan PSBB.<br /><br />Melalui Nilai Tukar Petani (NTP) kita dapat melihat tingkat kemampuan/daya beli petani pedesaan di Riau, terlihat bahwa pada NTP Mei 2020 (111,74) turun sebesar -3,38 persen dibanding NTP April 2020 (115,64). Penurunan NTP disebabkan oleh turunnya indeks harga yang diterima petani sebesar -3,08 persen sedangkan indeks harga yang dibayar petani mengalami kenaikan sebesar 0,30 persen. Hal ini mencerminkan peningkatan pengeluaran petani sedangkan pendapatan berkurang. Meski demikian, tingkat kemampuan/daya beli petani Riau masih lebih baik karena berada di atas 100.<br /><br />Ekspor Riau pada bulan April 2020 mencapai US$ 921.01 miliar atau mengalami penurunan sebesar 12,50 persen dibanding ekspor bulan Maret 2020, tetapi kembali mengalami kenaikan 3,62 persen pada bulan Mei yaitu mencapai US$ 954.3 miliar. Peningkatan ekspor Riau terjadi karena negara-negara pengimpor CPO sudah mulai membaik dan berhasil menghadapi pandemi, China salah satu contohnya.<br /><br />Data-data tersebut (jumlah wisman, TPK, NTP, dan ekpor) diambil dari Berita Resmi Resmi Statistik yang dikeluarkan BPS setiap bulan.<br /><br /><strong>Kelapa Sawit dan CPO Kunci Bertahan</strong><br /><br />Hampir 75 persen struktur perekonomian Riau didominasi oleh tiga sektor utama yaitu pertanian; industri pengolahan; dan pertambangan. Pertanian didominasi oleh sub sektor perkebunan, industri pengolahan dodiminasi adalah industri<em>&nbsp;Crude palm Oil</em>&nbsp;(CPO), dan pertambangan didominasi oleh pertambangan minyak bumi. Ketiga sektor ini mampu membuat Riau bertahan menghadapi pandemi Covid-19.<br /><br />Meskipun pertambangan minyak bumi menjadi sektor dominan di Riau, tetapi produksinya terus mengalami penurunan setiap tahunnya. Ini merupakan pengaruh dari usia sumur-sumur minyak yang ada semakin menua dan ditambah dengan anjloknya harga minyak dunia semakin memperparah pertambangan minyak bumi Riau. Jadi penurunan yang terjadi saat ini bukan disebabkan karena pandemi.<br /><br />Untuk sub sektor perkebunan dan industri pengolahan, Tandan Buah Segar (TBS) kelapa sawit merupakan hasil dari perkebunan kelapa sawit dan menjadi bahan baku utama untuk industri pengolahan CPO. Hasilnya sebagian besar akan diekspor.<br /><br />Sifat kelapa sawit yang harus segera dipanen dan diolah menjadikan sektor perkebunan kelapa sawit dan industri pengolahan CPO terus berproduksi dan beroperasi. Karena alasan itulah kedua sektor ini mampu bertahan dan tidak tergoyahkan oleh pandemi Covid-19. Besaran permintaan negara pengimpor dan harga CPO dunialah yang dapat mempengaruhi dan sedikit mengganggu besaran ekspor CPO Riau.<br /><br />Persentase ekspor non migas Riau sebesar 97,33 persen dan 60,93 persen diantaranya adalah untuk golongan lemak &amp; minyak hewan/nabati (CPO termasuk dalam golongan ini). Jadi bisa dibayangkan bagaimana besarnya pengaruh perkebunan kelapa sawit dan industri pengolahan CPO terhadap perekonomian Riau secara umum.<br /><br /><strong>Upaya Untuk Bangkit</strong><br /><br />Walaupun perkebunan dan industri pengolahan menjadi sektor andalan di Riau, tetapi kita tidak boleh lupa dengan keberadaan dan kemampuan Usaha Mikro Kecil (UMK). Jumlah usaha ini mencapai 509 ribu atau 98,26 persen dari total usaha non pertanian di Riau. Usaha ini juga mampu menyerap tenaga kerja lebih dari 1,24 juta orang atau sekitar 67,68 persen dari total tenaga kerja di luar sektor pertanian di Riau (Potensi UMK Provinsi Riau, 2018).<br /><br />Ketangguhan UMK terbukti ketika krisis menerpa Indonesia pada sekitar tahun 1997-1998. UMK terbukti tetap berdiri kokoh di saat usaha-usaha besar lainnya berjatuhan. Ini disebabkan karena pengelolaan usaha dilakukan secara sederhana sehingga lebih banyak menjadi pilihan sebagai wadah usaha yang menghasilkan nilai ekonomi.<br /><br />Kondisi ini menjadi berbeda di saat pandemi, UMK merupakan usaha yang paling terdampak Covid-19. Aturan&nbsp;<em>Social Distancing</em>&nbsp;dan PSBB membuat usaha ini banyak yang mati secara serentak karena tidak adanya permintaan dan menyebabkan produksi menjadi benar-benar terhenti. Pemerintah daerah harus berupaya untuk menghidupkan kembali UMK. Selain karena mempunyai peran penting dalam menggerakan roda perekonomian, UMK juga dapat menyerap jumlah tenaga kerja yang sangat besar.<br /><br />Salah satu upaya yang dapat dilakukan adalah melalui pemberian pinjaman kredit usaha tanpa persyaratan yang rumit dan upaya untuk memasarkan hasil produk secara online sehingga jangkauan penjualan menjadi lebih luas.<br /><br />Mengembangkan potensi yang dimiliki Riau juga merupakan salah satu upaya untuk bangkit saat ini. Luasnya lahan yang dimiliki dapat dimanfaatkan untuk mengembangkan tanaman ubi kayu/singkong. Kementerian Pertanian (Kementan) menyatakan akan meningkatkan produksi ubi kayu sebagai pangan lokal alternatif selama pandemi Covid-19. Pengembangan itu menjadi bagian dari program jangka panjang diversifikasi pangan pokok selain beras (republikasi.co.id).<br /><br />Selain itu, singkong sebagai bahan baku tapioca digunakan untuk pemutih kertas yang sangat dibutuhkan oleh perusahaan pulp and paper (GoRiau.com). PT Indofood Sukses Makmur (Tbk) pun melakukan import singkong yang dikeringkan (<em>gaplek</em>) setiap tahunnya dari Vietnam. Dalam jumlah mencapai antara 700.000 sampai 1.000.000 ton pertahun (riaupotenza.com), Sungguh potensi luar biasa yang harus ditangkap dan dikembangkan oleh pemerintah daerah Riau di saat pandemi ini.<br /><br />Dana desa juga dapat digunakan untuk bangkit di saat pandemi. Melalui program padat karya dengan menggunakan anggaran dana desa dapat menyerap tenaga kerja dan memberdayakan masyarakat desa. Selain dapat membangun desa, program tersebut juga dapat memberikan pendapatan untuk masyarakat di desa.<br /><br />Semua upaya di atas dapat dilakukan dengan tujuan untuk meningkatkan pendapatan masyarakat dan dapat mendorong daya beli serta konsumsi rumah tangga. Hasil akhir yang diharapkan adalah roda perekonomian Riau berputar dan dapat bertahan menghadapi ancaman resesi. Upaya lainnya yang tidak kalah penting dan harus dilakukan pemerintah daerah adalah mengembalikan Riau kembali menjadi zona hijau Covid-19 untuk selamanya.</p>', 1, 'thecolumnist.id', 2, 'https://thecolumnist.id/artikel/ekonomi-riau-upaya-bertahan-menghadapi-ancaman-resesi-959#', '', '2020-07-01', '340016156', '92600', '14', '00', NULL, '1', NULL, '2020-09-09 10:27:13', '2020-09-09 11:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(3, 'admin', 'aywl7_SoQRND-WRZ-KPu45dMgIKmOTZp', '$2y$13$XB0PkSnCaW.cj/RKtY14ke5uDdaXqZvKEt7ObPhiPpcxwTEra5JYG', NULL, 'admin@kopistat.com', 10, 1599710083, 1599710083, 'KVVo4ysaa9hafTHuHsT1dYEgMLjhSLEJ_1599710083');

-- --------------------------------------------------------

--
-- Table structure for table `writer`
--

CREATE TABLE `writer` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nip` varchar(9) NOT NULL,
  `nipbaru` varchar(19) NOT NULL,
  `kodeorganisasi` varchar(12) NOT NULL,
  `kodeprovinsi` varchar(2) NOT NULL,
  `kodekabupaten` varchar(2) NOT NULL,
  `alamatkantor` varchar(250) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kabupaten` varchar(100) NOT NULL,
  `golongan` varchar(6) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `eselon` varchar(4) NOT NULL,
  `auth_key` varchar(100) DEFAULT NULL,
  `password_hash` varchar(100) DEFAULT NULL,
  `password_reset_token` varchar(100) DEFAULT NULL,
  `status` smallint(2) DEFAULT NULL,
  `created_at` varchar(10) DEFAULT NULL,
  `updated_at` varchar(10) DEFAULT NULL,
  `verification_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `writer`
--

INSERT INTO `writer` (`id`, `nama`, `email`, `username`, `nip`, `nipbaru`, `kodeorganisasi`, `kodeprovinsi`, `kodekabupaten`, `alamatkantor`, `provinsi`, `kabupaten`, `golongan`, `jabatan`, `foto`, `eselon`, `auth_key`, `password_hash`, `password_reset_token`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'Dadang Sunandar', 'dadangsunandar@bps.go.id', 'dadangsunandar', '340019148', '198311082007011004', '140000092620', '14', '00', 'Jl. Pattimura No. 12', 'Riau', 'Prov. Riau', 'III/d', 'Kepala Seksi Jaringan dan Rujukan Statistik', 'https://community.bps.go.id/images/avatar/19148.JPG', '4', '', '', '', 10, '2020-09-11', '2020-09-11', NULL),
(2, 'Desi Damaiyanti, SST', 'damaiyanti@bps.go.id', 'damaiyanti', '340020080', '198609202008012002', '92800', '14', '71', 'Jln Rawa Indah', 'Riau', 'Pekanbaru', 'III/C', 'Statistisi Ahli Pertama', 'dwdwew', '-', '', '', '', 10, NULL, NULL, NULL),
(3, 'Fitri Hariyanti SST, M.M.', 'fhariyanti@bps.go.id', 'fhariyanti', '340016156', '197909182000122003', '92500', '14', '00', 'Jln Pattimura', 'Riau', 'Pekanbaru', 'IV/a', 'Kasie Lintas Sektor', '', 'IV', '', '', '', 10, NULL, NULL, NULL),
(7, 'Erika Sari', 'erikasari@bps.go.id', 'erikasari', '340056269', '199103152013112001', '140000092630', '14', '00', 'Jl. Pattimura No. 12', 'Riau', 'Prov. Riau', 'III/b', 'Staf Seksi Diseminasi dan Layanan Statistik', 'https://community.bps.go.id/images/avatar/56269.JPG', '-', NULL, NULL, NULL, 10, '2020-09-11', NULL, NULL),
(8, 'Enestia Chaira Madona', 'enestia@bps.go.id', 'enestia', '340053286', '198705162009122003', '140000092610', '14', '00', 'Jl. Pattimura No. 12', 'Riau', 'Prov. Riau', 'III/b', 'Staf Seksi Integrasi Pengolahan Data', 'https://community.bps.go.id/images/avatar/53286.JPG', '-', NULL, NULL, NULL, 10, '2020-09-11', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `masterjenismedia`
--
ALTER TABLE `masterjenismedia`
  ADD PRIMARY KEY (`jenismediaid`);

--
-- Indexes for table `masterunitkerja`
--
ALTER TABLE `masterunitkerja`
  ADD PRIMARY KEY (`unitkerjaid`) USING BTREE;

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `opini`
--
ALTER TABLE `opini`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori` (`kategori`),
  ADD KEY `nip` (`nip`),
  ADD KEY `opini_ibfk_3` (`unitkerja`),
  ADD KEY `jenismedia` (`jenismedia`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `writer`
--
ALTER TABLE `writer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD UNIQUE KEY `nipbaru` (`nipbaru`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `masterjenismedia`
--
ALTER TABLE `masterjenismedia`
  MODIFY `jenismediaid` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `opini`
--
ALTER TABLE `opini`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `writer`
--
ALTER TABLE `writer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `opini`
--
ALTER TABLE `opini`
  ADD CONSTRAINT `opini_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `opini_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `writer` (`nip`),
  ADD CONSTRAINT `opini_ibfk_3` FOREIGN KEY (`unitkerja`) REFERENCES `masterunitkerja` (`unitkerjaid`),
  ADD CONSTRAINT `opini_ibfk_4` FOREIGN KEY (`jenismedia`) REFERENCES `masterjenismedia` (`jenismediaid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
