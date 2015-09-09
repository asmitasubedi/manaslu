-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2015 at 12:03 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lostandfound`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `Brand_Id` int(11) NOT NULL,
  `Brand_Name` varchar(30) NOT NULL,
  `Subcategory_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `Category_Id` int(11) NOT NULL,
  `Category_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `Item_Id` int(11) NOT NULL,
  `Subcategory_Id` int(11) NOT NULL,
  `Brand_Id` int(11) NOT NULL,
  `Person_Id` int(11) NOT NULL,
  `Item_Title` varchar(30) NOT NULL,
  `ITem_Detail` varchar(200) NOT NULL,
  `Item_Type` varchar(30) NOT NULL,
  `Item_ Status` varchar(15) NOT NULL,
  `Item_Lost_Date` date NOT NULL,
  `Item_Lost_Venue` varchar(50) NOT NULL,
  `Item_Photo_Url` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `Login_Id` int(11) NOT NULL,
  `Person_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `Person_Id` int(11) NOT NULL,
  `F_Name` varchar(30) NOT NULL,
  `M_Name` varchar(15) DEFAULT NULL,
  `L_Name` varchar(20) NOT NULL,
  `Person_Email` varchar(50) DEFAULT NULL,
  `Person_Phone` int(11) NOT NULL,
  `Person_Type` varchar(10) NOT NULL,
  `Item_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `Subcategory_Id` int(11) NOT NULL,
  `Subcategory_Name` varchar(50) NOT NULL,
  `Category_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `User_Id` int(11) NOT NULL,
  `User_Name` varchar(20) NOT NULL,
  `User_Password` varchar(20) NOT NULL,
  `User_Citizenship_Number` int(20) NOT NULL,
  `User_License_Number` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`Brand_Id`), ADD KEY `fk_Brand_SubcategoryId` (`Subcategory_Id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Category_Id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`Item_Id`), ADD KEY `fk_Item_SubcategoryId` (`Subcategory_Id`), ADD KEY `fk_Item_BrandId` (`Brand_Id`), ADD KEY `fk_Item_PersonId` (`Person_Id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Login_Id`), ADD KEY `fk_Login_PersonId` (`Person_Id`), ADD KEY `fk_Login_UserId` (`User_Id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`Person_Id`), ADD KEY `fk_Person_ItemId` (`Item_Id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`Subcategory_Id`), ADD KEY `fk_Subcategory_CategoryId` (`Category_Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `Brand_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Category_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `Item_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `Login_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `Person_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `Subcategory_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `brand`
--
ALTER TABLE `brand`
ADD CONSTRAINT `fk_Brand_SubcategoryId` FOREIGN KEY (`Subcategory_Id`) REFERENCES `subcategory` (`Subcategory_Id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
ADD CONSTRAINT `fk_Item_BrandId` FOREIGN KEY (`Brand_Id`) REFERENCES `brand` (`Brand_Id`),
ADD CONSTRAINT `fk_Item_PersonId` FOREIGN KEY (`Person_Id`) REFERENCES `person` (`Person_Id`),
ADD CONSTRAINT `fk_Item_SubcategoryId` FOREIGN KEY (`Subcategory_Id`) REFERENCES `subcategory` (`Subcategory_Id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
ADD CONSTRAINT `fk_Login_PersonId` FOREIGN KEY (`Person_Id`) REFERENCES `person` (`Person_Id`),
ADD CONSTRAINT `fk_Login_UserId` FOREIGN KEY (`User_Id`) REFERENCES `user` (`User_Id`);

--
-- Constraints for table `person`
--
ALTER TABLE `person`
ADD CONSTRAINT `fk_Person_ItemId` FOREIGN KEY (`Item_Id`) REFERENCES `item` (`Item_Id`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
ADD CONSTRAINT `fk_Subcategory_CategoryId` FOREIGN KEY (`Category_Id`) REFERENCES `category` (`Category_Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
