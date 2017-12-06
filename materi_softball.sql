-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2017 at 04:44 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `materi_softball`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_alat`
--

CREATE TABLE `t_alat` (
  `kodemat` int(25) NOT NULL,
  `judulmateri` varchar(255) NOT NULL,
  `isimateri` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_alat`
--

INSERT INTO `t_alat` (`kodemat`, `judulmateri`, `isimateri`, `gambar`) VALUES
(1, 'Lapangan', 'Lapangan sofbol berbentuk bujur sangkar. Dibagi menjadi dua daerah yakni daerah fair (fair territory) dan daerah foul (foul territory). Lebih jauh dalam daerah fair terbagi menjadi dua bagian, bagian dalam (Infield), dan bagian luar (outfield).', ''),
(2, 'Bola', 'Sofbol menggunakan bola berwarna kuning dengan benang grip berwarna merah, yang sebelumnya berwarna putih dengan grip putih. Bahan bola softball terbuat dari kulit atau yang sejenisnya berukuran berat 190 gram.', ''),
(3, 'Sarung tangan (glove)', 'Sarung tangan (glove dan Mitt)\r\nSarung tangan (glove) dikenakan oleh seluruh pemain bertahan untuk menangkap bola, sementara first baseman dan penangkap bola mengenakan mitt (glove mempunyai jari, sedangkan mitt tidak).\r\n\r\nGlove semacam sarung tangan yang terbuat dari kulit agak tebal dengan ukuran 284 gram. Digunakan untuk pemain penjaga. Sedangkan bagi penjaga home base (catcher) selain memakai glove juga mengunakan alat pelindung \r\n', ''),
(4, 'Tongkat pemukul (bat)', 'Tongkat pemukul (bat) yang digunakan dalam pertandingan resmi adalah bat khusus yang diperuntukkan untuk sofbol. Ketentuan pemakaian dan kharakteristik bat yang boleh digunakan tertuang dalam peraturan Federasi Sofbol Internasional.\r\n\r\nTongkat / Kayu pemukul (stick) terbuat dari kayu atau bahan yang sejenis berbentuk bulat panjang dengan bagian tempat pegangan lebih kecil. Ukuran stick softball adalah: Panjang stick 86,5 cm dan Tempat pegangan dibalut sepanjang 40 cm\r\n', ''),
(5, 'Helm', 'Helm dipakai oleh seorang pemukul bola yang berguna untuk melindungi kepala seorang pemukul bola dari terjangan bola dan cedera.', ''),
(6, 'Pakaian pelindung (protective gear) dan sepatu pool (cleats)', 'Pakaian pelindung (protective gear) dan sepatu pool (cleats) dikenakan oleh seorang penangkap bola. Selain itu diperlukan pula Legguards Softball sebagai pelindung tulang kering pada kaki.', ''),
(7, 'Seragam / Uniform', 'Uniform atau seragam ini dipakai oleh setiap pemain yang terdiri dari: baju, celana, dan topi yang seragam atau berwarna dasar sama. Semakin tinggi tingkat pertandingannya, semakin ketat dalam peraturan seragamnya.', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_peraturan`
--

CREATE TABLE `t_peraturan` (
  `kodemat` int(25) NOT NULL,
  `judulmateri` varchar(255) NOT NULL,
  `isimateri` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_peraturan`
--

INSERT INTO `t_peraturan` (`kodemat`, `judulmateri`, `isimateri`, `gambar`) VALUES
(1, 'Lapangan Softball', 'Lapangan softball berbentuk bujur sangkar.', ''),
(2, 'Perlengkapan permainan', 'Setiap pemain harus memakai kostum dengan ketentuan di depan baju ditulis nama daerah dan di belakang nomor punggung.', ''),
(3, 'Jumlah pemain', 'Jumlah pemain softball setiap regunya ada 9 orang yang dipimpin oleh seorang kapten regu dengan susunan pemain: 1 orang pitcher’s; 2 orang catcher’s; 3,4,5 base man; 6 shortstop, short fielder; 7,8,9 left fielder, middle fielder, dan right fielder.', ''),
(4, 'Lama Pertandingan', 'Lamanya pertandingan softball ditentukan oleh inning yaitu 7 inning. Pengertian 1 inning adalah setiap regu bermain 1 kali giliran memukul dan 1 kali menjadi regu penjaga.', ''),
(5, 'Wasit (Umpire)', 'Dalam permainan softball terdapat wasit yang biasa disebut Umpire .', ''),
(6, 'Cara bermain', '• Untuk regu yang mendapat giliran untuk memukul, maka setiap pemain mendapat kesempatan 3 kali memukul. Dengan ketentuan bila pukulan pertama dan kedua strike maka pemain yang bersangkutan harus lari.\r\n\r\n• Urutan pemukul ditentukan oleh nomor urut yang telah ditentukan sebelum bermain \r\n\r\n• Pemukul yang pertama tidak boleh dilalui pemukul yang kedua, pemukul kedua tidak boleh dilalui pemukul ketiga, dan seterusnya \r\n\r\n• Setiap base hanya boleh diisi oleh satu orang pemain.\r\n\r\n• Pada waktu bola dalam permainan, bebas mengadakan gerakan kecuali bila pitcher sudah siap untuk melemparkan bola kepada pemukul.\r\n\r\n• Pada waktu akan ditick, pelari tidak boleh menghindari berlari ke luar atau ke dalam lebih dari batas.\r\n', ''),
(7, 'Strike', 'Dalam permainan softball, strike dihitung apabila:\r\n\r\n• Saat dipukul, bola kena atau tidak kena\r\n\r\n• Lemparan baik, walaupun bola tidak \r\ndipukul\r\n\r\n• Bola yang dipukul meleset keluar, bila pukulan yang meleset itu melambung dan tertangkap oleh si penjaga, maka pemukul itu langsung mati.\r\n', ''),
(8, 'Lari Bebas', 'Lari bebas diberikan apabila:\r\n\r\n• Pitcher’s melemparkan bola 4 kali salah\r\n\r\n• Si pemukul dihalang-halangi pada waktu akan menuju base\r\n\r\n• Bila semua base terisi, sedangkan si pemukul telah empat kali tidak memukul karena pitcher melemparkan bola salah terus.\r\n', ''),
(9, 'Cara Mematikan Dan Tukar Tempat', 'Cara mematikan dapat dilakukan dengan cara ditick sebelum pelari mengenai base. Pada waktu men-tick bola tidak boleh dilepaskan atau terlepas dari tangan. Kecuali dalam keadaan lari cukup dengan membakar base, yaitu sambil memegang bola, menginjak base yang dituju pelari. Bertukar tempat dilakukan setelah tiga kali mati.\r\n\r\nPemain dikatakan mati apabila:\r\n\r\n• Pemain pemukul tidak dapat memukul bola sebanyak tiga kali, dan cachter dapat menangkap bola yang dilempar Pitcher sebelum bola jatuh maka pemukul dinyatakan mati.\r\n\r\n• Catch ball/Fly Out terjadi apabila bola yang dipukul dapat ditangkap oleh regu penjaga sebalum bola menyentuh tanah, jika terjadi Fly Out maka pelari tidak bolah berlari ke base salanjutnya dan apabila berlari maka dinyatakan Out.\r\n\r\n• Dapat ditick apabila tidak menginjak Base.\r\n', ''),
(10, 'Pembantu', 'Dari masing-masing regu mempunyai dua orang pembantu yang berpakaian serangam dengan regunya. Kedua pembantu itu kerjanya memberi petunjuk kepada pemukul dan pelari base. Tempatnya di tempat pembantu yaitu satu orang di sebelah kiri dan satu orang lagi di sebelah kanan.', ''),
(11, 'Cara Memperoleh Nilai', '• Setiap pelari dengan pukulan baik dan dapat kembali dengan selamat mendapat nilai satu.\r\n\r\n• Setiap pelari yang menuju base harus ada pada base atau menginjak base, tidak boleh lewat begitu saja. Jika dilewati maka boleh di-tick . Hanya pada base pertama boleh lewat. Tetapi tidak berpura-pura, maksudnya untuk bisa lewat di base yang kedua.\r\n\r\n• Jika ada bola yang ditangkap dari hasil pukulan, maka si pemukul dinyatakan mati. Para pelari masing-masing kembali ke basenya dengan cepat agar basenya tidak dibakar oleh penjaga\r\n\r\n• Pelari yang kembali dapat dimatikan.\r\n\r\n• Pelari yang sudah dimatikan tidak dapat melanjutkan perjalanannya.\r\n\r\nJika memukul dan dapat kembali ke home base dapat selamat, maka ia mendpat nilai 6 dan setiap base lawannya mendapat nilai satu.\r\n', ''),
(12, 'Peraturan Khusus', '• Apabila pada salah satu pertandingan berakhir dengan hasil sama (tie) setelah pertandingan berjalan 7 inning, maka pertandingan akan dilanjutkan dengan menambah inning.\r\n\r\n• Tim yang tidak bersedia atau menolak bermain pada waktu yang telah ditentukan dalam acara pertandingan (play ball) maka tim tersebut dinyatakan kalah dengan angka 0-15.\r\n\r\n• Time out diberikan hanya satu kali kepada setiap tim yang bertanding untuk setiap inning, masing-masing selama 1 menit.\r\n\r\n• Pergantian pemain dapat dilakukan oleh setiap regu kapan saja dengan melapor kepada umpire home dan scorer.\r\n\r\n• Jika Pitcher Sudah melakuka Touch ball (siap Untuk melempar) maka pitcher tidak boleh melepaskan touchballnya dan tidak ada gerakan lain, kecuali melempar bola ke catcher. Dalam gerakan Pitching tidak boleh ada gerakan yang diulang-ulang, jika terjadi hal-hal seperti itu, Umpire akan memberikan Peringatan dan jika terjadi lagi maka akan diberi hukuman (box).\r\n\r\n• Hukuman bisa berupa freewalk bagi pemain lawan.\r\n\r\n• Jika lemparan pitcher menganai tubuh pemukul maka pemukul akan dinyatakan free walk (jalan bebas).\r\n', ''),
(13, 'Peraturan lainnya', '• Apabila pertandingan telah berjalan 7 inning dan skor imbang (Tie) maka pertandingan akan dilanjutkan dengan menambah Inning.\r\n\r\n• Tim yang menolak bermain pada waktu yang telah ditentukan dalam pertandingan (Play Ball) maka tim tersebut dinyatakan kalah dengan skor 15-0.\r\n\r\n• Setiap Inning hanya diberikan satu kali Time Out dengan waktu setiap Time Out adalah selama 1 Menit.\r\n\r\n• Pergantian pemain dapat dilakukan kapan saja akan tetapi harus melapor kepada wasit yang bertugas memimpin pertandingan.\r\n\r\n• Jika lemparan pitcher mengenai badan pemukul maka pemukul dinyatakan Free Walk.\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_teknik`
--

CREATE TABLE `t_teknik` (
  `kodemat` int(25) NOT NULL,
  `judulmateri` varchar(255) NOT NULL,
  `submateri` text NOT NULL,
  `isimateri` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_teknik`
--

INSERT INTO `t_teknik` (`kodemat`, `judulmateri`, `submateri`, `isimateri`, `gambar`) VALUES
(1, 'Teknik Dasar Softball Dalam Memegang Bola', 'Teknik memegang bola dalam permaian softball terdapat tiga macam cara diantaranya yaitu memegang dengan empat jari, tiga jari, dan dua jari.  ', 'a. Teknik Memegang Bola Empat Jari\r\n\r\nTeknik memegang bola empat jari merupakan teknik yang sebaiknya untuk pemula dan yang memiliki jari-jari yang pendek. Cara melakukannya yaitu dengan kelima bagian jari tangan berada pada sekeliling bola dengan sedemikian rupa sehingga menjadi satu genggaman. Teknik pegangan ini biasanya digunakan untuk anak-anak, pemain pemula atau pemain yang jarinya pendek.\r\n\r\nb. Teknik Memegang Bola Tiga Jari\r\n\r\nTeknik memegang bola tiga jari adalh teknik yang dilakukan pemain yang memiliki tangan kecil atau jarinya pendek. Teknik atau cara ini yaitu menempatkan tiga jari telunjuk, jari tengah, dan jari manis pada bagian atas kemudian jari kelingking dan ibu jari berada di bagian bawahnya.\r\n\r\nc. Teknik Memegang Bola Dua Jari\r\n\r\nTeknik memegang bola dua jari cocok untuk pemain yang memiliki tangan besar atau jari-jari yang panjang. Teknik atau cara ini yaitu menepatkan jari telunjuk, jari tengah di bagian atas bola, kemudian disangga dengan ketiga jari lainnya di bagian bawah bola.\r\n', ''),
(2, 'Teknik Dasar Softball Dalam Melempar Bola Beserta Cara Melakukannya', 'Teknik Melempar bola dalam permainan softball dibedakan menjadi tiga, diantaranya yakni lemparan atas (overhand throw), lemparan samping (sidehand throw), dan lemparan bawah (underhand throw).', 'a. Lemparan atas (overhand throw) dalam Permainan Softball\r\n\r\nPada saat melempar, ayunan tangan dan langkah kaki secara bersamaan dengan berat badan bertumpu pada kaki yang di depan, badan sedikit condong ke belakang. Lemparan atas dilakukan dengan gerakan ayunan lengan ke atas melewati garis horizontal pada persendian bahu.\r\n\r\nb. Lemparan samping (sidehand throw) dalam Permaianan Softball\r\n\r\nLemparan samping (sidehand throw)\r\nPada waktu melempar lengan bawah sejajar dengan bahu dan sedikit lecutan pergelangan tangan. Lemparan ini biasa digunakan dalam jarak pendek dan memerlukan waktu yang cepat. Jalannya bola lurus dan lebih cepat.\r\n\r\nc. Lemparan bawah (underhand throw) dalam Permaianan Softball\r\n\r\nLemparan bawah digunakan biasanya dalam keadaan darurat dan dilakukan dalam waktu yang cepat, posisi tubuh membungkuk dengan kedua kaki ditekuk. Biasanya lemparan ini dilakukan dengan cepat dan dalam jarak dekat untuk dapat mematikan lawan dengan segera. Oleh karena itu, lemparannya tidak terlalu kuat. Jalannya bola juga lambat, tetapi tepat pada sasaran.', ''),
(3, 'Teknik Dasar Softball Dalam Menangkap Bola', 'Teknik menangkap bola dalam permaianan softball dibagi menjadi tiga macam berdasarkan arah datangnya bola yakni Bola datar (straight ball), Bola lambung, dan Bola menggelinding (ground ball).', 'a. Bola datar (straight ball)\r\n\r\nCara melakukannya yaitu dengan posisi badan berdiri, kaki kangkang, pandangan lurus ke depan ke arah datangnya bola, posisi kedua tangan siap di depan dada. Bola ditangkap oleh tangan yang memakai glove yaitu tangan kiri, dan tangan kanan siap melempar bola.\r\n\r\nb. Bola lambung\r\n\r\nCara melakukannya yaitu dengan posisi badan ditempatkan tepat di mana bola akan jatuh. Bola ditangkap dengan satu tangan atau dua tangan secara bersamaan.\r\n\r\nc. Bola menggelinding (ground ball)\r\n\r\nCara melakukannya yaitu bola yang datangnya menggelinding di atas tanah ditangkap dengan cara berlutut sedemikian rupa dan tangan yang memakai glove ditempatkan tepat pada arah datangnya bola. Sedangkan tangan yang lainnya siap untuk menangkap dan melemparkan bola.\r\n', ''),
(4, 'Teknik Dasar softball Dalam Memegang Stik/Kayu Pemukul (Bat)', 'Dalam memegang pemukul baseball yang perlu diperhatikan adalah, pemukul dipegang erat-erat dengan kedua tangan merapat atau sedikit renggang dengan posisi tangan kanan di sebelah atas dan tangan kiri di sebelah bawah. untuk macam-macam teknik memegang kayu pemukul dalam permaianan softbal dibagi menjadi tiga yaitu pegangan bawah, tengah, dan atas.', '', ''),
(5, 'Teknik Dasar Memukul Bola softball', 'Teknik dasar softball dalam memukul bola dibagi menjadi dua pukulan dalam permainan softball', 'a. Pukulan swing beserta cara melakukannya\r\n\r\nSikap awal, berdiri dengan kedua kaki dijarangkan. Kaki kiri diputar mengarah lurus dengan pitcher. Berat badan bertumpu pada kedua kaki dan badan sedikit condong ke depan. Pemukul dipegang erat oleh kedua tangan dan posisi memukul sedemikian rupa sehingga tepat di atas bahu. Lengan kanan lebih rendah daripada lengan kiri dan pandangan lurus ke arah datangnya bola dari pitcher. Sikap saat memukul, Setelah bola dilempar oleh pitcher, bola segera dipukul secara tepat dengan mengayunkan pemukul ke arah datangnya bola yang dilemparkan oleh pitcher. Kaki kanan sedikit ditekuk dan kedua tangan diluruskan. Sikap akhir, Setelah bola berhasil dipukul dengan baik, diikuti dengan gerakan ayunan bat sebagai gerakan lanjutan.\r\n\r\nb. Pukulan tumbuk (bunt) beserta cara melakukannya\r\n\r\nPukulan tumbuk adalah memukul bola tanpa harus mengayunkan pemukul tetapi cukup menahan arah datangnya bola sehingga bola akan jatuh dekat dengan si pemukul. Sikap kedua kaki pada waktu bunt cukup dengan posisi kaki disejajarkan dengan arah datangnya bola.', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_alat`
--
ALTER TABLE `t_alat`
  ADD PRIMARY KEY (`kodemat`);

--
-- Indexes for table `t_peraturan`
--
ALTER TABLE `t_peraturan`
  ADD PRIMARY KEY (`kodemat`);

--
-- Indexes for table `t_teknik`
--
ALTER TABLE `t_teknik`
  ADD PRIMARY KEY (`kodemat`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
