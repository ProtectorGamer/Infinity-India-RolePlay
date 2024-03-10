-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2024 at 01:36 PM
-- Server version: 8.0.36-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zvanshc5090`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bankID` int NOT NULL,
  `bankCash` int NOT NULL DEFAULT '0',
  `PlayerID` int NOT NULL DEFAULT '0',
  `bankNumber` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `bannedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `permanent` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int NOT NULL,
  `ownerid` int DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `name` varchar(64) DEFAULT 'Unamed Business',
  `message` varchar(128) DEFAULT 'Welcome to the business!',
  `type` tinyint DEFAULT '0',
  `price` int DEFAULT '0',
  `entryfee` int DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint DEFAULT '0',
  `world` int DEFAULT '0',
  `outsideint` tinyint DEFAULT '0',
  `outsidevw` int DEFAULT '0',
  `cash` int DEFAULT '0',
  `products` int DEFAULT '100',
  `robbed` smallint NOT NULL DEFAULT '3',
  `robbing` int DEFAULT NULL,
  `prices0` int NOT NULL DEFAULT '0',
  `prices1` int NOT NULL DEFAULT '0',
  `prices2` int NOT NULL DEFAULT '0',
  `prices3` int NOT NULL DEFAULT '0',
  `prices4` int NOT NULL DEFAULT '0',
  `prices5` int NOT NULL DEFAULT '0',
  `prices6` int NOT NULL DEFAULT '0',
  `prices7` int NOT NULL DEFAULT '0',
  `prices8` int NOT NULL DEFAULT '0',
  `prices9` int NOT NULL DEFAULT '0',
  `prices10` int NOT NULL DEFAULT '0',
  `prices11` int NOT NULL DEFAULT '0',
  `prices12` int NOT NULL DEFAULT '0',
  `prices13` int NOT NULL DEFAULT '0',
  `prices14` int NOT NULL DEFAULT '0',
  `prices15` int NOT NULL DEFAULT '0',
  `prices16` int NOT NULL DEFAULT '0',
  `prices17` int NOT NULL DEFAULT '0',
  `prices18` int NOT NULL DEFAULT '0',
  `prices19` int NOT NULL DEFAULT '0',
  `prices20` int NOT NULL DEFAULT '0',
  `prices21` int NOT NULL DEFAULT '0',
  `prices22` int NOT NULL DEFAULT '0',
  `prices23` int NOT NULL DEFAULT '0',
  `prices24` int NOT NULL DEFAULT '0',
  `cVehicleX` float DEFAULT '0',
  `cVehicleY` float DEFAULT '0',
  `cVehicleZ` float DEFAULT '0',
  `cVehicleA` float DEFAULT '0',
  `materials` int DEFAULT '0',
  `radarstatu` int DEFAULT '0',
  `vehtype` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `changes`
--

CREATE TABLE `changes` (
  `slot` tinyint DEFAULT NULL,
  `text` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `chargedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clothing`
--

CREATE TABLE `clothing` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `modelid` smallint DEFAULT NULL,
  `boneid` tinyint DEFAULT NULL,
  `attached` tinyint(1) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `scale_x` float DEFAULT NULL,
  `scale_y` float DEFAULT NULL,
  `scale_z` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` tinyint DEFAULT NULL,
  `divisionid` tinyint DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drug_labs`
--

CREATE TABLE `drug_labs` (
  `dl_sqlID` int NOT NULL,
  `dl_ent_pos_x` float DEFAULT '0',
  `dl_ent_pos_y` float DEFAULT '0',
  `dl_ent_pos_z` float DEFAULT '0',
  `dl_exit_pos_x` float DEFAULT '0',
  `dl_exit_pos_y` float DEFAULT '0',
  `dl_exit_pos_z` float DEFAULT '0',
  `dl_price` int DEFAULT '0',
  `gangID` int DEFAULT '0',
  `dl_int` int DEFAULT '0',
  `dl_vw` int DEFAULT '0',
  `dl_safe_drug_1` int DEFAULT '0',
  `dl_safe_drug_2` int DEFAULT '0',
  `dl_safe_drug_3` int DEFAULT '0',
  `dl_safe_drug_4` int DEFAULT '0',
  `dl_actor_1` int DEFAULT '0',
  `dl_actor_2` int DEFAULT '0',
  `dl_actor_3` int DEFAULT '0',
  `dl_actor_4` int DEFAULT '0',
  `dl_actor_5` int DEFAULT '0',
  `dl_actor_6` int DEFAULT '0',
  `dl_actor_7` int DEFAULT '0',
  `dl_actor_8` int DEFAULT '0',
  `dl_actor_9` int DEFAULT '0',
  `dl_actor_10` int DEFAULT '0',
  `dl_seeds` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entrances`
--

