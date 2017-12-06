-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2017 at 07:58 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `materi_bab`
--

CREATE TABLE `materi_bab` (
  `id` int(1) NOT NULL,
  `judul_bab` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi_bab`
--

INSERT INTO `materi_bab` (`id`, `judul_bab`) VALUES
(1, 'Peraturan'),
(2, 'Teknik'),
(3, 'Alat');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_result`
--

CREATE TABLE `quiz_result` (
  `id` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `score` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_softball`
--

CREATE TABLE `quiz_softball` (
  `id` int(3) NOT NULL,
  `quiz` text NOT NULL,
  `answer` char(1) NOT NULL,
  `pilihan_a` varchar(100) NOT NULL,
  `pilihan_b` varchar(100) NOT NULL,
  `pilihan_c` varchar(100) NOT NULL,
  `pilihan_d` varchar(100) NOT NULL,
  `pilihan_e` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_softball`
--

INSERT INTO `quiz_softball` (`id`, `quiz`, `answer`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `pilihan_e`) VALUES
(1, '<p>Permainan softball diciptakan oleh . . .</p>', 'c', 'William G. Morgan', 'Per Hendrik Ling', 'George Hancoc', 'Gulick Hasley', 'George Hasley'),
(2, '<p>Lamanya waktu bermain softball adalah . . .</p>', 'c', '5 inning', '6 inning', '7 inning', '8 inning', '9 inning'),
(3, '<p>Pemain yang tugasnya melakukan lemparan atau melambungkan bola disebut . . .</p>', 'd', 'Batter', 'Catcher', 'Home run', 'Pitcher', 'Pitcher plate'),
(4, '<p>Pitcher hanya boleh melempar salah berjumlah . . .</p>', 'b', '2 kali', '3 kali', '4 kali', '5 kali', '6 kali'),
(5, '<p>Pukulan yang dilakukan tanpa menggunakan ayunan lengan disebut . . .</p>', 'd', 'Swing', 'Full', 'Full swing', 'Bunt', 'Inning'),
(6, '<p>Penjaga base bertugas . . .</p>', 'd', 'Menangkap bola', 'Mengoper bola', 'Mentik pemain', 'Membakar base', 'Memukul bola'),
(7, '<p>Tongkat dipegang dengan posisi tangan dibawah 2,5 cm atau 5 cm dari bonggol merupakan teknik memegang bet dengan cara pegangan . . .</p>', 'a', 'Tinggi', 'Rendah', 'Atas', 'Tengah', 'Bawah'),
(8, '<p>Dalam permainan softball, pergantian dilakukan apabila regu bertahan berhasil mematikan pemain dari regu penyerang sebanyak . . . orang.</p>', 'c', 'Dua', 'Tiga', 'Empat', 'Lima', 'Enam'),
(9, '<p>Jumlah pemain masing-masing dalam permainan softball adalah . . . orang. </p>', 'c', 'Tujuh', 'Delapan', 'Sembilan', 'Sepuluh', 'Sebelas'),
(10, '<p>Pemain yang bertugas melempar bola yang akan dipukul disebut . . .</p>', 'b', 'Pitcher', 'Umpire', 'Catcher', 'Penjaga base', 'Strike'),
(11, '<p>Permainan softball berasal dari olahraga tradisional, yakni . . .</p>', 'a', 'kasti', 'bentengan', 'gobak sodor', 'galasin', 'rounders'),
(12, '<p>Berikut ini alat penjaga keselamatan diri dalam permainan softball, kecuali . . .</p>', 'd', 'pelindung badan ', 'pelindung muka', 'sarung tangan', 'pelindung mata', 'pelindung kaki'),
(13, '<p>Tempat pelatih memberikan instruksi permainan . . .</p>', 'b', 'home plate', 'coaches''s box', 'batter box', 'di luar lapangan', 'base I'),
(14, '<p>Bila bola dipukul dan mengarah ke arah antara base II dan base III, maka pemain yang bertugas mengejar bola adalah . . . </p>', 'c', 'shortstop dan penjaga base I', 'shortstop dan penjaga base II', 'shortstop dan penjaga base III', 'shortstop dan pitcher', 'shortstop dan catcher'),
(15, '<p>Tugas seorang fielder adalah . . .</p>', 'b', 'melempar bola ke arah batter', 'menjaga daerahnya dan menangkap bola dengan baik', 'menangkap bola yang tidak berhasil dipukul batter', 'menjaga base I', 'memberi aba-aba permainan'),
(16, '<p>Tanda permainan dimulai adalah saat unpire mengucapkan aba-aba berbunyi . . .</p>', 'a', 'play ball', 'play game', 'strike', 'foul', 'ball'),
(17, '<p>Fair ball adalah . . . </p>', 'a', 'Bola yang di pukul dan jatuh di luar garis permainan', 'Bola yang terdipukul dan ditangkap ole tim jaga', 'Bola hasil lemparan picher', 'Bola yang dipukul dan berhenti dalam daerah permainan', 'Bola hasil tangkapan'),
(18, '<p>Memajukan pelari di depannya merupakan salah satu tujuan melakukan . . .</p>', 'b', 'sliding', 'batting', 'stride', 'stance', 'backswing'),
(19, '<p>Hal yang tidak boleh dilakukan dalam melakukan pukulan dengan ayunan penuh (swing) adalah . . .</p>', 'e', 'memegang bat dengan rileks', 'lead arm dalam posisi horizontal', 'siku tangan ditekuk dan jauhkan dari badan', 'tendangan ke arah bola lewat bahu depan', 'bat diletakkan di atas bahu'),
(20, '<p>Gerakan melangkahkan kaki saat memulai melakukan batting adalah . . .</p>', 'c', 'grip', 'stance', 'stride', 'swing', 'backswing');

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
(1, 'Lapangan', '<p>Lapangan sofbol berbentuk bujur sangkar. Dibagi menjadi dua daerah yakni daerah fair (fair territory) dan daerah foul (foul territory). Lebih jauh dalam daerah fair terbagi menjadi dua bagian, bagian dalam (Infield), dan bagian luar (outfield).</p>', ''),
(2, 'Bola', '<p>Sofbol menggunakan bola berwarna kuning dengan benang grip berwarna merah, yang sebelumnya berwarna putih dengan grip putih. Bahan bola softball terbuat dari kulit atau yang sejenisnya berukuran berat 190 gram.</p>', ''),
(3, 'Sarung tangan (glove)', '<h4>Sarung tangan (glove dan Mitt)</h4>\n<p>Sarung tangan (glove) dikenakan oleh seluruh pemain bertahan untuk menangkap bola, sementara first baseman dan penangkap bola mengenakan mitt (glove mempunyai jari, sedangkan mitt tidak).</p>\n\n<p>Glove semacam sarung tangan yang terbuat dari kulit agak tebal dengan ukuran 284 gram. Digunakan untuk pemain penjaga. Sedangkan bagi penjaga home base (catcher) selain memakai glove juga mengunakan alat pelindung </p>\n', ''),
(4, 'Tongkat pemukul (bat)', '<p>Tongkat pemukul (bat) yang digunakan dalam pertandingan resmi adalah bat khusus yang diperuntukkan untuk sofbol. Ketentuan pemakaian dan kharakteristik bat yang boleh digunakan tertuang dalam peraturan Federasi Sofbol Internasional.</p>\n\n<p>Tongkat / Kayu pemukul (stick) terbuat dari kayu atau bahan yang sejenis berbentuk bulat panjang dengan bagian tempat pegangan lebih kecil. Ukuran stick softball adalah: Panjang stick 86,5 cm dan Tempat pegangan dibalut sepanjang 40 cm</p>\n', ''),
(5, 'Helm', '<p>Helm dipakai oleh seorang pemukul bola yang berguna untuk melindungi kepala seorang pemukul bola dari terjangan bola dan cedera.</p>', ''),
(6, 'Pakaian pelindung (protective gear) dan sepatu pool (cleats)', '<p>Pakaian pelindung (protective gear) dan sepatu pool (cleats) dikenakan oleh seorang penangkap bola. Selain itu diperlukan pula Legguards Softball sebagai pelindung tulang kering pada kaki.</p>', ''),
(7, 'Seragam / Uniform', '<p>Uniform atau seragam ini dipakai oleh setiap pemain yang terdiri dari: baju, celana, dan topi yang seragam atau berwarna dasar sama. Semakin tinggi tingkat pertandingannya, semakin ketat dalam peraturan seragamnya.</p>', '');

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
(1, 'Lapangan Softball', '<p>Lapangan softball berbentuk bujur sangkar.</p>', ''),
(2, 'Perlengkapan permainan', '<p>Setiap pemain harus memakai kostum dengan ketentuan di depan baju ditulis nama daerah dan di belakang nomor punggung.</p>', ''),
(3, 'Jumlah pemain', '<p>Jumlah pemain softball setiap regunya ada 9 orang yang dipimpin oleh seorang kapten regu dengan susunan pemain:</p> <br/>\n<h5>1 seorang pitcher''s; </h5><br/>\n<h5>2 seorang catcher''s; </h5><br/>\n<h5>3,4,5 base man; </h5><br/>\n<h5>6 shortstop, short fielder; </h5><br/>\n<h5>7,8,9 left fielder, middle fielder, dan right fielder.</h5><br/>', ''),
(4, 'Lama Pertandingan', '<p>Lamanya pertandingan softball ditentukan oleh inning yaitu 7 inning. Pengertian 1 inning adalah setiap regu bermain 1 kali giliran memukul dan 1 kali menjadi regu penjaga.</p>', ''),
(5, 'Wasit (Umpire)', '<p>Dalam permainan softball terdapat wasit yang biasa disebut Umpire .<p>', ''),
(6, 'Cara bermain', '<p>Untuk regu yang mendapat giliran untuk memukul, maka setiap pemain mendapat kesempatan 3 kali memukul. Dengan ketentuan bila pukulan pertama dan kedua strike maka pemain yang bersangkutan harus lari.</p>\n\n<p>Urutan pemukul ditentukan oleh nomor urut yang telah ditentukan sebelum bermain </p>\n\n<p>Pemukul yang pertama tidak boleh dilalui pemukul yang kedua, pemukul kedua tidak boleh dilalui pemukul ketiga, dan seterusnya </p>\n\n<p>Setiap base hanya boleh diisi oleh satu orang pemain.</p>\n\n<p>Pada waktu bola dalam permainan, bebas mengadakan gerakan kecuali bila pitcher sudah siap untuk melemparkan bola kepada pemukul.</p>\n\n<p>Pada waktu akan ditick, pelari tidak boleh menghindari berlari ke luar atau ke dalam lebih dari batas.</p>\n', ''),
(7, 'Strike', '<p>Dalam permainan softball, strike dihitung apabila:</p>\n<ul>\n<li>Saat dipukul, bola kena atau tidak kena</li>\n\n<li>Lemparan baik, walaupun bola tidak dipukul</li>\n\n<li>Bola yang dipukul meleset keluar, bila pukulan yang meleset itu melambung dan tertangkap oleh si penjaga, maka pemukul itu langsung mati.</li>\n</ul>', ''),
(8, 'Lari Bebas', '<p>Lari bebas diberikan apabila:</p>\n<ul>\n<li>Pitcher''s melemparkan bola 4 kali salah</li>\n\n<li>Si pemukul dihalang-halangi pada waktu akan menuju base</li>\n\n<li>Bila semua base terisi, sedangkan si pemukul telah empat kali tidak memukul karena pitcher melemparkan bola salah terus.</li>\n</ul>\n', ''),
(9, 'Cara Mematikan Dan Tukar Tempat', '<p>Cara mematikan dapat dilakukan dengan cara ditick sebelum pelari mengenai base. Pada waktu men-tick bola tidak boleh dilepaskan atau terlepas dari tangan. Kecuali dalam keadaan lari cukup dengan membakar base, yaitu sambil memegang bola, menginjak base yang dituju pelari. Bertukar tempat dilakukan setelah tiga kali mati.</p>\n\n<p>Pemain dikatakan mati apabila:</p>\n<ul>\n<li>Pemain pemukul tidak dapat memukul bola sebanyak tiga kali, dan cachter dapat menangkap bola yang dilempar Pitcher sebelum bola jatuh maka pemukul dinyatakan mati.</li>\n\n<li>Catch ball/Fly Out terjadi apabila bola yang dipukul dapat ditangkap oleh regu penjaga sebalum bola menyentuh tanah, jika terjadi Fly Out maka pelari tidak bolah berlari ke base salanjutnya dan apabila berlari maka dinyatakan Out.</li>\n\n<li>Dapat ditick apabila tidak menginjak Base.</li>\n</ul>', ''),
(10, 'Pembantu', '<p>Dari masing-masing regu mempunyai dua orang pembantu yang berpakaian serangam dengan regunya. Kedua pembantu itu kerjanya memberi petunjuk kepada pemukul dan pelari base. Tempatnya di tempat pembantu yaitu satu orang di sebelah kiri dan satu orang lagi di sebelah kanan.</p>', ''),
(11, 'Cara Memperoleh Nilai', '<ul>\n<li>Setiap pelari dengan pukulan baik dan dapat kembali dengan selamat mendapat nilai satu.</li>\n\n<li>Setiap pelari yang menuju base harus ada pada base atau menginjak base, tidak boleh lewat begitu saja. Jika dilewati maka boleh di-tick . Hanya pada base pertama boleh lewat. Tetapi tidak berpura-pura, maksudnya untuk bisa lewat di base yang kedua.</li>\n\n<li>Jika ada bola yang ditangkap dari hasil pukulan, maka si pemukul dinyatakan mati. Para pelari masing-masing kembali ke basenya dengan cepat agar basenya tidak dibakar oleh penjaga</li>\n\n<li>Pelari yang kembali dapat dimatikan.</li>\n\n<li>Pelari yang sudah dimatikan tidak dapat melanjutkan perjalanannya.</li>\n</ul>\n\n<p>Jika memukul dan dapat kembali ke home base dapat selamat, maka ia mendpat nilai 6 dan setiap base lawannya mendapat nilai satu.</p>\n', ''),
(12, 'Peraturan Khusus', '<ul>\n<li>Apabila pada salah satu pertandingan berakhir dengan hasil sama (tie) setelah pertandingan berjalan 7 inning, maka pertandingan akan dilanjutkan dengan menambah inning.</li>\n\n<li>Tim yang tidak bersedia atau menolak bermain pada waktu yang telah ditentukan dalam acara pertandingan (play ball) maka tim tersebut dinyatakan kalah dengan angka 0-15.</li>\n\n<li>Time out diberikan hanya satu kali kepada setiap tim yang bertanding untuk setiap inning, masing-masing selama 1 menit.</li>\n\n<li>Pergantian pemain dapat dilakukan oleh setiap regu kapan saja dengan melapor kepada umpire home dan scorer.</li>\n\n<li>Jika Pitcher Sudah melakuka Touch ball (siap Untuk melempar) maka pitcher tidak boleh melepaskan touchballnya dan tidak ada gerakan lain, kecuali melempar bola ke catcher. Dalam gerakan Pitching tidak boleh ada gerakan yang diulang-ulang, jika terjadi hal-hal seperti itu, Umpire akan memberikan Peringatan dan jika terjadi lagi maka akan diberi hukuman (box).</li>\n\n<li>Hukuman bisa berupa freewalk bagi pemain lawan.</li>\n\n<li>Jika lemparan pitcher menganai tubuh pemukul maka pemukul akan dinyatakan free walk (jalan bebas).</li>\n</ul>\n', ''),
(13, 'Peraturan lainnya', '<ul>\n<li>Apabila pertandingan telah berjalan 7 inning dan skor imbang (Tie) maka pertandingan akan dilanjutkan dengan menambah Inning.</li>\n\n<li>Tim yang menolak bermain pada waktu yang telah ditentukan dalam pertandingan (Play Ball) maka tim tersebut dinyatakan kalah dengan skor 15-0.</li>\n\n<li>Setiap Inning hanya diberikan satu kali Time Out dengan waktu setiap Time Out adalah selama 1 Menit.</li>\n\n<li>Pergantian pemain dapat dilakukan kapan saja akan tetapi harus melapor kepada wasit yang bertugas memimpin pertandingan.</li>\n\n<li>Jika lemparan pitcher mengenai badan pemukul maka pemukul dinyatakan Free Walk.</li>\n</ul>\n', '');

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
(1, 'Teknik Dasar Softball Dalam Memegang Bola', '<h2>Teknik memegang bola dalam permaian softball terdapat tiga macam cara diantaranya yaitu memegang dengan empat jari, tiga jari, dan dua jari.  </h2>', '<ol type="a">\n<li>Teknik Memegang Bola Empat Jari</li>\n\n<p>Teknik memegang bola empat jari merupakan teknik yang sebaiknya untuk pemula dan yang memiliki jari-jari yang pendek. Cara melakukannya yaitu dengan kelima bagian jari tangan berada pada sekeliling bola dengan sedemikian rupa sehingga menjadi satu genggaman. Teknik pegangan ini biasanya digunakan untuk anak-anak, pemain pemula atau pemain yang jarinya pendek.<p>\n\n<li>Teknik Memegang Bola Tiga Jari</li>\n\n<p>Teknik memegang bola tiga jari adalh teknik yang dilakukan pemain yang memiliki tangan kecil atau jarinya pendek. Teknik atau cara ini yaitu menempatkan tiga jari telunjuk, jari tengah, dan jari manis pada bagian atas kemudian jari kelingking dan ibu jari berada di bagian bawahnya.</p>\n\n<li>Teknik Memegang Bola Dua Jari</li>\n\n<p>Teknik memegang bola dua jari cocok untuk pemain yang memiliki tangan besar atau jari-jari yang panjang. Teknik atau cara ini yaitu menepatkan jari telunjuk, jari tengah di bagian atas bola, kemudian disangga dengan ketiga jari lainnya di bagian bawah bola.</p>\n</ol>', ''),
(2, 'Teknik Dasar Softball Dalam Melempar Bola Beserta Cara Melakukannya', '<h2>Teknik Melempar bola dalam permainan softball dibedakan menjadi tiga, diantaranya yakni lemparan atas (overhand throw), lemparan samping (sidehand throw), dan lemparan bawah (underhand throw).</h2>', '<ol type="a">\n<li>Lemparan atas (overhand throw) dalam Permainan Softball</li>\n\n<p>Pada saat melempar, ayunan tangan dan langkah kaki secara bersamaan dengan berat badan bertumpu pada kaki yang di depan, badan sedikit condong ke belakang. Lemparan atas dilakukan dengan gerakan ayunan lengan ke atas melewati garis horizontal pada persendian bahu.</p>\n\n<li>Lemparan samping (sidehand throw) dalam Permaianan Softball</li>\n\n<p>Lemparan samping (sidehand throw)\nPada waktu melempar lengan bawah sejajar dengan bahu dan sedikit lecutan pergelangan tangan. Lemparan ini biasa digunakan dalam jarak pendek dan memerlukan waktu yang cepat. Jalannya bola lurus dan lebih cepat.</p>\n\n<li>Lemparan bawah (underhand throw) dalam Permaianan Softball</li>\n\n<p>Lemparan bawah digunakan biasanya dalam keadaan darurat dan dilakukan dalam waktu yang cepat, posisi tubuh membungkuk dengan kedua kaki ditekuk. Biasanya lemparan ini dilakukan dengan cepat dan dalam jarak dekat untuk dapat mematikan lawan dengan segera. Oleh karena itu, lemparannya tidak terlalu kuat. Jalannya bola juga lambat, tetapi tepat pada sasaran.</p>\n</ol>', ''),
(3, 'Teknik Dasar Softball Dalam Menangkap Bola', '<h2>Teknik menangkap bola dalam permaianan softball dibagi menjadi tiga macam berdasarkan arah datangnya bola yakni Bola datar (straight ball), Bola lambung, dan Bola menggelinding (ground ball).</h2>', '<ol type"a">\n<li>Bola datar (straight ball)</li>\n\n<p>Cara melakukannya yaitu dengan posisi badan berdiri, kaki kangkang, pandangan lurus ke depan ke arah datangnya bola, posisi kedua tangan siap di depan dada. Bola ditangkap oleh tangan yang memakai glove yaitu tangan kiri, dan tangan kanan siap melempar bola.</p>\n\n<li>Bola lambung</li>\n\n<p>Cara melakukannya yaitu dengan posisi badan ditempatkan tepat di mana bola akan jatuh. Bola ditangkap dengan satu tangan atau dua tangan secara bersamaan.</p>\n\n<li>Bola menggelinding (ground ball)</li>\n\n<p>Cara melakukannya yaitu bola yang datangnya menggelinding di atas tanah ditangkap dengan cara berlutut sedemikian rupa dan tangan yang memakai glove ditempatkan tepat pada arah datangnya bola. Sedangkan tangan yang lainnya siap untuk menangkap dan melemparkan bola.</p>\n</ol>\n', ''),
(4, 'Teknik Dasar softball Dalam Memegang Stik/Kayu Pemukul (Bat)', '<h2>Dalam memegang pemukul baseball yang perlu diperhatikan adalah, pemukul dipegang erat-erat dengan kedua tangan merapat atau sedikit renggang dengan posisi tangan kanan di sebelah atas dan tangan kiri di sebelah bawah. untuk macam-macam teknik memegang kayu pemukul dalam permaianan softbal dibagi menjadi tiga yaitu pegangan bawah, tengah, dan atas.</h2>', '', ''),
(5, 'Teknik Dasar Memukul Bola softball', '<h2>Teknik dasar softball dalam memukul bola dibagi menjadi dua pukulan dalam permainan softball</h2>', '<ol type="a">\n<li>Pukulan swing beserta cara melakukannya</li>\n\n<p>Sikap awal, berdiri dengan kedua kaki dijarangkan. Kaki kiri diputar mengarah lurus dengan pitcher. Berat badan bertumpu pada kedua kaki dan badan sedikit condong ke depan. Pemukul dipegang erat oleh kedua tangan dan posisi memukul sedemikian rupa sehingga tepat di atas bahu. Lengan kanan lebih rendah daripada lengan kiri dan pandangan lurus ke arah datangnya bola dari pitcher. Sikap saat memukul, Setelah bola dilempar oleh pitcher, bola segera dipukul secara tepat dengan mengayunkan pemukul ke arah datangnya bola yang dilemparkan oleh pitcher. Kaki kanan sedikit ditekuk dan kedua tangan diluruskan. Sikap akhir, Setelah bola berhasil dipukul dengan baik, diikuti dengan gerakan ayunan bat sebagai gerakan lanjutan.</p>\n\n<li>Pukulan tumbuk (bunt) beserta cara melakukannya</li>\n\n<p>Pukulan tumbuk adalah memukul bola tanpa harus mengayunkan pemukul tetapi cukup menahan arah datangnya bola sehingga bola akan jatuh dekat dengan si pemukul. Sikap kedua kaki pada waktu bunt cukup dengan posisi kaki disejajarkan dengan arah datangnya bola.</p>\n</ol>', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `materi_bab`
--
ALTER TABLE `materi_bab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_result`
--
ALTER TABLE `quiz_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_softball`
--
ALTER TABLE `quiz_softball`
  ADD PRIMARY KEY (`id`);

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

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quiz_result`
--
ALTER TABLE `quiz_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
