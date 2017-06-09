-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2017 at 12:47 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_cats`
--

CREATE TABLE `blog_cats` (
  `catID` int(11) UNSIGNED NOT NULL,
  `catTitle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_cats`
--

INSERT INTO `blog_cats` (`catID`, `catTitle`) VALUES
(2, 'Jedi Training'),
(3, 'First Order'),
(4, 'Rebellion'),
(5, 'New Planet'),
(6, 'Millennium Falcon'),
(7, 'Droids'),
(8, 'Other Species'),
(9, 'Friends'),
(10, 'Reviews'),
(11, 'Outdoors'),
(12, 'Cities'),
(13, 'Creatures'),
(15, 'games and apps');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_cats`
--

CREATE TABLE `blog_post_cats` (
  `id` int(11) UNSIGNED NOT NULL,
  `postID` int(11) DEFAULT NULL,
  `catID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_post_cats`
--

INSERT INTO `blog_post_cats` (`id`, `postID`, `catID`) VALUES
(1, 4, 1),
(2, 5, 7),
(3, 6, 13),
(4, 7, 7),
(5, 7, 3),
(6, 7, 9),
(7, 7, 2),
(8, 7, 5),
(9, 7, 8),
(10, 7, 4),
(11, 8, 7),
(12, 8, 3),
(13, 8, 9),
(14, 8, 4),
(15, 9, 3),
(16, 9, 5),
(17, 9, 4),
(18, 9, 10),
(19, 10, 3),
(20, 10, 9),
(21, 10, 5),
(22, 10, 8),
(23, 10, 11),
(24, 10, 4),
(25, 10, 10),
(26, 11, 13),
(27, 11, 9),
(28, 11, 5),
(29, 11, 10),
(30, 12, 8),
(31, 13, 12),
(32, 13, 13),
(33, 13, 5),
(34, 13, 8),
(35, 13, 10),
(36, 14, 9),
(37, 14, 2),
(38, 15, 12),
(39, 15, 9),
(40, 15, 5),
(41, 15, 4),
(42, 16, 9),
(43, 16, 5),
(44, 16, 11),
(45, 17, 5),
(46, 17, 11),
(47, 17, 10),
(48, 18, 12),
(49, 18, 3),
(50, 18, 2),
(51, 18, 5),
(52, 18, 4),
(53, 19, 13),
(54, 19, 9),
(55, 19, 5),
(56, 19, 8),
(57, 19, 11),
(58, 20, 13),
(59, 20, 5),
(60, 20, 11),
(61, 21, 2),
(62, 21, 5),
(63, 21, 11),
(64, 22, 9),
(65, 22, 6),
(66, 22, 10),
(67, 23, 9),
(68, 23, 11),
(69, 23, 10),
(70, 24, 9),
(71, 24, 5),
(72, 24, 8),
(73, 24, 11),
(74, 25, 9),
(75, 26, 9),
(76, 27, 7),
(77, 27, 15);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `date`) VALUES
(7, 'Welcome to my Galaxy', '<p>Hi I\'m Rey and this is my travel / adventure blog</p>', '<p>Hi everybody, my name is Rey and recently I embarked into an adventure. I left my home planet of Jakku and met some incredible people. I also got kidnapped by Kylo Ren but I&rsquo;ll get back to that later.</p>\r\n<p>I am currently a Jedi in training with the one and only Luke Skywalker! Pretty crazy, right? Especially for the little orphan I am. I am not losing hope that I&rsquo;ll reunite with my parents soon. Finger crossed but in the meantime I am going to fight with the resistance to put an end to all the threats around.</p>\r\n<p>Before I get into details about my new life, I am going to talk to you about Jakku, where I was born and sort of raised I guess.</p>\r\n<p>Jakku is a remote desert planet located in the Jakku system, within the Western Reaches of the galaxy\'s Inner Rim. Though considered by many within the galaxy to be distant and relatively worthless, the planet became home to important events that would shape galactic history. In 5 ABY, Jakku was the site of the pivotal Battle of Jakku, which ended the Galactic Civil War in favor of the New Republic.</p>\r\n<p>These days it&rsquo;s more famous for being a massive junkyard which is the favorite playgroung for the galaxy&rsquo;s scavengers. It&rsquo;s not the best place but it is home so I do like it and this where I honed my skills as a scavenger and a warrior.</p>\r\n<p>My life has changed forever when I encountered BB-8, a Resistance astromech droid who carried information about Skywalker\'s whereabouts, and some guys, named Finn who kept on trying to save my life when I can clearly take care of myself just fine! We were hunted by the First Order, forcing us to escape from Jakku aboard the famous Millennium Falcon. On our escape, we crossed path with no other that the great Han Solo and his faithful pal Chewbacca. They took us to the resistance in the Lleenium System so we could return BB8 to he&rsquo;s owner. It wasn&rsquo;t all that straight forward but I will get into more details later&hellip;</p>\r\n<p>Rey the force be with you</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Me &amp; bff BB8 &amp; Finn + the legend Han Solo and Chewy, his co-captain and my friend as well</strong></p>\r\n<p><img src=\"https://s16.postimg.org/bqjpvww8l/l_Vt78l_B.jpg\" alt=\"\" width=\"503\" height=\"581\" /></p>', '2017-06-06 19:16:26'),
(8, 'Last Day on Jakku', '<p>Throwback Pic: The day I first met Finn &amp; BB8 and my last day on Jakku before the adventure began</p>', '<p><img src=\"https://s18.postimg.org/p3zcymh61/STARWARS_EP7_008_L.jpg\" alt=\"\" width=\"439\" height=\"329\" /></p>', '2017-06-06 19:45:18'),
(9, 'I have a bad feeling about this', '<p>Starkiller Base - the unfriendliest place in the galaxy. Seriously. Avoid at all costs.&nbsp;</p>', '<p>I have never wanted to leave Jakku because deep down I know my parents will return to find me. What if they come back to Jakku and I am not there? But destiny has put BB8 on my path and has given me a different purpose. It&rsquo;s not going to be an easy one, and I don&rsquo;t feel like I am going to complete it unscattered.</p>\r\n<p>It started off pretty intensely. A few lucky escapes but in the end I came face to face with the angriest teenager in the galaxy, Kylo Ren. I don&rsquo;t know what his deal is but the douche is definitely strong with that one.</p>\r\n<p>Lots of cool stories I have skipped over obviously, but as this is an adventure blog first and foremost, I thought I would convey my visit to the Starkiller Base.</p>\r\n<p><img src=\"https://vignette1.wikia.nocookie.net/disney/images/d/d4/Starkiller_Base_Laser.jpg/revision/latest?cb=20160405221710\" alt=\"\" width=\"200\" height=\"83\" /></p>\r\n<p>I am putting it in the Planet category. It isn&rsquo;t an ordinary planet. t is a mammoth weapon that can be used to &nbsp;destroy systems using solar energy. On the plus side, it is &nbsp;environmental friendly until it blows up everything.</p>\r\n<p>Here is what I learned about the base while I was on there. Unlike the Death Stars, Starkiller Base was constructed throughout an actual planet! As the structure drained a star to fuel its devastating power, the skies dimmed over the snowy forests on the surface. While this darkness intimated the terrible purpose of Starkiller Base, the presence of shadowy, living forests symbolized that a thriving ecosystem had been turned into an implement of death.&nbsp;</p>\r\n<p>The weapon runs on a type of dark energy called \"quintessence\". Using a star as a power source, an array of collectors on one side of the planet gathers dark energy in stages, redirecting it to the planetary core. I could go on and on about the technical stuff but if you are interested you can go to the wiki:&nbsp;<a href=\"http://starwars.wikia.com/wiki/Starkiller_Base\">Wookiepedia: Starkiller_Base</a></p>\r\n<p>In addition to being a planet-cum-weapon, it had base facilities, ship hangars, garrisons of stormtroopers,&hellip;.</p>\r\n<p><strong>The \"Parade Grounds\" - not as fun as the name suggests</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://vignette2.wikia.nocookie.net/starwars/images/1/14/Starkiller_Base_parade_grounds.png/revision/latest?cb=20160415233100\" alt=\"\" width=\"316\" height=\"131\" /></p>\r\n<p>I will not be returning there on holidays anytime soon.</p>\r\n<p>&nbsp;</p>\r\n<p>Rey the force be with you</p>', '2017-06-06 20:10:53'),
(10, 'First New Planet: Takodana', '<p>I didn\'t know there was this much green in the whole galaxy!</p>', '<p>On our quest to return BB8 into the resistance we stop by Takodana. This was my first visit to a new planet. It was breathtaking.</p>\r\n<p>&nbsp;<img src=\"https://vignette2.wikia.nocookie.net/disney/images/a/a0/Rey_and_Solo_on_Takodana.jpg/revision/latest?cb=20160131194112\" alt=\"\" width=\"491\" height=\"201\" /></p>\r\n<p>I had never seen such a beautiful scenery. Coming from desert covered Jakku, this was quite the shock to the system.</p>\r\n<p>As long as the First Order aren\'t in the area I cannot recommend it enough! Covered in lush forests and small lakes,Takodana is located on a hyperspace route between Chalcedon and Noe\'ha\'on. It has been a popular departure point with easy access to trade routes that connect the Inner and Outer Rim.</p>\r\n<p>For those heading outwards toward the galactic periphery, the planet has been&nbsp;seen as a last taste of civilization, while those heading Corewards see it as&nbsp;last grasp of frontier living. Travelers have long found the planet\'s neutrality and distance from galactic politics appealing, and as a result Takodana became a haven for fugitives, smugglers, and explorers. Takodana is also known as the longtime home of Maz Kanata\'s castle that served as an open port to spies and dubious travellers alike.</p>\r\n<p>Thousands of years prior to the conflict between the First Order and the Resistance, a battle between the Jedi and Sith occurred on the planet. Maz Kanata\'s castle would eventually be built over the ancient battleground.</p>\r\n<p><strong>The Castle</strong></p>\r\n<p><strong><img src=\"http://vignette1.wikia.nocookie.net/starwars/images/1/1e/Maz_Kanatas_castle.png/revision/latest?cb=20160416051224\" alt=\"\" width=\"502\" height=\"208\" /></strong></p>\r\n<p>&nbsp;</p>\r\n<p>While at the castle, I uncovered Skywalker\'s lightsaber, though shortly after First Order caught BB8\'s signal and within minutes, Stromtrooper where everywhere! We all fought hard but I got caught...hence the trip to Starkiller Base mentioned in previous post. Luckily for me my friends&nbsp;came to the rescue.&nbsp;</p>\r\n<p>I am looking forward to another trip to Takodana. Maz is a new friend as well. Don\'t let the talk of smugglers and thieves put you off. They add character and she runs a &nbsp;tight ship. If you visit tell her I say Hi and she will look out for you!</p>\r\n<p>Rey the force be with you</p>', '2017-06-06 20:29:47'),
(11, 'Takodana Part II', '<p>Pic from Maz\'s Castle - worthy of a post in and of itself</p>', '<p><strong>Maz</strong></p>\r\n<p><img src=\"https://indierevolver.files.wordpress.com/2016/01/maz-kanata-official-photo-from-lucasfilm-star-wars-the-force-awakens-hi-res-header.jpg\" alt=\"\" width=\"521\" height=\"292\" /></p>\r\n<p><strong>BFF Finn with some of the Castle\'s \"characters\"<br /></strong></p>\r\n<p><strong><img src=\"https://www.starwarsnewsnet.com/wp-content/uploads/2016/01/Maz-Kanata-Castle-1024x683.jpg\" alt=\"\" width=\"515\" height=\"343\" /></strong></p>\r\n<p>Some are of the less-savory sort....but still great for people watching!</p>\r\n<p><img src=\"http://vignette2.wikia.nocookie.net/fr.starwars/images/9/9f/Grummgar.jpg/revision/latest?cb=20160130192443\" alt=\"\" width=\"512\" height=\"341\" /></p>\r\n<p>Rey the Force be with you!</p>', '2017-06-06 20:37:05'),
(13, 'Review: La Cantina', '<p>Mos Eisley\'s neferious watering hole&nbsp;- Come for the criminality, stay for the band!</p>', '<p>Famously the place where Han Solo, Luke, Chewbacca and Obi-Wan Kenobi all met. The music is always on point thanks to the house band. Very catchy tunes all day every day. The staff is a little bit rude and the customer base is as dangerous as they come. That being said, it is worth the visit if you are in Mos Eisley. And, since Mos Eisley is a pirate city, I would kind of assume that you are the sort that can handle yourself in a place like that. Seriously though, even if it isn\'t the kind of place you would normally frequent it is worth a visit just for the history, though I am waiting to go &nbsp;till I have at least Chewey &amp; Finn with me.</p>\r\n<p>I would really recommend it for a drinks with mates just for the live band but try and stay out of trouble.</p>\r\n<p>&nbsp;<iframe src=\"https://www.youtube.com/embed/sHD-knhS6es\" width=\"462\" height=\"260\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p>Rey the force be with you</p>\r\n<p><em>&nbsp;</em></p>', '2017-06-06 21:17:21'),
(14, 'Quiz!', '<p>Dark Side or Light Side?</p>', '<p>A break from Jedi Training with a bit of fun</p>\r\n<script src=\"//cdn.playbuzz.com/widget/feed.js\" type=\"text/javascript\"></script>\r\n<div class=\"pb_feed\" data-embed-by=\"0fc15f68-7027-4c75-a361-87531e1bdbf9\" data-item=\"8151e641-3176-4df8-8afe-528fe460f886\">&nbsp;</div>', '2017-06-07 11:44:38'),
(15, 'Canto Bight', '<p>The Casino City&nbsp;&nbsp;that attracts the&nbsp;cr&egrave;me de la cr&egrave;me of the galaxy&rsquo;s upper crust....&nbsp;</p>', '<p>I haven\'t been yet but Finn went on a&nbsp;an undercover mission there to find a Slicer. He sent me some pics. Its in my travel blog as a wish-list place to go.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://www.starwarsnewsnet.com/wp-content/uploads/2017/03/Exotic-City.jpeg\" alt=\"\" width=\"425\" height=\"183\" /></p>\r\n<p><img src=\"http://media.comicbook.com/2017/05/canto-bight-998681-1280x0.jpg\" alt=\"\" width=\"426\" height=\"240\" /></p>\r\n<p><img src=\"https://vignette4.wikia.nocookie.net/starwars/images/0/0c/Canto_Bight.jpg/revision/latest?cb=20170524131632&amp;path-prefix=nl\" alt=\"\" width=\"309\" height=\"371\" /></p>', '2017-06-07 12:07:37'),
(16, 'Tatooine', '<p>Luke\'s homeland of Tatooine.&nbsp;Reminds me of home.&nbsp;</p>', '<p><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUTExIVFRUWGBgYFRcYFRUXFhYVFxYYFhUXFhcYHSggGBolGxUXITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGy0lHyUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIASYArAMBEQACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAADBAECBQAGB//EAD0QAAEDAgMEBggFAwUBAQAAAAEAAhEDIQQSMQVBUXEiYYGRobETIzJCUnLB0QYUM7LwFcLhYoKSovFDJP/EABoBAAIDAQEAAAAAAAAAAAAAAAADAQIEBQb/xAAyEQACAgEEAAUCBQQCAwEAAAAAAQIRAwQSITETIjJBUXGBBRQjM2FCQ5HwUqGx0eEV/9oADAMBAAIRAxEAPwD7ZVqhokmAqSklyTGLfAA4+n8XgUrx4DfAn8EjHU/i8Cp8eAeBk+DvztP4vAo8aAeDP4KnH0/i8CqvNj+SfAyfBwx1P4vNHjY/kPAyfBH5+n8XgUPNEPBn8EfnafxeBUeLAPBn8FTj6fHwKq80CywzK/n2X6XgVHjRLeBL4IbtBnxeaPGiHgSJ/qLPi8Cjx4kfl5/BLdoU/i8CpWeIPT5Pgk7RZ8XgVPjxI/Lz+CP6iz4vAqPHiT+Xmd/UafxeBR48Q/LzLDaTPi8CrLURKvTyOdj2fF4FDzRJ8CZIx9M+94FCzxIeCZYY+n8XmrePEjwZfAVmLYYg6q6yp9C3ja7DZlcoJ7S/TPZ5pGf9sfg/cRlMaDq6OyVhSVcm2Ta6RcUmwTm0j3eKvsjV2VcpWlQKoBEh0n5YVXGPyXTd8o6nT1c4wLaXJJRCCfL6CcqdR7KVmwY8eoiQVWa2svB7lZIDPjP/ABKlRj8kbpfBerTa0wX/APU/dTKEVxZWM5tXQAiTDbz2Kjim6Q1NpXIjKwavM9TZHeSJU7YLtkbpvpEOZaQQRp28CNyhxVWiYz5p9kU6c9Uak6DmqxjfZac6CtYz4z/xt5ymbIfIpzn8FK7C08RuO4qklXQyEtxUssDxJEcgPuhx8tgpctFxQ6GedDEdVr+KnZ5NxV5KntBKg0KRLQSd8DuH3V6uKYu6k0gv5cANJdqJsJ/mivsVLnsX4rbaSJDG65z/AMSjbH5I3S+BjBn1jR3K+LmQvMvI2bWVdE5whtI+rPMeay5n5GatOvOjKaVhfRuaCMHQdzb9U3+li5etC7zCSPLmzGjiSeywHkUyXMEvuLVb2/sRiTZh6o7Wn7QjI7SZOJVJr/eQGZLXY1rgLjT0zyH7Qrz9QvD6CKBs88G+bmjyUQflbJyLzJAMqW+XbHX8DGG0f8vkQnY+UxGXhxIn1fN9+xqi/IFfq/YEClDqCl3q+Th4g/ZN7gIqshz/ANNvzO8mo7gvqWX7jX8B8O8BrJ0JeDyIaEyD8qX1FZI3KTX8MVqNhxHBJkqbHxdpBc3Qb8zv2hX/AKELSub+wWo6zPl+rlMuolIrmX1BkKgzsYwT5qN5pmH1oVmVQZtmV0TnCe0v0z2eYWfN6R+D9xGUFiRuLtd0Hc2/VXT8jKSX6iFapSmx6QXE6gfC0D6nzV8ntH4QvH05fLKkTTPU79wj+3xR3El8ZPqhedUtdj2Hxp6Z5D9oV8nqE4PT/kjD+zU+UfuaiPUicnqj/vsCSxgfDGz/AJD5hNx+/wBBOb+n6lf/AJ/7/wC0KP7RP937AglDgrb0z1OHkU2Pof2Evia+jJqgim35neTVL9C+oRf6r+hDv02/M7yaob8i+5K/cl9ERijOV3xC/wAwsfoe1GTlJkY/LuXwT7jfmd5NU/0IF+4/og9SkS1kEezvIHvFXlG1H6ClNJy+oRmHtMi3AgqNhDy2zsEPWN5/dThVTDM7xs310jmGftL9M8x5rLnvaatP60Y+ZYujfQQO6Dubf7lZeiRSS86+4CmzM4DiQFSKtjJvbGya7pc48SVeSbk3RWNKCVlsPcPbxbI5tM/dTjunaK5Gt0WmLE2SU/c0hsd7Z5D9oV8vqF4PT/kjD+zU+UfuaiHUgyeqP++wNUGBsO6z/kPmE3H0xObtfU4/p/7/AO0KP7f3D+79gICWNCsPQPzDyKYvQ/sLkvOvoy1X9NvzO8mofoX1Ih+4/oVd+m35neTUP0L7kx/cl9iad2uHDpDyd4eSI8xoiXlmmcIyNn4neTUf0L7h/cf0RauLMv7v9zlM+o/QiFXL6kU6kKqZaUUN4L9RvNNw+sRmfkZvALp0cyxDaLh6MyOHmsuZ+RmnBH9RGG+pOghc9uzpRjXZen7Dubf7ldehi5euP3Jwhgz8IJ8LeJCMfHIZuVRU4p/xu7yoeSXsy6xQ+CaGJcXAFzoJg33GymE5XVkZMcdraQu8RI4f+JclTobF2rDY32zyb+0K+X1f4F4PT/krQPRf8o/c1EepE5PVH/fYGEsYHwzbPP8ApPmE3H0xGV+aJUn1f+/+1H9v7lv7v2KN0SrGMIR6s/MPIpi9DFrnIvozv/m2fid5NVv6F9SP7r+h1WPRt+Z3k1RL0f5CHrl9gdGplcDu38jY+CrB1IZkjcQlZkNjg93k2CrzVRSFY5bpt/wiMSbM+X6lVm+Il8a5l9QTCqKy8qNDAVem3mn4X5zLnj5Gb+cLpb0czaZm0nerd2eayZn5DZp1+ojEWBHRLsfAI4kHulXUuCko20yWPgHrgT1TP0RGXBEo20DVBhB1QifYmvUBcTxv36q035myuONRSOr1Mxnl4ABE3bDHHaqK03wZH+COBRGVEzhuQZoZr0h1WPjvV7iKamuDqtURlbpvJ1P2CHJVSCGNt7pA6b4kESDqPqDuKpCVcMvKO7ldlxk4u7h5q3lKVM6rUmABAGg+pPFEpWqJhCnbKmp0A3gSe+Psqt+Wiyj52znPlobwJPfH2UuVxoFGpWDyqgwPVry1oi41PGwA8AEyc7ihOPG4ybJLmODQc0gRaOJO/mp3RceSuycZNojLT/1/9VX9P+SyeT+CcF7beaMdbuAy3sdm22oVs3HO2gdpO9WezzVcvpG4P3EYwWI6ByAIlAUQgkguQSUKHySuCzUEEKAsmVIHSoIOAQScVIEgqCDipAiUAcgDpQBzWoJssApshjGBb0281fH6hOb0M2CtZhF9on1Z7PNUy+kZg9aMiVjN5wKAIIQSVlAWVQSWagDkASgg4oAhAHIAhAEmyAJhAHSgCTKAOQBLQggnVSQxjDN6beaZj9QnK/IzWyrVRjsR2/ULaDnDi3xcEvO/IP0cd2ZJnkHY1/xLnqTO4sUUR+ZqfEe9G5h4cfgu3Fv+Io3MHhiEbj39R7FO4q8EWGZtDi3uKncKen+Bini2u3xzspUhbxSiHCsLaZyCCSgCiCTkAWCCDgEASP5/hCdASOAElSrZVtR7HKezqpvljmQE5YMgh6nGitXCVG+02RxF1EsU49otHNjl0wFtyUNs5pQDDYR8vbzV8b8wrKvIbIK12YTL/EbCaDh8vmErP6TXoqWVM8aWwued45AEhyALBQBIKAJQAWnVc3Qn6KdzKSxxkOUccPeHaNFdSM88DXKHGkG4V7RnaohBByAskIA6UEHSpSvghv3N/ZuDFMSfaIv1dQ4Lo4cSiuTnZsrmx8JxnZICkgyNr4EDptt8Q+qxanDxaNumzc1IynDeshtC4MesbzV8a8wvM/IbV1rpmG0LbU/Sdbh5hVyryjdO6yo8RUpkEt4FcxnoYO4lHNQXIAQQSgCVAEhAF5QFcnBAMfwNCqDIEDfOncmRTMmaeP27NCoyBqr0ZLBBAFtyAsgfdSAfANmqwHj5CUzErmhWZ1BnpoXTfdHLXRbKpAmUEFMQAWuB4FVnzEtDiR5ncuSdcY2cPWM5puH1ic/oZv5F0dpzdxnbTPqz2eazZfSatP60eS2myDPHzXOkju4J8UIFyoaWQgDkATKCA1HDPdo089ApURcssYmhQ2V8R7B91dQM09U/6R6jh2N0aOe/vV0kZ5TlLthyVItIDXCgsDAQFlmtHBFEEZZ/n8hBNlqLsrg7gVaEqkmVnHdFo9RTcCARoV1Yu1ZyZKnRdSQQgkW2lWysPE2HM2S809sS+GDlI89rZcs6gzs/9RvPwTcPrFZ/Qz0WZdKzmUZW1DFM9nmFkzek26f9xHmsa3M09Vx2LAzq43TMglKs3+xenTLjYE9ilKyjnFDtLZhPtGPEqygJlqF7D1DAsbuk9d1dRM0ssmNNUi2XlSUJQBxIQAFzpQAfA4M1CbwBqfoE7Fi3ic2XZ0af9Jp9c8ZWr8tGjL+ZlZnYzCGmeIO/79ay5cWw1Ycu9C+X+dSTXuNsbwOPNPom7fLktOLPt4YjLg3co1aePpH3wOdvNa1mg/cxvFNexSttOm3Q5j1fdVlmiuiY4ZSMjF4k1DM23cAsWWbmbsUFABp9UsaH2cZqN5/RMxesVm9BuOeVubMKQhtpwFJ020ueYSM3os0aVXlR5apjm7r+S57Z2VjZbB4SmQHXM7ibBSkiMmSSe0faANLDqCtwZ7suUEIkKSGSXIBkGt2oKFDVKAKgoCyQpZBubEj0fXmM+H0W/T1tMGe95op9CTP20RlaOJ+hlI1FUO097jILhu/l1hNwM/yVFE2d2ISBtk5uSKCzpUgVN9FADOA/Ubz+iZj9QvL6TclazEZX4mH/AOd/Nv7gk5/22a9D+8vueKC57O/3wamyqvRLeB8wnYoTl0c/V5YY8iv3H1OybfQh5YpW5I4PHFXliyL2KLU4pcJklyol8ltxQlBWyQUASgk6EASpqyG6GMHiXUzLbg6hXx5NgvJjUzS/q4+B09nmtP5hUZvy7szcXiXPMnsHAfdZpzcjTCCgLKgwkFBJ2ZAHSgDgetBBJcgLD4A+sbzV8fqF5fQbq1mQzfxNH5d/+39wStQvJUTRob8Zfc8hRwznaCBxWTHpsk/bg6eo/EMGGPLthvzDKQyg53bwF0sezAuDgah5dbl3+mIVmIdvAHVPmdFV6v8AgFoF7yZPp1EdW75Jf4fH+mRFV1SJY4TwOhFpBnf1rT4cMqsw+NlwyrcEw+Kk5Xw1/CZnr/wseXSyjyujoYNdHJw+GNhZODofQLTDSLuIPKR5hXiovspJyXRZ1CxLXB0a6gxMadqu8Sq4kLI06kdQoOdoLdaMeKcyzkkDqNIMHUJcoOD2slNEA81BJWexAEAoILhAN8kvbETvGYcjoVLUkCcXz9izaRkCIzEAfztUqLtEbl3fQxWo5ngA9H0no2gNA0ALzm1Oh7U+UE2v8CoyqLte1l8LllkMBzGqb3Po2dFsdZkFTGKREm+efj/LAbJdL2Tr9Y+6Tj9YzMqib7lrbMaQjtps0nW4eYV4xTYnPOUYWjx20caQIaY60zNk2KombSYFknukJ4cZYyiXnfuaFzZNds7iilwuhnIBdxzHr+g3K0MU59IVlzxxrzsa9F1p70jrsx//AKEb4QF2gc1wI4tII7wn4YOHDMusyQyU0qCUKocRmAzbitPaowpj9I8VztViUXaO3oc7mtrCLF7HQsPgvaI+IFveLJ2JPpci8r5sFTrOabW48FaE8kPZlntlSLV6ud0xc7hdUnPxHYKoorUpObGYZZMCbE2mwVdjRMZKXRGUQ4kGwtDSZJMCTu5o28ML5oI3D6yR0ZLgLubABuBvuO9WWJsq517FqLobWLb5QGiY9p5DYtwJjsKvBdlZ9q/cbrVB0wS0NY6kwkwIa2HOJJ5xCa5Jp2LUWqr3TYthnNdXL8zSxrnOkTltfX3jDWzuFgFSPM1/AyX7SjXLBUcRUIYG5QcxcHEScz5mxt73NU8Tmv5LyjDl/wAf+ANRpLiHOLsss4CAbhoEWlUbakXTSSpd8jOAEPYBx+iMfqF5PSbwBWpmSxTbo9Q+NbeYT8Xroy6h/ps+fYq7j1Qs+eVzNWghWFP5HMM0NYDvO9Lw4/EnyX1eV4ocCONeSTLyxjRL3AwSb2zHQACTzjcupFbeInCtzdvlk4PaDajSxznEQMweMryw7z2fwKbYNNDuGw1YOBzU20ySTTbTHsxDRnBgnSTHJBaUotE12Q6B2IEGvsp2ZzesGe5I1NbDdor3m0GiNB3LmcI7PNl6T6QEubJm0C4MdSv+ahp42/cVkxykweI9F6NxayCd/MgcTxUvVwyKkmEMco5FYngRL2NEi5c8i0holonhM26lXFJN0h+RVFsvgqUllTIHOcKtRxIkkT0GyesjuTYpur/krNpWvov/AGDo4pgYGvcJDqYcLkuydNwaLz0jB3WKhTUVTZaWKTdpfP8A8LtMioW05D5zPc80yZdNoBIAsNyhSXmaXZWq2pvr2BtwlVjcrHxPtBoA00AmcoS/NHlF3OMnddAfyDoLi3Qi5MuLnOi3adVGxyss8vKQcYME5S4/qNpwCQ10jM6RvAHkmrH7X/AvxWuV8Nhos1zKej6hF9WskCXHSTdWcaVr5KrltSfsv+zOpNgC/XPEm5/nWsz5Vj5Plr4Htn0nZ2mDHFMxx8wrI/LRvALWYmZ+3HEUXGwgtmdIkT4JmPiYnU/tnkcdh2uLXCwIi2+9j/OCmWmUpCseucIUgrsKGtAmYsEicPCnuRqjnjqsbg+zIxWzKT3h72yRbV2W2ktmCtyakrOQ3OHlYcADSBvOmp4qSvL5IwNYy/IC8gElo9hgbfM4+79VA6MG1bGcb7XYFImXDNXZLCBPAR3rFq50qOn+HY25WPElcyztVyXo6GdxHkUrNWy/hi5Xf2JqewQLiR5z9EYOJOK6aIq5qxXO4TlgEiJiYB1jrT4ycHwMpS9RU0iWiS8xlYxt8okgG4sLcVeO6S4Jbipe3PP+C1WhkgAtuSyBFiNQjwqatlY5d3f1HHRmc0Ns6qymBJjoDO4wOR7loVLijOrq/wCGymOqOLG3ykveOBAktYMurjBkDtOiJcLgvjit1P2S/wDpd7yCWhjnewLyGjIcxJdvJMC06I3Ug2t8t/8As4CoZPQZLnO0zuaXaw42m53W0UObfRG2H8v/AKL/AJGmQAQXQIuTHONJPFVpPsjxGugrKTW6NCKSItsYoG4TMfZSfQ3CexBm7dj0D5EgwD2kK2LsRqX5GedbhhkDRMDQ6rWuzm18HVqFUMDmgVBvj2h2b1g1GW1sOpocK3KZnVCDca7wbEdhUabNXlZbXaa/1IixojNmyscdIe3M0jrHHrC3UcuE9vaNAY2rUb6IClRpaubSZGeNzidAihzzWqRBYX1OMKG6VsSouckom9QpZWgd/NcfNk3ys9HpsXhwouWpPuOTrsBUqvYZDczLTxBumLHjyQSbrkx6jLPG7oEcc1wAuDMnuP3Cbi0bhua5EPVxnOPyEyrM0dW75DNxLGinmdcPLi0Alxhpa2wHGCtGKaUeWJcG20l7VYqKx9WcsFuZxJNi55zGw61SU1xXsN8N8pvuv+jnOe4yXDUuAaMoDjqZ1lVlkcuw2RiqSC7PLWOktHzES6+snUqYT55K5Yt9G26CJC0cMyJUwZaqNFypQSv4KuUFgmHccwV8b8wufQ9C0szmbtuk59FzW628CERlUheeG7G0jzGEqkHKTr4FbVJNWcmmpUbGzt47Vi1kEuTp6CbtoarUGu9poPMBYPp2dO01yeX2i5hf0GgNFrbzxXUwRlGPmODqZwlPyomm2Ggs1OspwlcmphKTabTUeQLST5mFi1GST4SOno8UIeZsTw+2mVwXUScoMHcZ5bhFwpwaeLXIavUTuomhg8TmlpPSHkdPIrPqcSi+EadJn8RVLszttU3ZgZOUiI3AjVO0jg4UuzJ+IxmnfsVwlKCBeStmR1F8mLFG5o2SFwmz0yA1qgb9k7FglNiM+pWL35+AVB+aZ3KdTh8Jqiuk1DzXYUBZ2aznIoLL0cQ5uh7DorKbRWWNMdp45u8EeITllXuJeJ+wV2IYfeHfCs5xZRQkgZrNHvBUtDKZFCu3MADc81MJeYicaRo5lpbM1FcQLH+b1GT0smHaPK7Rpg1jlF7SOuLlbNPzjRydXxldD2GrNYHOduHiToO5Vzx38DNJPZbYtitoVHsIYwCRYlxHkLKkdKo8svPWufl6PMYLHB1Y0ajTSfuBIMnhMcLhOUhE9PUd0eTZZho0Per9ie1wXaTvRUS7lKjze1qTsLU/MUR0HGKjN0nyB8x1pcvK7Rqxvxo7Pc9BsLGMrObUp3kFrr3bbMA4cwO9K1FSxtl9NF4syT9zW2i0ZCTaNOekdqxaaUozpG7WRjKFsX2cyTm4eZWvWTqO35MX4fjue74GsTVyjr3BY8OBzfJ0NRqY4o/yZbnyZXVhHaqOHOcpO5jOBPSjj/6s2rhcbNegyVkr5HS1cpHcRQhBJWEAcetAEAoAmUUAbBN9Y3mmYvUKy+k2IW0yEV9OCifpYR4Z5Omcznv4kxyn7LfiW2KRxMkt03IHtOWhg4gu+g8AqwknPjovmi4pL3ZdhdJHRygCANQYm6YKRlfifZ/pKXpGj1lO4I1LRcj6j/KpNe5p02XbLa+hHY34la4BlYw7c/c7hm4HrVYTvsZm0/O6B6KbSL8OvtTDJymec/FO02+jNETnJGYfCGkHXrMJWSXFGvS42p7jz+ytpPw9QVGbtW7nDeD/ACyRJblR0KV2fQ/6g3Ehr2TkABg65juPJM02JRTZg1mZzlt9kaWGhlOTzWbLF5ctL2NWnksOC/nkz69WSXE/zgt8IqKpHMyZHOTbKDRWKLsLRdDgetUyq4tDcMtuSL/k1SFwz0aKEKCxEICyhagDsqALlABcO452pmL1C8i8pqytplAYw9B0cCo96Ky6f0PO7MpyGjdv8ytuWW3HaOTp8e/IkE29Ts13Ax2HTyWTSS5o2/iGOkpL2EKLjmADbOEud16fRbzlpl6FeSQePZG+VD6LRfNI+Y5mknLpLgOQJjwhZpd8Hah6UHpY2qwZW1HtHAOIHdNkWyHCLd0LudvPM/VRVl1SIa8cUEVwe+/BdB3oADYOc5w+QgX7YJ7U30wMGSsmY3MZVkwNBpyRhx7FfuxebLv8q6Rm4ipJDd0ie9NSMzYXEOcIyibgHqCADBDRZPmzZpGQDxAXFnGptHo8UrgmcQltDUypCqSVhBJCAKhABcOZe3mr4/UUyek1oWwyFK56PUiTpWQo3wed2f0Hlp90kdh0WnI92G0c7CvC1FMa2uyaTuqD3H7FZNO6yHQ1sd2JozsHdnaV1H/Jwoq+Dxf4l29kz0ac57teY9nc5o64lKc76Nmn0zT3SPK4R0OSmjoKvYbUFg2GwFSuclNsk6k2aBxJ3BTGLbF5MigrPV7O/CNGm0FwNV9jf2bbmt39qc0krZglmlkflPTDojS53cG8EcSl/CKW4x57Yu90AlMEtmcVBSx0PzAOAlwtExrYnuQ2i0basZyoJvg1ME7oBcnUKsh3tI7xoK4rPZrSKkKKJKkIoCciKAplUEhMPZ7eaZj9RTJ6TSzLVZlonEU+ipyR8pEJeYw9qYYgio3Ue0OI48wr4MnGyRm1eBt+JH2CB4qUndbSD3apUoOGSx0Mvj4mZeyTu/1D6LpTflONh9QX8QfhuhiXiqWA1GiOAcBoHjf1Lm4stPk7mbHJw8p5faWwqT+i5mRzbAt6JH0K6CUZq0caObJjlTEcP+GWyJquIn4Wz3qPDHfnJV0eqwOCZSbkptgd5J4k7ymJJCJZJTdsbw5hwPBUyRuNFsMts0yKskyphHbGkVnPfJtieNdAA437lYUxQFSVN/BYP1IG89Lv08Fz5ZWstex2cenvB/Iqt99NHKarhmhs49E81zdav1ODs/h7uDsbyrJRvs6EUFnIAghFAQWqKJsth29MK+NeYrkflHwFpozWExR6JjsV8r8vBTGvMYhqkGSSercVh3NOza4poZo0mtnKIkyU15HKrM6xxgml0ef2e4B5G4HwldV3LGcOFLKejc07lx3E9DGS7EtobN9KJFnDQ8eorRhyyi+THqtOsyv3PNvpEEhwgjULpRkpI4koSjKhvBMsT3KwJjc2QSUBUMnroRxjpdyUsrIFSZmcBxIHeqTdInHG5JHswwcLALky5dno48RSMTGNAe4dfnddTC7gjh6iKWR0N7LbId2fVZtZHlG78Plwx/IsVHQsq5qGSmVDVCRZstlRRFlS1QSXw46QV8fqK5PSPQtW0zWS8AiES6IXYH8syQct+KT4aL75ANow2k8gXDT36JkIK0LyzagzymBGq6DXBw4P3Z7ChdreQ8lz5pWd3E3sRYhLaGWeX/EFbNVI+EAdup81vwLynG1k051ErQENCeIFMRiz6ZrG6SM3XbTuQAbCseC7MZBNr7lBIm90knrQUY1sgD0rS4gASb9Qt4pea9vA/TVv5PUNrs+Nveuf4MkdnxoP3MXFxndebldHGqgjj5neRjmx/e7Pqs+r7Rt0HTNKFjo6B0KKCywarJBZDmKHELKGkFG0lSLUKZkFTCPJE5cGiKS3KJlcgDnJDGJFmt4qUrIbfsI7ZHqanylWx+oVmd42zyuDBg9i3dXZx4Lj7npn7Ro0gA6o2QAI1NhwC5U8kbZ6TFp8skkomdivxRTFmMc7rPRH3SHqF0jZH8OyVcj55V/FjjWqZ6QPTdGUxADjYzyXTx5PIjh59F+o6Z6fBY8uo+mc3K33Wi5IFpO4SfAJ6dow5IbHQTCsDvW5YcdLzbSeakWhis7onkgGZ4bCBYzg23JUlkNGBqgtZyAC0Krm3aYVJwUuxmPJKHTNLC7SBs+3WNO3gss9O10bsOtUuJD4Wdwkbd8fkI0FSRaLZVNEWVc1Q0WsvSKmPZWQw3ERaFoWQTsAimlUM3COJ21Rp6uzEbm37zoEuWaER+PR5cr4VGFj/wARuqAsawBrrEm5+wVMOpcpqKG6n8OWLBKUmLUZ9GY1MwuhqJ7cbOH+HYvEzJP6gaezxvJPJcGr5Z7R537BS1jNwCnhFU5SPmn4io+jxNSNHOLm9YcZ85HYurgmpRo4epxuE3uPd7BxbH4el8gBB0kWPitsXwcPLxNpmlRp5STNjEDcI3BSK4BYusNB2oKtihRZWiW1CBYwpJOBnVAWP4N8iOHkglA8dujrQgZShiXDW48VN32RbHRUbxHeo2otva6Y3Q2i4QA8EbpgqssUWOjqZocZtc72g9YslvT/AAPjq5e41S2jTdvjn90meGSNENTCQww7xcJG1rs0KSl0cSrUSD2jhvTUzTBid/K+ima3onDPwp7zzb9gOZ7XSHFunbvCwPTOLs6618Z9cC9ekGtMCEzSx/VRl/Ecknpm7KmuGNaI3LVr57Ul8mH8Ewbt0/gWqYtx4AfzeuVu9j00cUV2Up4Z7t3aUbWyXkhEDtX8NsrshzoePZcBoeBG8FPw5HBmHUpZlyZOx8PVwpNGs3oEyx4uyTqCfdmJuurizwkea12jydpG2tN8cHLddEIukCbfCOS3lgu2Pjo80le1kgTYKPzGP5L/AJHP/wAWEFB2mUqPzOMn8jn/AOIxhaTgbgiVKz426REtHmjG2icZTJiBKvPIoLzC8eGeXiKsAMO/gVT8zjL/AJHP/wASrxBvZHj4/klaHN/wZwd/JV1mxv3Fy0eZf0skGNCR2q2+D90U8HIv6X/gM3FuGt1ZNfJWSlHtGjsrFzUaBIkxE2OqXmScR2mm96PRrBR2iaWqF2RJcBgmVYt8Ixtu7K9IJpt6YjfAjfO4lWx44+JuKZ8k5YthjY3ZNSQXgtER1/4WXWwlJ2ujofhORYsTT7Z1HBtboO9YkkdKWWUkHIVhdgn1GtEk9iq3RdKUhKrjT7o7T9lTfXRojhvsSe4kyT9Fdaia6ZWeiwPuKDUsK92gIHEqfGyS7YtafTY+or/A3S2eB7RnyVNtvku83FRXA0ymG6CFZKhTk5dl4U0RZV5A1IhSmouyrhvVClXHAezc9q059Sp40jHo/wAOyY80pS6Ys7EOOp7rLBuZ21iSBht7IRdypch2YFx1t/OCttFPOl0NU9ntGt1dKjPPLYcU28LdiYpSXuIeKD7SDYCk30jDlAIKbjyybpszZtNBLckejhaDHZWnqoXYPotXxTKYl7g0df0G9OirYjJOMVyzzuL21Ue8eilrRqd55rRDHUaZgy6mUmtnRq4PaAqAZ3DPcRpbklZov2NmnzJrl8nYjZwddtjw3FYZ4fg6MNQ4+ro8xtB9VpyvGXhGhHUd6xTuJ18HhTVxdiTKZJsCVTs1blFDdPZ5OphWUBEtR8DdHCtbuvxVqoRLJJhS1SVstlQRYvWxLW75PAKLGRg5ClTHOOgjzVHJj44EuxRxJ1uq9j0kui9HDOdoO3cpUSsssUPUdnD3j3K6gZp6h3wOU6IGghXpCHOT7LwpoqTlQFlMqgm6HMDQOZrg0wNSn44O7M2bImqs2gtZh4FceXhhNP2rRad97clMEt3IrNKShwYLtnPc4Z8znO0zGJ5DWLrZuhHo5nhZZ8yNDBbNpm7ntItZptfST1/RLlmvo0w0tcthcZgaEgEhhOkGCbwLG2tuaTvfuPlp4S56L7OpAXbWzt0jdJiB4jvCmUkyIY3F8vgLWq0aghxa4RPHeQD3g9yQ4xlwaoyljdx4M6rhqbWh1NwLDpumxNuNgVnngro1w1Ll6hQV2SRmEixvob/YjsSdr9zRvO9OyC7MIbqZsN3mjaG4UrbWpN0cHeXHXkh2MjG+xOtj8xgvAncClvcaYRxoDmEgTc6dfcq7ZDfEihhuHAMOcGxeDrBMC3MqyxyYqeqih+jh6QEyCYmZHDMDyi6usdGaWpbDUarXeyQeEfzrCtVFLs51Ro1cBeNd8THcVNEbkWZXYYhwM6X10FuOo70bSNxwqgtzA9HjdCg/Yh5EuxulQb7z2tgTBNwIzXG610+OBsRPVJdGjh6dAQQ5p3ySOOWeq9uYT44UujJLNNjbSCJBkdXUr0LtnZlBaioN1VMloHXpvzZmZdC0gkiN7XAidDu+172UozsNs2rSblbkcB6MgyW+w4mCADFj3oJHMTh3EmMuV7WtdMyMpN28bO0tEIsgVpbLc2g+k0ta49JpAsHw0knj0wTyKqWZens1zXNjKGtIOpkgPloiIsCbz7xQQ3YQYL1TGGDkNM9XQc027lBYz8Xsao9oA9GHUxDDJ6Q0l9rGOEyVVwT5LwyOLp9Hm8RsmqwOpvb7RkwLOvc24gLFNTUujrYpYpQ4ZTDbLeSAaYIBmY1hpaJBCr5m+hm6CXaDU/w8/wB7Le03lt9R0de7tTVFmaWbng0MNgHsIcGtBgNIk6AAE5o1tOm8oaYvffuFxeB9JIIlpDQQRuFTMfBCtEvn3Bt2Y+5JEksmGwIb0Xd7S7lZW5KL6lsHhXtyDI0BoLTBN5ynNGXUkX81VpstuS7ZNLZVYl7mkS4uImQGh1jfeQGs7irxi5cC5zjEewX4fPq8+UejyxlJgw5pcTYagG3GFojjijNPNJ9Gv+THojTEAwRO7VNUUuhO5vsWx2CqOzNGTKSXgyQ7MR7JtYTv4WhAIEdjvcXuc5pztcC2LS52ex4B33ViDUZTDGkcXPd/ycXR4qJMIrkHKTQ4uBOquinRb0anaG4qGXUUFl4torFThyUIkh09Shk0DueCqW6OahA1YWnfcrxKPg4hTQWQWKu0LZVzIUOKJUrIa1QoolsuW2VnFEJg8qrSLWSwKUDL5FO0pZzGlCRLZZ1NW2lUyGNQkSySxG0LKlijaTZ//9k=\" alt=\"\" width=\"200\" height=\"342\" /></p>\r\n<p>&nbsp;</p>\r\n<p><strong>&nbsp;</strong><em>Tatooine was a sparsely inhabited circumbinary desert planet located in the galaxy\'s Outer Rim Territories. It would serve as the homeworld to the influential Anakin and Luke Skywalker, who would go on to shape galactic history. Part of a binary star system, the planet was oppressed by a scorching sun, resulting in the world lacking the necessary surface water to sustain large populations. As a result, many residents of the planet instead drew water from the atmosphere via moisture farms.</em></p>\r\n<p><em>Initially inhabited by native Jawa and Tusken Raider species, it would soon see a population explosion following the search for valuable mining deposits on the planet\'s silicate surface. Finding the ore to have unwanted metallurgic properties, mining firms would leave the planet en masse, leaving behind valuable equipment, most notably large sandcrawlers, which would later be used by the Jawa population.</em></p>\r\n<p><em>The Hutt Clan also maintained a presence on Tatooine, with Jabba the Hutt owning a palace in the desert at least by the time of the Clone Wars until his death shortly before the Battle of Endor.</em></p>\r\n<p><em>Largely ignored by the galaxy at large, Tatooine gained the notice of the Empire during the Galactic Civil War when an escape pod carrying two droids in possession of top-secret information launched from the starship Tantive IV and landed on the sandy Outer Rim world.</em></p>\r\n<p><em>&nbsp;</em></p>\r\n<p><em>Rey the force be with you</em></p>', '2017-06-07 12:17:39'),
(17, 'Naboo Royal Gardens', '<p>General Organa (aka Princess\'s Leia\'s) mother\'s home plant. Review of Royal Gardens.</p>', '<p><img src=\"http://oskoui-oskoui.com/img/starwars_travel_naboo.jpg\" alt=\"\" width=\"510\" height=\"662\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Naboo was a small pastoral world in the Mid Rim, located near the border of the Outer Rim Territories. Unlike most other worlds, the ancient planet lacked a molten core, and was instead comprised of a conglomerate of large, rocky bodies that made up a network of tunnels and flooded caves. The native Gungans, who built their homes in the waters of Naboo, rarely ventured into the core, fearing the ravenous sea beasts which resided in areas such as the Caves of Eleuabad. Despite this, certain Gungan navigators utilized time-honored trade routes through the planet\'s structure, which served as the most expedient avenues to reach other areas of the planet. Naboo\'s interior was rich with plasma, a naturally-occurring energy unique to the planet, and this coupled with its lack of molten core gave Naboo a reputation as an enigma to astrophysicists, who regarded the world\'s structure as an extremely rare phenomenon in the galaxy.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://static.apps.welt.de/2015/star-wars-en/img2/VillaVarykino.jpg\" alt=\"\" width=\"446\" height=\"251\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Naboo\'s surface comprised a vast array of different landscapes, from rolling plains and grassy hills to swampy lakes caused by the water-filled network of deep-sea tunnels. Beside its natural features, Naboo was considered a world of classical beauty due to the aesthetics of its population centers. The porous crust\'s natural plasma was harvested for energy and building material, and was generally thought to be the key to many of the planet\'s secrets.</p>\r\n<p>While most of Naboo\'s land animals were peaceful, as exemplified by the gentle shaak, the planet\'s oceans teemed with menacing creatures, such as the opee sea killer and the sando aqua monster.</p>\r\n<p>&nbsp;</p>\r\n<p>Rey the force be with you</p>\r\n<p><em>&nbsp;</em></p>', '2017-06-07 12:24:51'),
(18, 'Coruscant', '<p>A city / planet and centre of the old Republic turned Empire</p>', '<p>Coruscant also known as Imperial Center during the reign of Emperor Sheev Palpatine, was a planet in the Coruscant system of the Core Worlds which served as the capital of the galaxy for over a millennium. It was a prominent world known for its cosmopolitan population and culture, the towering skyscrapers of Galactic City, and its long history as the center of political power from the time of the Galactic Republic to the age of the Galactic Empire. In addition to its political affiliations, Coruscant was the location of the Jedi Temple which served as the headquarters of the Jedi Order.</p>\r\n<p>&nbsp;<img src=\"https://ctl.s6img.com/society6/img/1QglOJ5ChuWXsDDbd_2mfO8x64c/h_550,w_550/prints/~artwork/s6-0019/a/7112083_1962617/~~/star-wars-coruscant-republic-capital-prints.jpg\" alt=\"\" width=\"516\" height=\"516\" /></p>\r\n<p>&nbsp;</p>\r\n<p>The whole of Coruscant was the site of Galactic City, a vast ecumenopolis that covered the entire surface of the planet. Although it was the homeworld of the human species, much of Coruscant\'s population consisted of various alien races from across the galaxy. The city was also the hub of galactic culture, education, fine arts, technology, and finance. It was from Coruscant where the galaxy based its universal dating system. By the Fall of the Republic, roughly a thousand years after its founding, several notable monuments and structures were located on Coruscant, including Monument Plaza, the Senate Building, the Senate Office Building, and the Imperial Palace&mdash;formerly known as the Jedi Temple prior to the rise of the Empire.</p>\r\n<p>Following the Emperor\'s death at the Battle of Endor in 4 ABY, the Empire made its last stand on Jakku and was defeated by the New Republic. With the signing of the Galactic Concordance on Chandrila, the Empire surrendered Coruscant to the Republic and ultimately ceased to exist. However, former officials of the Empire were permitted to establish a provisional government on Coruscant. Though it would be administrated by Grand Vizier Mas Amedda, the Republic stationed observers on Coruscant to ensure that both Amedda and his government remained powerless in the new era.</p>\r\n<p>By the time of the Empire\'s dissolution, the Republic had already chosen to break with a millennium of tradition by rotating the galactic capital from one member world to another. Despite losing its status as the center of galactic power, Coruscant would go on to gain representation in the Galactic Senate. Approximately twenty-eight years after the Battle of Yavin, Senator Arbo represented Coruscant as a member of the Centrist faction.</p>\r\n<p>&nbsp;</p>\r\n<p>Rey the force be with you</p>', '2017-06-07 12:30:04'),
(19, 'Endor', '<p>Sanctuary Moon.... AKA the planet with Ewoks! (mention 3PO sent you for VIP treatment)</p>', '<p>Endor was a small forested moon that orbited the Outer Rim planet of the same name and was the homeworld of the sentient Ewok and Yuzzum species.</p>\r\n<p><img src=\"https://img1.etsystatic.com/211/0/13661923/il_340x270.1256972301_59li.jpg\" alt=\"\" width=\"340\" height=\"270\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Endor was approximately 4,900 km in diameter and 43,300 light years from the Galactic Core. The moon was covered in dense woodlands, tall mountains and savannas, and home to the sentient Ewok, Dulok, and Yuzzum species. It contained a breathable atmosphere to humans and 8 % surface water. It had two suns, Endor I and Endor II.</p>\r\n<p>Throughout galactic history, offworld raiders occasionally came to Endor to hunt the native Ewok population to make Ewok Jerky, which was a popular snack across the Outer Rim.</p>\r\n<p>Sometime during the Age of the Empire, the Galactic Empire established an outpost on the planet that included a shield generator complex to protect the incomplete Death Star II in orbit of the moon. In order to make way for the complex, an Ewok village would be razed by Imperial troops, leading to strained Imperial&mdash;Ewok relations. As a result of the repulsorlift field emitted by the SLD-26 planetary shield generator to keep the Death Star in a stationary orbit, Endor was prone to earthquakes, tidal imbalances, and other geological disturbances.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://assets.wired.com/photos/w_1105/wp-content/uploads/2017/01/EwokTA.jpg\" alt=\"\" width=\"441\" height=\"330\" /></p>\r\n<p>The moon was later the site of the monumental Battle of Endor which saw combat between the Alliance to Restore the Republic and its Ewok allies against Imperial forces who were attempting to protect the shield generator and thus prevent the Alliance from destroying its superweapon in orbit. After fierce combat on the forest moon, the Rebel Alliance managed not only to destroy the shield generator complex, but also the Death Star II. With the destruction of the Empire\'s dreaded battle station and the death of its Galactic Emperor Palpatine and his enforcer, Darth Vader; the Rebels and Ewoks held a victory celebration on the moon, one of many across the galaxy.</p>\r\n<p>In the months following the Battle of Endor, a field of detritus from the battle settled into orbit around the moon</p>\r\n<p>Rey the force be with you</p>', '2017-06-07 12:40:44'),
(20, 'Hoth', '<p>For those who prefer winter destinations</p>', '<p><em>notably hosted Echo Base, the temporary headquarters of the Alliance to Restore the Republic, until the Galactic Empire located the Rebels, initiating a major confrontation known as the Battle of Hoth.</em></p>\r\n<p><img src=\"http://pre01.deviantart.net/5b4c/th/pre/i/2012/205/a/7/visit_hoth_by_thesteele-d58gnky.jpg\" alt=\"\" width=\"517\" height=\"734\" /></p>\r\n<p><em>From space, the planet of Hoth looked like a pale blue orb due to its dense snow and ice covering. Five planets existed between Hoth and its sun, while an asteroid belt surrounded the planet with meteors occasionally striking the surface. Its surface was covered with glaciers and frozen ice plains. The temperature, although always frigid, was known to drop to -60&deg;C come nightfall.</em></p>\r\n<p><em>Although devoid of intelligent life, Hoth was home to fifteen species of large gray snow lizards called tauntauns and to a species of towering predators known as wampas.</em></p>\r\n<p><em>Hoth was the arena of a battle between the Galactic Empire and the Alliance to Restore the Republic, which had installed its temporary headquarters, Echo Base, on the ice planet. However thanks to one of the thousands of probe droids they had dispatched throughout the galaxy, the Imperials had discovered the Alliance base within a month of the rebels habitation on the planet. Although Echo Base was evacuated in the eleventh hour, the Battle of Hoth resulted in a clear defeat for the Alliance after the elite Imperial Blizzard Force overran it.</em></p>\r\n<p><em>In the months following the Battle of Hoth, scavengers established temporary base camps on the planet to scrap the AT-ATs destroyed by the Rebel Alliance during the Empire\'s attack.</em></p>\r\n<p><em>Rey the force be with you</em></p>', '2017-06-07 12:44:54'),
(21, 'Degobah', '<p>Where Master Luke trained with Master Yoda</p>', '<p><img src=\"https://c1.staticflickr.com/9/8503/8317205942_3af373692b_b.jpg\" alt=\"\" width=\"459\" height=\"877\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Dagobah was a planet in the Dagobah system, and one of the purest places in the galaxy within the Force. A remote world of swamps and forests, it served as a refuge for Jedi Grand Master Yoda during his exile after the destruction of the Jedi Order. Luke Skywalker received advanced training in the ways of the Force under Jedi Master Yoda on Dagobah, and it was later the place of Yoda\'s death and transformation into the Force.</p>\r\n<p>Dagobah was a mysterious, mist-shrouded, swampy planet, mostly covered in swamps and bogs, interspersed with countless shallow lakes and lagoons and multiple living caves. The continental and oceanic crusts of Dagobah were only vaguely defined, and there was little in the way of volcanic activity or earthquakes. Dagobah was home to many creatures, such as bogwings, dragonsnakes, butcherbugs, sleens, vine snakes, and swamp slugs. Examples of flora included the Lahdia plant, the Yoghurt plant, Gnarltree and Yarum seed. The planet was devoid of any advanced or indigenous civilization of sentients.</p>\r\n<p>Rey the force be with you</p>', '2017-06-07 14:42:50'),
(22, 'The Kessle Run', '<p>In memory of Han, while I am in training Chewey is piloting Kessle Run tour! &nbsp;Book early, places going fast!</p>', '<p>I\'ve done it and its a blast. Get in touch with Chewey to book now!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://speckycdn-sdm.netdna-ssl.com/wp-content/uploads/2013/10/kesselrun_travel.jpg\" alt=\"\" width=\"400\" height=\"616\" /></p>', '2017-06-07 14:45:01'),
(23, 'Yavin Airshow', '<p>Annual Airshow! Must go family event!</p>', '<p>Commemorate the destruction of the death star at the annual Yavin4 airshow. Finn, Poe, and I will be there. Say Hi if you see us!</p>\r\n<p><img src=\"https://www.onelargeprawn.co.za/wp-content/uploads/2010/star_wars_travel_poster_yavin.jpg\" alt=\"\" width=\"407\" height=\"616\" /></p>', '2017-06-07 14:47:32'),
(24, 'Kashyyk', '<p>Chewey\'s home and an amazing place to visit.</p>', '<p>Well worth a visit. Amazing for anyone who loves the outdoors and beautiful scenery. However, if you find yourself playing any games, let the wookie win!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://s-media-cache-ak0.pinimg.com/736x/75/e0/db/75e0dbb84c979964dcc1c236d36cc42e.jpg\" alt=\"\" width=\"480\" height=\"621\" /></p>', '2017-06-07 14:51:21'),
(25, 'The Droids you\'re looking for', '<p>Insight into the mind of our team of Droids</p>', '<ul style=\"list-style-type: circle;\">\r\n<li>Decided on a theme</li>\r\n<li>Brainstorm around functionalities from MoSCoW: Must have/Should Have/Could Have</li>\r\n<li>Split the work between front end web design &amp; back end web development.<br />- Login, Logout, Sign Up, Contact<br />- Creating, Editing, Deleting Posts<br />- About me page/Social Media<br />- Layout, Design, Navigation</li>\r\n<li>Worked in weekly sprints. Initial stage built \"template\" for any blog. Stage 2 turned template into actual blog.</li>\r\n<li>Initial backlog of tasks created on trello for selection.&nbsp;</li>\r\n<li>Individuals selected tasks based on areas of interest (front/back) and expectations of time requirements and work availability.&nbsp;</li>\r\n<li>Keep each other update through Slack/Hangout</li>\r\n<li>There wasn&rsquo;t an offical Scrum Master or Product Owner</li>\r\n</ul>', '2017-06-07 17:40:15'),
(26, 'A New Hope', '<p>What will our next adventure be...</p>', '<p><br />Back end<br />- About me Page : Upload image/edit image<br />- About me Page : Post/Edit Bio<br />- Improve search function either meta or keyword tags<br />- Archive post system<br />- Image upload from desktop<br />- Assuring Blog is compatible with accessibility software for disable readers<br />- Pull Statistiques<br />- Ability to retrieve, change and reset passwords<br />- User Class with different access</p>\r\n<p>Front end<br />- More animation with Javascript<br />- Link Post to Social Media accounts<br />- Allow RSS subscription</p>', '2017-06-07 17:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_role` varchar(5) NOT NULL DEFAULT 'guest'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`, `user_role`) VALUES
(1, 'rachel', 'jwoutsourcing@outlook.com', '$2y$10$pPwp1/C5ApQjVIktlgrTk.fIAXYJtEm5HkH60uCiKXgJ/dXeZZtk2', 'admin'),
(2, 'susan', 'susan@susan.com', '$2y$10$MgVai/x5LIlpNvAfDiznhuG3TDRqpELh/kDOnoeWtOxc1lbmlSQBS', 'guest'),
(3, 'steve', 'steve@steve.com', '$2y$10$Njl9q9lKC8nwS7Z6T9QxZersgw0pU/bFb3LDkszRUgi4lw1oBI6QS', 'guest'),
(4, 'Rey', 'rey@rey.com', '$2y$10$TrpYa9plpAoOIbceqs8CROYAKW6pcXcBH4BGMtTchjy0Eh63z6m9C', 'admin'),
(5, 'chewey', 'chewey@wookie.com', '$2y$10$TM4zGmXhlogwD/BVlYb9LeynsCd7tJKLnTE4XtRzSRzTOgrC1tFGe', 'guest');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_cats`
--
ALTER TABLE `blog_cats`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `blog_post_cats`
--
ALTER TABLE `blog_post_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_cats`
--
ALTER TABLE `blog_cats`
  MODIFY `catID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `blog_post_cats`
--
ALTER TABLE `blog_post_cats`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
