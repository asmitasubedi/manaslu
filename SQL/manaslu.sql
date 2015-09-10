-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 10, 2015 at 07:42 AM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `manaslu`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `Brand_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Brand_Name` varchar(30) NOT NULL,
  `Subcategory_Id` int(11) NOT NULL,
  PRIMARY KEY (`Brand_Id`),
  KEY `fk_Brand_SubcategoryId` (`Subcategory_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`Brand_Id`, `Brand_Name`, `Subcategory_Id`) VALUES
(1, 'Nokia', 1),
(2, 'Samsung', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `Category_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Category_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Category_Id`, `Category_Name`) VALUES
(1, 'Electronics'),
(2, 'HomeAppliance');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `Item_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Subcategory_Id` int(11) NOT NULL,
  `Brand_Id` int(11) NOT NULL,
  `Person_Id` int(11) NOT NULL,
  `Item_Title` varchar(30) NOT NULL,
  `ITem_Detail` varchar(200) NOT NULL,
  `Item_Type` varchar(30) NOT NULL,
  `Item_ Status` varchar(15) NOT NULL,
  `Item_Lost_Date` date NOT NULL,
  `Item_Lost_Venue` varchar(50) NOT NULL,
  `Item_Photo_Url` varchar(150) NOT NULL,
  PRIMARY KEY (`Item_Id`),
  KEY `fk_Item_SubcategoryId` (`Subcategory_Id`),
  KEY `fk_Item_BrandId` (`Brand_Id`),
  KEY `fk_Item_PersonId` (`Person_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `Login_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Person_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  PRIMARY KEY (`Login_Id`),
  KEY `fk_Login_PersonId` (`Person_Id`),
  KEY `fk_Login_UserId` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `Person_Id` int(11) NOT NULL AUTO_INCREMENT,
  `F_Name` varchar(30) NOT NULL,
  `M_Name` varchar(15) DEFAULT NULL,
  `L_Name` varchar(20) NOT NULL,
  `Person_Email` varchar(50) DEFAULT NULL,
  `Person_Phone` int(11) NOT NULL,
  `Person_Type` varchar(10) NOT NULL,
  `Item_Id` int(11) NOT NULL,
  PRIMARY KEY (`Person_Id`),
  KEY `fk_Person_ItemId` (`Item_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `Subcategory_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Subcategory_Name` varchar(50) NOT NULL,
  `Category_Id` int(11) NOT NULL,
  PRIMARY KEY (`Subcategory_Id`),
  KEY `fk_Subcategory_CategoryId` (`Category_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`Subcategory_Id`, `Subcategory_Name`, `Category_Id`) VALUES
(1, 'Mobile', 1),
(2, 'Tv', 1),
(3, 'Washing Machine', 2),
(4, 'Glass', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(20) NOT NULL,
  `User_Password` varchar(20) NOT NULL,
  `User_Citizenship_Number` int(20) NOT NULL,
  `User_License_Number` int(20) NOT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
