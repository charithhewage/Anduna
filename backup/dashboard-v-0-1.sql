-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 21, 2015 at 04:30 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dashboard-v-0-1`
--

-- --------------------------------------------------------

--
-- Table structure for table `AccessSummary`
--

CREATE TABLE IF NOT EXISTS `AccessSummary` (
  `webSiteUrl` varchar(100) NOT NULL,
  `requestCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`webSiteUrl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AccessSummary`
--

INSERT INTO `AccessSummary` (`webSiteUrl`, `requestCount`) VALUES
('192.248.15.224', 1),
('300mbfilms.com', 1),
('ac.lk', 1),
('addthis.com', 4),
('ask.com', 3),
('baiscopelk.com', 1),
('battle.net', 1),
('bing.com', 3),
('blogspot.com', 2),
('cbsi.com', 1),
('cbsistatic.com', 1),
('cbsnews.com', 1),
('cdndelivery.com', 1),
('cedexis.com', 1),
('chartbeat.net', 2),
('cisco.com', 1),
('cloudinary.com', 1),
('codeguru.com', 1),
('coderanch.com', 2),
('doubleclick.net', 6),
('espncricinfo.com', 2),
('filestream.me', 1),
('friendofthebluewhale.com', 1),
('fyre.co', 1),
('gamefront.com', 1),
('gccdn.net', 1),
('go.com', 2),
('google-analytics.com', 10),
('google.com', 12),
('google.lk', 1),
('googlesyndication.com', 5),
('googlevideo.com', 4),
('gstatic.com', 5),
('honeyfm.lk', 1),
('ikman.lk', 2),
('imgci.com', 2),
('imgfarm.com', 2),
('javaprogrammingforums.com', 1),
('live.com', 2),
('lkteledrama.com', 1),
('microsoft.com', 12),
('mozilla.net', 1),
('msftncsi.com', 1),
('nbcnews.com', 1),
('omnitronicsworld.com', 1),
('ooyala.com', 2),
('popcap.com', 1),
('programmingforums.org', 1),
('pubmatic.com', 1),
('s-nbcnews.com', 1),
('savefrom.net', 1),
('scorecardresearch.com', 6),
('soundsonline.com', 1),
('trafficfactory.biz', 1),
('trafficmanager.net', 2),
('wdgserv.com', 4),
('wsimg.com', 1),
('xvideos.com', 1),
('youtube.com', 6),
('ytimg.com', 6),
('zoom.lk', 1);

-- --------------------------------------------------------

--
-- Table structure for table `AL_DailySummary`
--

