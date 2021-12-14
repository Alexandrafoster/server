-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2021 at 04:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profilepic` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `password`, `profilepic`, `createdAt`, `updatedAt`) VALUES
(1, 'Misbah.M.Siddiqui', 'misbah', 'misbahmsiddiqui@gmail.com', '$2a$08$OlFSd1e8KvZebS9ErsGE/e.O00WecN4ZW6Xpuy0lsuwN9U1FYd6FW', 'misbah.png', '2021-11-28 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbcaption` varchar(255) DEFAULT NULL,
  `headerimage` varchar(255) DEFAULT NULL,
  `headerheading` varchar(255) DEFAULT NULL,
  `headercontent` longtext DEFAULT NULL,
  `bodyheading` varchar(255) DEFAULT NULL,
  `bodycontent` longtext DEFAULT NULL,
  `bodyheading2` varchar(255) DEFAULT NULL,
  `bodycontent2` longtext DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `thumbnail`, `thumbcaption`, `headerimage`, `headerheading`, `headercontent`, `bodyheading`, `bodycontent`, `bodyheading2`, `bodycontent2`, `createdAt`, `updatedAt`) VALUES
(19, '1638226827979-Thumbnail 1.jpg', 'Japan Itinerary for First-Time Visitors.', '1638226827982-P1.jpg', 'Itinerary for First-Time Visitors to Japan: 4 to 21 Days (Ultimate Travel Guide)', 'I\'ve already been to all seven continents, and Japan is one of the nations that I will never weary of seeing again and again! (Itinerary for Japan)', 'Itinerary for First-Time Visitors to Japan: 4 to 21 Days (Ultimate Travel Guide)     ', 'I\'ve already been all seven continents, and Japan is one of the nations that I will never weary of seeing again and again! (Itinerary for Japan)  Japan\'s old traditions wonderfully combined with its lively modernity as a timeless destination have always captivated me. Not to add the beautiful scenery and delicious cuisine, and I\'m confident that even if I spend my whole life discovering it, I\'ll just touch the surface.  With that stated, putting together a Japan itinerary may appear intimidating - but it isn\'t! Although the nation is huge, it is feasible to make the most of whatever time you have.', 'Itinerary for First-Time Visitors to Japan: 4 to 21 Days (Ultimate Travel Guide)     ', 'I\'ve already been all seven continents, and Japan is one of the nations that I will never weary of seeing again and again! (Itinerary for Japan)  Japan\'s old traditions wonderfully combined with its lively modernity as a timeless destination have always captivated me. Not to add the beautiful scenery and delicious cuisine, and I\'m confident that even if I spend my whole life discovering it, I\'ll just touch the surface.  With that stated, putting together a Japan itinerary may appear intimidating - but it isn\'t! Although the nation is huge, it is feasible to make the most of whatever time you have.', '2021-11-29 23:00:27', '2021-11-29 23:00:27'),
(20, '1638227572912-Thumbnail 2.jpg', 'Explore Central Japan Region.', '1638227572915-P2.jpg', 'The Takayama-Hokuriku Area Tourist Pass: A Winter Itinerary Guide is a great way to see Central Japan.', 'Japan holds several amazing destinations year-round, and if there\'s one area you shouldn\'t miss, it would be the Central Japan Region, also called Chubu Region.', 'The Takayama-Hokuriku Area Tourist Pass: A Winter Itinerary Guide is a great way to see Central Japan.', 'Japan holds several amazing destinations year-round, and if there\'s one area you shouldn\'t miss, it would be the Central Japan Region, also called Chubu Region. With such a great expanse, you\'re sure to find an abundance of natural sights, unique activities, as well as delicious food in every season; plus, you can even easily plan your next winter holiday by using a Takayama Hokuriku Area Tourist Pass!  After all, this pass will grant you unlimited rides on JR local and limited express trains, the Hokuriku Shinkansen, and buses along the route in the Central Region for five (5) consecutive days, thereby giving you the chance to explore a wide range of attractions in different prefectures. And for this blog post, I will introduce the areas covered in the Takayama Hokuriku Area Tourist Pass: Fukui Prefecture, Gifu Prefecture, Ishikawa Prefecture, and Toyama Prefectures.', 'The Takayama-Hokuriku Area Tourist Pass: A Winter Itinerary Guide is a great way to see Central Japan.', 'Japan holds several amazing destinations year-round, and if there\'s one area you shouldn\'t miss, it would be the Central Japan Region, also called Chubu Region. With such a great expanse, you\'re sure to find an abundance of natural sights, unique activities, as well as delicious food in every season; plus, you can even easily plan your next winter holiday by using a Takayama Hokuriku Area Tourist Pass!  After all, this pass will grant you unlimited rides on JR local and limited express trains, the Hokuriku Shinkansen, and buses along the route in the Central Region for five (5) consecutive days, thereby giving you the chance to explore a wide range of attractions in different prefectures. And for this blog post, I will introduce the areas covered in the Takayama Hokuriku Area Tourist Pass: Fukui Prefecture, Gifu Prefecture, Ishikawa Prefecture, and Toyama Prefectures.', '2021-11-29 23:12:52', '2021-11-29 23:12:52'),
(21, '1638227989714-Thumbnail 3.jpg', 'The Clement Retreats Rajasthan with Vilasa Luxury', '1638227989716-P3.jpg', 'The Clement Retreats Rajasthan with Vilasa Luxury', 'With domestic travel booming in a big way because of covid, more and more people, including myself, are always on the lookout for those untouched, well-kept secret places that we can escape to away from the city and discover more about the land that we live in', 'The Clement Retreats Rajasthan with Vilasa Luxury', 'With domestic travel booming in a big way because of covid, more and more people, including myself, are always on the lookout for those untouched, well-kept secret places that we can escape from the city and discover more about the land that we live in. Which is how I discovered Vilasa Luxury, a travel portal that creates and curates bespoke travel itineraries just for you that cater to your tastes and travel preferences. I was looking at discovering more about Rajasthan even though I\'ve visited it so many times before, and boy did they deliver! My friend and I had an amazing road trip from Delhi to Dera Village, Kalakho and then to Dera Dune, Jamba. We got to see Rajasthan in a completely new light – right from the warmth of the people, to the middle-of-nowhere locations we got to see, to the food we ate, and of course, the brilliant experiences we were whisked away on. We came back so refreshed!', 'The Clement Retreats Rajasthan with Vilasa Luxury', 'With domestic travel booming in a big way because of covid, more and more people, including myself, are always on the lookout for those untouched, well-kept secret places that we can escape from the city and discover more about the land that we live in. Which is how I discovered Vilasa Luxury, a travel portal that creates and curates bespoke travel itineraries just for you that cater to your tastes and travel preferences. I was looking at discovering more about Rajasthan even though I\'ve visited it so many times before, and boy did they deliver! My friend and I had an amazing road trip from Delhi to Dera Village, Kalakho and then to Dera Dune, Jamba. We got to see Rajasthan in a completely new light – right from the warmth of the people, to the middle-of-nowhere locations we got to see, to the food we ate, and of course, the brilliant experiences we were whisked away on. We came back so refreshed!', '2021-11-29 23:19:49', '2021-11-29 23:19:49'),
(22, '1638228123706-Thumbnail 4.jpg', 'First Outdoor Shoot Post Covid-19 Lockdown', '1638228123707-P4.jpg', 'First Outdoor Shoot Post Covid-19 Lockdown', 'Since the Coronavirus wreaked havoc on our life, it\'s been a while since I\'ve posted anything on the blog. It was fun and games; in the beginning, I even got into legit cooking, but then slowly, the daily utensil washing, facing life, etc., got a little heavy.', 'Covid-19 Lockdown: First Outdoor Shoot', 'Since the Coronavirus wreaked havoc on our life, it\'s been a while since I\'ve posted anything on the blog. It was fun and games. In the beginning, I even got into legit cooking, but then slowly, the daily utensil washing, facing life, etc., got a little heavy. There were some great days in there where I counted my blessings, was grateful for the stuff I have or was plain drunk to give a shit and then there were days where it was a fucking struggle. I tried my best to be consistent on Instagram, but my bloggity blog was a bit left out. Then the \"unlock\" happened – whatever the fuck THAT was coz we all were still pretty shit scared to step out (at least I was). But eventually, for my sanity, I did step out – I still have only visited my parent\'s and Naina\'s place a couple of times (visit folks place is usually just handing/taking stuff at the door or sitting far away from them with least contact and not for too long), had one girlfriend over for beers and lunch and now regularly go to another very close friend\'s place (very close to mine) to practice yoga with two super cool fools (one of who is trained to teach yoga so that works great for the other 2 of us). I CANNOT begin to tell how much just doing this (going to a friend\'s place to practice about 1.5 hours of yoga most mornings followed by a cold brew and then chilling after for a bit, reading/troubling/etc.) has helped me mentally. It\'s pulled me out of a faze if that makes any sense, and that feels fucking good. All this doesn\'t have much to do with my outdoor shoot, but I guess it\'s a way to thank Prateeq, Devang & Sahil for being so nice to me.', 'Covid-19 Lockdown: First Outdoor Shoot', 'Since the Coronavirus wreaked havoc on our life, it\'s been a while since I\'ve posted anything on the blog. It was fun and games. In the beginning, I even got into legit cooking, but then slowly, the daily utensil washing, facing life, etc., got a little heavy. There were some great days in there where I counted my blessings, was grateful for the stuff I have or was plain drunk to give a shit and then there were days where it was a fucking struggle. I tried my best to be consistent on Instagram, but my bloggity blog was a bit left out. Then the \"unlock\" happened – whatever the fuck THAT was coz we all were still pretty shit scared to step out (at least I was). But eventually, for my sanity, I did step out – I still have only visited my parent\'s and Naina\'s place a couple of times (visit folks place is usually just handing/taking stuff at the door or sitting far away from them with least contact and not for too long), had one girlfriend over for beers and lunch and now regularly go to another very close friend\'s place (very close to mine) to practice yoga with two super cool fools (one of who is trained to teach yoga so that works great for the other 2 of us). I CANNOT begin to tell how much just doing this (going to a friend\'s place to practice about 1.5 hours of yoga most mornings followed by a cold brew and then chilling after for a bit, reading/troubling/etc.) has helped me mentally. It\'s pulled me out of a faze if that makes any sense, and that feels fucking good. All this doesn\'t have much to do with my outdoor shoot, but I guess it\'s a way to thank Prateeq, Devang & Sahil for being so nice to me.', '2021-11-29 23:22:03', '2021-11-29 23:22:03'),
(23, '1638228450609-Thumbnail 5.jpg', 'Easiest Ice Cream You’ll Ever Make', '1638228450609-P5.jpg', 'No Ice Cream Maker Required | Easiest Ice Cream You\'ll Ever Make', 'I made this ice cream for the first time when I was in sixth or seventh grade, and I wanted to impress, well, myself. This was also a super easy recipe I had found through our dial-up modem and got my dad to print it out from his office.', 'No Ice Cream Maker Required | Easiest Ice Cream You\'ll Ever Make ', 'When I was in the 6th or 7th grade, I made this ice cream first time. Because I wanted to impress, well, myself, I guess. This was also a super easy recipe I had found through our dial-up modem and got my dad to print it out from his office. And now, of course, it\'s day 58 of lockdown because of the Coronavirus, and I thought – why not eat ice cream! I didn\'t want to order online because I honestly didn\'t want to get into the hassle of washing the ice cream carton with soap. After all, that\'ll be messy. This is the easiest and quickest ice cream you\'ll ever make, and it\'s rich, creamy and smooth. There is no need to have an ice cream maker; keep churning it or take it out of the freezer to re-churn – none of that crap. And you only need three very easily available ingredients for this. Just mix all three well and pop in the freezer. Boom, 5-6 hours later, you can eat chocolate ice cream. Now, this is not a \'healthy\' or \'clean\' recipe but sometimes you gotta live right! This has dairy in it, a lot of fat in it, and a lot of sugar, but it\'s also ice cream that tastes like ice cream and makes you feel really good.', 'No Ice Cream Maker Required | Easiest Ice Cream You\'ll Ever Make ', 'When I was in the 6th or 7th grade, I made this ice cream first time. Because I wanted to impress, well, myself, I guess. This was also a super easy recipe I had found through our dial-up modem and got my dad to print it out from his office. And now, of course, it\'s day 58 of lockdown because of the Coronavirus, and I thought – why not eat ice cream! I didn\'t want to order online because I honestly didn\'t want to get into the hassle of washing the ice cream carton with soap. After all, that\'ll be messy. This is the easiest and quickest ice cream you\'ll ever make, and it\'s rich, creamy and smooth. There is no need to have an ice cream maker; keep churning it or take it out of the freezer to re-churn – none of that crap. And you only need three very easily available ingredients for this. Just mix all three well and pop in the freezer. Boom, 5-6 hours later, you can eat chocolate ice cream. Now, this is not a \'healthy\' or \'clean\' recipe but sometimes you gotta live right! This has dairy in it, a lot of fat in it, and a lot of sugar, but it\'s also ice cream that tastes like ice cream and makes you feel really good.', '2021-11-29 23:27:30', '2021-11-29 23:27:30'),
(24, '1638228617325-Thumbnail 6.jpg', 'Here are The 10 Things You Must Do in Europe ', '1638228617326-P6.jpg', '10 Things You Must Experience in Europe', 'I am so excited to start sharing my photos, travel content, and stories with everyone. SO EXCITED!', '10 Things You Must Experience in Europe', 'It isn\'t easy to narrow it down to a single favourite memory or experience. First, the obligatory Cliff Notes. As you may know, I recently returned from a six-week trip throughout Europe, the most of which I spent riding solo. I didn\'t pre-book rooms, create agendas, or plan itineraries for the most part. (It was fantastic.) Through Croatia, Switzerland, Italy, and France, I journeyed by rail. (I was late for several trains.) I yelled YOLO and skipped the trip back home that I was meant to catch. (My mother was furious.)  I\'m nearly ready to start going over my images, anecdotes, lessons, and travel tips, but there\'s a lot of it. I must have shot at least 10,000 photographs. So rather than waiting until everything is in order and ready, I thought it would be a good idea to start by telling you about my top ten favourite moments from the trip. (And, folks, I apologize for not posting this sooner; I got a little carried away with the images.) At the very least, your Pinterest profile now has some good Wanderlust picture.) So pin them now because as our narrative progresses, I suspect you\'ll want to embark on your own solo Euro adventure.', '10 Things You Must Experience in Europe', 'It isn\'t easy to narrow it down to a single favourite memory or experience. First, the obligatory Cliff Notes. As you may know, I recently returned from a six-week trip throughout Europe, the most of which I spent riding solo. I didn\'t pre-book rooms, create agendas, or plan itineraries for the most part. (It was fantastic.) Through Croatia, Switzerland, Italy, and France, I journeyed by rail. (I was late for several trains.) I yelled YOLO and skipped the trip back home that I was meant to catch. (My mother was furious.)  I\'m nearly ready to start going over my images, anecdotes, lessons, and travel tips, but there\'s a lot of it. I must have shot at least 10,000 photographs. So rather than waiting until everything is in order and ready, I thought it would be a good idea to start by telling you about my top ten favourite moments from the trip. (And, folks, I apologize for not posting this sooner; I got a little carried away with the images.) At the very least, your Pinterest profile now has some good Wanderlust picture.) So pin them now because as our narrative progresses, I suspect you\'ll want to embark on your own solo Euro adventure.', '2021-11-29 23:30:17', '2021-11-29 23:30:17'),
(25, '1638228781676-Thumbnail 7.jpg', '5 Easy Crostini Appetizers.', '1638228781676-P7.jpg', '5 Easy Crostini Appetizers (Perfect for The Holidays!)', 'I love a good party, but honestly, I\'m mostly just there for the snacks. So if I could park myself next to the food table and just leisurely sample through the appetizers and treats, occasionally chatting up a friend here and there, I would consider that the perfect party.', '5 Easy Crostini Appetizers (Perfect for The Holidays!)', 'I love a good party, but honestly, I\'m mostly just there for the snacks. So if I could park myself next to the food table and just leisurely sample through the appetizers and treats, occasionally chatting up a friend here and there, I would consider that the perfect party. With the holidays around the corner, I thought I would whip up an easy spread of delicious crostini toppings since crostini\'s are one of my favourite things to eat and serve at a party. For this post, we are partnering with Walmart, and I love that they make it easy to shop for all your party food needs and your serving dishes and holiday decor items, all in one place! I grabbed all my grocery needs for this platter in one trip to Walmart, and I was so happy that I could save time to get everything at one store (and assemble them faster). My favourite party foods to serve are easy to make and taste great, so these five crostini options will make hosting a breeze, and your friends and family will think you\'re also pretty fancy!', '5 Easy Crostini Appetizers (Perfect for The Holidays!)', 'I love a good party, but honestly, I\'m mostly just there for the snacks. So if I could park myself next to the food table and just leisurely sample through the appetizers and treats, occasionally chatting up a friend here and there, I would consider that the perfect party. With the holidays around the corner, I thought I would whip up an easy spread of delicious crostini toppings since crostini\'s are one of my favourite things to eat and serve at a party. For this post, we are partnering with Walmart, and I love that they make it easy to shop for all your party food needs and your serving dishes and holiday decor items, all in one place! I grabbed all my grocery needs for this platter in one trip to Walmart, and I was so happy that I could save time to get everything at one store (and assemble them faster). My favourite party foods to serve are easy to make and taste great, so these five crostini options will make hosting a breeze, and your friends and family will think you\'re also pretty fancy!', '2021-11-29 23:33:01', '2021-11-29 23:33:01'),
(26, '1638228935954-Thumbnail 8.jpg', 'Queenstown Skydiving', '1638228935955-P8.jpg', 'Queenstown Skydiving: 15,000 Feet Up High in New Zealand (Guide & Review)', 'I\'m terrified of flying and heights, but when in New Zealand, I jumped out of a fully functional plane at 15,000 feet to participate in a Queenstown skydiving adventure... and it was one of the most incredible things I\'ve ever done!', 'Skydiving at 15,000 feet in Queenstown, New Zealand (Guide & Review)', 'I\'m terrified of flying and heights, but when in New Zealand, I jumped out of a fully functional plane at 15,000 feet to participate in a Queenstown skydiving adventure... and it was one of the most incredible things I\'ve ever done! It was undoubtedly terrifying, but I\'m relieved to have crossed this item off my to-do list. It was also well worth the money and the nerves! During my road trip experience with Wild Kiwi, I did this in Queenstown, the \'Adventure Capital of the World,\' and I chose to go with a reputed firm named \'NZONE \'. I had a great time with them, and the following is a summary of my entire experience.', 'Skydiving at 15,000 feet in Queenstown, New Zealand (Guide & Review)', 'I\'m terrified of flying and heights, but when in New Zealand, I jumped out of a fully functional plane at 15,000 feet to participate in a Queenstown skydiving adventure... and it was one of the most incredible things I\'ve ever done! It was undoubtedly terrifying, but I\'m relieved to have crossed this item off my to-do list. It was also well worth the money and the nerves! During my road trip experience with Wild Kiwi, I did this in Queenstown, the \'Adventure Capital of the World,\' and I chose to go with a reputed firm named \'NZONE \'. I had a great time with them, and the following is a summary of my entire experience.', '2021-11-29 23:35:35', '2021-11-29 23:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'ADMIN', '2021-11-27 18:15:02', '2021-11-27 18:15:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
