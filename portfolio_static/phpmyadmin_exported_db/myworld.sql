USE myworld;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2024 at 05:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `footer_content`
--

CREATE TABLE `footer_content` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footer_content`
--

INSERT INTO `footer_content` (`id`, `content`, `created_at`) VALUES
(1, '© 2024, All rights reserved by foliodiscuss | Version: 1.0.0', '2024-08-15 11:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_type` enum('image','video') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `file_path`, `file_type`, `created_at`, `updated_at`) VALUES
(1, 1000000001, '&quot; আমি বাংলায় গান গাই\r\nআমি বাংলার গান গাই\r\nআমি আমার আমিকে চিরদিন এই বাংলায় খুঁজে পাই\r\nআমি বাংলায় গান গাই\r\nআমি বাংলার গান গাই\r\nআমি আমার আমিকে চিরদিন এই বাংলায় খুঁজে পাই\r\nআমি বাংলায় দেখি স্বপ্ন\r\nআমি বাংলায় বাঁধি সুর\r\nআমি এই বাংলার মায়াভরা পথে হেঁটেছি এতটা দূর\r\nবাংলা আমার জীবনানন্দ\r\nবাংলা প্রাণের সুখ\r\nআমি একবার দেখি, বার বার দেখি, দেখি বাংলার মুখ\r\nবাংলা আমার জীবনানন্দ\r\nবাংলা প্রাণের সুখ\r\nআমি একবার দেখি, বার বার দেখি, দেখি বাংলার মুখ\r\nআমি বাংলায় কথা কই\r\nআমি বাংলার কথা কই\r\nআমি বাংলায় ভাসি, বাংলায় হাসি, বাংলায় জেগে রই\r\nআমি বাংলায় মাতি উল্লাসে\r\nকরি বাংলায় হাহাকার\r\nআমি সব দেখে শুনে ক্ষেপে গিয়ে করি বাংলায় চিৎকার\r\nবাংলা আমার দৃপ্ত স্লোগান\r\nক্ষিপ্ত তীর ধনুক\r\nআমি একবার দেখি, বার বার দেখি, দেখি বাংলার মুখ\r\nবাংলা আমার দৃপ্ত স্লোগান\r\nক্ষিপ্ত তীর ধনুক\r\nআমি একবার দেখি, বার বার দেখি, দেখি বাংলার মুখ\r\nআমি বাংলায় ভালোবাসি\r\nআমি বাংলাকে ভালোবাসি\r\nআমি তারি হাত ধরে সারা পৃথিবীর মানুষের কাছে আসি\r\nআমি যা কিছু মহান বরণ করেছি\r\nবিনম্র শ্রদ্ধায়\r\nমেশে তেরো নদী সাত সাগরের জল গঙ্গায় পদ্মায়\r\nবাংলা আমার তৃষ্ণার জল\r\nতৃপ্ত শেষ চুমুক\r\nআমি একবার দেখি, বার বার দেখি, দেখি বাংলার মুখ\r\nবাংলা আমার তৃষ্ণার জল\r\nতৃপ্ত শেষ চুমুক\r\nআমি একবার দেখি, বার বার দেখি, দেখি বাংলার মুখ\r\nআমি বাংলায় গান গাই\r\nআমি বাংলার গান গাই\r\nআমি আমার আমিকে চিরদিন এই বাংলায় খুঁজে পাই\r\nআমি বাংলায় দেখি স্বপ্ন\r\nআমি বাংলায় বাঁধি সুর\r\nআমি এই বাংলার মায়াভরা পথে হেঁটেছি এতটা দূর\r\nবাংলা আমার জীবনানন্দ\r\nবাংলা প্রাণের সুখ\r\nআমি একবার দেখি, বার বার দেখি, দেখি বাংলার মুখ\r\nআমি একবার দেখি, বার বার দেখি, দেখি বাংলার মুখ &quot;\r\n----------------------------\r\n-প্রতুল মুখোপাধ্যায়', 'uploads/66ca185e5a0ae.jpg', 'image', '2024-08-23 19:36:09', '2024-08-25 09:06:10'),
(2, 1000000002, 'ধূমকেতু\r\nকাজী নজরুল ইসলাম\r\n--------------\r\nআমি যুগে যুগে আসি, আসিয়াছি পুন মহাবিপ্লব হেতু\r\nএই স্রষ্টার শনি মহাকাল ধূমকেতু!\r\nসাত— সাতশো নরক-জ্বালা জলে মম ললাটে,\r\nমম ধূম-কুণ্ডলী করেছে শিবের ত্রিনয়ন ঘন ঘোলাটে।\r\nআমি অশিব তিক্ত অভিশাপ,\r\nআমি স্রষ্টার বুকে সৃষ্টি-পাপের অনুতাপ-তাপ-হাহাকার—\r\nআর মর্তে সাহারা-গোবি-ছাপ,\r\nআমি অশিব তিক্ত অভিশাপ!\r\n\r\nআমি সর্বনাশের ঝাণ্ডা উড়ায়ে বোঁও বোঁও ঘুরি শূন্যে,\r\nআমি বিষ-ধূম-বাণ হানি একা ঘিরে ভগবান-অভিমুন্যে।\r\nশোঁও শন-নন-নন-শন-নন-নন শাঁই শাঁই,\r\nঘুর্ পাক্ খাই, ধাই পাঁই পাঁই\r\nমম পুচ্ছে জড়ায়ে সৃষ্টি;\r\nকরি উল্কা-অশনি-বৃষ্টি,—\r\nআমি একটা বিশ্ব গ্রাসিয়াছি, পারি গ্রাসিতে এখনো ত্রিশটি।\r\nআমি অপঘাত দুর্দৈব রে আমি সৃষ্টির অনাসৃষ্টি!\r\n\r\nআমি আপনার বিষ-জ্বালা-মদ-পিয়া মোচড় খাইয়া খাইয়া\r\nজোর বুঁদ হয়ে আমি চলেছি ধাইয়া ভাইয়া!\r\nশুনি মম বিষাক্ত ‘রিরিরিরি’-নাদ\r\nশোনায় দ্বিরেফ-গুঞ্জন সম বিশ্ব-ঘোরার প্রণব-নিনাদ!\r\nধূর্জটি-শিখ করাল পুচ্ছে\r\nদশ অবতারে বেঁধে ঝ্যাঁটা করে ঘুরাই উচ্চে, ঘুরাই—\r\nআমি অগ্নি-কেতন উড়াই!—\r\n\r\nআমি যুগে যুগে আসি, আসিয়াছি পুন মহাবিপ্লব হেতু\r\nএই স্রষ্টার শনি মহাকাল ধূমকেতু!\r\n\r\nঐ বামন বিধি সে আমারে ধরিতে বাড়ায়েছিল রে হাত\r\nমম অগ্নি-দাহনে জ্বলে পুড়ে তাই ঠুঁটো সে জগন্নাথ!\r\nআমি জানি জানি ঐ স্রষ্টার ফাঁকি, সৃষ্টির ঐ চাতুরী,\r\nতাই বিধি ও নিয়মে লাথি মেরে, ঠুকি বিধাতার বুকে হাতুড়ি।\r\nআমি জানি জানি ঐ ভুয়ো ঈশ্বর দিয়ে যা হয়নি হবে তাও!\r\nতাই বিপ্লব আনি বিদ্রোহ করি, নেচে নেচে দিই গোঁফে তাও!\r\nতোর নিযুত নরকে ফুঁ দিয়ে নিবাই, মৃত্যুর মুখে থুথু দি!\r\nআর যে যত রাগে রে তারে তত কাল্-আগুনের কাতুকুতু দি।\r\nমম তূরীয় লোকের তির্যক, গতি তূর্য গাজন বাজায়\r\nমম বিষ নিশ্বাসে মারীভয় হানে অরাজক যত রাজায়!\r\n\r\nকচি শিশু-রসনায় ধানি-লঙ্কার পোড়া ঝাল\r\nআর বদ্ধ কারায় গন্ধক ধোঁয়া, এসিড, পটাশ, মোন্ছাল,\r\nআর কাঁচা কলিজায় পচা ঘা’র সম সৃষ্টিরে আমি দাহ করি\r\nআর স্রষ্টারে আমি চুষে খাই।\r\nপেলে বাহান্ন-শও জাহান্নমেও আধা চুমুকে সে শুষে যাই!\r\n\r\nআমি যুগে যুগে আসি আসিয়াছি পুন মহাবিপ্লব হেতু—\r\nএই স্রষ্টার শনি মহাকাল ধূমকেতু!\r\nআমি শি শি শি প্রলয়-শিশ্ দিয়ে ঘুরি কৃতঘ্নী ঐ বিশ্বমাতার শোকাগ্নি,\r\nআমি ত্রিভুবন তার পোড়ায়ে মারিয়া আমিই করিব মুখাগ্নি!\r\nতাই আমি ঘোর তিক্ত সুখে রে, একপাক ঘুরে বোঁও করে ফের দু’পাক নি!\r\nকৃতঘ্নী আমি কৃতঘ্নী ঐ বিশ্বমাতার শোকাগ্নি!\r\n\r\nপঞ্জর মম খর্পরে জ্বলে নিদারুণ যেই বৈশ্বানর—\r\nশোন্ রে মর, শোন্ অমর!—\r\nসে যে তোদের ঐ বিশ্বপিতার চিতা!\r\nএ চিতাগ্নিতে জগদীশ্বর পুড়ে ছাই হবে, হে সৃষ্টি জানো কি তা?\r\nকি বলো? কি বলো? ফের বলো ভাই আমি শয়তান-মিতা!\r\nহো হো ভগবানে আমি পোড়াব বলিয়া জ্বালায়েছি বুকে চিতা!\r\nছোট শন শন শন ঘর ঘর ঘর সাঁই সাঁই!\r\nছোট পাঁই পাঁই!\r\nতুই অভিশাপ তুই শয়তান তোর অনন্তকাল পরমাই।\r\nওরে ভয় নাই তোর মার নাই!!\r\nতুই প্রলয়ঙ্কর ধূমকেতু,\r\nতুই উগ্র ক্ষিপ্ত তেজ-মরীচিকা ন’স্ অমরার ঘুম-সেতু\r\nতুই ভৈরব ভয় ধূমকেতু!\r\nআমি যুগে যুগে আসি আসিয়াছি পুন মহাবিপ্লব হেতু\r\nএই স্রষ্টার শনি মহাকাল ধূমকেতু!\r\n\r\nঐ ঈশ্বর-শির উল্লঙ্ঘিতে আমি আগুনের সিঁড়ি,\r\nআমি বসিব বলিয়া পেতেছে ভবানী ব্রহ্মার বুকে পিঁড়ি!\r\nখ্যাপা মহেশের বিক্ষিপ্ত পিনাক, দেবরাজ-দম্ভোলি\r\nলোকে বলে মোরে, শুনে হাসি আমি আর নাচি বব-বম্ বলি!\r\nএই শিখায় আমার নিযুত ত্রিশূল বাশুলি বজ্র-ছড়ি\r\nওরে ছড়ানো রয়েছে, কত যায় গড়াগড়ি!\r\nমহা সিংহাসনে সে কাঁপিছে বিশ্ব-সম্রাট নিরবধি,\r\nতার ললাটে তপ্ত অভিশাপ-ছাপ এঁকে দিই আমি যদি!\r\nতাই টিটকিরি দিয়ে হাহা হেসে উঠি,\r\nসে হাসি গুমরি লুটায়ে পড়ে রে তুফান ঝন্ঝা সাইক্লোনে টুটি!\r\n\r\nআমি বাজাই আকাশে তালি দিয়া ‘তাতা-উর্-তাক্’\r\nআর সোঁও সোঁও করে প্যাঁচ দিয়ে খাই চিলে-ঘুড়ি সম ঘুরপাক!\r\nমম নিশাস আভাসে অগ্নি-গিরির বুক ফেটে ওঠে ঘুত্কার\r\nআর পুচ্ছে আমার কোটি নাগ-শিশু উদ্গারে বিষ-ফুত্কার!\r\n\r\nকাল বাঘিনী যেমন ধরিয়া শিকার\r\nতখনি রক্ত শোষে না রে তার,\r\nদৃষ্টি-সীমায় রাখিয়া তাহারে উগ্রচণ্ড-সুখে\r\nপুচ্ছ সাপটি খেলা করে আর শিকার মরে সে ধুঁকে!\r\nতেমনি করিয়া ভগবানে আমি\r\nদৃষ্টি-সীমায় রাখি দিবাযামী\r\nঘিরিয়া ঘিরিয়া খেলিতেছি খেলা, হাসি পিশাচের হাসি\r\nএই অগ্নি-বাঘিনী আমি যে সর্বনাশী!\r\n\r\nআজ রক্ত-মাতাল উল্লাসে মাতি রে—\r\nমম পুচ্ছে ঠিকরে দশগুণ ভাতি,\r\nরক্ত রুদ্র উল্লাসে মাতি রে!\r\nভগবান? সে তো হাতের শিকার!— মুখে ফেনা উঠে মরে!\r\nভয়ে কাঁপিছে, কখন পড়ি গিয়া তার আহত বুকের পরে!\r\nঅথবা যেন রে অসহায় এক শিশুরে ঘিরিয়া\r\nঅজগর কাল-কেউটে সে কোনো ফিরিয়া ফিরিয়া\r\nচায়, আর ঘোরে শন্ শন্ শন্,\r\nভয়-বিহ্বল শিশু তার মাঝে কাঁপে রে যেমন—\r\nতেমনি করিয়া ভগবানে ঘিরে\r\nধূমকেতু-কালনাগ অভিশাপ ছুটে চলেছি রে;\r\nআর সাপে-ঘেরা অসহায় শিশু সম\r\nবিধাতা তাদের কাঁপিছে রুদ্র ঘূর্ণির মাঝে মম!\r\n\r\nআজিও ব্যথিত সৃষ্টির বুকে ভগবান কাঁদে ত্রাসে,\r\nস্রষ্টার চেয়ে সৃষ্টি পাছে বা বড় হয়ে তারে গ্রাসে!', NULL, NULL, '2024-08-23 20:10:07', '2024-08-23 20:12:00'),
(3, 1000000001, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL, '2024-08-27 08:25:38', '2024-08-27 08:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `post_reactions`
--

CREATE TABLE `post_reactions` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reaction` enum('like','dislike','neutral') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_reactions`
--

INSERT INTO `post_reactions` (`id`, `post_id`, `user_id`, `reaction`, `created_at`) VALUES
(1, 2, 1000000001, 'like', '2024-08-27 13:17:43'),
(2, 1, 1000000002, 'like', '2024-08-27 13:20:33'),
(17, 1, 1000000001, 'like', '2024-08-28 08:39:55'),
(25, 3, 1000000001, 'like', '2024-08-30 06:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `post_shares`
--

CREATE TABLE `post_shares` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shared_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_shares`
--

INSERT INTO `post_shares` (`id`, `post_id`, `user_id`, `shared_at`) VALUES
(2, 2, 1000000001, '2024-08-30 06:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `profile_photo` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `cv` varchar(255) NOT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `profile_photo`, `name`, `designation`, `cv`, `youtube_link`, `facebook_link`, `created_at`) VALUES
(1000000001, 1000000001, 'uploads/shahabuddinBGremove.png', 'Md Shahabuddin', 'Writer, Web developer', 'uploads/default_pdf_MIU.pdf', 'https://www.youtube.com', 'https://www.facebook.com', '2024-08-16 17:50:17'),
(1000000002, 1000000002, 'uploads/rak.jpg', 'Shahab Rakib', 'Writer, Web developer', 'uploads/default_pdf_MIU.pdf', 'https://www.youtube.com/', 'https://www.facebook.com/', '2024-08-19 12:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `verification_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reset_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `birthday`, `gender`, `password`, `is_verified`, `verification_code`, `created_at`, `reset_code`) VALUES
(1000000001, 'Md Shahabuddin', 'md.shahabuddin1708@gmail.com', '1998-08-17', 'male', '$2y$10$D6zdtWxVsszxZpSCVCSHlu2C0anmfKNI8Fd.8k0a.rtM3nYWxZ.va', 1, NULL, '2024-08-16 06:16:52', NULL),
(1000000002, 'Shahab Rakib', 'rakibvesper28@gmail.com', '1998-08-17', 'male', '$2y$10$1xt3iwTlsuQ6SFH0lJZXpuwFzic0e1blLfbFIYW4W1klz5v.5W.be', 1, NULL, '2024-08-19 12:11:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `footer_content`
--
ALTER TABLE `footer_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_reactions`
--
ALTER TABLE `post_reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id` (`post_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_shares`
--
ALTER TABLE `post_shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `footer_content`
--
ALTER TABLE `footer_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_reactions`
--
ALTER TABLE `post_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `post_shares`
--
ALTER TABLE `post_shares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000000004;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000000003;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_reactions`
--
ALTER TABLE `post_reactions`
  ADD CONSTRAINT `post_reactions_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_reactions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_shares`
--
ALTER TABLE `post_shares`
  ADD CONSTRAINT `post_shares_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_shares_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
