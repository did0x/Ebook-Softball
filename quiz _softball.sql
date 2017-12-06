-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2017 at 01:40 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `quiz_softball`
--

CREATE TABLE `quiz_softball` (
  `no_quiz` int(3) NOT NULL,
  `soal` text NOT NULL,
  `pilihan_benar` char(1) NOT NULL,
  `pilihan_a` varchar(100) NOT NULL,
  `pilihan_b` varchar(100) NOT NULL,
  `pilihan_c` varchar(100) NOT NULL,
  `pilihan_d` varchar(100) NOT NULL,
  `pilihan_e` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_softball`
--

INSERT INTO `quiz_softball` (`no_quiz`, `soal`, `pilihan_benar`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `pilihan_e`) VALUES
(1, 'Permainan softball diciptakan oleh . . .', 'c', 'William G. Morgan', 'Per Hendrik Ling', 'George Hancoc', 'Gulick Hasley', 'George Hasley'),
(2, 'Lamanya waktu bermain softball adalah . . .', 'c', '5 inning', '6 inning', '7 inning', '8 inning', '9 inning'),
(3, 'Pemain yang tugasnya melakukan lemparan atau melambungkan bola disebut . . .', 'd', 'Batter', 'Catcher', 'Home run', 'Pitcher', 'Pitcher plate'),
(4, 'Pitcher hanya boleh melempar salah berjumlah . . .', 'b', '2 kali', '3 kali', '4 kali', '5 kali', '6 kali'),
(5, 'Pukulan yang dilakukan tanpa menggunakan ayunan lengan disebut . . .', 'd', 'Swing', 'Full', 'Full swing', 'Bunt', 'Inning'),
(6, 'Penjaga base bertugas . . .', 'd', 'Menangkap bola', 'Mengoper bola', 'Mentik pemain', 'Membakar base', 'Memukul bola'),
(7, 'Tongkat dipegang dengan posisi tangan dibawah 2,5 cm atau 5 cm dari bonggol merupakan teknik memegang bet dengan cara pegangan . . .', 'a', 'Tinggi', 'Rendah', 'Atas', 'Tengah', 'Bawah'),
(8, 'Dalam permainan softball, pergantian dilakukan apabila regu bertahan berhasil mematikan pemain dari regu penyerang sebanyak . . . orang.', 'c', 'Dua', 'Tiga', 'Empat', 'Lima', 'Enam'),
(9, 'Jumlah pemain masing-masing dalam permainan softball adalah . . . orang. ', 'c', 'Tujuh', 'Delapan', 'Sembilan', 'Sepuluh', 'Sebelas'),
(10, 'Pemain yang bertugas melempar bola yang akan dipukul disebut . . .', 'b', 'Pitcher', 'Umpire', 'Catcher', 'Penjaga base', 'Strike'),
(11, 'Permainan softball berasal dari olahraga tradisional, yakni ….', 'a', 'kasti', 'bentengan', 'gobak sodor', 'galasin', 'rounders'),
(12, 'Berikut ini alat penjaga keselamatan diri dalam permainan softball, kecuali ….', 'd', 'pelindung badan ', 'pelindung muka', 'sarung tangan', 'pelindung mata', 'pelindung kaki'),
(13, 'Tempat pelatih memberikan instruksi permainan ....', 'b', 'home plate', 'coaches''s box', 'batter box', 'di luar lapangan', 'base I'),
(14, 'Bila bola dipukul dan mengarah ke arah antara base II dan base III, maka pemain yang bertugas mengejar bola adalah ....', 'c', 'shortstop dan penjaga base I', 'shortstop dan penjaga base II', 'shortstop dan penjaga base III', 'shortstop dan pitcher', 'shortstop dan catcher'),
(15, 'Tugas seorang fielder adalah ....', 'b', 'melempar bola ke arah batter', 'menjaga daerahnya dan menangkap bola dengan baik', 'menangkap bola yang tidak berhasil dipukul batter', 'menjaga base I', 'memberi aba-aba permainan'),
(16, 'Tanda permainan dimulai adalah saat unpire mengucapkan aba-aba berbunyi ....', 'a', 'play ball', 'play game', 'strike', 'foul', 'ball'),
(17, 'Fair ball adalah . . . . .', 'a', 'Bola yang di pukul dan jatuh di luar garis permainan', 'Bola yang terdipukul dan ditangkap ole tim jaga', 'Bola hasil lemparan picher', 'Bola yang dipukul dan berhenti dalam daerah permainan', 'Bola hasil tangkapan'),
(18, 'Memajukan pelari di depannya merupakan salah satu tujuan melakukan ....', 'b', 'sliding', 'batting', 'stride', 'stance', 'backswing'),
(19, 'Hal yang tidak boleh dilakukan dalam melakukan pukulan dengan ayunan penuh (swing) adalah ....', 'e', 'memegang bat dengan rileks', 'lead arm dalam posisi horizontal', 'siku tangan ditekuk dan jauhkan dari badan', 'tendangan ke arah bola lewat bahu depan', 'bat diletakkan di atas bahu'),
(20, 'Gerakan melangkahkan kaki saat memulai melakukan batting adalah ....', 'c', 'grip', 'stance', 'stride', 'swing', 'backswing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quiz_softball`
--
ALTER TABLE `quiz_softball`
  ADD PRIMARY KEY (`no_quiz`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
