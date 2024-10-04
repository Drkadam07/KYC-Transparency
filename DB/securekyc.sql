-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 11:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `securekyc`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_acc`
--

CREATE TABLE `bank_acc` (
  `baid` int(11) NOT NULL,
  `account_no` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `kyc_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_acc`
--

INSERT INTO `bank_acc` (`baid`, `account_no`, `user_name`, `mobile`, `email`, `address`, `kyc_id`) VALUES
(1, '434267', '5', 9404688826, 'ak@gmail.com', 'Nashik', 'tt'),
(2, '915115', '10', 940468823, 'sumesh8793s@gmail.com', 'Nashik', 'tt'),
(3, '902677', '11', 7570000665, 'tanishqwalzade77@gmail.com', 'Nashik', 'tt'),
(4, '470382', '12', 7528437273, 'varadjoshi2506@gmail.com', 'Nashik', 'tt'),
(5, '491599', '23', 8067301645, 'dhirajkhairnar83@gmail.com', 'Panchavati', 'tt'),
(8, '453480', '24', 9322663690, 'varadjoshi2506@gmail.com', 'Panchavati', 'tt'),
(12, '849797', '26', 9579342473, 'varadjoshi206@gmail.com', 'Nashik', 'tt'),
(14, '629350', '27', 74216345965, 'rajeshkhavane41@gmail.com', 'Pune', 'tt'),
(15, '801262', '28', 8754216325, 'varadjoshi256@gmail.com', 'Panchavati', 'tt'),
(16, '750748', '28', 8254216325, 'varadjoshi256@gmail.com', 'Panchavati', 'tt'),
(19, '784590', '29', 8578163850, 'varadjoshi2506@gmail.com', 'Mumbai', 'tt'),
(20, '679446', '30', 93220114235, 'drkadam0@gmail.com', 'Nagar', 'tt'),
(21, '574263', '31', 7021906060, 'knahire@kkwagh.edu.in', 'Nashik', 'tt'),
(22, '800201', '32', 9028334287, 'anushkakolhe28@gmail.com', 'Pune', 'tt'),
(23, '717633', '34', 8766853129, 'derlesonal15@gmail.com', 'nashik', 'tt'),
(24, '987506', '35', 7809187681, 'sunil.sangale13@gmail.com', 'Pune', 'tt');

-- --------------------------------------------------------

--
-- Table structure for table `bank_tbl`
--

CREATE TABLE `bank_tbl` (
  `bid` int(11) NOT NULL,
  `bname` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_tbl`
--