CREATE TABLE IF NOT EXISTS `AL_DailySummary` (
  `access_date` text NOT NULL,
  `total404Count` int(11) DEFAULT NULL,
  `total200Count` int(11) DEFAULT NULL,
  `totalVisitors` int(11) DEFAULT NULL,
  `totalDataAccessed` int(11) DEFAULT NULL,
  `totalRequests` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AL_DailySummary`
--

INSERT INTO `AL_DailySummary` (`access_date`, `total404Count`, `total200Count`, `totalVisitors`, `totalDataAccessed`, `totalRequests`) VALUES
(' 10/Jan/2014', 0, 54, 25, 961276, 54),
(' 09/Jan/2014', 128, 46, 1, 1193936, 176),
(' 10/Jan/2014', 0, 54, 25, 961276, 54),
(' 09/Jan/2014', 128, 46, 1, 1193936, 176);

-- --------------------------------------------------------

--
-- Table structure for table `AL_LastHour404Request`
--

CREATE TABLE IF NOT EXISTS `AL_LastHour404Request` (
  `date_time` text NOT NULL,
  `clientIpAddress` text,
  `requestedFile` text,
  `resultCode` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `url` text,
  `browserInfo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AL_LastHour404Request`
--

INSERT INTO `AL_LastHour404Request` (`date_time`, `clientIpAddress`, `requestedFile`, `resultCode`, `size`, `url`, `browserInfo`) VALUES
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /mariecms/admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 301, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /box_display.php?box=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /helpdesk/index.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /components/com_moofaq/includes/file_includer.php?gzip=0&file=/../../../../../etc/passwd%00 HTTP/1.0 ', 404, 325, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /flash/admin.php?action=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:24', '5.250.178.198', ' GET /kipper20/index.php?configfile=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /script/_conf/core/common-tpl-vars.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 314, '', ''),
(' 09/Jan/2014:05:39:32', '5.250.178.198', ' GET /gravity/library/setup/rpc.php?objectname=/../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 306, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /login.php?username_post=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /include/init.inc.php?user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /help/help.php?module=../../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:41', '5.250.178.198', ' GET /agb.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /anmelden.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /tendersystem/main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /demo/rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /view.php?page=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /dnet_admin/index.php?edit_id=2&_p=2&type=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /includes/masthead.inc.php?template_path=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /FunGamez/index.php?admin&module=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin/admin.php?act=/../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:27', '5.250.178.198', ' GET /test.php?metar=()&language=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /script/_conf/core/common-tpl-vars.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 314, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /Script/index.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:41', '5.250.178.198', ' GET /agb.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /charts.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:38:57', '5.250.178.198', ' GET /admin/install.php?lng=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:58', '5.250.178.198', ' GET /component/com_intuit/models/intuit.php?approval=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 315, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:07', '5.250.178.198', ' GET /newticket.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /dnet_admin/index.php?edit_id=2&_p=2&type=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:12', '5.250.178.198', ' GET /image.php?url=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /includes/masthead.inc.php?template_path=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /path/house/myrents.php?home=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 299, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /FunGamez/index.php?admin&module=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin/admin.php?act=/../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin.php?section=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /skysilver/login.tpl.php?TplSuffix=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:27', '5.250.178.198', ' GET /test.php?metar=()&language=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /header_new_messages.php?pun_user[g_pm]=1&pun_config[o_pms_enabled]=x&pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /search.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /members.php?act=view&p=passwd&dir=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /angemeldet.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 291, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /external_vote.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:57', '5.250.178.198', ' GET /admin/install.php?lng=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:17', '5.250.178.198', ' GET /links/index.php?show=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /modules/mod.php?mod=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin.php?section=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:24', '5.250.178.198', ' GET /kipper20/index.php?configfile=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /search.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /index2.php?artikel=3&target=./../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /frame.php?framefile=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /phpsmartcom/index.php?p=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:38', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /download.php?dlfilename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /download.php?filename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /anmelden.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /external_vote.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /forum/index.php?app=core&module=global&section=register&any=?section=../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 313, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /index.php?option=com_agora&task=profile&page=avatars&action=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /projects/TotalCalendar_2/box_display.php?box=../../../../../../../../etc/passwd%00.htm HTTP/1.0 ', 404, 317, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /demo/rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /modules.php?name=Your_account&mod_file=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:21', '5.250.178.198', ' GET /data/modules/blog/module_pages_site.php?post=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 316, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /page.php?page=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /_conf/_php-core/common-tpl-vars.php?conf[lang]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 312, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/?user_uid=1&op=forms&form=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /profile_send.php?pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /phpsmartcom/index.php?p=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:38:58', '5.250.178.198', ' GET /component/com_intuit/models/intuit.php?approval=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 315, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /forum/index.php?app=core&module=global&section=register&any=?section=../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /microcms/micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 322, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 313, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /index.php?option=com_agora&task=profile&page=avatars&action=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /box_display.php?box=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /vtigercrm/graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 296, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /helpdesk/index.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:08', '5.250.178.198', ' GET /mod.php?mod=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:12', '5.250.178.198', ' GET /image.php?url=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /components/com_moofaq/includes/file_includer.php?gzip=0&file=/../../../../../etc/passwd%00 HTTP/1.0 ', 404, 325, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /flash/admin.php?action=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /skysilver/login.tpl.php?TplSuffix=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/?user_uid=1&op=forms&form=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /header_new_messages.php?pun_user[g_pm]=1&pun_config[o_pms_enabled]=x&pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /view_member.php?username=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /login.php?username_post=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /angemeldet.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 291, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /tendersystem/main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /microcms/micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 322, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /vtigercrm/graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 296, '', ''),
(' 09/Jan/2014:05:39:08', '5.250.178.198', ' GET /mod.php?mod=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /view.php?page=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /reviews.php?artid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:17', '5.250.178.198', ' GET /links/index.php?show=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /modules/mod.php?mod=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/index.php?user_uid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /view_member.php?username=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /index2.php?artikel=3&target=./../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /frame.php?framefile=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:38', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /download.php?dlfilename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /download.php?filename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /Script/index.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /charts.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /mariecms/admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 301, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /projects/TotalCalendar_2/box_display.php?box=../../../../../../../../etc/passwd%00.htm HTTP/1.0 ', 404, 317, '', ''),
(' 09/Jan/2014:05:39:07', '5.250.178.198', ' GET /newticket.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /reviews.php?artid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /modules.php?name=Your_account&mod_file=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /path/house/myrents.php?home=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 299, '', ''),
(' 09/Jan/2014:05:39:21', '5.250.178.198', ' GET /data/modules/blog/module_pages_site.php?post=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 316, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /page.php?page=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /_conf/_php-core/common-tpl-vars.php?conf[lang]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 312, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/index.php?user_uid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:32', '5.250.178.198', ' GET /gravity/library/setup/rpc.php?objectname=/../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 306, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /profile_send.php?pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /members.php?act=view&p=passwd&dir=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /include/init.inc.php?user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /help/help.php?module=../../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /mariecms/admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 301, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /box_display.php?box=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /helpdesk/index.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /components/com_moofaq/includes/file_includer.php?gzip=0&file=/../../../../../etc/passwd%00 HTTP/1.0 ', 404, 325, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /flash/admin.php?action=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:24', '5.250.178.198', ' GET /kipper20/index.php?configfile=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /script/_conf/core/common-tpl-vars.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 314, '', ''),
(' 09/Jan/2014:05:39:32', '5.250.178.198', ' GET /gravity/library/setup/rpc.php?objectname=/../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 306, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /login.php?username_post=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /include/init.inc.php?user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /help/help.php?module=../../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:41', '5.250.178.198', ' GET /agb.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /anmelden.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /tendersystem/main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /demo/rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /view.php?page=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /dnet_admin/index.php?edit_id=2&_p=2&type=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /includes/masthead.inc.php?template_path=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /FunGamez/index.php?admin&module=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin/admin.php?act=/../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:27', '5.250.178.198', ' GET /test.php?metar=()&language=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /script/_conf/core/common-tpl-vars.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 314, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /Script/index.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:41', '5.250.178.198', ' GET /agb.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /charts.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:38:57', '5.250.178.198', ' GET /admin/install.php?lng=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:58', '5.250.178.198', ' GET /component/com_intuit/models/intuit.php?approval=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 315, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:07', '5.250.178.198', ' GET /newticket.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /dnet_admin/index.php?edit_id=2&_p=2&type=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:12', '5.250.178.198', ' GET /image.php?url=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /includes/masthead.inc.php?template_path=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /path/house/myrents.php?home=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 299, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /FunGamez/index.php?admin&module=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin/admin.php?act=/../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin.php?section=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /skysilver/login.tpl.php?TplSuffix=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:27', '5.250.178.198', ' GET /test.php?metar=()&language=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /header_new_messages.php?pun_user[g_pm]=1&pun_config[o_pms_enabled]=x&pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /search.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /members.php?act=view&p=passwd&dir=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /angemeldet.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 291, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /external_vote.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:57', '5.250.178.198', ' GET /admin/install.php?lng=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:17', '5.250.178.198', ' GET /links/index.php?show=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /modules/mod.php?mod=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin.php?section=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:24', '5.250.178.198', ' GET /kipper20/index.php?configfile=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /search.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /index2.php?artikel=3&target=./../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /frame.php?framefile=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /phpsmartcom/index.php?p=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:38', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /download.php?dlfilename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /download.php?filename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /anmelden.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /external_vote.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /forum/index.php?app=core&module=global&section=register&any=?section=../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 313, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /index.php?option=com_agora&task=profile&page=avatars&action=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /projects/TotalCalendar_2/box_display.php?box=../../../../../../../../etc/passwd%00.htm HTTP/1.0 ', 404, 317, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /demo/rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /modules.php?name=Your_account&mod_file=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:21', '5.250.178.198', ' GET /data/modules/blog/module_pages_site.php?post=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 316, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /page.php?page=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /_conf/_php-core/common-tpl-vars.php?conf[lang]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 312, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/?user_uid=1&op=forms&form=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /profile_send.php?pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /phpsmartcom/index.php?p=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:38:58', '5.250.178.198', ' GET /component/com_intuit/models/intuit.php?approval=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 315, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /forum/index.php?app=core&module=global&section=register&any=?section=../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /microcms/micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 322, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 313, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /index.php?option=com_agora&task=profile&page=avatars&action=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /box_display.php?box=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /vtigercrm/graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 296, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /helpdesk/index.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:08', '5.250.178.198', ' GET /mod.php?mod=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:12', '5.250.178.198', ' GET /image.php?url=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /components/com_moofaq/includes/file_includer.php?gzip=0&file=/../../../../../etc/passwd%00 HTTP/1.0 ', 404, 325, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /flash/admin.php?action=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /skysilver/login.tpl.php?TplSuffix=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/?user_uid=1&op=forms&form=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /header_new_messages.php?pun_user[g_pm]=1&pun_config[o_pms_enabled]=x&pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /view_member.php?username=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /login.php?username_post=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /angemeldet.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 291, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /tendersystem/main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /microcms/micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 322, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /vtigercrm/graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 296, '', ''),
(' 09/Jan/2014:05:39:08', '5.250.178.198', ' GET /mod.php?mod=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /view.php?page=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /reviews.php?artid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:17', '5.250.178.198', ' GET /links/index.php?show=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /modules/mod.php?mod=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/index.php?user_uid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /view_member.php?username=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /index2.php?artikel=3&target=./../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /frame.php?framefile=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:38', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /download.php?dlfilename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /download.php?filename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /Script/index.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /charts.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /mariecms/admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 301, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /projects/TotalCalendar_2/box_display.php?box=../../../../../../../../etc/passwd%00.htm HTTP/1.0 ', 404, 317, '', ''),
(' 09/Jan/2014:05:39:07', '5.250.178.198', ' GET /newticket.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /reviews.php?artid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /modules.php?name=Your_account&mod_file=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /path/house/myrents.php?home=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 299, '', ''),
(' 09/Jan/2014:05:39:21', '5.250.178.198', ' GET /data/modules/blog/module_pages_site.php?post=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 316, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /page.php?page=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /_conf/_php-core/common-tpl-vars.php?conf[lang]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 312, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/index.php?user_uid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:32', '5.250.178.198', ' GET /gravity/library/setup/rpc.php?objectname=/../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 306, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /profile_send.php?pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /members.php?act=view&p=passwd&dir=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /include/init.inc.php?user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /help/help.php?module=../../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /mariecms/admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 301, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /box_display.php?box=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /helpdesk/index.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /components/com_moofaq/includes/file_includer.php?gzip=0&file=/../../../../../etc/passwd%00 HTTP/1.0 ', 404, 325, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /flash/admin.php?action=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:24', '5.250.178.198', ' GET /kipper20/index.php?configfile=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /script/_conf/core/common-tpl-vars.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 314, '', ''),
(' 09/Jan/2014:05:39:32', '5.250.178.198', ' GET /gravity/library/setup/rpc.php?objectname=/../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 306, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /login.php?username_post=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /include/init.inc.php?user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /help/help.php?module=../../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:41', '5.250.178.198', ' GET /agb.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /anmelden.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /tendersystem/main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /demo/rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /view.php?page=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /dnet_admin/index.php?edit_id=2&_p=2&type=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /includes/masthead.inc.php?template_path=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /FunGamez/index.php?admin&module=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin/admin.php?act=/../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:27', '5.250.178.198', ' GET /test.php?metar=()&language=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /script/_conf/core/common-tpl-vars.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 314, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /Script/index.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:41', '5.250.178.198', ' GET /agb.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /charts.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:38:57', '5.250.178.198', ' GET /admin/install.php?lng=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:58', '5.250.178.198', ' GET /component/com_intuit/models/intuit.php?approval=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 315, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:07', '5.250.178.198', ' GET /newticket.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /dnet_admin/index.php?edit_id=2&_p=2&type=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:12', '5.250.178.198', ' GET /image.php?url=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /includes/masthead.inc.php?template_path=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /path/house/myrents.php?home=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 299, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /FunGamez/index.php?admin&module=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin/admin.php?act=/../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin.php?section=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /skysilver/login.tpl.php?TplSuffix=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:27', '5.250.178.198', ' GET /test.php?metar=()&language=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /header_new_messages.php?pun_user[g_pm]=1&pun_config[o_pms_enabled]=x&pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /search.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /members.php?act=view&p=passwd&dir=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /angemeldet.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 291, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /external_vote.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:57', '5.250.178.198', ' GET /admin/install.php?lng=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:17', '5.250.178.198', ' GET /links/index.php?show=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /modules/mod.php?mod=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin.php?section=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:24', '5.250.178.198', ' GET /kipper20/index.php?configfile=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /search.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /index2.php?artikel=3&target=./../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /frame.php?framefile=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /phpsmartcom/index.php?p=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:38', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /download.php?dlfilename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /download.php?filename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /anmelden.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /external_vote.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /forum/index.php?app=core&module=global&section=register&any=?section=../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 313, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /index.php?option=com_agora&task=profile&page=avatars&action=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /projects/TotalCalendar_2/box_display.php?box=../../../../../../../../etc/passwd%00.htm HTTP/1.0 ', 404, 317, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /demo/rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /modules.php?name=Your_account&mod_file=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:21', '5.250.178.198', ' GET /data/modules/blog/module_pages_site.php?post=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 316, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /page.php?page=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /_conf/_php-core/common-tpl-vars.php?conf[lang]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 312, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/?user_uid=1&op=forms&form=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /profile_send.php?pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /phpsmartcom/index.php?p=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:38:58', '5.250.178.198', ' GET /component/com_intuit/models/intuit.php?approval=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 315, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /forum/index.php?app=core&module=global&section=register&any=?section=../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', '');
INSERT INTO `AL_LastHour404Request` (`date_time`, `clientIpAddress`, `requestedFile`, `resultCode`, `size`, `url`, `browserInfo`) VALUES
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /microcms/micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 322, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 313, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /index.php?option=com_agora&task=profile&page=avatars&action=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /box_display.php?box=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /vtigercrm/graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 296, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /helpdesk/index.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:08', '5.250.178.198', ' GET /mod.php?mod=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:12', '5.250.178.198', ' GET /image.php?url=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /components/com_moofaq/includes/file_includer.php?gzip=0&file=/../../../../../etc/passwd%00 HTTP/1.0 ', 404, 325, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /flash/admin.php?action=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /skysilver/login.tpl.php?TplSuffix=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/?user_uid=1&op=forms&form=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /header_new_messages.php?pun_user[g_pm]=1&pun_config[o_pms_enabled]=x&pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /view_member.php?username=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /login.php?username_post=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /angemeldet.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 291, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /tendersystem/main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /microcms/micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 322, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /vtigercrm/graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 296, '', ''),
(' 09/Jan/2014:05:39:08', '5.250.178.198', ' GET /mod.php?mod=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /view.php?page=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /reviews.php?artid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:17', '5.250.178.198', ' GET /links/index.php?show=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /modules/mod.php?mod=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/index.php?user_uid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /view_member.php?username=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /index2.php?artikel=3&target=./../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /frame.php?framefile=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:38', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /download.php?dlfilename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /download.php?filename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /Script/index.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /charts.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /mariecms/admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 301, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /projects/TotalCalendar_2/box_display.php?box=../../../../../../../../etc/passwd%00.htm HTTP/1.0 ', 404, 317, '', ''),
(' 09/Jan/2014:05:39:07', '5.250.178.198', ' GET /newticket.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /reviews.php?artid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /modules.php?name=Your_account&mod_file=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /path/house/myrents.php?home=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 299, '', ''),
(' 09/Jan/2014:05:39:21', '5.250.178.198', ' GET /data/modules/blog/module_pages_site.php?post=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 316, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /page.php?page=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /_conf/_php-core/common-tpl-vars.php?conf[lang]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 312, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/index.php?user_uid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:32', '5.250.178.198', ' GET /gravity/library/setup/rpc.php?objectname=/../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 306, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /profile_send.php?pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /members.php?act=view&p=passwd&dir=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /include/init.inc.php?user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /help/help.php?module=../../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `AL_LastHourImportantFileAccessInfo`
--

CREATE TABLE IF NOT EXISTS `AL_LastHourImportantFileAccessInfo` (
  `date_time` text NOT NULL,
  `clientIpAddress` text,
  `requestedFile` text,
  `resultCode` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `url` text,
  `browserInfo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AL_LastHourImportantFileAccessInfo`
--

INSERT INTO `AL_LastHourImportantFileAccessInfo` (`date_time`, `clientIpAddress`, `requestedFile`, `resultCode`, `size`, `url`, `browserInfo`) VALUES
(' 10/Jan/2014:10:39:12', '109.149.74.124', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20100101 Firefox/20.0 '),
(' 10/Jan/2014:10:39:03', '190.130.252.108', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20120101 Firefox/19.0 '),
(' 10/Jan/2014:10:39:40', '177.41.116.223', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.8.52 Version/10.10 '),
(' 10/Jan/2014:10:39:45', '117.218.1.58', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.2.6; U; ru) Presto/2.1.173 Version/12.10 '),
(' 10/Jan/2014:10:41:00', '58.11.106.50', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.60 Version/11.10 '),
(' 10/Jan/2014:10:41:16', '111.240.237.82', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.4.7; U; ru) Presto/2.4.123 Version/11.10 '),
(' 10/Jan/2014:10:41:16', '91.202.133.0', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20110815 Firefox/21.0 '),
(' 10/Jan/2014:10:41:47', '125.230.72.137', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20130101 Firefox/23.0 '),
(' 10/Jan/2014:10:38:26', '1.168.218.169', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:09', '49.145.184.85', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:09', '86.64.143.140', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.8.8) Gecko/20100929 '),
(' 10/Jan/2014:10:41:00', '58.11.106.50', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.60 Version/11.10 '),
(' 10/Jan/2014:10:41:16', '91.202.133.0', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20110815 Firefox/21.0 '),
(' 10/Jan/2014:10:41:31', '2.135.128.91', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko/20130815 Firefox/20.0 '),
(' 10/Jan/2014:10:41:34', '2.135.128.91', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko/20130815 Firefox/20.0 '),
(' 10/Jan/2014:10:41:40', '5.250.18.205', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_1; en-US) AppleWebKit/577.16 (KHTML, like Gecko) Chrome/10.0.571.236 Safari/423.16 '),
(' 10/Jan/2014:10:41:47', '125.230.72.137', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20130101 Firefox/23.0 '),
(' 10/Jan/2014:10:42:01', '197.232.252.117', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_1_7; en-US) AppleWebKit/504.16 (KHTML, like Gecko) Chrome/10.0.418.243 Safari/427.16 '),
(' 10/Jan/2014:10:42:13', '80.28.120.48', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.6.6; U; ru) Presto/2.8.75 Version/12.10 '),
(' 10/Jan/2014:10:39:06', '190.130.252.108', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20120101 Firefox/19.0 '),
(' 10/Jan/2014:10:38:27', '1.168.218.169', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:39:41', '177.41.116.223', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.8.52 Version/10.10 '),
(' 10/Jan/2014:10:40:08', '49.145.184.85', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:48', '89.66.241.96', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:19.0) Gecko/20080815 Firefox/19.0 '),
(' 10/Jan/2014:10:40:55', '111.240.237.82', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:05', '120.63.148.49', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_2_1; en-US) AppleWebKit/563.16 (KHTML, like Gecko) Chrome/10.0.560.283 Safari/532.16 '),
(' 10/Jan/2014:10:41:05', '218.102.183.142', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:06', '120.63.148.49', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_2_1; en-US) AppleWebKit/563.16 (KHTML, like Gecko) Chrome/10.0.560.283 Safari/532.16 '),
(' 10/Jan/2014:10:41:06', '218.102.183.142', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:25', '91.202.133.0', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20120101 Firefox/20.0 '),
(' 10/Jan/2014:10:41:25', '91.202.133.0', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20120101 Firefox/20.0 '),
(' 10/Jan/2014:10:41:41', '5.250.18.205', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_1; en-US) AppleWebKit/577.16 (KHTML, like Gecko) Chrome/10.0.571.236 Safari/423.16 '),
(' 10/Jan/2014:10:42:03', '174.127.66.146', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.7.202 Version/11.10 '),
(' 10/Jan/2014:10:42:04', '174.127.66.146', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.7.202 Version/11.10 '),
(' 10/Jan/2014:10:42:30', '110.168.95.183', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.3.5; U; ru) Presto/2.7.174 Version/11.10 '),
(' 10/Jan/2014:10:42:30', '92.49.199.191', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20050815 Firefox/21.0 '),
(' 10/Jan/2014:10:39:11', '109.149.74.124', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20100101 Firefox/20.0 '),
(' 10/Jan/2014:10:39:45', '117.218.1.58', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.2.6; U; ru) Presto/2.1.173 Version/12.10 '),
(' 10/Jan/2014:10:40:09', '86.64.143.140', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.8.8) Gecko/20100929 '),
(' 10/Jan/2014:10:40:13', '37.230.86.128', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:39', '190.234.106.198', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.45 Version/12.10 '),
(' 10/Jan/2014:10:40:40', '190.234.106.198', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.45 Version/12.10 '),
(' 10/Jan/2014:10:40:49', '89.66.241.96', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:19.0) Gecko/20080815 Firefox/19.0 '),
(' 10/Jan/2014:10:40:55', '111.240.237.82', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:15', '111.240.237.82', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.4.7; U; ru) Presto/2.4.123 Version/11.10 '),
(' 10/Jan/2014:10:41:29', '37.230.86.128', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:42:02', '197.232.252.117', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_1_7; en-US) AppleWebKit/504.16 (KHTML, like Gecko) Chrome/10.0.418.243 Safari/427.16 '),
(' 10/Jan/2014:10:42:13', '80.28.120.48', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.6.6; U; ru) Presto/2.8.75 Version/12.10 '),
(' 10/Jan/2014:10:42:29', '92.49.199.191', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20050815 Firefox/21.0 '),
(' 10/Jan/2014:10:39:12', '109.149.74.124', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20100101 Firefox/20.0 '),
(' 10/Jan/2014:10:39:03', '190.130.252.108', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20120101 Firefox/19.0 '),
(' 10/Jan/2014:10:39:40', '177.41.116.223', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.8.52 Version/10.10 '),
(' 10/Jan/2014:10:39:45', '117.218.1.58', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.2.6; U; ru) Presto/2.1.173 Version/12.10 '),
(' 10/Jan/2014:10:41:00', '58.11.106.50', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.60 Version/11.10 '),
(' 10/Jan/2014:10:41:16', '111.240.237.82', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.4.7; U; ru) Presto/2.4.123 Version/11.10 '),
(' 10/Jan/2014:10:41:16', '91.202.133.0', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20110815 Firefox/21.0 '),
(' 10/Jan/2014:10:41:47', '125.230.72.137', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20130101 Firefox/23.0 '),
(' 10/Jan/2014:10:38:26', '1.168.218.169', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:09', '49.145.184.85', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:09', '86.64.143.140', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.8.8) Gecko/20100929 '),
(' 10/Jan/2014:10:41:00', '58.11.106.50', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.60 Version/11.10 '),
(' 10/Jan/2014:10:41:16', '91.202.133.0', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20110815 Firefox/21.0 '),
(' 10/Jan/2014:10:41:31', '2.135.128.91', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko/20130815 Firefox/20.0 '),
(' 10/Jan/2014:10:41:34', '2.135.128.91', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko/20130815 Firefox/20.0 '),
(' 10/Jan/2014:10:41:40', '5.250.18.205', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_1; en-US) AppleWebKit/577.16 (KHTML, like Gecko) Chrome/10.0.571.236 Safari/423.16 '),
(' 10/Jan/2014:10:41:47', '125.230.72.137', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20130101 Firefox/23.0 '),
(' 10/Jan/2014:10:42:01', '197.232.252.117', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_1_7; en-US) AppleWebKit/504.16 (KHTML, like Gecko) Chrome/10.0.418.243 Safari/427.16 '),
(' 10/Jan/2014:10:42:13', '80.28.120.48', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.6.6; U; ru) Presto/2.8.75 Version/12.10 '),
(' 10/Jan/2014:10:39:06', '190.130.252.108', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20120101 Firefox/19.0 '),
(' 10/Jan/2014:10:38:27', '1.168.218.169', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:39:41', '177.41.116.223', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.8.52 Version/10.10 '),
(' 10/Jan/2014:10:40:08', '49.145.184.85', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:48', '89.66.241.96', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:19.0) Gecko/20080815 Firefox/19.0 '),
(' 10/Jan/2014:10:40:55', '111.240.237.82', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:05', '120.63.148.49', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_2_1; en-US) AppleWebKit/563.16 (KHTML, like Gecko) Chrome/10.0.560.283 Safari/532.16 '),
(' 10/Jan/2014:10:41:05', '218.102.183.142', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:06', '120.63.148.49', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_2_1; en-US) AppleWebKit/563.16 (KHTML, like Gecko) Chrome/10.0.560.283 Safari/532.16 '),
(' 10/Jan/2014:10:41:06', '218.102.183.142', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:25', '91.202.133.0', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20120101 Firefox/20.0 '),
(' 10/Jan/2014:10:41:25', '91.202.133.0', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20120101 Firefox/20.0 '),
(' 10/Jan/2014:10:41:41', '5.250.18.205', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_1; en-US) AppleWebKit/577.16 (KHTML, like Gecko) Chrome/10.0.571.236 Safari/423.16 '),
(' 10/Jan/2014:10:42:03', '174.127.66.146', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.7.202 Version/11.10 '),
(' 10/Jan/2014:10:42:04', '174.127.66.146', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.7.202 Version/11.10 '),
(' 10/Jan/2014:10:42:30', '110.168.95.183', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.3.5; U; ru) Presto/2.7.174 Version/11.10 '),
(' 10/Jan/2014:10:42:30', '92.49.199.191', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20050815 Firefox/21.0 '),
(' 10/Jan/2014:10:39:11', '109.149.74.124', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20100101 Firefox/20.0 '),
(' 10/Jan/2014:10:39:45', '117.218.1.58', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.2.6; U; ru) Presto/2.1.173 Version/12.10 '),
(' 10/Jan/2014:10:40:09', '86.64.143.140', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.8.8) Gecko/20100929 '),
(' 10/Jan/2014:10:40:13', '37.230.86.128', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:39', '190.234.106.198', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.45 Version/12.10 '),
(' 10/Jan/2014:10:40:40', '190.234.106.198', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.45 Version/12.10 '),
(' 10/Jan/2014:10:40:49', '89.66.241.96', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:19.0) Gecko/20080815 Firefox/19.0 '),
(' 10/Jan/2014:10:40:55', '111.240.237.82', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:15', '111.240.237.82', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.4.7; U; ru) Presto/2.4.123 Version/11.10 '),
(' 10/Jan/2014:10:41:29', '37.230.86.128', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:42:02', '197.232.252.117', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_1_7; en-US) AppleWebKit/504.16 (KHTML, like Gecko) Chrome/10.0.418.243 Safari/427.16 '),
(' 10/Jan/2014:10:42:13', '80.28.120.48', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.6.6; U; ru) Presto/2.8.75 Version/12.10 '),
(' 10/Jan/2014:10:42:29', '92.49.199.191', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20050815 Firefox/21.0 '),
(' 10/Jan/2014:10:39:12', '109.149.74.124', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20100101 Firefox/20.0 '),
(' 10/Jan/2014:10:39:03', '190.130.252.108', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20120101 Firefox/19.0 '),
(' 10/Jan/2014:10:39:40', '177.41.116.223', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.8.52 Version/10.10 '),
(' 10/Jan/2014:10:39:45', '117.218.1.58', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.2.6; U; ru) Presto/2.1.173 Version/12.10 '),
(' 10/Jan/2014:10:41:00', '58.11.106.50', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.60 Version/11.10 '),
(' 10/Jan/2014:10:41:16', '111.240.237.82', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.4.7; U; ru) Presto/2.4.123 Version/11.10 '),
(' 10/Jan/2014:10:41:16', '91.202.133.0', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20110815 Firefox/21.0 '),
(' 10/Jan/2014:10:41:47', '125.230.72.137', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20130101 Firefox/23.0 '),
(' 10/Jan/2014:10:38:26', '1.168.218.169', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:09', '49.145.184.85', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:09', '86.64.143.140', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.8.8) Gecko/20100929 '),
(' 10/Jan/2014:10:41:00', '58.11.106.50', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.60 Version/11.10 '),
(' 10/Jan/2014:10:41:16', '91.202.133.0', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20110815 Firefox/21.0 '),
(' 10/Jan/2014:10:41:31', '2.135.128.91', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko/20130815 Firefox/20.0 '),
(' 10/Jan/2014:10:41:34', '2.135.128.91', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko/20130815 Firefox/20.0 '),
(' 10/Jan/2014:10:41:40', '5.250.18.205', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_1; en-US) AppleWebKit/577.16 (KHTML, like Gecko) Chrome/10.0.571.236 Safari/423.16 '),
(' 10/Jan/2014:10:41:47', '125.230.72.137', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20130101 Firefox/23.0 '),
(' 10/Jan/2014:10:42:01', '197.232.252.117', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_1_7; en-US) AppleWebKit/504.16 (KHTML, like Gecko) Chrome/10.0.418.243 Safari/427.16 '),
(' 10/Jan/2014:10:42:13', '80.28.120.48', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.6.6; U; ru) Presto/2.8.75 Version/12.10 '),
(' 10/Jan/2014:10:39:06', '190.130.252.108', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20120101 Firefox/19.0 '),
(' 10/Jan/2014:10:38:27', '1.168.218.169', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:39:41', '177.41.116.223', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.8.52 Version/10.10 '),
(' 10/Jan/2014:10:40:08', '49.145.184.85', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:48', '89.66.241.96', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:19.0) Gecko/20080815 Firefox/19.0 '),
(' 10/Jan/2014:10:40:55', '111.240.237.82', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:05', '120.63.148.49', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_2_1; en-US) AppleWebKit/563.16 (KHTML, like Gecko) Chrome/10.0.560.283 Safari/532.16 '),
(' 10/Jan/2014:10:41:05', '218.102.183.142', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:06', '120.63.148.49', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_2_1; en-US) AppleWebKit/563.16 (KHTML, like Gecko) Chrome/10.0.560.283 Safari/532.16 '),
(' 10/Jan/2014:10:41:06', '218.102.183.142', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:25', '91.202.133.0', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20120101 Firefox/20.0 '),
(' 10/Jan/2014:10:41:25', '91.202.133.0', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20120101 Firefox/20.0 '),
(' 10/Jan/2014:10:41:41', '5.250.18.205', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_1; en-US) AppleWebKit/577.16 (KHTML, like Gecko) Chrome/10.0.571.236 Safari/423.16 '),
(' 10/Jan/2014:10:42:03', '174.127.66.146', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.7.202 Version/11.10 '),
(' 10/Jan/2014:10:42:04', '174.127.66.146', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.7.202 Version/11.10 '),
(' 10/Jan/2014:10:42:30', '110.168.95.183', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.3.5; U; ru) Presto/2.7.174 Version/11.10 '),
(' 10/Jan/2014:10:42:30', '92.49.199.191', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20050815 Firefox/21.0 '),
(' 10/Jan/2014:10:39:11', '109.149.74.124', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20100101 Firefox/20.0 '),
(' 10/Jan/2014:10:39:45', '117.218.1.58', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.2.6; U; ru) Presto/2.1.173 Version/12.10 '),
(' 10/Jan/2014:10:40:09', '86.64.143.140', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.8.8) Gecko/20100929 '),
(' 10/Jan/2014:10:40:13', '37.230.86.128', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:39', '190.234.106.198', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.45 Version/12.10 '),
(' 10/Jan/2014:10:40:40', '190.234.106.198', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.45 Version/12.10 '),
(' 10/Jan/2014:10:40:49', '89.66.241.96', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:19.0) Gecko/20080815 Firefox/19.0 '),
(' 10/Jan/2014:10:40:55', '111.240.237.82', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:15', '111.240.237.82', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.4.7; U; ru) Presto/2.4.123 Version/11.10 '),
(' 10/Jan/2014:10:41:29', '37.230.86.128', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:42:02', '197.232.252.117', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_1_7; en-US) AppleWebKit/504.16 (KHTML, like Gecko) Chrome/10.0.418.243 Safari/427.16 '),
(' 10/Jan/2014:10:42:13', '80.28.120.48', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.6.6; U; ru) Presto/2.8.75 Version/12.10 '),
(' 10/Jan/2014:10:42:29', '92.49.199.191', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20050815 Firefox/21.0 ');

-- --------------------------------------------------------

--
-- Table structure for table `AL_LastHourLogs`
--

CREATE TABLE IF NOT EXISTS `AL_LastHourLogs` (
  `date_time` text NOT NULL,
  `clientIpAddress` text NOT NULL,
  `requestedFile` text NOT NULL,
  `resultCode` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `url` text NOT NULL,
  `browserInfo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AL_LastHourLogs`
--

INSERT INTO `AL_LastHourLogs` (`date_time`, `clientIpAddress`, `requestedFile`, `resultCode`, `size`, `url`, `browserInfo`) VALUES
(' 10/Jan/2014:10:39:12', '109.149.74.124', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20100101 Firefox/20.0 '),
(' 10/Jan/2014:10:39:03', '190.130.252.108', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20120101 Firefox/19.0 '),
(' 10/Jan/2014:10:39:40', '177.41.116.223', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.8.52 Version/10.10 '),
(' 10/Jan/2014:10:39:45', '117.218.1.58', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.2.6; U; ru) Presto/2.1.173 Version/12.10 '),
(' 10/Jan/2014:10:41:00', '58.11.106.50', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.60 Version/11.10 '),
(' 10/Jan/2014:10:41:13', '110.148.179.72', ' GET /index.php/staff/academic/27.html HTTP/1.1 ', 200, 17969, ' http://www.civil.mrt.ac.lk/index.php/staff/academic/18.html ', ' Mozilla/5.0 (Windows NT 6.1; rv:26.0) Gecko/20100101 Firefox/26.0 '),
(' 10/Jan/2014:10:41:16', '111.240.237.82', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.4.7; U; ru) Presto/2.4.123 Version/11.10 '),
(' 10/Jan/2014:10:41:16', '91.202.133.0', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20110815 Firefox/21.0 '),
(' 10/Jan/2014:10:41:47', '125.230.72.137', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20130101 Firefox/23.0 '),
(' 09/Jan/2014:05:38:56', '5.250.178.198', ' GET /index.php?path=../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:38:56', '5.250.178.198', ' GET /index.php?src=../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:00', '5.250.178.198', ' GET /index.php?file=../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /mariecms/admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 301, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /box_display.php?box=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /helpdesk/index.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:07', '5.250.178.198', ' GET /index.php?adduser=true&lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /components/com_moofaq/includes/file_includer.php?gzip=0&file=/../../../../../etc/passwd%00 HTTP/1.0 ', 404, 325, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /flash/admin.php?action=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:16', '5.250.178.198', ' GET /includes/database/examples/addressbook.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 17, '', ''),
(' 09/Jan/2014:05:39:17', '5.250.178.198', ' GET /?set_lng=../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:23', '5.250.178.198', ' GET /index.php?action=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:24', '5.250.178.198', ' GET /kipper20/index.php?configfile=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:24', '5.250.178.198', ' GET /index.php?configfile=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /script/_conf/core/common-tpl-vars.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 314, '', ''),
(' 09/Jan/2014:05:39:32', '5.250.178.198', ' GET /gravity/library/setup/rpc.php?objectname=/../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 306, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /login.php?username_post=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /include/init.inc.php?user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /help/help.php?module=../../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:41', '5.250.178.198', ' GET /agb.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /anmelden.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:38:56', '5.250.178.198', ' GET /index.php?src=../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:38:56', '5.250.178.198', ' GET /index.php?path=../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /tendersystem/main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /demo/rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /view.php?page=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /dnet_admin/index.php?edit_id=2&_p=2&type=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /?language_id=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:11', '5.250.178.198', ' GET /index.php?module=admin&show=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /includes/masthead.inc.php?template_path=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:14', '5.250.178.198', ' GET /index.php?newlang=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /FunGamez/index.php?admin&module=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:20', '5.250.178.198', ' GET /index.php?cat=10_Willkommen&page=../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:21', '5.250.178.198', ' GET /?npage=1&content_dir=../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin/admin.php?act=/../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:26', '5.250.178.198', ' GET /index.php?page=users/../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:27', '5.250.178.198', ' GET /index.php?cc=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:27', '5.250.178.198', ' GET /test.php?metar=()&language=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /script/_conf/core/common-tpl-vars.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 314, '', ''),
(' 09/Jan/2014:05:39:31', '5.250.178.198', ' GET /index.php?template=../../../../etc/passwd%00 HTTP/1.0 ', 200, 7975, '', ''),
(' 09/Jan/2014:05:39:32', '5.250.178.198', ' GET /?p=cat&c=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /index.php?page=weblog&env=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /Script/index.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:41', '5.250.178.198', ' GET /index.php?module=phpManual&file=../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:41', '5.250.178.198', ' GET /agb.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /charts.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 10/Jan/2014:10:38:26', '1.168.218.169', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:09', '49.145.184.85', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:09', '86.64.143.140', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.8.8) Gecko/20100929 '),
(' 10/Jan/2014:10:41:00', '58.11.106.50', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.60 Version/11.10 '),
(' 10/Jan/2014:10:41:16', '91.202.133.0', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20110815 Firefox/21.0 '),
(' 10/Jan/2014:10:41:31', '2.135.128.91', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko/20130815 Firefox/20.0 '),
(' 10/Jan/2014:10:41:34', '2.135.128.91', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko/20130815 Firefox/20.0 '),
(' 10/Jan/2014:10:41:40', '5.250.18.205', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_1; en-US) AppleWebKit/577.16 (KHTML, like Gecko) Chrome/10.0.571.236 Safari/423.16 '),
(' 10/Jan/2014:10:41:47', '125.230.72.137', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20130101 Firefox/23.0 '),
(' 10/Jan/2014:10:42:01', '197.232.252.117', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_1_7; en-US) AppleWebKit/504.16 (KHTML, like Gecko) Chrome/10.0.418.243 Safari/427.16 '),
(' 10/Jan/2014:10:42:07', '110.148.179.72', ' GET /index.php/staff/academic/29.html HTTP/1.1 ', 200, 16522, ' http://www.civil.mrt.ac.lk/index.php/staff/academic/28.html ', ' Mozilla/5.0 (Windows NT 6.1; rv:26.0) Gecko/20100101 Firefox/26.0 '),
(' 10/Jan/2014:10:42:13', '80.28.120.48', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.6.6; U; ru) Presto/2.8.75 Version/12.10 '),
(' 09/Jan/2014:05:38:57', '5.250.178.198', ' GET /admin/install.php?lng=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:58', '5.250.178.198', ' GET /component/com_intuit/models/intuit.php?approval=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 315, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:07', '5.250.178.198', ' GET /newticket.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /dnet_admin/index.php?edit_id=2&_p=2&type=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:12', '5.250.178.198', ' GET /image.php?url=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /includes/masthead.inc.php?template_path=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /path/house/myrents.php?home=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 299, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /index.php?webpages_form=../../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /FunGamez/index.php?admin&module=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin/admin.php?act=/../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin.php?section=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /skysilver/login.tpl.php?TplSuffix=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:27', '5.250.178.198', ' GET /test.php?metar=()&language=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:29', '5.250.178.198', ' GET /index.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:31', '5.250.178.198', ' GET /index.php?template=../../../../etc/passwd%00 HTTP/1.0 ', 200, 7975, '', ''),
(' 09/Jan/2014:05:39:32', '5.250.178.198', ' GET /?p=cat&c=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /header_new_messages.php?pun_user[g_pm]=1&pun_config[o_pms_enabled]=x&pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /search.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /members.php?act=view&p=passwd&dir=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:41', '5.250.178.198', ' GET /index.php?module=phpManual&file=../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /angemeldet.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 291, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /external_vote.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:57', '5.250.178.198', ' GET /admin/install.php?lng=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /index.php?webpages_form=../../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:16', '5.250.178.198', ' GET /includes/database/examples/addressbook.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 17, '', ''),
(' 09/Jan/2014:05:39:17', '5.250.178.198', ' GET /links/index.php?show=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:17', '5.250.178.198', ' GET /?set_lng=../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /modules/mod.php?mod=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin.php?section=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:23', '5.250.178.198', ' GET /index.php?action=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:24', '5.250.178.198', ' GET /kipper20/index.php?configfile=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:24', '5.250.178.198', ' GET /index.php?configfile=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:29', '5.250.178.198', ' GET /index.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /search.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /index2.php?artikel=3&target=./../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /frame.php?framefile=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /phpsmartcom/index.php?p=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:38', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /download.php?dlfilename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /download.php?filename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /anmelden.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /external_vote.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 10/Jan/2014:10:39:06', '190.130.252.108', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20120101 Firefox/19.0 '),
(' 10/Jan/2014:10:38:27', '1.168.218.169', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:39:41', '177.41.116.223', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.8.52 Version/10.10 '),
(' 10/Jan/2014:10:40:08', '49.145.184.85', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:48', '89.66.241.96', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:19.0) Gecko/20080815 Firefox/19.0 '),
(' 10/Jan/2014:10:40:54', '110.148.179.72', ' GET /index.php/staff/academic/18.html HTTP/1.1 ', 200, 22760, ' http://www.civil.mrt.ac.lk/index.php/staff/academic.html ', ' Mozilla/5.0 (Windows NT 6.1; rv:26.0) Gecko/20100101 Firefox/26.0 '),
(' 10/Jan/2014:10:40:55', '111.240.237.82', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:05', '120.63.148.49', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_2_1; en-US) AppleWebKit/563.16 (KHTML, like Gecko) Chrome/10.0.560.283 Safari/532.16 '),
(' 10/Jan/2014:10:41:05', '218.102.183.142', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:06', '120.63.148.49', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_2_1; en-US) AppleWebKit/563.16 (KHTML, like Gecko) Chrome/10.0.560.283 Safari/532.16 '),
(' 10/Jan/2014:10:41:06', '218.102.183.142', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:25', '91.202.133.0', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20120101 Firefox/20.0 '),
(' 10/Jan/2014:10:41:25', '91.202.133.0', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20120101 Firefox/20.0 '),
(' 10/Jan/2014:10:41:41', '5.250.18.205', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_1; en-US) AppleWebKit/577.16 (KHTML, like Gecko) Chrome/10.0.571.236 Safari/423.16 '),
(' 10/Jan/2014:10:42:03', '174.127.66.146', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.7.202 Version/11.10 '),
(' 10/Jan/2014:10:42:04', '174.127.66.146', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.7.202 Version/11.10 '),
(' 10/Jan/2014:10:42:30', '110.168.95.183', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.3.5; U; ru) Presto/2.7.174 Version/11.10 '),
(' 10/Jan/2014:10:42:30', '92.49.199.191', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20050815 Firefox/21.0 '),
(' 09/Jan/2014:05:38:58', '5.250.178.198', ' GET /index.php?include_file=../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /forum/index.php?app=core&module=global&section=register&any=?section=../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 313, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /index.php?option=com_agora&task=profile&page=avatars&action=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /projects/TotalCalendar_2/box_display.php?box=../../../../../../../../etc/passwd%00.htm HTTP/1.0 ', 404, 317, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /demo/rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /modules.php?name=Your_account&mod_file=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /?language_id=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:11', '5.250.178.198', ' GET /index.php?module=admin&show=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:19', '5.250.178.198', ' GET /index.php?admin&module=../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:20', '5.250.178.198', ' GET /index.php?cat=10_Willkommen&page=../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:21', '5.250.178.198', ' GET /data/modules/blog/module_pages_site.php?post=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 316, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /page.php?page=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:26', '5.250.178.198', ' GET /index.php?page=users/../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /_conf/_php-core/common-tpl-vars.php?conf[lang]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 312, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/?user_uid=1&op=forms&form=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:31', '5.250.178.198', ' GET admin/inc/modul.inc.php?modul=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 400, 305, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /profile_send.php?pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /phpsmartcom/index.php?p=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:38:58', '5.250.178.198', ' GET /component/com_intuit/models/intuit.php?approval=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 315, '', ''),
(' 09/Jan/2014:05:38:58', '5.250.178.198', ' GET /index.php?include_file=../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /forum/index.php?app=core&module=global&section=register&any=?section=../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /microcms/micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 322, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 313, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /index.php?option=com_agora&task=profile&page=avatars&action=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /box_display.php?box=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /vtigercrm/graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 296, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /helpdesk/index.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:08', '5.250.178.198', ' GET /mod.php?mod=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:12', '5.250.178.198', ' GET /image.php?url=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /components/com_moofaq/includes/file_includer.php?gzip=0&file=/../../../../../etc/passwd%00 HTTP/1.0 ', 404, 325, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /flash/admin.php?action=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /skysilver/login.tpl.php?TplSuffix=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/?user_uid=1&op=forms&form=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /header_new_messages.php?pun_user[g_pm]=1&pun_config[o_pms_enabled]=x&pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /view_member.php?username=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /login.php?username_post=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /angemeldet.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 291, '', ''),
(' 10/Jan/2014:10:39:11', '109.149.74.124', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20100101 Firefox/20.0 '),
(' 10/Jan/2014:10:39:45', '117.218.1.58', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.2.6; U; ru) Presto/2.1.173 Version/12.10 '),
(' 10/Jan/2014:10:39:54', '108.181.43.24', ' GET /conference/raghu/9.pdf HTTP/1.1 ', 200, 679041, ' http://www.google.ca/url?sa=t&rct=j&q=&esrc=s&frm=1&source=web&cd=12&ved=0CGMQFjAL&url=http%3A%2F%2Fwww.civil.mrt.ac.lk%2Fconference%2Fraghu%2F9.pdf&ei=k4DPUtKuCcX6oASQ-ILIDA&usg=AFQjCNGoTWOun6ftpSQDQHe_5Xfl1CXfrQ&cad=rja ', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0) '),
(' 10/Jan/2014:10:40:09', '86.64.143.140', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.8.8) Gecko/20100929 '),
(' 10/Jan/2014:10:40:13', '37.230.86.128', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:39', '190.234.106.198', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.45 Version/12.10 '),
(' 10/Jan/2014:10:40:40', '190.234.106.198', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.45 Version/12.10 '),
(' 10/Jan/2014:10:40:49', '89.66.241.96', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:19.0) Gecko/20080815 Firefox/19.0 '),
(' 10/Jan/2014:10:40:55', '111.240.237.82', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:15', '111.240.237.82', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.4.7; U; ru) Presto/2.4.123 Version/11.10 '),
(' 10/Jan/2014:10:41:29', '37.230.86.128', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:52', '110.148.179.72', ' GET /index.php/staff/academic/28.html HTTP/1.1 ', 200, 16649, ' http://www.civil.mrt.ac.lk/index.php/staff/academic/27.html ', ' Mozilla/5.0 (Windows NT 6.1; rv:26.0) Gecko/20100101 Firefox/26.0 '),
(' 10/Jan/2014:10:42:02', '197.232.252.117', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_1_7; en-US) AppleWebKit/504.16 (KHTML, like Gecko) Chrome/10.0.418.243 Safari/427.16 '),
(' 10/Jan/2014:10:42:13', '80.28.120.48', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.6.6; U; ru) Presto/2.8.75 Version/12.10 '),
(' 10/Jan/2014:10:42:29', '92.49.199.191', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20050815 Firefox/21.0 '),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /tendersystem/main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /microcms/micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 322, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /vtigercrm/graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 296, '', ''),
(' 09/Jan/2014:05:39:08', '5.250.178.198', ' GET /mod.php?mod=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /view.php?page=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /reviews.php?artid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:14', '5.250.178.198', ' GET /index.php?newlang=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:17', '5.250.178.198', ' GET /links/index.php?show=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /modules/mod.php?mod=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:21', '5.250.178.198', ' GET /?npage=1&content_dir=../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:27', '5.250.178.198', ' GET /index.php?cc=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/index.php?user_uid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /view_member.php?username=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /index2.php?artikel=3&target=./../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /frame.php?framefile=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /index.php?page=weblog&env=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:38', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /download.php?dlfilename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /download.php?filename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /Script/index.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /charts.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:00', '5.250.178.198', ' GET /index.php?file=../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /mariecms/admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 301, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /projects/TotalCalendar_2/box_display.php?box=../../../../../../../../etc/passwd%00.htm HTTP/1.0 ', 404, 317, '', ''),
(' 09/Jan/2014:05:39:07', '5.250.178.198', ' GET /newticket.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:07', '5.250.178.198', ' GET /index.php?adduser=true&lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /reviews.php?artid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /modules.php?name=Your_account&mod_file=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /path/house/myrents.php?home=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 299, '', ''),
(' 09/Jan/2014:05:39:19', '5.250.178.198', ' GET /index.php?admin&module=../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:21', '5.250.178.198', ' GET /data/modules/blog/module_pages_site.php?post=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 316, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /page.php?page=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /_conf/_php-core/common-tpl-vars.php?conf[lang]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 312, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/index.php?user_uid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:31', '5.250.178.198', ' GET admin/inc/modul.inc.php?modul=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 400, 305, '', ''),
(' 09/Jan/2014:05:39:32', '5.250.178.198', ' GET /gravity/library/setup/rpc.php?objectname=/../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 306, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /profile_send.php?pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /members.php?act=view&p=passwd&dir=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /include/init.inc.php?user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /help/help.php?module=../../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 10/Jan/2014:10:39:12', '109.149.74.124', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20100101 Firefox/20.0 '),
(' 10/Jan/2014:10:39:03', '190.130.252.108', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20120101 Firefox/19.0 '),
(' 10/Jan/2014:10:39:40', '177.41.116.223', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.8.52 Version/10.10 '),
(' 10/Jan/2014:10:39:45', '117.218.1.58', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.2.6; U; ru) Presto/2.1.173 Version/12.10 '),
(' 10/Jan/2014:10:41:00', '58.11.106.50', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.60 Version/11.10 '),
(' 10/Jan/2014:10:41:13', '110.148.179.72', ' GET /index.php/staff/academic/27.html HTTP/1.1 ', 200, 17969, ' http://www.civil.mrt.ac.lk/index.php/staff/academic/18.html ', ' Mozilla/5.0 (Windows NT 6.1; rv:26.0) Gecko/20100101 Firefox/26.0 '),
(' 10/Jan/2014:10:41:16', '111.240.237.82', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.4.7; U; ru) Presto/2.4.123 Version/11.10 '),
(' 10/Jan/2014:10:41:16', '91.202.133.0', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20110815 Firefox/21.0 '),
(' 10/Jan/2014:10:41:47', '125.230.72.137', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20130101 Firefox/23.0 '),
(' 09/Jan/2014:05:38:56', '5.250.178.198', ' GET /index.php?path=../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:38:56', '5.250.178.198', ' GET /index.php?src=../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:00', '5.250.178.198', ' GET /index.php?file=../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /mariecms/admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 301, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /box_display.php?box=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /helpdesk/index.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:07', '5.250.178.198', ' GET /index.php?adduser=true&lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /components/com_moofaq/includes/file_includer.php?gzip=0&file=/../../../../../etc/passwd%00 HTTP/1.0 ', 404, 325, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /flash/admin.php?action=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:16', '5.250.178.198', ' GET /includes/database/examples/addressbook.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 17, '', ''),
(' 09/Jan/2014:05:39:17', '5.250.178.198', ' GET /?set_lng=../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:23', '5.250.178.198', ' GET /index.php?action=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:24', '5.250.178.198', ' GET /kipper20/index.php?configfile=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:24', '5.250.178.198', ' GET /index.php?configfile=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /script/_conf/core/common-tpl-vars.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 314, '', ''),
(' 09/Jan/2014:05:39:32', '5.250.178.198', ' GET /gravity/library/setup/rpc.php?objectname=/../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 306, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /login.php?username_post=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /include/init.inc.php?user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /help/help.php?module=../../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:41', '5.250.178.198', ' GET /agb.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /anmelden.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:38:56', '5.250.178.198', ' GET /index.php?src=../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:38:56', '5.250.178.198', ' GET /index.php?path=../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /tendersystem/main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /demo/rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /view.php?page=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /dnet_admin/index.php?edit_id=2&_p=2&type=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /?language_id=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:11', '5.250.178.198', ' GET /index.php?module=admin&show=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /includes/masthead.inc.php?template_path=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:14', '5.250.178.198', ' GET /index.php?newlang=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /FunGamez/index.php?admin&module=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:20', '5.250.178.198', ' GET /index.php?cat=10_Willkommen&page=../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:21', '5.250.178.198', ' GET /?npage=1&content_dir=../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin/admin.php?act=/../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:26', '5.250.178.198', ' GET /index.php?page=users/../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:27', '5.250.178.198', ' GET /index.php?cc=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:27', '5.250.178.198', ' GET /test.php?metar=()&language=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /script/_conf/core/common-tpl-vars.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 314, '', ''),
(' 09/Jan/2014:05:39:31', '5.250.178.198', ' GET /index.php?template=../../../../etc/passwd%00 HTTP/1.0 ', 200, 7975, '', ''),
(' 09/Jan/2014:05:39:32', '5.250.178.198', ' GET /?p=cat&c=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /index.php?page=weblog&env=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /Script/index.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:41', '5.250.178.198', ' GET /index.php?module=phpManual&file=../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:41', '5.250.178.198', ' GET /agb.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /charts.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 10/Jan/2014:10:38:26', '1.168.218.169', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:09', '49.145.184.85', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:09', '86.64.143.140', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.8.8) Gecko/20100929 '),
(' 10/Jan/2014:10:41:00', '58.11.106.50', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.60 Version/11.10 '),
(' 10/Jan/2014:10:41:16', '91.202.133.0', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20110815 Firefox/21.0 '),
(' 10/Jan/2014:10:41:31', '2.135.128.91', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko/20130815 Firefox/20.0 '),
(' 10/Jan/2014:10:41:34', '2.135.128.91', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:20.0) Gecko/20130815 Firefox/20.0 '),
(' 10/Jan/2014:10:41:40', '5.250.18.205', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_1; en-US) AppleWebKit/577.16 (KHTML, like Gecko) Chrome/10.0.571.236 Safari/423.16 '),
(' 10/Jan/2014:10:41:47', '125.230.72.137', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20130101 Firefox/23.0 '),
(' 10/Jan/2014:10:42:01', '197.232.252.117', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_1_7; en-US) AppleWebKit/504.16 (KHTML, like Gecko) Chrome/10.0.418.243 Safari/427.16 '),
(' 10/Jan/2014:10:42:07', '110.148.179.72', ' GET /index.php/staff/academic/29.html HTTP/1.1 ', 200, 16522, ' http://www.civil.mrt.ac.lk/index.php/staff/academic/28.html ', ' Mozilla/5.0 (Windows NT 6.1; rv:26.0) Gecko/20100101 Firefox/26.0 '),
(' 10/Jan/2014:10:42:13', '80.28.120.48', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.6.6; U; ru) Presto/2.8.75 Version/12.10 '),
(' 09/Jan/2014:05:38:57', '5.250.178.198', ' GET /admin/install.php?lng=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:58', '5.250.178.198', ' GET /component/com_intuit/models/intuit.php?approval=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 315, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:07', '5.250.178.198', ' GET /newticket.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /dnet_admin/index.php?edit_id=2&_p=2&type=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:12', '5.250.178.198', ' GET /image.php?url=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /includes/masthead.inc.php?template_path=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /path/house/myrents.php?home=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 299, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /index.php?webpages_form=../../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /FunGamez/index.php?admin&module=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', '');
INSERT INTO `AL_LastHourLogs` (`date_time`, `clientIpAddress`, `requestedFile`, `resultCode`, `size`, `url`, `browserInfo`) VALUES
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin/admin.php?act=/../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin.php?section=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /skysilver/login.tpl.php?TplSuffix=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:27', '5.250.178.198', ' GET /test.php?metar=()&language=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:29', '5.250.178.198', ' GET /index.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:31', '5.250.178.198', ' GET /index.php?template=../../../../etc/passwd%00 HTTP/1.0 ', 200, 7975, '', ''),
(' 09/Jan/2014:05:39:32', '5.250.178.198', ' GET /?p=cat&c=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /header_new_messages.php?pun_user[g_pm]=1&pun_config[o_pms_enabled]=x&pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /search.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /members.php?act=view&p=passwd&dir=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:41', '5.250.178.198', ' GET /index.php?module=phpManual&file=../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /angemeldet.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 291, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /external_vote.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:57', '5.250.178.198', ' GET /admin/install.php?lng=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /index.php?webpages_form=../../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:16', '5.250.178.198', ' GET /includes/database/examples/addressbook.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 17, '', ''),
(' 09/Jan/2014:05:39:17', '5.250.178.198', ' GET /links/index.php?show=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:17', '5.250.178.198', ' GET /?set_lng=../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /modules/mod.php?mod=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:22', '5.250.178.198', ' GET /admin.php?section=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:23', '5.250.178.198', ' GET /index.php?action=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:24', '5.250.178.198', ' GET /kipper20/index.php?configfile=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:24', '5.250.178.198', ' GET /index.php?configfile=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:29', '5.250.178.198', ' GET /index.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /search.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /index2.php?artikel=3&target=./../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /frame.php?framefile=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /phpsmartcom/index.php?p=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:38', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /download.php?dlfilename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /download.php?filename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /anmelden.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /external_vote.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 294, '', ''),
(' 10/Jan/2014:10:39:06', '190.130.252.108', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20120101 Firefox/19.0 '),
(' 10/Jan/2014:10:38:27', '1.168.218.169', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:39:41', '177.41.116.223', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.8.52 Version/10.10 '),
(' 10/Jan/2014:10:40:08', '49.145.184.85', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:48', '89.66.241.96', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:19.0) Gecko/20080815 Firefox/19.0 '),
(' 10/Jan/2014:10:40:54', '110.148.179.72', ' GET /index.php/staff/academic/18.html HTTP/1.1 ', 200, 22760, ' http://www.civil.mrt.ac.lk/index.php/staff/academic.html ', ' Mozilla/5.0 (Windows NT 6.1; rv:26.0) Gecko/20100101 Firefox/26.0 '),
(' 10/Jan/2014:10:40:55', '111.240.237.82', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:05', '120.63.148.49', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_2_1; en-US) AppleWebKit/563.16 (KHTML, like Gecko) Chrome/10.0.560.283 Safari/532.16 '),
(' 10/Jan/2014:10:41:05', '218.102.183.142', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:06', '120.63.148.49', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_2_1; en-US) AppleWebKit/563.16 (KHTML, like Gecko) Chrome/10.0.560.283 Safari/532.16 '),
(' 10/Jan/2014:10:41:06', '218.102.183.142', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:25', '91.202.133.0', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20120101 Firefox/20.0 '),
(' 10/Jan/2014:10:41:25', '91.202.133.0', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20120101 Firefox/20.0 '),
(' 10/Jan/2014:10:41:41', '5.250.18.205', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_1; en-US) AppleWebKit/577.16 (KHTML, like Gecko) Chrome/10.0.571.236 Safari/423.16 '),
(' 10/Jan/2014:10:42:03', '174.127.66.146', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.7.202 Version/11.10 '),
(' 10/Jan/2014:10:42:04', '174.127.66.146', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.7.202 Version/11.10 '),
(' 10/Jan/2014:10:42:30', '110.168.95.183', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.3.5; U; ru) Presto/2.7.174 Version/11.10 '),
(' 10/Jan/2014:10:42:30', '92.49.199.191', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20050815 Firefox/21.0 '),
(' 09/Jan/2014:05:38:58', '5.250.178.198', ' GET /index.php?include_file=../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /forum/index.php?app=core&module=global&section=register&any=?section=../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 313, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /index.php?option=com_agora&task=profile&page=avatars&action=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /projects/TotalCalendar_2/box_display.php?box=../../../../../../../../etc/passwd%00.htm HTTP/1.0 ', 404, 317, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /demo/rempass.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /modules.php?name=Your_account&mod_file=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /?language_id=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:11', '5.250.178.198', ' GET /index.php?module=admin&show=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:19', '5.250.178.198', ' GET /index.php?admin&module=../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:20', '5.250.178.198', ' GET /index.php?cat=10_Willkommen&page=../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:21', '5.250.178.198', ' GET /data/modules/blog/module_pages_site.php?post=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 316, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /page.php?page=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:26', '5.250.178.198', ' GET /index.php?page=users/../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /_conf/_php-core/common-tpl-vars.php?conf[lang]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 312, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/?user_uid=1&op=forms&form=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:31', '5.250.178.198', ' GET admin/inc/modul.inc.php?modul=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 400, 305, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /profile_send.php?pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /phpsmartcom/index.php?p=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:38:58', '5.250.178.198', ' GET /component/com_intuit/models/intuit.php?approval=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 315, '', ''),
(' 09/Jan/2014:05:38:58', '5.250.178.198', ' GET /index.php?include_file=../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /forum/index.php?app=core&module=global&section=register&any=?section=../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /microcms/micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 322, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 313, '', ''),
(' 09/Jan/2014:05:39:03', '5.250.178.198', ' GET /index.php?option=com_agora&task=profile&page=avatars&action=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /box_display.php?box=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /vtigercrm/graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 296, '', ''),
(' 09/Jan/2014:05:39:06', '5.250.178.198', ' GET /helpdesk/index.php?lng=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 295, '', ''),
(' 09/Jan/2014:05:39:08', '5.250.178.198', ' GET /mod.php?mod=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:12', '5.250.178.198', ' GET /image.php?url=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /components/com_moofaq/includes/file_includer.php?gzip=0&file=/../../../../../etc/passwd%00 HTTP/1.0 ', 404, 325, '', ''),
(' 09/Jan/2014:05:39:15', '5.250.178.198', ' GET /flash/admin.php?action=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /skysilver/login.tpl.php?TplSuffix=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/?user_uid=1&op=forms&form=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /header_new_messages.php?pun_user[g_pm]=1&pun_config[o_pms_enabled]=x&pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 300, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /view_member.php?username=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /login.php?username_post=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:42', '5.250.178.198', ' GET /angemeldet.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 291, '', ''),
(' 10/Jan/2014:10:39:11', '109.149.74.124', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20100101 Firefox/20.0 '),
(' 10/Jan/2014:10:39:45', '117.218.1.58', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.2.6; U; ru) Presto/2.1.173 Version/12.10 '),
(' 10/Jan/2014:10:39:54', '108.181.43.24', ' GET /conference/raghu/9.pdf HTTP/1.1 ', 200, 679041, ' http://www.google.ca/url?sa=t&rct=j&q=&esrc=s&frm=1&source=web&cd=12&ved=0CGMQFjAL&url=http%3A%2F%2Fwww.civil.mrt.ac.lk%2Fconference%2Fraghu%2F9.pdf&ei=k4DPUtKuCcX6oASQ-ILIDA&usg=AFQjCNGoTWOun6ftpSQDQHe_5Xfl1CXfrQ&cad=rja ', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0) '),
(' 10/Jan/2014:10:40:09', '86.64.143.140', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.8.8) Gecko/20100929 '),
(' 10/Jan/2014:10:40:13', '37.230.86.128', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:40:39', '190.234.106.198', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.45 Version/12.10 '),
(' 10/Jan/2014:10:40:40', '190.234.106.198', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.4.45 Version/12.10 '),
(' 10/Jan/2014:10:40:49', '89.66.241.96', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:19.0) Gecko/20080815 Firefox/19.0 '),
(' 10/Jan/2014:10:40:55', '111.240.237.82', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:15', '111.240.237.82', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.4.7; U; ru) Presto/2.4.123 Version/11.10 '),
(' 10/Jan/2014:10:41:29', '37.230.86.128', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0) '),
(' 10/Jan/2014:10:41:52', '110.148.179.72', ' GET /index.php/staff/academic/28.html HTTP/1.1 ', 200, 16649, ' http://www.civil.mrt.ac.lk/index.php/staff/academic/27.html ', ' Mozilla/5.0 (Windows NT 6.1; rv:26.0) Gecko/20100101 Firefox/26.0 '),
(' 10/Jan/2014:10:42:02', '197.232.252.117', ' POST /administrator/index.php HTTP/1.0 ', 200, 4365, ' www.civil.mrt.ac.lk/administrator/index.php ', ' Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_1_7; en-US) AppleWebKit/504.16 (KHTML, like Gecko) Chrome/10.0.418.243 Safari/427.16 '),
(' 10/Jan/2014:10:42:13', '80.28.120.48', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Opera/9.80 (Macintosh; Intel Mac OS X 10.6.6; U; ru) Presto/2.8.75 Version/12.10 '),
(' 10/Jan/2014:10:42:29', '92.49.199.191', ' GET /administrator/index.php HTTP/1.0 ', 200, 4143, '', ' Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:21.0) Gecko/20050815 Firefox/21.0 '),
(' 09/Jan/2014:05:38:59', '5.250.178.198', ' GET /tendersystem/main.php?module=session&function=../../../../../../../../etc/passwd%00.html HTTP/1.0 ', 404, 298, '', ''),
(' 09/Jan/2014:05:39:02', '5.250.178.198', ' GET /microcms/micro_cms_files/microcms-include.php?microcms_path=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 322, '', ''),
(' 09/Jan/2014:05:39:05', '5.250.178.198', ' GET /vtigercrm/graph.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 296, '', ''),
(' 09/Jan/2014:05:39:08', '5.250.178.198', ' GET /mod.php?mod=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 284, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /view.php?page=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /reviews.php?artid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:14', '5.250.178.198', ' GET /index.php?newlang=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:17', '5.250.178.198', ' GET /links/index.php?show=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:18', '5.250.178.198', ' GET /modules/mod.php?mod=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:21', '5.250.178.198', ' GET /?npage=1&content_dir=../../../../etc/passwd%00 HTTP/1.0 ', 200, 27021, '', ''),
(' 09/Jan/2014:05:39:27', '5.250.178.198', ' GET /index.php?cc=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/index.php?user_uid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:34', '5.250.178.198', ' GET /view_member.php?username=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 292, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /index2.php?artikel=3&target=./../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 1389, '', ''),
(' 09/Jan/2014:05:39:36', '5.250.178.198', ' GET /frame.php?framefile=../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 286, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /index.php?page=weblog&env=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:38', '5.250.178.198', ' GET /admin/includes/footer.php?row_secure[account_theme]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 302, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /download.php?dlfilename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /download.php?filename=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 289, '', ''),
(' 09/Jan/2014:05:39:40', '5.250.178.198', ' GET /Script/index.php?module=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:43', '5.250.178.198', ' GET /charts.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 287, '', ''),
(' 09/Jan/2014:05:39:00', '5.250.178.198', ' GET /index.php?file=../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:01', '5.250.178.198', ' GET /mariecms/admin/index.php?mod=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 301, '', ''),
(' 09/Jan/2014:05:39:04', '5.250.178.198', ' GET /projects/TotalCalendar_2/box_display.php?box=../../../../../../../../etc/passwd%00.htm HTTP/1.0 ', 404, 317, '', ''),
(' 09/Jan/2014:05:39:07', '5.250.178.198', ' GET /newticket.php?lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', ''),
(' 09/Jan/2014:05:39:07', '5.250.178.198', ' GET /index.php?adduser=true&lang=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:09', '5.250.178.198', ' GET /reviews.php?artid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:10', '5.250.178.198', ' GET /modules.php?name=Your_account&mod_file=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:13', '5.250.178.198', ' GET /path/house/myrents.php?home=../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 299, '', ''),
(' 09/Jan/2014:05:39:19', '5.250.178.198', ' GET /index.php?admin&module=../../../../../etc/passwd%00 HTTP/1.0 ', 200, 27030, '', ''),
(' 09/Jan/2014:05:39:21', '5.250.178.198', ' GET /data/modules/blog/module_pages_site.php?post=../../../../../etc/passwd%00 HTTP/1.0 ', 404, 316, '', ''),
(' 09/Jan/2014:05:39:25', '5.250.178.198', ' GET /page.php?page=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 285, '', ''),
(' 09/Jan/2014:05:39:28', '5.250.178.198', ' GET /_conf/_php-core/common-tpl-vars.php?conf[lang]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 312, '', ''),
(' 09/Jan/2014:05:39:30', '5.250.178.198', ' GET /webcaf/index.php?user_uid=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:31', '5.250.178.198', ' GET admin/inc/modul.inc.php?modul=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 400, 305, '', ''),
(' 09/Jan/2014:05:39:32', '5.250.178.198', ' GET /gravity/library/setup/rpc.php?objectname=/../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 306, '', ''),
(' 09/Jan/2014:05:39:33', '5.250.178.198', ' GET /profile_send.php?pun_user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 293, '', ''),
(' 09/Jan/2014:05:39:35', '5.250.178.198', ' GET /members.php?act=view&p=passwd&dir=../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 288, '', ''),
(' 09/Jan/2014:05:39:37', '5.250.178.198', ' GET /include/init.inc.php?user[language]=../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 297, '', ''),
(' 09/Jan/2014:05:39:39', '5.250.178.198', ' GET /help/help.php?module=../../../../../../../../../../../../../etc/passwd%00 HTTP/1.0 ', 404, 290, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Bandwith`
--

CREATE TABLE IF NOT EXISTS `Bandwith` (
  `Incoming Bandwidth` varchar(10) NOT NULL,
  `Outgoing Bandwidth` varchar(10) NOT NULL,
  `Average Bandwidth per Day` varchar(10) NOT NULL,
  `Average bandwidth per hour` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Bandwith`
--

INSERT INTO `Bandwith` (`Incoming Bandwidth`, `Outgoing Bandwidth`, `Average Bandwidth per Day`, `Average bandwidth per hour`) VALUES
('4000', '2735', '5234', '220');

-- --------------------------------------------------------

--
-- Table structure for table `dashboards`
--

CREATE TABLE IF NOT EXISTS `dashboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dashboards`
--

INSERT INTO `dashboards` (`id`, `user_id`, `name`, `created_at`) VALUES
(1, 1, 'Dashboard-01', '2015-09-24 21:14:20'),
(2, 1, 'Dashboard-02', '2015-09-24 21:14:53'),
(3, 1, 'Dashboard-03', '2015-09-24 21:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE IF NOT EXISTS `dashboard_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dashboard_id` int(11) NOT NULL,
  `widget_id` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `dashboard_id`, `widget_id`, `state`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `DataAccessSummary`
--

CREATE TABLE IF NOT EXISTS `DataAccessSummary` (
  `webSiteUrl` varchar(100) NOT NULL,
  `totalAccessed` int(11) DEFAULT NULL,
  PRIMARY KEY (`webSiteUrl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DataAccessSummary`
--

INSERT INTO `DataAccessSummary` (`webSiteUrl`, `totalAccessed`) VALUES
('192.248.15.224', 14799392),
('blogspot.com', 2532914),
('filestream.me', 885659745),
('gamefront.com', 1356399337),
('googlevideo.com', -1472289999),
('llnwd.net', 11314013),
('mozilla.net', 8717753),
('ooyala.com', 2742464),
('popcap.com', 3077818),
('soundsonline.com', 55038312),
('trafficfactory.biz', 5943241),
('wsimg.com', 4542412),
('xvideos.com', 1418562022),
('ytimg.com', 10415392),
('zoom.lk', 4513019);

-- --------------------------------------------------------

--
-- Table structure for table `HitsSummary`
--

CREATE TABLE IF NOT EXISTS `HitsSummary` (
  `Average Hits Per Day` varchar(10) NOT NULL,
  `Failed Requests` varchar(10) NOT NULL,
  `Succeeded Requests` varchar(10) NOT NULL,
  `Highest Requested Site` varchar(10) NOT NULL,
  `Id` int(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `HitsSummary`
--

INSERT INTO `HitsSummary` (`Average Hits Per Day`, `Failed Requests`, `Succeeded Requests`, `Highest Requested Site`, `Id`) VALUES
('150000', '2000', '12000', 'www.google', 1);

-- --------------------------------------------------------

--
-- Table structure for table `PL_AccessSummary`
--

CREATE TABLE IF NOT EXISTS `PL_AccessSummary` (
  `webSiteUrl` text NOT NULL,
  `requestCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PL_AccessSummary`
--

INSERT INTO `PL_AccessSummary` (`webSiteUrl`, `requestCount`) VALUES
('stackoverflow.com', 1),
('google-analytics.com', 7),
('chartbeat.net', 2),
('google.lk', 1),
('javaprogrammingforums.com', 1),
('stackoverflow.com', 2),
('google-analytics.com', 24),
('chartbeat.net', 3),
('google.lk', 6),
('javaprogrammingforums.com', 1),
('stackoverflow.com', 2),
('google-analytics.com', 24),
('chartbeat.net', 3),
('google.lk', 6),
('javaprogrammingforums.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `PL_DailySummary`
--

CREATE TABLE IF NOT EXISTS `PL_DailySummary` (
  `accessDate` text NOT NULL,
  `total404Count` int(11) DEFAULT NULL,
  `total200Count` int(11) DEFAULT NULL,
  `totalVisitors` int(11) DEFAULT NULL,
  `totalDataAccessed` int(11) DEFAULT NULL,
  `totalRequests` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PL_DailySummary`
--

INSERT INTO `PL_DailySummary` (`accessDate`, `total404Count`, `total200Count`, `totalVisitors`, `totalDataAccessed`, `totalRequests`) VALUES
('2014-03-26', 0, 9, 24, 2053305, 220),
('2014-03-27', 0, 10, 27, 2053305, 235),
('2014-03-28', 5, 20, 30, 2053309, 210);

-- --------------------------------------------------------

--
-- Table structure for table `PL_DataAccessSummary`
--

CREATE TABLE IF NOT EXISTS `PL_DataAccessSummary` (
  `webSiteUrl` text NOT NULL,
  `totalAccessed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PL_DataAccessSummary`
--

INSERT INTO `PL_DataAccessSummary` (`webSiteUrl`, `totalAccessed`) VALUES
('stackoverflow.com', 277540),
('google-analytics.com', 44946),
('chartbeat.net', 56831),
('google.lk', 34431),
('javaprogrammingforums.com', 769740),
('stackoverflow.com', 435058),
('google-analytics.com', 235694),
('chartbeat.net', 113112),
('google.lk', 114831),
('javaprogrammingforums.com', 1154610);

-- --------------------------------------------------------

--
-- Table structure for table `PL_LastHourLogs`
--

CREATE TABLE IF NOT EXISTS `PL_LastHourLogs` (
  `date_time` text NOT NULL,
  `clientIpAddress` text NOT NULL,
  `resultCodes` text NOT NULL,
  `size` int(11) NOT NULL,
  `requestMethod` text NOT NULL,
  `fullUrl` text NOT NULL,
  `user` text NOT NULL,
  `hierarchyCode` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PL_LastHourLogs`
--

INSERT INTO `PL_LastHourLogs` (`date_time`, `clientIpAddress`, `resultCodes`, `size`, `requestMethod`, `fullUrl`, `user`, `hierarchyCode`, `type`) VALUES
('2014-03-26 14:33:20 GMT-04:00', '192.248.11.91', 'TCP_MISS/200', 275, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/54.225.109.205', 'image/gif'),
('2014-03-26 14:34:14 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/206', 3433, 'GET', 'http://www.javaprogrammingforums.com/clientscript/post_thanks.js', '-', 'HIER_NONE/-', 'application/javascript'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/200', 85634, 'GET', 'http://www.javaprogrammingforums.com/css.php?', '-', 'HIER_NONE/-', 'text/css'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/206', 6107, 'GET', 'http://www.javaprogrammingforums.com/clientscript/vbulletin_md5.js?', '-', 'HIER_NONE/-', 'application/javascript'),
('2014-03-26 14:34:21 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 111828, 'GET', 'http://www.javaprogrammingforums.com/java-networking/16296-socket-programming-over-internet.html', '-', 'HIER_DIRECT/198.57.186.242', 'text/html'),
('2014-03-26 14:52:40 GMT-04:00', '10.10.2.212', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.249', 'image/gif'),
('2014-03-26 14:52:40 GMT-04:00', '10.10.2.212', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.249', 'image/gif'),
('2014-03-26 14:30:55 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:31:27 GMT-04:00', '10.9.17.81', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.250', 'image/gif'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/200', 8408, 'GET', 'http://www.javaprogrammingforums.com/css.php?', '-', 'HIER_NONE/-', 'text/css'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/206', 6107, 'GET', 'http://www.javaprogrammingforums.com/clientscript/vbulletin_md5.js?', '-', 'HIER_NONE/-', 'application/javascript'),
('2014-03-26 14:34:21 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 111828, 'GET', 'http://www.javaprogrammingforums.com/java-networking/16296-socket-programming-over-internet.html', '-', 'HIER_DIRECT/198.57.186.242', 'text/html'),
('2014-03-26 15:00:15 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.120', 'image/x-icon'),
('2014-03-26 15:02:59 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.120', 'image/x-icon'),
('2014-03-26 15:03:04 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.120', 'image/x-icon'),
('2014-03-26 15:03:06 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.120', 'image/x-icon'),
('2014-03-26 15:03:09 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.120', 'image/x-icon'),
('2014-03-26 15:03:12 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.120', 'image/x-icon'),
('2014-03-26 15:24:47 GMT-04:00', '192.248.11.91', 'TCP_MISS/502', 4053, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/107.20.255.194', 'text/html'),
('2014-03-26 15:25:27 GMT-04:00', '192.248.11.91', 'TCP_MISS/502', 4250, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/107.20.255.194', 'text/html'),
('2014-03-26 15:27:29 GMT-04:00', '10.10.61.213', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.252', 'image/gif'),
('2014-03-26 15:27:37 GMT-04:00', '192.248.11.91', 'TCP_MISS/502', 4247, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/23.21.216.179', 'text/html'),
('2014-03-26 15:48:48 GMT-04:00', '10.10.61.213', 'TCP_MISS/200', 275, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/23.21.82.120', 'image/gif'),
('2014-03-26 14:30:55 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:31:53 GMT-04:00', '10.9.17.81', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.251', 'image/gif'),
('2014-03-26 14:34:16 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:34:22 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:34:25 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:42:19 GMT-04:00', '10.10.2.212', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.242', 'image/gif'),
('2014-03-26 14:30:57 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:34:16 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:34:18 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/200', 44916, 'GET', 'http://www.javaprogrammingforums.com/css.php?', '-', 'HIER_NONE/-', 'text/css'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/200', 85634, 'GET', 'http://www.javaprogrammingforums.com/css.php?', '-', 'HIER_NONE/-', 'text/css'),
('2014-03-26 14:34:22 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:34:25 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:42:19 GMT-04:00', '10.10.2.212', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.242', 'image/gif'),
('2014-03-26 14:47:19 GMT-04:00', '192.248.11.91', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.241', 'image/gif'),
('2014-03-26 14:59:22 GMT-04:00', '10.10.61.213', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.239', 'image/gif'),
('2014-03-26 15:03:00 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 16233, 'GET', 'http://www.google-analytics.com/ga.js', '-', 'HIER_DIRECT/192.248.3.239', 'text/javascript'),
('2014-03-26 15:09:54 GMT-04:00', '10.8.49.173', 'TCP_MISS/200', 16233, 'GET', 'http://www.google-analytics.com/ga.js', '-', 'HIER_DIRECT/192.248.3.249', 'text/javascript'),
('2014-03-26 15:10:27 GMT-04:00', '10.8.49.173', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.240', 'image/gif'),
('2014-03-26 15:24:47 GMT-04:00', '192.248.11.91', 'TCP_MISS/502', 4247, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/107.20.255.194', 'text/html'),
('2014-03-26 15:24:47 GMT-04:00', '192.248.11.91', 'TCP_MISS/502', 4165, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/107.20.255.194', 'text/html'),
('2014-03-26 15:26:47 GMT-04:00', '192.248.11.91', 'TCP_MISS/502', 4234, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/54.243.110.97', 'text/html'),
('2014-03-26 15:49:55 GMT-04:00', '10.10.61.213', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.248', 'image/gif'),
('2014-03-26 14:30:57 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:31:27 GMT-04:00', '10.9.17.81', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.250', 'image/gif'),
('2014-03-26 14:34:17 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 82284, 'GET', 'http://stackoverflow.com/questions/2078018/java-sockets-the-internet', '-', 'HIER_DIRECT/198.252.206.140', 'text/html'),
('2014-03-26 14:34:18 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/200', 8408, 'GET', 'http://www.javaprogrammingforums.com/css.php?', '-', 'HIER_NONE/-', 'text/css'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/206', 9892, 'GET', 'http://www.javaprogrammingforums.com/JPF_logo.png', '-', 'HIER_NONE/-', 'image/png'),
('2014-03-26 14:36:07 GMT-04:00', '192.248.11.91', 'TCP_MISS/200', 275, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/54.243.165.31', 'image/gif'),
('2014-03-26 14:37:09 GMT-04:00', '192.248.11.91', 'TCP_MISS/200', 275, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/54.243.165.170', 'image/gif'),
('2014-03-26 14:42:19 GMT-04:00', '10.10.2.212', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.242', 'image/gif'),
('2014-03-26 14:30:51 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:31:53 GMT-04:00', '10.9.17.81', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.251', 'image/gif'),
('2014-03-26 14:34:14 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:34:15 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 56486, 'GET', 'http://stackoverflow.com/questions/14810417/will-socket-programming-in-java-work-over-internet', '-', 'HIER_DIRECT/198.252.206.140', 'text/html'),
('2014-03-26 14:34:17 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 82284, 'GET', 'http://stackoverflow.com/questions/2078018/java-sockets-the-internet', '-', 'HIER_DIRECT/198.252.206.140', 'text/html'),
('2014-03-26 14:36:07 GMT-04:00', '192.248.11.91', 'TCP_MISS/200', 275, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/54.243.165.31', 'image/gif'),
('2014-03-26 14:37:01 GMT-04:00', '10.8.49.171', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.253', 'image/gif'),
('2014-03-26 14:42:19 GMT-04:00', '10.10.2.212', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.242', 'image/gif'),
('2014-03-26 15:05:12 GMT-04:00', '10.10.61.213', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.249', 'image/gif'),
('2014-03-26 15:15:33 GMT-04:00', '10.8.49.171', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.241', 'image/gif'),
('2014-03-26 15:25:47 GMT-04:00', '192.248.11.91', 'TCP_MISS/502', 4233, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/107.20.255.194', 'text/html'),
('2014-03-26 15:26:07 GMT-04:00', '192.248.11.91', 'TCP_MISS/502', 4250, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/54.243.110.97', 'text/html'),
('2014-03-26 15:26:27 GMT-04:00', '192.248.11.91', 'TCP_MISS/502', 4251, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/54.243.110.97', 'text/html'),
('2014-03-26 15:27:27 GMT-04:00', '192.248.11.91', 'TCP_MISS/502', 4251, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/23.21.216.179', 'text/html'),
('2014-03-26 15:27:37 GMT-04:00', '192.248.11.91', 'TCP_MISS/502', 4224, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/23.21.216.179', 'text/html'),
('2014-03-26 15:36:20 GMT-04:00', '10.8.49.171', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.242', 'image/gif'),
('2014-03-26 14:30:51 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.119', 'image/x-icon'),
('2014-03-26 14:34:15 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 56486, 'GET', 'http://stackoverflow.com/questions/14810417/will-socket-programming-in-java-work-over-internet', '-', 'HIER_DIRECT/198.252.206.140', 'text/html'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/206', 52387, 'GET', 'http://www.javaprogrammingforums.com/clientscript/vbulletin-core.js?', '-', 'HIER_NONE/-', 'application/javascript'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/200', 44916, 'GET', 'http://www.javaprogrammingforums.com/css.php?', '-', 'HIER_NONE/-', 'text/css'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/206', 62265, 'GET', 'http://www.javaprogrammingforums.com/clientscript/yui/yuiloader-dom-event/yuiloader-dom-event.js?', '-', 'HIER_NONE/-', 'application/javascript'),
('2014-03-26 14:37:01 GMT-04:00', '10.8.49.171', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.253', 'image/gif'),
('2014-03-26 14:47:19 GMT-04:00', '192.248.11.91', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.241', 'image/gif'),
('2014-03-26 14:33:20 GMT-04:00', '192.248.11.91', 'TCP_MISS/200', 275, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/54.225.109.205', 'image/gif'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/206', 3433, 'GET', 'http://www.javaprogrammingforums.com/clientscript/post_thanks.js', '-', 'HIER_NONE/-', 'application/javascript'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/206', 52387, 'GET', 'http://www.javaprogrammingforums.com/clientscript/vbulletin-core.js?', '-', 'HIER_NONE/-', 'application/javascript'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/206', 9892, 'GET', 'http://www.javaprogrammingforums.com/JPF_logo.png', '-', 'HIER_NONE/-', 'image/png'),
('2014-03-26 14:34:20 GMT-04:00', '10.8.144.130', 'TCP_HIT/206', 62265, 'GET', 'http://www.javaprogrammingforums.com/clientscript/yui/yuiloader-dom-event/yuiloader-dom-event.js?', '-', 'HIER_NONE/-', 'application/javascript'),
('2014-03-26 14:37:09 GMT-04:00', '192.248.11.91', 'TCP_MISS/200', 275, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/54.243.165.170', 'image/gif'),
('2014-03-26 14:52:40 GMT-04:00', '10.10.2.212', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.249', 'image/gif'),
('2014-03-26 14:52:40 GMT-04:00', '10.10.2.212', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.249', 'image/gif'),
('2014-03-26 15:01:47 GMT-04:00', '10.8.144.130', 'TCP_MISS/200', 1497, 'GET', 'http://www.google.lk/favicon.ico', '-', 'HIER_DIRECT/74.125.236.120', 'image/x-icon'),
('2014-03-26 15:20:42 GMT-04:00', '192.248.11.91', 'TCP_MISS/200', 520, 'GET', 'http://www.google-analytics.com/__utm.gif?', '-', 'HIER_DIRECT/192.248.3.245', 'image/gif'),
('2014-03-26 15:25:07 GMT-04:00', '192.248.11.91', 'TCP_MISS/502', 4250, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/107.20.255.194', 'text/html'),
('2014-03-26 15:27:07 GMT-04:00', '192.248.11.91', 'TCP_MISS/502', 4251, 'GET', 'http://ping.chartbeat.net/ping?', '-', 'HIER_DIRECT/23.21.216.179', 'text/html');

-- --------------------------------------------------------

--
-- Table structure for table `ThreatsSummary`
--

CREATE TABLE IF NOT EXISTS `ThreatsSummary` (
  `Average Threats Per Day` varchar(10) NOT NULL,
  `Average Threats Per Visit` varchar(10) NOT NULL,
  `Average Threat Per Hour` varchar(10) NOT NULL,
  `Average Threat Per Request` varchar(10) NOT NULL,
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ThreatsSummary`
--

INSERT INTO `ThreatsSummary` (`Average Threats Per Day`, `Average Threats Per Visit`, `Average Threat Per Hour`, `Average Threat Per Request`, `Id`) VALUES
('33', '10', '1', '15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Charith', 'Lakmina', 'charithhewage@gmail.com', '4c93008615c2d041e33ebac605d14b5b', '1', '2015-09-24 21:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `state` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `title`, `description`, `state`) VALUES
(1, 'access_summary', 'This is a sample widget', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
