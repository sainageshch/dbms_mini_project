

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `stadium` ()  NO SQL
select * from stadiums$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `cricket_boards`
--

CREATE TABLE `cricket_boards` (
  `board_name` varchar(20) NOT NULL,
  `chairman` varchar(20) NOT NULL,
  `team` varchar(10) NOT NULL,
  `DOA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cricket_boards`
--

INSERT INTO `cricket_boards` (`board_name`, `chairman`, `team`, `DOA`) VALUES
('Hyderabad', 'Kumar', 'SRH', '2008-11-11'),
('Chennai', 'Dev', 'CSK', '2008-04-12'),
('Bangalore', 'Ram', 'RCB', '2008-11-20'),
('Mumbai', 'Krishna', 'MI', '2008-06-11'),
('Delhi','Sahir','DC','2008-03-21'),
('Kolkata','Ravi','KKR','2008-05-05'),
('Punjab','Singh','PKBS','2008-07-18'),
('Rajasthan','Pravin','RR','2008-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('user', '123');

-- --------------------------------------------------------

--
-- Table structure for table `played_in`
--

CREATE TABLE `played_in` (
  
  `board_name` varchar(20) NOT NULL,
  `team` varchar(10) NOT NULL,
  `team1` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `team2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `played_in`
--

INSERT INTO `played_in` ( `board_name`, `team`, `team1`, `date`, `team2`) VALUES
('Chennai', 'CSK', 'csk', '2021-04-27', 'rcb'),
('Bangalore', 'RCB', 'rcb', '2021-04-20', 'srh'),
( 'Hyderabad', 'SRH', 'srh', '2021-04-28', 'mi'),
( 'Mumbai', 'MI', 'mi', '2021-04-26', 'csk'),
( 'Chennai', 'CSK', 'csk', '2021-05-01', 'mi'),
( 'Bangalore', 'RCB', 'rcb', '2021-05-05', 'csk'),
( 'Hyderabad', 'SRH', 'srh', '2021-05-13', 'csk'),
( 'Mumbai', 'MI', 'mi', '2021-05-09', 'rcb'),
('Chennai', 'CSK', 'csk', '2021-06-10', 'srh'),
('Bangalore', 'RCB', 'rcb', '2021-06-08', 'mi'),
( 'Hyderabad', 'SRH', 'srh', '2021-06-03', 'rcb'),
('Mumbai', 'MI', 'mi', '2021-06-12', 'srh');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `cap_no` decimal(4,0) NOT NULL,
  `age` decimal(2,0) NOT NULL,
  `dob` date NOT NULL,
  `runs` decimal(5,0) NOT NULL,
  `wickets` decimal(3,0) NOT NULL,
  `type` varchar(20) NOT NULL,
  `no_of_matches` decimal(3,0) NOT NULL,
  `rank` decimal(3,0) NOT NULL,
  `batting_best` varchar(10) NOT NULL,
  `bowling_best` varchar(10) NOT NULL,
  `playername` varchar(30) NOT NULL,
  `image` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`cap_no`, `age`, `dob`, `runs`, `wickets`, `type`, `no_of_matches`, `rank`, `batting_best`, `bowling_best`, `playername`, `image`, `name`) VALUES
('18','33','1988-11-05','6283','4','batsman','207','1','113','25/2','Virat Kohli','virat.jpg','RCB'),
('17','37','1984-02-17','5162','0','batsman','184','5','133*','0/0','AB de Villiers','abd.jpg','RCB'),
('32','33','1988-10-14','2018','22','Allrounder','10','15','95','15/2','Glenn Maxwell','maxwell.jpg','RCB'),
('37','21','2000-07-07','884','0','batsman','29','30','101*','0/0','Devdutt Padikkal','padikkal.jpg','RCB'),
('16','28','1993-10-03','191','0','batsman','8','50','78*','0/0','Srikar Bharat','bharat.jpg','RCB'),
('09','31','1990-11-23','187','78','bowler','63','7','36*','27/5','Harshal Patel','harshal.jpg','RCB'),
('73','27','1994-03-13','66','50','bowler','50','5','14','32/4','Mohammed Siraj','siraj.jpg','RCB'),
('21','27','1994-12-12','60','9','Allrounder','13','25','14','7/3','Shahbaz Ahmed','shahbaz.jpg','RCB'),
('03','31','1990-07-23','32','139','bowler','114','9','8*','25/4','Yuzvendra Chahal','chahal.jpg','RCB'),
('54','38','1983-05-04','460','38','Allrounder','49','33','39','10/2','Daniel Christian','dan.jpg','RCB'),
('12','27','1994-12-30','65','9','bowler','9','40','16*','41/3','Kyle Jamieson','jamieson.jpg','RCB'),
('07','40','1981-07-07','4746','0','batsman','220','7','84*','0/0','MS Dhoni','dhoni.jpg','CSK'),
('11','36','1985-09-23','3916','0','batsman','175','14','100*','0/0','Ambati Rayudu','rayudu.jpg','CSK'),
('13','37','1984-07-13','2935','0','batsman','100','13','96','0/0','Faf du Plessis','faf.jpg','CSK'),
('31','24','1997-01-31','839','0','batsman','22','20','101*','0/0','Ruturaj Gaikwad','ruturaj.jpg','CSK'),
('77','36','1985-11-11','4722','0','batsman','193','31','87','0/0','Robin Uthappa','robin.jpg','CSK'),
('47','38','1983-10-07','1537','167','Allrounder','151','2','70*','22/4','Dwayne Bravo','bravo.jpg','CSK'),
('08','33','1988-12-06','2386','127','Allrounder','200','1','62*','16/5','Ravindra Jadeja','jadeja.jpg','CSK'),
('10','34','1987-06-18','666','16','Allrounder','34','19','66','7/3','Moeen Ali','moeen.jpg','CSK'),
('58','23','1998-06-03','337','32','Allrounder','32','26','55*','11/4','Sam Curren','sam.jpg','CSK'),
('55','30','1991-10-16','53','67','bowler','61','11','15*','19/3','Shardul Thakur','shardul.jpg','CSK'),
('90','29','1992-08-07','79','59','bowler','63','13','39','13/4','Deepak Chahar','deepak.jpg','CSK'),
('22','31','1990-08-08','1885','0','batsman','63','11','89','0/0','Kane Williamson','kane.jpg','SRH'),
('32','35','1986-10-27','5449','0','batsman','150','10','126','0/0','David Warner','david.jpg','SRH'),
('06','37','1984-10-24','2110','0','batsman','133','32','115*','0/0','Wriddhiman Saha','saha.jpg','SRH'),
('51','32','1989-09-26','1038','0','batsman','28','36','114','0/0','Jonny Bairstow','jonny.jpg','SRH'),
('20','32','1989-09-10','3560','0','batsman','154','25','114*','0/0','Manish Pandey','pandey.jpg','SRH'),
('98','30','1991-11-05','189','35','Allrounder','26','30','47*','52/4','Jason Holder','jason.jpg','SRH'),
('43','20','2001-10-28','222','2','Allrounder','23','50','33','9/1','Abdul Samad','abdul.jpg','SRH'),
('19','23','1998-09-20','222','93','Bowler','76','16','34*','7/3','Rashid Khan','rashid.jpg','SRH'),
('14','32','1989-08-12','39','48','bowler','72','17','6*','16/3','Shahbaz Nadeem','nadeem.jpg','SRH'),
('15','31','1990-02-05','217','142','bowler','132','2','24*','19/5','Bhuvaneshwar Kumar','bhuvi.jpg','SRH'),
('44','30','1991-05-27','3','20','bowler','24','18','3*','24/2','T Natarajan','natarajan.jpg','SRH'),
('45','34','1987-04-30','5611','15','batsman','213','2','109*','6/4','Rohit Sharma','rohit.jpg','MI'),
('16','29','1992-12-17','2256','0','batsman','77','16','108','0/0','Quinton de Kock','quinton.jpg','MI'),
('78','31','1990-09-14','2341','0','batsman','115','12','82','0/0','Suryakumar Yadav','surya.jpg','MI'),
('23','23','1998-07-18','1452','0','batsman','61','19','99','0/0','Ishan Kishan','ishan.jpg','MI'),
('33','28','1993-10-11','1476','42','Allrounder','92','4','91','20/3','Hardik Pandya','hardik.jpg','MI'),
('36','30','1991-03-24','1143','51','Allrounder','84','28','86','14/3','Krunal Pandya','krunal.jpg','MI'),
('56','34','1987-05-12','3268','65','Allrounder','178','3','87*','44/4','Kieron Pollard','pollard.jpg','MI'),
('01','22','1999-08-04','31','43','bowler','42','35','10','24/4','Rahul Chahar','rahul.jpg','MI'),
('100','28','1993-12-06','56','130','bowler','106','1','16*','14/4','Jasprit Bumrah','bumrah.jpg','MI'),
('34','32','1989-07-22','13','76','bowler','62','6','6','18/4','Trent Boult','boult.jpg','MI'),
('27','34','1987-10-11','81','48','bowler','38','19','24*','14/4','Nathan Coulter-Nile','nathan.jpg','MI');


--
-- Triggers `player`
--
DELIMITER $$
CREATE TRIGGER `update` BEFORE UPDATE ON `player` FOR EACH ROW BEGIN
IF (new.runs<old.runs) THEN SET new.runs=old.runs;
IF (new.wickets<old.wickets) THEN SET new.wickets=old.wickets;
END IF;
IF (new.no_of_matches<old.no_of_matches) THEN SET new.no_of_matches=old.no_of_matches;
END IF;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `team1` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `match_no` decimal(3,0) NOT NULL,
  `team2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`team1`, `date`, `match_no`, `team2`) VALUES
('csk', '2021-04-27', '3', 'rcb'),
('mi', '2021-04-26', '2', 'csk'),
('csk', '2021-05-01', '5', 'mi'),
('rcb', '2021-04-20', '1', 'srh'),
('srh', '2021-04-28', '4', 'mi'),
('srh', '2021-05-13', '8', 'csk'),
('rcb', '2021-05-05', '6', 'csk'),
('mi', '2021-05-09', '7', 'rcb'),
('csk', '2021-06-10', '11', 'srh'),
('rcb', '2021-06-08', '10', 'mi'),
('srh', '2021-06-03', '9', 'rcb'),
('mi', '2021-06-12', '12', 'srh');


-- --------------------------------------------------------

--
-- Table structure for table `selected_for`
--

CREATE TABLE `selected_for` (
  `position` varchar(20) NOT NULL,
  `cap_no` decimal(4,0) NOT NULL,
  `name` varchar(30) NOT NULL,
  `team1` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `team2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selected_for`
--

INSERT INTO `selected_for` (`position`, `cap_no`, `name`, `team1`, `date`, `team2`) VALUES
('CAPTAIN', '18', 'RCB', 'rcb', '2021-04-20', 'srh'),
('CAPTAIN', '18', 'RCB', 'csk', '2021-04-27', 'rcb'),
('CAPTAIN', '18', 'RCB', 'rcb', '2021-05-05', 'csk'),
('CAPTAIN', '18', 'RCB', 'mi', '2021-05-09', 'rcb'),
('CAPTAIN', '18', 'RCB', 'rcb', '2021-06-08', 'mi'),
('CAPTAIN', '18', 'RCB', 'srh', '2021-06-03', 'rcb'),
('CAPTAIN', '22', 'SRH', 'rcb', '2021-04-20', 'srh'),
('CAPTAIN', '22', 'SRH', 'srh', '2021-04-28', 'mi'),
('CAPTAIN', '22', 'SRH', 'srh', '2021-05-13', 'csk'),
('CAPTAIN', '22', 'SRH', 'csk', '2021-06-10', 'srh'),
('CAPTAIN', '22', 'SRH', 'srh', '2021-06-03', 'rcb'),
('CAPTAIN', '22', 'SRH', 'mi', '2021-06-12', 'srh'),
('CAPTAIN', '07', 'CSK', 'csk', '2021-04-27', 'rcb'),
('CAPTAIN', '07', 'CSK', 'mi', '2021-04-26', 'csk'),
('CAPTAIN', '07', 'CSK', 'csk', '2021-05-01', 'mi'),
('CAPTAIN', '07', 'CSK', 'srh', '2021-05-13', 'csk'),
('CAPTAIN', '07', 'CSK', 'rcb', '2021-05-05', 'csk'),
('CAPTAIN', '07', 'CSK', 'csk', '2021-06-10', 'srh'),
('CAPTAIN', '45', 'MI', 'mi', '2021-04-26', 'csk'),
('CAPTAIN', '45', 'MI', 'srh', '2021-04-28', 'mi'),
('CAPTAIN', '45', 'MI', 'mi', '2021-05-09', 'rcb'),
('CAPTAIN', '45', 'MI', 'csk', '2021-05-01', 'mi'),
('CAPTAIN', '45', 'MI', 'rcb', '2021-06-08', 'mi'),
('CAPTAIN', '45', 'MI', 'mi', '2021-06-12', 'srh');

-- --------------------------------------------------------

--
-- Table structure for table `stadiums`
--

CREATE TABLE `stadiums` (
  `stadium_name` varchar(50) NOT NULL,
  `capacity` decimal(6,0) NOT NULL,
  `DOI` date NOT NULL,
  `board_name` varchar(20) NOT NULL,
  `team` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stadiums`
--

INSERT INTO `stadiums` (`stadium_name`, `capacity`, `DOI`, `board_name`, `team`) VALUES
('Chidambaram', '84000', '1985-05-11', 'Chennai', 'CSK'),
('M.Chinnaswamy Stadium', '41000', '1996-11-20', 'Bangalore', 'RCB'),
('Rajiv Gandhi', '25000', '1974-12-28', 'Hyderabad', 'SRH'),
('Wankhede', '65000', '1976-11-25', 'Mumbai', 'MI');

--
-- Triggers `stadiums`
--
DELIMITER $$
CREATE TRIGGER `default_date` BEFORE INSERT ON `stadiums` FOR EACH ROW set new.DOI=CURRENT_DATE()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `rank` decimal(5,0) NOT NULL,
  `rating` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`rank`, `rating`, `name`) VALUES
('3', 94, 'CSK'),
('4', 96, 'MI'),
('2', 90, 'RCB'),
('1', 88, 'SRH'),
('5', 89, 'DC'),
('6', 87, 'KKR'),
('7', 82, 'PKBS'),
('8', 84, 'RR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `cricket_boards`
--
ALTER TABLE `cricket_boards`
  ADD PRIMARY KEY (`board_name`,`team`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `played_in`
--
ALTER TABLE `played_in`
  ADD PRIMARY KEY (`board_name`,`team`,`team1`,`date`,`team2`),
  ADD KEY `team1` (`team1`,`date`,`team2`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`cap_no`,`name`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`team1`,`date`,`team2`);

--
-- Indexes for table `selected_for`
--
ALTER TABLE `selected_for`
  ADD PRIMARY KEY (`cap_no`,`name`,`team1`,`date`,`team2`),
  ADD KEY `team1` (`team1`,`date`,`team2`);

--
-- Indexes for table `stadiums`
--
ALTER TABLE `stadiums`
  ADD PRIMARY KEY (`stadium_name`,`board_name`,`team`),
  ADD KEY `board_name` (`board_name`,`team`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `played_in`
--
ALTER TABLE `played_in`
  ADD CONSTRAINT `played_in_ibfk_1` FOREIGN KEY (`board_name`,`team`) REFERENCES `stadiums` ( `board_name`, `team`) on delete cascade,
  ADD CONSTRAINT `played_in_ibfk_2` FOREIGN KEY (`team1`,`date`,`team2`) REFERENCES `schedules` (`team1`,`date`,`team2`) ON DELETE CASCADE;

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`name`) REFERENCES `team` (`name`) ON DELETE CASCADE;

--
-- Constraints for table `selected_for`
--
ALTER TABLE `selected_for`
  ADD CONSTRAINT `selected_for_ibfk_1` FOREIGN KEY (`cap_no`,`name`) REFERENCES `player` (`cap_no`, `name`) on delete cascade,
  ADD CONSTRAINT `selected_for_ibfk_2` FOREIGN KEY (`team1`,`date`,`team2`) REFERENCES `schedules` (`team1`, `date`, `team2`) ON DELETE CASCADE;

--
-- Constraints for table `stadiums`
--
ALTER TABLE `stadiums`
  ADD CONSTRAINT `stadiums_ibfk_1` FOREIGN KEY (`board_name`,`team`) REFERENCES `cricket_boards`(`board_name`, `team`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