INSERT INTO `bank_tbl` (`bid`, `bname`, `uname`, `pass`) VALUES
(1, 'sbi', 'sbi001', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `fund_transfer`
--

CREATE TABLE `fund_transfer` (
  `fid` int(11) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_no` bigint(20) NOT NULL,
  `ifsc` varchar(100) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `senderid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fund_transfer`
--

INSERT INTO `fund_transfer` (`fid`, `account_name`, `account_no`, `ifsc`, `amount`, `senderid`) VALUES
(1, 'Sidd', 9876543210, 'SBIN0007896', 500, NULL),
(2, 'Akshay', 987653410, 'SBIN0007896', 50000, NULL),
(3, 'ganesh', 123456, 'SBIN0007896', 5000, NULL),
(4, 'Ganesh', 1234567, 'SBIN0007896', 5000, NULL),
(5, 'Varad', 98765342, 'SBIN0007896', 6000, NULL),
(6, 'Siddharth', 77710202, 'SBIN0007896', 5000, NULL),
(7, 'Siddarth', 77710202, 'SBIN0007896', 10000, NULL),
(8, 'Siddarth', 77710202, 'SBIN0007896', 50000000, NULL),
(9, 'dhiraj', 943852, 'SBIN0007896', 1300000, NULL),
(10, 'Dhanraj ', 679446, 'SBIN0007896', 100000, NULL),
(11, 'Dhanraj ', 717633, 'SBIN0007896', 500000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kyc_details`
--

CREATE TABLE `kyc_details` (
  `kid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pan_number` varchar(50) NOT NULL,
  `adhar_number` bigint(50) NOT NULL,
  `panfile` text NOT NULL,
  `adharfile` text NOT NULL,
  `unique_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kyc_details`
--

INSERT INTO `kyc_details` (`kid`, `uid`, `pan_number`, `adhar_number`, `panfile`, `adharfile`, `unique_id`) VALUES
(1, 123465, '123465', 456789, 'background.jpg', 'abtus.jpg', '123465'),
(2, 3, '987654321', 123000, 'download.png', 'Invoice_Global Industrial Cleaning Equipment Market Report 2021.pdf', '8a9bcf1e51e812d0af8465a8dbcc9f741064bf0af3b3d08e6b0246437c19f7fb'),
(3, 4, '9876543', 123456, 'download.png', 'logo.jpg', '3deaa5418cef4f488068cc6011a802b2b37cadd3afce80674778c25e21f2fb1c'),
(4, 5, '126', 123, 'abtus.jpg', 'background.jpg', '65a699905c02619370bcf9207f5a477c3d67130ca71ec6f750e07fe8d510b084'),
(5, 6, '12345K', 123412341234, 'abtus.jpg', 'background.jpg', '32b239b89462f039e91f99db3e2ec13c16ed50c85f111c96968927364d8e2e13'),
(6, 3, '987654123', 1234567, 'college.jpg', 'abtus.jpg', '8e0ca26e8edad7a45832860e0f8ef3c221fba9f9bc1816812899d993ba48495a'),
(7, 3, '234562345', 1234562, 'Custom-dev-pic.jpg', 'download.png', 'f09545d0c2f906772b8c9c16a1c711554c1486087619819a7d547ce193d5f1c2'),
(8, 9, '6987452', 56130, 'test.png', 'test2.png', '5768e8b68321f60aef3903b15d261c0439c4cd72f69d386a4205e0aa40523927'),
(9, 10, '789456', 94000, 'abtus.jpg', 'background.jpg', 'e54fc6b51915e222ba6196747a19ebb8dfa651fd2b46a385a0ded647fbfefda0'),
(10, 11, '987555', 321000, 'background.jpg', 'college.jpg', '5082bfac080b44ff4ab1a45b455aed2f5aa11c5590d74ada3bb2d55bcf28cc07'),
(11, 12, '4441020', 5551010, 'download.png', 'Image (2).jpg', '45b1f61e24ad584fb65fb91395ad080763dae099935bf4517d0731670eac9006'),
(12, 12, '592563', 785454126655, 'demo.jpg', 'back.jpg', '0a0c8e92c50754f9de4598640b19e3597a8657405caa00578ab06b67e33a35e7'),
(13, 12, '2154632351', 5422311454123, 'demo.jpg', 'back.jpg', 'd25a94d8d0a6c2fd60b01c592a327cf8873b837943d051f6eb5d1624b17f87ed'),
(14, 23, '1234Asi7855', 1234567891011, 'demo.jpg', 'room.png', '4fa60b06cb99a13ce1b9805cfd5580b4787d5fed3202678f151b278a1b265424'),
(15, 12, '1234', 5212, 'demo.jpg', 'ulogo.jpg', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(16, 24, '6522432123', 154236521405, 'ulogo1.jpg', 'registration.png', 'bc3a3f9edf68e52013656be776d9000604d9d9943792e2c6dd0b0e0fe97ce40d'),
(18, 26, '854Asdcf52', 854123657854, 'room.png', 'ulogo1.jpg', 'f07a25914481a2dd90a206e7ba27bfa1be4d0cb68abfee3558982004fe306caf'),
(19, 27, '85412Asde5', 875426391524, 'demo.jpg', 'back.jpg', '167137da021fdd0b1d493385b5b71ce7ebb7bfbf95b991d6bd54abf9c577f365'),
(20, 28, '8542Asdf23', 854123657854, 'ulogo.jpg', 'ulogo1.jpg', '7583e74bd0198b95a6a2ec7b0c855ad6be14ceda89b9fb61ee6b2fe294f3ec21'),
(21, 29, '54213Wasd3', 523641529653, 'room.png', 'login.jpg', '3cd76eb7d1f78da41cc71fbea71d5f6f19ac21da02e9d663cf3eba851ade5a6a'),
(22, 30, 'PAIN1234TH', 465612463248, 'Adhar card.png', 'pan card.jpeg', '72a0a74b6214826ffcf1186cda81f464ddd21ea38f273b8eec2be5b87d116a5f'),
(23, 31, 'aSSUF55215', 124585742315, 'Adhar card.png', 'pan card.jpeg', 'd90a9350d7477eec940ce7abbe2fd1884123417968e218194eaa7452a7479c4b'),
(24, 32, '635864u943', 475495804056, 'Adhar card.png', 'pan card.jpeg', '3c832ca4addc5b3d634a07ad01b4a5355d09be154c07587681ab472fa98932bc'),
(25, 30, '54213Wasd3', 435934753443, 'Adhar card.png', 'pan card.jpeg', '3cd76eb7d1f78da41cc71fbea71d5f6f19ac21da02e9d663cf3eba851ade5a6a'),
(26, 34, 'Atyyhh5678', 878914152528, 'Adhar card.png', 'pan card.jpeg', 'cb3f931d285ed563cefe33a21b49a517e671bdac73262548e15a73c5561304a6'),
(27, 35, 'ghogj865g3', 235680532457, 'Adhar card.png', 'pan card.jpeg', '49c2e2391c1cc1a8e8f285030a27d1dbfa575258cd1acd641a04d4dcd9a647c5'),
(28, 36, '123456tghh', 989865236527, 'Adhar card.png', 'pan card.jpeg', 'a091d707e7c8a2b742ccbe8ed75a785aaedf4ed0516c034b907d0e658a9c7a3d');

-- --------------------------------------------------------

--
-- Table structure for table `server1`
--

CREATE TABLE `server1` (
  `sid` int(11) NOT NULL,
  `key` text NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server1`
--

INSERT INTO `server1` (`sid`, `key`, `uid`) VALUES
(1, 'aaaa', 1),
(2, 'aaaa', 1),
(3, 'a665a45920422f9d', 1),
(4, 'ff', 0),
(5, 'jj', 20),
(6, 'c1f330d0aff31c1c', 21),
(7, '1cad8c39e34b48ab', 22),
(8, 'f2039c333d6ee4f4', 23),
(9, 'b0467e0799f09a04', 24),
(11, 'da02a8c4b2b4a777', 26),
(12, 'e3c4d132654a33d7', 27),
(13, '23f6a0937ab55f35', 28),
(14, '23f6a0937ab55f35', 29),
(15, 'a5a1dffbc8699907', 30),
(16, 'a227296356207b4b', 31),
(17, 'ae6823172c7347a8', 32),
(18, 'e0ae91473e08b769', 33),
(19, '3fee3473dcd29257', 34),
(20, 'ef797c8118f02dfb', 35),
(21, 'c63c294a92e253e7', 36);

-- --------------------------------------------------------

--
-- Table structure for table `server2`
--

CREATE TABLE `server2` (
  `sid` int(11) NOT NULL,
  `key` text NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server2`
--

INSERT INTO `server2` (`sid`, `key`, `uid`) VALUES
(1, 'bbbb', 1),
(2, '417e4867efdc4fb8', 1),
(3, '87403f1e4347bcc2', 21),
(4, '771b0a135cfa0cc0', 22),
(5, '580d84d673f8efb3', 23),
(6, 'ca658618152d17d7', 24),
(8, '4e4f4c2e8144a914', 26),
(9, 'db1fd313d6da6748', 27),
(10, '17a9eca1a73ba5a2', 28),
(11, '17a9eca1a73ba5a2', 29),
(12, 'd99dc1eda135286d', 30),
(13, '2e0bf74a84aa544f', 31),
(14, '86cd10fa82eb57e8', 32),
(15, '5572c1f4a4183cb3', 33),
(16, '2efbbe93ae45904b', 34),
(17, '649607dd5d3f8c76', 35),
(18, 'f7a3e5417a95e6ae', 36);

-- --------------------------------------------------------

--
-- Table structure for table `server3`
--

CREATE TABLE `server3` (
  `sid` int(11) NOT NULL,
  `key` text NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server3`
--

INSERT INTO `server3` (`sid`, `key`, `uid`) VALUES
(1, 'cccc', 1),
(2, 'a04a1f3fff1fa07e', 1),
(3, '998e86f7f7a27ae3', 1),
(4, '1aff7c1799087235', 21),
(5, '35f2b31723702525', 21),
(6, '4afb0a904c33f376', 22),
(7, 'f83501ca02476a6d', 22),
(8, '94e85a7a7f397484', 23),
(9, '8ea91141065196d0', 23),
(10, '7acf5d832e989511', 24),
(11, 'b0925f8cd87711bb', 24),
(14, '4fd971338915badb', 26),
(15, 'fc498cc24439ec94', 26),
(16, '3bc058c96477ae5b', 27),
(17, 'ea8fd95ec0610fc8', 27),
(18, 'a252037790701e54', 28),
(19, 'f0b0705609fab637', 28),
(20, 'a252037790701e54', 29),
(21, 'f0b0705609fab637', 29),
(22, '09a8cdaf98ef3598', 30),
(23, '3f3fbe656d4687e3', 30),
(24, '9941dbce97207d05', 31),
(25, 'df7540c213b14efb', 31),
(26, '72a5279ed1436ab3', 32),
(27, 'fee2c531a55bc20f', 32),
(28, 'ae922579d8b2ca6a', 33),
(29, '99dfd45056040f95', 33),
(30, '8aff7b6e79daeb11', 34),
(31, '76ec45716977c75f', 34),
(32, '23048c9c063d532c', 35),
(33, 'c95c5ed7a898a64f', 35),
(34, '598b68d82d5136d1', 36),
(35, '8c8fa9d992474799', 36);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `mobile`, `password`, `email`) VALUES
(1, 'siddharth', 'mandwadwe', 9404688826, '123', 'siddharthraje1988@gmail.com'),
(3, 'Sahil', 'Mandwade', 9876543210, '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'sidd@gmail.com'),
(4, 'Ganesh', 'Patil', 940468825, '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'ganesh@gmail.com'),
(5, 'Akshay', 'khairnar', 8999910460, '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'hsyfhy@gmail.com'),
(6, 'Demo', 'd', 1234567890, '2a97516c354b68848cdbd8f54a226a0a55b21ed138e207ad6c5cbb9c00aa5aea', 'demo@gmail.co'),
(7, 'Shravni', 'Lokhande', 9876543210, '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'shravni@gmail.com'),
(9, 'ganesh', 'patil', 9404688899, '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'ganesh@gmail.com'),
(10, 'Sumesh', 'Shaji', 940468823, '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'sumesh8793s@gmail.com'),
(11, 'Tanish', 'Walzade', 7770000665, '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'tanishqwalzade77@gmail.com'),
(12, 'Varad', 'Joshi', 7028937273, '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'varadjoshi2506@gmail.com'),
(13, 'Saahil', 'patil', 9404688833, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'sah@gmail.com'),
(14, 'Saahil', 'patil', 9404688844, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'sah@gmail.com'),
(15, 'Saahil', 'patil', 9404688844, 'c1f330d0aff31c1c87403f1e4347bcc21aff7c179908723535f2b31723702525', 'sah@gmail.com'),
(16, 'ganesh', 'patil', 9404688855, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'g@gmail.com'),
(17, 'ganesh', 'patil', 9404688888, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'g@gmail.com'),
(18, 'ganesh', 'patil', 9404688888, 'e11d8cb94b54e0a2fd0e780f93dd51837fd39bf0c9b86f21e760d02a8550ddf7', 'g@gmail.com'),
(19, 'ganesh', 'patil', 9404688560, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'g@gmail.com'),
(20, 'ganesh', 'patil', 9404688544, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'g@gmail.com'),
(21, 'ganesh', 'patil', 9404688209, 'c1f330d0aff31c1c87403f1e4347bcc21aff7c179908723535f2b31723702525', 'g@gmail.com'),
(23, 'dhiraj', 'khairnar', 8769301689, 'f2039c333d6ee4f4580d84d673f8efb394e85a7a7f3974848ea91141065196d0', 'dhirajkhairnar83@gmail.com'),
(26, 'Rajesh', 'Khavane', 9089342473, 'da02a8c4b2b4a7774e4f4c2e8144a9144fd971338915badbfc498cc24439ec94', 'varadjoshi2506@gmail.com'),
(27, 'Pushkraj', 'Khairnar', 74216345965, 'e3c4d132654a33d7db1fd313d6da67483bc058c96477ae5bea8fd95ec0610fc8', 'rajeshkhavane441@gmail.com'),
(28, 'Raj', 'Jawale', 8754216325, '23f6a0937ab55f3517a9eca1a73ba5a2a252037790701e54f0b0705609fab637', 'varadjoshi2506@gmail.com'),
(29, 'Raj', 'Pradhan', 8542163850, '23f6a0937ab55f3517a9eca1a73ba5a2a252037790701e54f0b0705609fab637', 'varadjoshi2506@gmail.com'),
(30, 'Dhanraj ', 'kadam', 9322011232, 'a5a1dffbc8699907d99dc1eda135286d09a8cdaf98ef35983f3fbe656d4687e3', 'drkadam04@gmail.com'),
(31, 'kavita', 'Ahire', 7021906060, 'a227296356207b4b2e0bf74a84aa544f9941dbce97207d05df7540c213b14efb', 'knahire@kkwagh.edu.in'),
(32, 'Anushka', 'kolhe', 9028334287, 'ae6823172c7347a886cd10fa82eb57e872a5279ed1436ab3fee2c531a55bc20f', 'anushkakolhe28@gmail.com'),
(33, 'aaryan', 'bari', 9890236752, 'e0ae91473e08b7695572c1f4a4183cb3ae922579d8b2ca6a99dfd45056040f95', 'aaryanmbariproject@gmail.com'),
(34, 'sonal', 'derle', 8766853129, '3fee3473dcd292572efbbe93ae45904b8aff7b6e79daeb1176ec45716977c75f', 'derlesonal15@gmail.com'),
(35, 'sunil', 'sangle', 7709187681, 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'sunil.sangale13@gmail.com'),
(36, 'siddesh', 'amrutkar', 9322445532, 'c63c294a92e253e7f7a3e5417a95e6ae598b68d82d5136d18c8fa9d992474799', 'siddeshamrutkar40@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_acc`
--
ALTER TABLE `bank_acc`
  ADD PRIMARY KEY (`baid`);

--
-- Indexes for table `bank_tbl`
--
ALTER TABLE `bank_tbl`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `fund_transfer`
--
ALTER TABLE `fund_transfer`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `kyc_details`
--
ALTER TABLE `kyc_details`
  ADD PRIMARY KEY (`kid`);

--
-- Indexes for table `server1`
--
ALTER TABLE `server1`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `server2`
--
ALTER TABLE `server2`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `server3`
--
ALTER TABLE `server3`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_acc`
--
ALTER TABLE `bank_acc`
  MODIFY `baid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `bank_tbl`
--
ALTER TABLE `bank_tbl`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fund_transfer`
--
ALTER TABLE `fund_transfer`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kyc_details`
--
ALTER TABLE `kyc_details`
  MODIFY `kid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `server1`
--
ALTER TABLE `server1`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `server2`
--
ALTER TABLE `server2`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `server3`
--
ALTER TABLE `server3`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