CREATE TABLE `entrances` (
  `id` int NOT NULL,
  `ownerid` int DEFAULT '0',
  `owner` varchar(24) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `iconid` smallint DEFAULT '1239',
  `locked` tinyint(1) DEFAULT '0',
  `radius` float DEFAULT '3',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint DEFAULT '0',
  `world` int DEFAULT '0',
  `outsideint` tinyint DEFAULT '0',
  `outsidevw` int DEFAULT '0',
  `adminlevel` tinyint DEFAULT '0',
  `factiontype` tinyint DEFAULT '0',
  `vip` tinyint DEFAULT '0',
  `vehicles` tinyint(1) DEFAULT '0',
  `freeze` tinyint(1) DEFAULT '0',
  `password` varchar(64) DEFAULT 'None',
  `label` tinyint(1) DEFAULT '1',
  `mapicon` tinyint NOT NULL DEFAULT '-1',
  `color` int NOT NULL DEFAULT '-256'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factionpay`
--

CREATE TABLE `factionpay` (
  `id` tinyint DEFAULT NULL,
  `rank` tinyint DEFAULT NULL,
  `amount` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factionranks`
--

CREATE TABLE `factionranks` (
  `id` tinyint DEFAULT NULL,
  `rank` tinyint DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `id` tinyint DEFAULT NULL,
  `name` varchar(48) DEFAULT NULL,
  `shortname` tinytext,
  `leader` varchar(24) DEFAULT 'No-one',
  `type` tinyint DEFAULT '0',
  `color` int DEFAULT '-1',
  `rankcount` tinyint DEFAULT '6',
  `lockerx` float DEFAULT '0',
  `lockery` float DEFAULT '0',
  `lockerz` float DEFAULT '0',
  `lockerinterior` tinyint DEFAULT '0',
  `lockerworld` int DEFAULT '0',
  `turftokens` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factionskins`
--

CREATE TABLE `factionskins` (
  `id` tinyint DEFAULT NULL,
  `slot` tinyint DEFAULT NULL,
  `skinid` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `flaggedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `id` int NOT NULL,
  `houseid` int DEFAULT NULL,
  `modelid` smallint DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `interior` tinyint DEFAULT NULL,
  `world` int DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT '0',
  `door_locked` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangranks`
--

CREATE TABLE `gangranks` (
  `id` tinyint DEFAULT NULL,
  `rank` tinyint DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangs`
--

CREATE TABLE `gangs` (
  `id` tinyint DEFAULT NULL,
  `name` varchar(32) DEFAULT 'None',
  `motd` varchar(128) DEFAULT 'None',
  `leader` varchar(24) DEFAULT 'No-one',
  `color` int DEFAULT '-256',
  `strikes` tinyint(1) DEFAULT '0',
  `level` tinyint DEFAULT '1',
  `points` int DEFAULT '0',
  `turftokens` int DEFAULT '0',
  `stash_x` float DEFAULT '0',
  `stash_y` float DEFAULT '0',
  `stash_z` float DEFAULT '0',
  `stashinterior` tinyint DEFAULT '0',
  `stashworld` int DEFAULT '0',
  `cash` int DEFAULT '0',
  `materials` int DEFAULT '0',
  `pot` int DEFAULT '0',
  `crack` int DEFAULT '0',
  `meth` int DEFAULT '0',
  `painkillers` int DEFAULT '0',
  `pistolammo` int DEFAULT '0',
  `shotgunammo` int DEFAULT '0',
  `smgammo` int DEFAULT '0',
  `arammo` int DEFAULT '0',
  `rifleammo` int DEFAULT '0',
  `hpammo` int DEFAULT '0',
  `poisonammo` int DEFAULT '0',
  `fmjammo` int DEFAULT '0',
  `weapon_9mm` int DEFAULT '0',
  `weapon_sdpistol` int DEFAULT '0',
  `weapon_deagle` int DEFAULT '0',
  `weapon_shotgun` int DEFAULT '0',
  `weapon_spas12` int DEFAULT '0',
  `weapon_sawnoff` int DEFAULT '0',
  `weapon_tec9` int DEFAULT '0',
  `weapon_uzi` int DEFAULT '0',
  `weapon_mp5` int DEFAULT '0',
  `weapon_ak47` int DEFAULT '0',
  `weapon_m4` int DEFAULT '0',
  `weapon_rifle` int DEFAULT '0',
  `weapon_sniper` int DEFAULT '0',
  `weapon_molotov` int DEFAULT '0',
  `armsdealer` tinyint(1) DEFAULT '0',
  `drugdealer` tinyint(1) DEFAULT '0',
  `arms_x` float DEFAULT '0',
  `arms_y` float DEFAULT '0',
  `arms_z` float DEFAULT '0',
  `arms_a` float DEFAULT '0',
  `drug_x` float DEFAULT '0',
  `drug_y` float DEFAULT '0',
  `drug_z` float DEFAULT '0',
  `drug_a` float DEFAULT '0',
  `armsworld` int DEFAULT '0',
  `drugworld` int DEFAULT '0',
  `drugpot` int DEFAULT '0',
  `drugcrack` int DEFAULT '0',
  `drugmeth` int DEFAULT '0',
  `armsmaterials` int DEFAULT '0',
  `armsprice_1` int DEFAULT '0',
  `armsprice_2` int DEFAULT '0',
  `armsprice_3` int DEFAULT '0',
  `armsprice_4` int DEFAULT '0',
  `armsprice_5` int DEFAULT '0',
  `armsprice_6` int DEFAULT '0',
  `armsprice_7` int DEFAULT '0',
  `armsprice_8` int DEFAULT '0',
  `armsprice_9` int NOT NULL DEFAULT '0',
  `armsprice_10` int NOT NULL DEFAULT '0',
  `armsprice_11` int NOT NULL DEFAULT '0',
  `armsprice_12` tinyint NOT NULL DEFAULT '0',
  `pot_price` int DEFAULT '0',
  `crack_price` int DEFAULT '0',
  `meth_price` int DEFAULT '0',
  `armshpammo` int DEFAULT '0',
  `armspoisonammo` int DEFAULT '0',
  `armsfmjammo` int DEFAULT '0',
  `alliance` int NOT NULL DEFAULT '-1',
  `theme` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangskins`
--

CREATE TABLE `gangskins` (
  `id` tinyint DEFAULT NULL,
  `slot` tinyint DEFAULT NULL,
  `skinid` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `garages`
--

CREATE TABLE `garages` (
  `id` int NOT NULL,
  `ownerid` int DEFAULT '0',
  `owner` varchar(24) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `price` int DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `exit_x` float DEFAULT '0',
  `exit_y` float DEFAULT '0',
  `exit_z` float DEFAULT '0',
  `exit_a` float DEFAULT '0',
  `world` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `gateID` int NOT NULL,
  `gateModel` int DEFAULT '980',
  `gateSpeed` float DEFAULT '0',
  `gateTime` int DEFAULT '0',
  `gateX` float DEFAULT '0',
  `gateY` float DEFAULT '0',
  `gateZ` float DEFAULT '0',
  `gateRX` float DEFAULT '0',
  `gateRY` float DEFAULT '0',
  `gateRZ` float DEFAULT '0',
  `gateInterior` int DEFAULT '0',
  `gateWorld` int DEFAULT '0',
  `gateMoveX` float DEFAULT '0',
  `gateMoveY` float DEFAULT '0',
  `gateMoveZ` float DEFAULT '0',
  `gateMoveRX` float DEFAULT '0',
  `gateMoveRY` float DEFAULT '0',
  `gateMoveRZ` float DEFAULT '0',
  `gateLinkID` int DEFAULT '0',
  `gateFaction` int DEFAULT '0',
  `gateFaction2` int DEFAULT '0',
  `gateFaction3` int DEFAULT '0',
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int DEFAULT NULL,
  `graffitiX` float DEFAULT '0',
  `graffitiY` float DEFAULT '0',
  `graffitiZ` float DEFAULT '0',
  `graffitiAngle` float DEFAULT '0',
  `graffitiColor` int DEFAULT '0',
  `graffitiText` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int NOT NULL,
  `ownerid` int DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `type` tinyint DEFAULT '0',
  `price` int DEFAULT '0',
  `rentprice` int DEFAULT '0',
  `level` tinyint DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `timestamp` int DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `int_x` float DEFAULT '0',
  `int_y` float DEFAULT '0',
  `int_z` float DEFAULT '0',
  `int_a` float DEFAULT '0',
  `interior` tinyint DEFAULT '0',
  `world` int DEFAULT '0',
  `outsideint` int DEFAULT '0',
  `outsidevw` int DEFAULT '0',
  `cash` int DEFAULT '0',
  `materials` int DEFAULT '0',
  `pot` int DEFAULT '0',
  `crack` int DEFAULT '0',
  `meth` int DEFAULT '0',
  `painkillers` int DEFAULT '0',
  `weapon_1` tinyint DEFAULT '0',
  `weapon_2` tinyint DEFAULT '0',
  `weapon_3` tinyint DEFAULT '0',
  `weapon_4` tinyint DEFAULT '0',
  `weapon_5` tinyint DEFAULT '0',
  `weapon_6` tinyint DEFAULT '0',
  `weapon_7` tinyint DEFAULT '0',
  `weapon_8` tinyint DEFAULT '0',
  `weapon_9` tinyint DEFAULT '0',
  `weapon_10` tinyint DEFAULT '0',
  `ammo_1` smallint DEFAULT '0',
  `ammo_2` smallint DEFAULT '0',
  `ammo_3` smallint DEFAULT '0',
  `ammo_4` smallint DEFAULT '0',
  `ammo_5` smallint DEFAULT '0',
  `ammo_6` tinyint DEFAULT '0',
  `ammo_7` tinyint DEFAULT '0',
  `ammo_8` tinyint DEFAULT '0',
  `ammo_9` tinyint DEFAULT '0',
  `ammo_10` tinyint DEFAULT '0',
  `pistolammo` smallint DEFAULT '0',
  `shotgunammo` smallint DEFAULT '0',
  `smgammo` smallint DEFAULT '0',
  `arammo` smallint DEFAULT '0',
  `rifleammo` smallint DEFAULT '0',
  `hpammo` smallint DEFAULT '0',
  `poisonammo` smallint DEFAULT '0',
  `fmjammo` smallint DEFAULT '0',
  `gunpart` int NOT NULL DEFAULT '0',
  `vehpart` int NOT NULL DEFAULT '0',
  `robbed` smallint NOT NULL DEFAULT '3',
  `robbing` smallint NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kills`
--

CREATE TABLE `kills` (
  `id` int NOT NULL,
  `killer_uid` int DEFAULT NULL,
  `target_uid` int DEFAULT NULL,
  `killer` varchar(24) DEFAULT NULL,
  `target` varchar(24) DEFAULT NULL,
  `reason` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `landobjects`
--

CREATE TABLE `landobjects` (
  `id` int NOT NULL,
  `landid` int DEFAULT NULL,
  `modelid` smallint DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT '0',
  `door_locked` tinyint(1) DEFAULT '0',
  `move_x` float DEFAULT '0',
  `move_y` float DEFAULT '0',
  `move_z` float DEFAULT '0',
  `move_rx` float DEFAULT '0',
  `move_ry` float DEFAULT '0',
  `move_rz` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lands`
--

CREATE TABLE `lands` (
  `id` int NOT NULL,
  `ownerid` int DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `price` int DEFAULT '0',
  `min_x` float DEFAULT '0',
  `min_y` float DEFAULT '0',
  `max_x` float DEFAULT '0',
  `max_y` float DEFAULT '0',
  `height` float DEFAULT '0',
  `lx` float NOT NULL,
  `ly` float NOT NULL,
  `lz` float NOT NULL,
  `level` tinyint DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_admin`
--

CREATE TABLE `log_admin` (
  `id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_bans`
--

CREATE TABLE `log_bans` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_cheat`
--

CREATE TABLE `log_cheat` (
  `id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_contracts`
--

CREATE TABLE `log_contracts` (
  `id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_faction`
--

CREATE TABLE `log_faction` (
  `id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_gang`
--

CREATE TABLE `log_gang` (
  `id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_give`
--

CREATE TABLE `log_give` (
  `id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_namechanges`
--

CREATE TABLE `log_namechanges` (
  `id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_property`
--

CREATE TABLE `log_property` (
  `id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_punishments`
--

CREATE TABLE `log_punishments` (
  `id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_referrals`
--

CREATE TABLE `log_referrals` (
  `id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_vip`
--

CREATE TABLE `log_vip` (
  `id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `object`
--

CREATE TABLE `object` (
  `mobjID` int NOT NULL,
  `mobjModel` int NOT NULL DEFAULT '980',
  `mobjInterior` int NOT NULL DEFAULT '0',
  `mobjWorld` int NOT NULL DEFAULT '0',
  `mobjX` float NOT NULL DEFAULT '0',
  `mobjY` float NOT NULL DEFAULT '0',
  `mobjZ` float NOT NULL DEFAULT '0',
  `mobjRX` float NOT NULL DEFAULT '0',
  `mobjRY` float NOT NULL DEFAULT '0',
  `mobjRZ` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phonebook`
--

CREATE TABLE `phonebook` (
  `name` varchar(24) DEFAULT NULL,
  `number` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phone_contacts`
--

CREATE TABLE `phone_contacts` (
  `contact_id` int NOT NULL,
  `phone_number` int NOT NULL,
  `contact_name` varchar(24) NOT NULL,
  `contact_number` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` tinyint DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint DEFAULT '-1',
  `type` tinyint DEFAULT '0',
  `profits` int DEFAULT '0',
  `time` tinyint DEFAULT '10',
  `point_x` float DEFAULT '0',
  `point_y` float DEFAULT '0',
  `point_z` float DEFAULT '0',
  `pointinterior` tinyint DEFAULT '0',
  `pointworld` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rp_dealercars`
--

CREATE TABLE `rp_dealercars` (
  `ID` int NOT NULL,
  `Company` int DEFAULT '0',
  `Model` int DEFAULT '0',
  `Price` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shots`
--

CREATE TABLE `shots` (
  `id` int NOT NULL,
  `playerid` smallint DEFAULT NULL,
  `weaponid` tinyint DEFAULT NULL,
  `hittype` tinyint DEFAULT NULL,
  `hitid` int DEFAULT NULL,
  `hitplayer` varchar(24) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `timestamp` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int NOT NULL,
  `speedRange` float DEFAULT '0',
  `speedLimit` float DEFAULT '0',
  `speedX` float DEFAULT '0',
  `speedY` float DEFAULT '0',
  `speedZ` float DEFAULT '0',
  `speedAngle` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stockmarket`
--

CREATE TABLE `stockmarket` (
  `prices0` int DEFAULT NULL,
  `prices1` int DEFAULT NULL,
  `prices2` int DEFAULT NULL,
  `prices3` int DEFAULT NULL,
  `prices4` int DEFAULT NULL,
  `prices5` int DEFAULT NULL,
  `prices6` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` int NOT NULL,
  `sender_number` int DEFAULT NULL,
  `recipient_number` int DEFAULT NULL,
  `sender` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `turfs`
--

CREATE TABLE `turfs` (
  `id` tinyint DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint DEFAULT '-1',
  `type` tinyint DEFAULT '0',
  `time` tinyint DEFAULT '12',
  `min_x` float DEFAULT '0',
  `min_y` float DEFAULT '0',
  `max_x` float DEFAULT '0',
  `max_y` float DEFAULT '0',
  `height` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(129) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `login_date` datetime DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `setup` tinyint(1) DEFAULT '1',
  `gender` tinyint(1) DEFAULT '1',
  `age` tinyint DEFAULT '18',
  `skin` smallint DEFAULT '299',
  `camera_x` float DEFAULT '0',
  `camera_y` float DEFAULT '0',
  `camera_z` float DEFAULT '0',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `interior` tinyint DEFAULT '0',
  `world` int DEFAULT '0',
  `cash` int DEFAULT '20000',
  `bank` int DEFAULT '0',
  `paycheck` int DEFAULT '0',
  `level` int DEFAULT '1',
  `veh` int NOT NULL DEFAULT '1',
  `exp` int DEFAULT '0',
  `INP` int DEFAULT '0',
  `INC` int DEFAULT '0',
  `minutes` smallint DEFAULT '0',
  `hours` int DEFAULT '0',
  `adminlevel` int DEFAULT '0',
  `adminname` varchar(24) DEFAULT 'None',
  `helperlevel` tinyint DEFAULT '0',
  `health` float DEFAULT '100',
  `armor` float DEFAULT '0',
  `upgradepoints` int DEFAULT '0',
  `warnings` tinyint DEFAULT '0',
  `injured` tinyint(1) DEFAULT '0',
  `hospital` tinyint(1) DEFAULT '0',
  `spawnhealth` float DEFAULT '50',
  `spawnarmor` float DEFAULT '0',
  `jailtype` tinyint(1) DEFAULT '0',
  `jailtime` int DEFAULT '0',
  `newbiemuted` tinyint(1) DEFAULT '0',
  `helpmuted` tinyint(1) DEFAULT '0',
  `admuted` tinyint(1) DEFAULT '0',
  `livemuted` tinyint(1) DEFAULT '0',
  `globalmuted` tinyint(1) DEFAULT '0',
  `reportmuted` tinyint DEFAULT '0',
  `reportwarns` tinyint DEFAULT '0',
  `fightstyle` tinyint DEFAULT '4',
  `accent` varchar(16) DEFAULT 'None',
  `cookies` int DEFAULT '0',
  `phone` int DEFAULT '0',
  `locked` tinyint DEFAULT '0',
  `job` int DEFAULT '-1',
  `secondjob` tinyint DEFAULT '-1',
  `crimes` int DEFAULT '0',
  `arrested` int DEFAULT '0',
  `materials` int DEFAULT '0',
  `pot` int DEFAULT '0',
  `crack` int DEFAULT '0',
  `meth` int DEFAULT '0',
  `painkillers` int DEFAULT '0',
  `foodbaon` int NOT NULL DEFAULT '0',
  `waterbaon` int NOT NULL DEFAULT '0',
  `medicinebaon` int NOT NULL DEFAULT '0',
  `seeds` int DEFAULT '0',
  `ephedrine` int DEFAULT '0',
  `muriaticacid` int DEFAULT '0',
  `bakingsoda` int DEFAULT '0',
  `cigars` int DEFAULT '0',
  `walkietalkie` tinyint(1) DEFAULT '0',
  `channel` int DEFAULT '0',
  `rentinghouse` int DEFAULT '0',
  `spraycans` int DEFAULT '0',
  `boombox` tinyint(1) DEFAULT '0',
  `mp3player` tinyint(1) DEFAULT '0',
  `phonebook` tinyint(1) DEFAULT '0',
  `fishingrod` tinyint(1) DEFAULT '0',
  `fishingbait` int DEFAULT '0',
  `fishweight` int DEFAULT '0',
  `components` int DEFAULT '0',
  `courierskill` int DEFAULT '0',
  `fishingskill` int DEFAULT '0',
  `guardskill` int DEFAULT '0',
  `weaponskill` int DEFAULT '0',
  `mechanicskill` int DEFAULT '0',
  `lawyerskill` int DEFAULT '0',
  `smugglerskill` int DEFAULT '0',
  `toggletextdraws` tinyint(1) DEFAULT '0',
  `toggleooc` tinyint(1) DEFAULT '0',
  `togglephone` tinyint(1) DEFAULT '0',
  `toggleadmin` tinyint(1) DEFAULT '0',
  `togglehelper` tinyint(1) DEFAULT '0',
  `togglenewbie` tinyint(1) DEFAULT '0',
  `togglewt` tinyint(1) DEFAULT '0',
  `toggleradio` tinyint(1) DEFAULT '0',
  `togglevip` tinyint(1) DEFAULT '0',
  `togglemusic` tinyint(1) DEFAULT '0',
  `togglefaction` tinyint(1) DEFAULT '0',
  `togglegang` tinyint(1) DEFAULT '0',
  `togglenews` tinyint(1) DEFAULT '0',
  `toggleglobal` tinyint(1) DEFAULT '0',
  `togglecam` tinyint(1) DEFAULT '0',
  `carlicense` tinyint(1) DEFAULT '0',
  `vippackage` tinyint NOT NULL DEFAULT '1',
  `viptime` int DEFAULT '8640000',
  `fgtime` int DEFAULT '8640000',
  `vipcooldown` int DEFAULT '0',
  `weapon_0` tinyint DEFAULT '0',
  `weapon_1` tinyint DEFAULT '0',
  `weapon_2` tinyint DEFAULT '0',
  `weapon_3` tinyint DEFAULT '0',
  `weapon_4` tinyint DEFAULT '0',
  `weapon_5` tinyint DEFAULT '0',
  `weapon_6` tinyint DEFAULT '0',
  `weapon_7` tinyint DEFAULT '0',
  `weapon_8` tinyint DEFAULT '0',
  `weapon_9` tinyint DEFAULT '0',
  `weapon_10` tinyint DEFAULT '0',
  `weapon_11` tinyint DEFAULT '0',
  `weapon_12` tinyint DEFAULT '0',
  `ammo_0` smallint DEFAULT '0',
  `ammo_1` smallint DEFAULT '0',
  `ammo_2` smallint DEFAULT '0',
  `ammo_3` smallint DEFAULT '0',
  `ammo_4` smallint DEFAULT '0',
  `ammo_5` smallint DEFAULT '0',
  `ammo_6` smallint DEFAULT '0',
  `ammo_7` smallint DEFAULT '0',
  `ammo_8` smallint DEFAULT '0',
  `ammo_9` smallint DEFAULT '0',
  `ammo_10` smallint DEFAULT '0',
  `ammo_11` smallint DEFAULT '0',
  `ammo_12` smallint DEFAULT '0',
  `faction` tinyint DEFAULT '-1',
  `gang` tinyint DEFAULT '-1',
  `factionrank` tinyint DEFAULT '0',
  `gangrank` tinyint DEFAULT '0',
  `division` tinyint DEFAULT '-1',
  `contracted` int DEFAULT '0',
  `contractby` varchar(24) DEFAULT 'Nobody',
  `bombs` int DEFAULT '0',
  `completedhits` int DEFAULT '0',
  `failedhits` int DEFAULT '0',
  `reports` int DEFAULT '0',
  `helprequests` int DEFAULT '0',
  `speedometer` tinyint(1) DEFAULT '1',
  `factionmod` tinyint(1) DEFAULT '0',
  `gangmod` tinyint(1) DEFAULT '0',
  `teacher` tinyint(1) DEFAULT '0',
  `banappealer` tinyint(1) DEFAULT '0',
  `potplanted` tinyint(1) DEFAULT '0',
  `pottime` int DEFAULT '0',
  `potgrams` int DEFAULT '0',
  `pot_x` float DEFAULT '0',
  `pot_y` float DEFAULT '0',
  `pot_z` float DEFAULT '0',
  `pot_a` float DEFAULT '0',
  `inventoryupgrade` int DEFAULT '0',
  `addictupgrade` int DEFAULT '0',
  `traderupgrade` int DEFAULT '0',
  `assetupgrade` int DEFAULT '0',
  `laborupgrade` int NOT NULL DEFAULT '0',
  `pistolammo` smallint DEFAULT '0',
  `shotgunammo` smallint DEFAULT '0',
  `smgammo` smallint DEFAULT '0',
  `arammo` smallint DEFAULT '0',
  `rifleammo` smallint DEFAULT '0',
  `hpammo` smallint DEFAULT '0',
  `poisonammo` smallint DEFAULT '0',
  `fmjammo` smallint DEFAULT '0',
  `ammotype` tinyint DEFAULT '0',
  `ammoweapon` tinyint DEFAULT '0',
  `dmwarnings` tinyint DEFAULT '0',
  `weaponrestricted` int DEFAULT '0',
  `referral_uid` int DEFAULT '0',
  `refercount` int DEFAULT '0',
  `watch` tinyint(1) DEFAULT '0',
  `gps` tinyint(1) DEFAULT '0',
  `prisonedby` varchar(24) DEFAULT 'No-one',
  `prisonreason` varchar(128) DEFAULT 'None',
  `togglehud` tinyint(1) DEFAULT '1',
  `clothes` smallint DEFAULT '-1',
  `showturfs` tinyint(1) DEFAULT '0',
  `showlands` tinyint(1) DEFAULT '0',
  `watchon` tinyint(1) DEFAULT '0',
  `gpson` tinyint(1) DEFAULT '0',
  `doublexp` int DEFAULT '0',
  `couriercooldown` int DEFAULT '0',
  `robtimer` int NOT NULL DEFAULT '0',
  `bandagecooldown` int NOT NULL DEFAULT '0',
  `pizzacooldown` int DEFAULT '0',
  `detectivecooldown` int DEFAULT '0',
  `duty` int DEFAULT '0',
  `bandana` int NOT NULL DEFAULT '0',
  `detectiveskill` int DEFAULT '0',
  `gascan` int DEFAULT '0',
  `refunded` int DEFAULT '0',
  `backpack` int DEFAULT '0',
  `bpcash` int DEFAULT '0',
  `bpmaterials` int DEFAULT '0',
  `bppot` int DEFAULT '0',
  `bpcrack` int DEFAULT '0',
  `bpmeth` int DEFAULT '0',
  `bppainkillers` int DEFAULT '0',
  `bpweapon_0` int DEFAULT '0',
  `bpweapon_1` int DEFAULT '0',
  `bpweapon_2` int DEFAULT '0',
  `bpweapon_3` int DEFAULT '0',
  `bpweapon_4` int DEFAULT '0',
  `bpweapon_5` int DEFAULT '0',
  `bpweapon_6` int DEFAULT '0',
  `bpweapon_7` int DEFAULT '0',
  `bpweapon_8` int DEFAULT '0',
  `bpweapon_9` int DEFAULT '0',
  `bpweapon_10` int DEFAULT '0',
  `bpweapon_11` int DEFAULT '0',
  `bpweapon_12` int DEFAULT '0',
  `bpweapon_13` int DEFAULT '0',
  `bpweapon_14` int DEFAULT '0',
  `bphpammo` int DEFAULT '0',
  `bppoisonammo` int DEFAULT '0',
  `bpfmjammo` int DEFAULT '0',
  `formeradmin` int NOT NULL DEFAULT '0',
  `deathcooldown` int NOT NULL DEFAULT '0',
  `hunger` int NOT NULL DEFAULT '100',
  `hungertimer` int NOT NULL DEFAULT '0',
  `thirst` int NOT NULL DEFAULT '100',
  `thirsttimer` int NOT NULL DEFAULT '0',
  `totalpatients` int NOT NULL DEFAULT '0',
  `totalfires` int NOT NULL DEFAULT '0',
  `rarecooldown` int NOT NULL DEFAULT '0',
  `vipdlcooldown` int NOT NULL DEFAULT '0',
  `customtitle` varchar(64) NOT NULL DEFAULT '0',
  `customcolor` varchar(16) NOT NULL DEFAULT '0',
  `mask` int NOT NULL DEFAULT '0',
  `diamonds` int NOT NULL DEFAULT '0',
  `ecoin` int DEFAULT '0',
  `blindfold` int NOT NULL DEFAULT '0',
  `rope` int NOT NULL DEFAULT '0',
  `insurance` int NOT NULL DEFAULT '0',
  `passport` int NOT NULL DEFAULT '0',
  `passportname` varchar(64) DEFAULT NULL,
  `passportlevel` int NOT NULL DEFAULT '0',
  `passportskin` int NOT NULL DEFAULT '0',
  `passportphone` int NOT NULL DEFAULT '0',
  `marriedto` int NOT NULL DEFAULT '-1',
  `newbies` int NOT NULL DEFAULT '0',
  `chatanim` tinyint NOT NULL DEFAULT '0',
  `Lottery` int NOT NULL DEFAULT '0',
  `LotteryB` int NOT NULL DEFAULT '0',
  `flashlight` tinyint NOT NULL DEFAULT '0',
  `candy` int NOT NULL DEFAULT '0',
  `gunlicense` tinyint NOT NULL DEFAULT '0',
  `dirtycash` int NOT NULL DEFAULT '0',
  `comserv` int NOT NULL DEFAULT '0',
  `voicechat` int DEFAULT NULL,
  `covidtimer` int NOT NULL DEFAULT '0',
  `facemask` int NOT NULL DEFAULT '0',
  `fmtime` int DEFAULT '0',
  `thiefcooldown` int DEFAULT '0',
  `crackcooldown` int DEFAULT '0',
  `thiefskill` int DEFAULT '0',
  `mhours` int DEFAULT '0',
  `rollerskates` int DEFAULT '0',
  `pcoupon` int DEFAULT '0',
  `pcoupons` int DEFAULT '0',
  `course` tinyint DEFAULT '0',
  `schoolreward` int DEFAULT '0',
  `bindslot1` varchar(128) DEFAULT NULL,
  `bindslot2` varchar(128) DEFAULT NULL,
  `bindslot3` varchar(128) DEFAULT NULL,
  `bindslot4` varchar(128) DEFAULT NULL,
  `bindslot5` varchar(128) DEFAULT NULL,
  `bindslot6` varchar(128) DEFAULT NULL,
  `bindslot7` varchar(128) DEFAULT NULL,
  `bindslot8` varchar(128) DEFAULT NULL,
  `lockpick` int NOT NULL DEFAULT '0',
  `crowbar` int NOT NULL DEFAULT '0',
  `SkinSave0` smallint NOT NULL DEFAULT '299',
  `SkinSave1` smallint NOT NULL DEFAULT '-1',
  `SkinSave2` smallint NOT NULL DEFAULT '-1',
  `SkinSave3` smallint NOT NULL DEFAULT '-1',
  `SkinSave4` smallint NOT NULL DEFAULT '-1',
  `SkinSave5` smallint NOT NULL DEFAULT '-1',
  `SkinSave6` smallint NOT NULL DEFAULT '-1',
  `SkinSave7` smallint NOT NULL DEFAULT '-1',
  `SkinSave8` smallint NOT NULL DEFAULT '-1',
  `SkinSave9` smallint NOT NULL DEFAULT '-1',
  `saveopengiftcd` int NOT NULL DEFAULT '0',
  `repairkit` int NOT NULL DEFAULT '0',
  `food` int NOT NULL DEFAULT '0',
  `drink` int NOT NULL DEFAULT '0',
  `toolkit` int NOT NULL DEFAULT '0',
  `pickaxe` int NOT NULL DEFAULT '0',
  `donateweapon` int NOT NULL DEFAULT '0',
  `wantedlevel` tinyint DEFAULT '0',
  `buygun` int DEFAULT '0',
  `bgtime` int DEFAULT '0',
  `Voucher0` int DEFAULT '0',
  `Voucher1` int DEFAULT '0',
  `Voucher2` int DEFAULT '0',
  `Voucher3` int DEFAULT '0',
  `Voucher4` int DEFAULT '0',
  `verify` int DEFAULT '0',
  `code` int DEFAULT '0',
  `discordtag` int DEFAULT '0',
  `discordname` varchar(128) DEFAULT 'None',
  `discordid` varchar(25) DEFAULT 'None#0000',
  `bitcoin` int NOT NULL DEFAULT '0',
  `pdm` int NOT NULL DEFAULT '0',
  `realestate` int NOT NULL DEFAULT '0',
  `google` int NOT NULL DEFAULT '0',
  `amazone` int NOT NULL DEFAULT '0',
  `apple` int NOT NULL DEFAULT '0',
  `flipkart` int NOT NULL DEFAULT '0',
  `gangban` tinyint NOT NULL DEFAULT '0',
  `factionban` tinyint NOT NULL DEFAULT '0',
  `citizen` tinyint NOT NULL DEFAULT '0',
  `permawep` tinyint NOT NULL DEFAULT '0',
  `steel` int NOT NULL DEFAULT '0',
  `scrap` int NOT NULL DEFAULT '0',
  `vehpart` int NOT NULL DEFAULT '0',
  `advkit` int NOT NULL DEFAULT '0',
  `gunpart` int NOT NULL DEFAULT '0',
  `slayerpussy` int DEFAULT '0',
  `boligbund` int NOT NULL DEFAULT '0',
  `C4` int NOT NULL DEFAULT '0',
  `thermite` int NOT NULL DEFAULT '0',
  `pizzacooldownbike` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int NOT NULL,
  `ownerid` int DEFAULT '0',
  `owner` varchar(24) DEFAULT 'Nobody',
  `modelid` smallint DEFAULT '0',
  `price` int DEFAULT '0',
  `tickets` int DEFAULT '0',
  `impounded` int DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `plate` varchar(32) DEFAULT 'None',
  `fuel` tinyint DEFAULT '100',
  `health` float DEFAULT '1000',
  `pos_x` float DEFAULT '0',
  `pos_y` float DEFAULT '0',
  `pos_z` float DEFAULT '0',
  `pos_a` float DEFAULT '0',
  `color1` smallint DEFAULT '0',
  `color2` smallint DEFAULT '0',
  `paintjob` smallint DEFAULT '-1',
  `registered` int DEFAULT NULL,
  `interior` tinyint DEFAULT '0',
  `world` int DEFAULT '0',
  `neon` smallint DEFAULT '0',
  `neonenabled` tinyint(1) DEFAULT '0',
  `trunk` tinyint(1) DEFAULT '0',
  `alarm` tinyint NOT NULL DEFAULT '0',
  `mod_1` smallint DEFAULT '0',
  `mod_2` smallint DEFAULT '0',
  `mod_3` smallint DEFAULT '0',
  `mod_4` smallint DEFAULT '0',
  `mod_5` smallint DEFAULT '0',
  `mod_6` smallint DEFAULT '0',
  `mod_7` smallint DEFAULT '0',
  `mod_8` smallint DEFAULT '0',
  `mod_9` smallint DEFAULT '0',
  `mod_10` smallint DEFAULT '0',
  `mod_11` smallint DEFAULT '0',
  `mod_12` smallint DEFAULT '0',
  `mod_13` smallint DEFAULT '0',
  `mod_14` smallint DEFAULT '0',
  `cash` int DEFAULT '0',
  `materials` int DEFAULT '0',
  `pot` int DEFAULT '0',
  `crack` int DEFAULT '0',
  `meth` int DEFAULT '0',
  `painkillers` int DEFAULT '0',
  `weapon_1` tinyint DEFAULT '0',
  `weapon_2` tinyint DEFAULT '0',
  `weapon_3` tinyint DEFAULT '0',
  `ammo_1` smallint DEFAULT '0',
  `ammo_2` smallint DEFAULT '0',
  `ammo_3` smallint DEFAULT '0',
  `gangid` tinyint DEFAULT '-1',
  `factiontype` tinyint DEFAULT '0',
  `factiontype2` tinyint DEFAULT '0',
  `factiontype3` tinyint DEFAULT '0',
  `job` tinyint DEFAULT '-1',
  `vippackage` int NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0',
  `respawndelay` int DEFAULT '0',
  `pistolammo` smallint DEFAULT '0',
  `shotgunammo` smallint DEFAULT '0',
  `smgammo` smallint DEFAULT '0',
  `arammo` smallint DEFAULT '0',
  `rifleammo` smallint DEFAULT '0',
  `hpammo` smallint DEFAULT '0',
  `poisonammo` smallint DEFAULT '0',
  `fmjammo` smallint DEFAULT '0',
  `Insurance` int NOT NULL DEFAULT '0',
  `gunpart` int NOT NULL DEFAULT '0',
  `vehpart` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `uid` int DEFAULT NULL,
  `slot` tinyint DEFAULT NULL,
  `weaponid` tinyint DEFAULT NULL,
  `ammo` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bankID`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `changes`
--
ALTER TABLE `changes`
  ADD UNIQUE KEY `slot` (`slot`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothing`
--
ALTER TABLE `clothing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD UNIQUE KEY `id` (`id`,`divisionid`);

--
-- Indexes for table `drug_labs`
--
ALTER TABLE `drug_labs`
  ADD PRIMARY KEY (`dl_sqlID`);

--
-- Indexes for table `entrances`
--
ALTER TABLE `entrances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangranks`
--
ALTER TABLE `gangranks`
  ADD UNIQUE KEY `id` (`id`,`rank`);

--
-- Indexes for table `gangskins`
--
ALTER TABLE `gangskins`
  ADD UNIQUE KEY `id` (`id`,`slot`);

--
-- Indexes for table `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateID`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kills`
--
ALTER TABLE `kills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landobjects`
--
ALTER TABLE `landobjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lands`
--
ALTER TABLE `lands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_admin`
--
ALTER TABLE `log_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_bans`
--
ALTER TABLE `log_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_cheat`
--
ALTER TABLE `log_cheat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_contracts`
--
ALTER TABLE `log_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_faction`
--
ALTER TABLE `log_faction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_gang`
--
ALTER TABLE `log_gang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_give`
--
ALTER TABLE `log_give`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_property`
--
ALTER TABLE `log_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_punishments`
--
ALTER TABLE `log_punishments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_referrals`
--
ALTER TABLE `log_referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_vip`
--
ALTER TABLE `log_vip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`mobjID`);

--
-- Indexes for table `phonebook`
--
ALTER TABLE `phonebook`
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `phone_contacts`
--
ALTER TABLE `phone_contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rp_dealercars`
--
ALTER TABLE `rp_dealercars`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Company` (`Company`);

--
-- Indexes for table `shots`
--
ALTER TABLE `shots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turfs`
--
ALTER TABLE `turfs`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `uid_2` (`uid`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD UNIQUE KEY `uid` (`uid`,`slot`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bankID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clothing`
--
ALTER TABLE `clothing`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drug_labs`
--
ALTER TABLE `drug_labs`
  MODIFY `dl_sqlID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrances`
--
ALTER TABLE `entrances`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flags`
--
ALTER TABLE `flags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `garages`
--
ALTER TABLE `garages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `gateID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kills`
--
ALTER TABLE `kills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landobjects`
--
ALTER TABLE `landobjects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lands`
--
ALTER TABLE `lands`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_admin`
--
ALTER TABLE `log_admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_bans`
--
ALTER TABLE `log_bans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_cheat`
--
ALTER TABLE `log_cheat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_contracts`
--
ALTER TABLE `log_contracts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_faction`
--
ALTER TABLE `log_faction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_gang`
--
ALTER TABLE `log_gang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_give`
--
ALTER TABLE `log_give`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_namechanges`
--
ALTER TABLE `log_namechanges`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_property`
--
ALTER TABLE `log_property`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_punishments`
--
ALTER TABLE `log_punishments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_referrals`
--
ALTER TABLE `log_referrals`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_vip`
--
ALTER TABLE `log_vip`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `object`
--
ALTER TABLE `object`
  MODIFY `mobjID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_contacts`
--
ALTER TABLE `phone_contacts`
  MODIFY `contact_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rp_dealercars`
--
ALTER TABLE `rp_dealercars`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shots`
--
ALTER TABLE `shots`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
