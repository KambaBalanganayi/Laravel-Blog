-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 05:47 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `categorys_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `body`, `user_id`, `categorys_id`, `created_at`, `updated_at`) VALUES
(25, 'This is my first post - This is Sooooo Cool', 'Well the content is kind of in the title, check it out!!!--Update', 1, 1, '2023-02-25 13:29:22', '2023-03-02 04:45:05'),
(26, 'This is a post by Marcus - He\'s not grey', 'Being grey is not a bad thing, all you need is a little perspective', 2, 1, '2023-02-27 12:22:44', '2023-02-27 12:22:44'),
(28, 'Un article', 'Le contenu de l\'article', 1, 1, '2023-03-02 04:48:31', '2023-03-02 04:48:31'),
(29, 'Eum totam officia sequi assumenda architecto.', 'Voluptatem quibusdam eaque aut iste necessitatibus minima assumenda porro. Exercitationem repellendus soluta pariatur. Omnis eum quia ut ullam. Autem possimus assumenda voluptas sed veritatis eius qui.\n\nEius sint aut quam nisi et autem id. Omnis nesciunt et molestias enim iste aut impedit. Molestias fuga sed iste.\n\nId sapiente perferendis quia culpa et vel. Nam facilis tenetur qui est soluta illum est.', 1, 6, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(30, 'Ut unde non quas est cum voluptatem sed.', 'A quia sed nulla est veritatis possimus. Rerum quia aut ab non. Cumque aperiam distinctio quae laudantium nemo laudantium sapiente voluptas. Excepturi quibusdam inventore et repellendus id perspiciatis quae.\n\nModi aut inventore hic id culpa aliquid. Atque aut inventore mollitia aut incidunt sit. Inventore totam aspernatur nesciunt cupiditate qui iste et. Animi reiciendis ut nihil quos delectus.\n\nEst fuga ipsa eum odio harum facere. Officia aut architecto est omnis aliquid natus. Praesentium animi expedita ea aliquid veniam doloribus. Et inventore asperiores minima.', 2, 3, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(31, 'Nesciunt quis est ut et minus hic et eius.', 'Vitae enim repellendus recusandae culpa nihil alias incidunt illo. Eos suscipit et accusamus unde dolor omnis aut. Nesciunt esse suscipit ut officiis.\n\nIpsum quo molestiae accusantium ut sint consectetur. Est nihil aliquam sapiente culpa qui officiis.\n\nMinus ratione ea repellendus ut sed. Veritatis fugit ut nemo aut laborum fugit at. Ducimus non dolores ducimus tempora vel accusamus.', 1, 6, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(32, 'Voluptatibus earum ducimus quia sed magnam iure.', 'Dolorum corrupti et atque omnis dolores. Unde odio dolores eligendi quae doloribus laborum quo ut. Magni magni quam sequi.\n\nAut repellat rerum veritatis aut. Cum qui error est deserunt. Pariatur id error totam ad totam. Repudiandae sapiente quia recusandae beatae qui odit commodi.\n\nQuam cupiditate tempora similique tempore ut veritatis vel. Et facilis maxime quia et sed distinctio. Nihil nihil ad explicabo est vero assumenda ut. Nemo eum placeat aut expedita consequatur est magnam. Assumenda et cupiditate ducimus non.', 2, 1, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(33, 'Atque et veniam tempora ut perspiciatis.', 'Occaecati sit laborum dolores quis in eveniet vel. Rerum ipsam est enim. Facilis omnis voluptatem qui aspernatur distinctio.\n\nCum magnam hic dolor enim. Enim illo suscipit eveniet nihil deleniti. Porro nisi excepturi ullam delectus quod eligendi consectetur. Est assumenda velit consequuntur.\n\nEos est enim quam minus praesentium. Harum voluptatibus ut voluptatem consequuntur.', 3, 7, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(34, 'Dolor et magni hic tempore ipsum.', 'Quia explicabo laborum sequi architecto impedit id. Eaque consectetur cum distinctio est dolorem tempora. Laudantium vel aut non delectus ex.\n\nSint dolores voluptates eum accusantium quo odit impedit quibusdam. Aut aperiam maiores omnis quibusdam. Ab non vitae quidem ut asperiores.\n\nSed odit sit quibusdam quas. Necessitatibus voluptatibus tempora error similique reprehenderit vel. Rem mollitia excepturi veritatis at blanditiis explicabo sint.', 2, 9, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(35, 'Veritatis facere provident non tenetur.', 'Sed iure aut ipsam earum excepturi id soluta. Officia hic est quisquam sed commodi ea debitis aut. Nostrum doloremque ullam ad aut porro dolores. Nisi dolorum ut molestias laborum neque neque omnis.\n\nNeque est porro sit ex sint provident. Est voluptatem omnis eius similique adipisci aut ducimus. Et sunt unde culpa minus. Corrupti saepe officiis est laudantium assumenda nisi nesciunt.\n\nIpsa iste voluptates ea minima quis eos. Fuga ducimus explicabo inventore aut voluptas aliquam. Repellendus sunt vel at voluptates. Aut rerum laboriosam minima nemo impedit impedit voluptate.', 3, 4, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(36, 'Nihil in accusamus alias deserunt est autem maiores.', 'Ipsa aperiam et animi aut omnis. Omnis deserunt aspernatur distinctio et. Dolorum dolorem non necessitatibus repellat unde id qui. Numquam delectus voluptatem accusantium qui. Similique in pariatur tenetur sed officiis.\n\nConsequatur sint quos repellendus placeat eos quia blanditiis. Maxime temporibus nulla nulla possimus. Commodi sint excepturi ullam ea ut quos necessitatibus ipsam. Quisquam aut quibusdam nihil officia. Vel dolor ea voluptates necessitatibus.\n\nNobis omnis dolor aut. Sequi repellat amet voluptates recusandae perferendis ut nihil quos. Hic nihil nobis rerum dignissimos qui. Aut veritatis omnis commodi et et. Quas pariatur nobis eius eos.', 3, 6, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(37, 'Aut pariatur eos amet porro.', 'Ratione odio quidem explicabo voluptatum impedit. Et autem beatae nostrum ex magnam nisi. Sed illo rerum amet consequuntur id repellendus vero.\n\nNatus et harum reiciendis eos qui molestiae. Praesentium sint enim qui. Facilis eligendi explicabo eius ducimus earum. Dolorem sed tenetur beatae quia ea.\n\nIn dolorum at qui voluptatibus reprehenderit laudantium. Eos rerum saepe voluptate. Necessitatibus quis animi tempora unde quidem voluptatem optio.', 3, 6, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(38, 'Eum est quia aut amet natus accusantium.', 'Iste dolorem provident culpa rerum dolor. Corporis eos qui esse voluptates. Pariatur laborum sint voluptatum voluptatibus ea vero omnis et. Est assumenda numquam nesciunt nobis ipsam sit enim.\n\nDolor harum rerum iure modi odit enim. Cumque iusto voluptas eveniet aliquam omnis sed voluptates. Voluptas non natus quasi expedita consequuntur. Nostrum soluta quia qui est.\n\nRerum veniam a sit illo. Eaque qui et quia officia atque aut. Aut maxime aut odit consequatur quia. Ut voluptatem ab facere accusantium ut minima.', 2, 6, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(39, 'Molestiae et voluptatibus blanditiis perspiciatis veniam velit.', 'Repudiandae sequi expedita et adipisci. Reiciendis voluptatem in recusandae ea voluptas ipsum. Repellat quae eum molestiae veritatis. Saepe reiciendis qui fuga saepe eveniet debitis. Libero molestiae rem dolorum sit error et quia.\n\nEsse sint rerum omnis consectetur aperiam minus necessitatibus. Provident ducimus temporibus sapiente eius magnam. Quia rerum quae et amet dolor illum.\n\nRepudiandae enim commodi et dicta sint. Nobis et voluptatem neque dignissimos et aut aliquid voluptatem. Maxime non voluptatem enim omnis deserunt. Accusantium blanditiis est cum. Eum eaque eum non tempora est eius possimus.', 1, 8, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(40, 'Veniam sit nemo qui ipsam alias.', 'Fuga tempore et mollitia. Praesentium consequuntur minima quibusdam qui. Molestiae veniam quisquam dolorem dolorem cupiditate voluptatem ipsum. Sunt alias est ut.\n\nAccusamus aut qui dolorum et odit dolorem. Quis tempore fuga qui. Aut esse error eaque et est accusantium distinctio. Cumque deleniti saepe veniam facere perferendis nobis laudantium explicabo.\n\nSunt totam qui et. Fugiat corrupti dicta aut corporis voluptas corporis nisi exercitationem. Occaecati dolore a ad sit. Repellat numquam ea recusandae illo sequi explicabo rem. Et id et tempore minima quis quas dicta a.', 2, 3, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(41, 'Dolores maxime provident deserunt sit temporibus autem eaque.', 'Eius dolore reiciendis odio ut voluptatem. Culpa fugiat et quae. Dolorem illo exercitationem quo animi distinctio molestiae qui. Cum et quaerat commodi dolor tenetur.\n\nAspernatur dolorem laborum nemo qui. Ipsa distinctio voluptate doloremque sed nobis. Recusandae quod quo quas modi quibusdam illum neque. Dolorem sunt consequatur eos cum.\n\nFacilis cupiditate asperiores qui aut cum. Totam possimus in labore enim sit. Ducimus voluptatem corrupti eaque sit ipsam placeat placeat.', 1, 6, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(42, 'Impedit dignissimos porro mollitia molestiae.', 'Voluptatem deleniti sint ipsum laborum. Quidem voluptas accusamus id temporibus praesentium quia harum. Eum saepe quis nesciunt sunt. Necessitatibus iure accusantium et quia facere voluptatum vel id. Adipisci illo dolore non nisi et ipsa nostrum est.\n\nVeniam deserunt soluta dolores. Sunt voluptatum modi doloribus reiciendis nesciunt et. Fugit consequuntur sapiente fuga nulla error porro saepe. Cum quasi voluptas explicabo qui. Est velit accusantium quia harum quasi qui.\n\nEt enim a cupiditate ullam hic fuga. Numquam saepe at voluptas corrupti cupiditate. Voluptatem in vel placeat sint dolor.', 3, 6, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(43, 'Cum voluptatem cum explicabo nihil.', 'Quis quibusdam ut minus et et. Molestiae veritatis aut voluptatibus. Voluptatum dolorem nihil ut officia et quae et. Velit distinctio totam exercitationem fuga quia perspiciatis.\n\nAd veritatis porro beatae molestiae molestiae officiis. Eum quos ratione magni totam laudantium quae. Non voluptas ipsa deleniti quam quod. Voluptas molestias et occaecati voluptate tenetur cumque asperiores eveniet.\n\nRem dolorem aliquid sint rem alias. Et ipsum mollitia nobis. Aut consequatur aperiam veritatis. Necessitatibus velit sequi quam et qui cupiditate.', 3, 4, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(44, 'Fuga aperiam repellat minima maiores sunt et ipsam eius.', 'Quaerat qui harum accusamus eius nesciunt fugiat. Illum et sed consectetur. Fuga dolor deserunt nesciunt. Animi voluptatum sed dicta quidem corrupti.\n\nEst distinctio nulla est aut eius. Voluptates amet laborum eaque facere. Quia quibusdam eaque sunt temporibus totam magnam quidem.\n\nQuia rerum eveniet accusantium aperiam eius totam. Accusamus doloribus illo non eos. Sit autem quia sapiente qui ex quo totam harum.', 1, 9, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(45, 'Eum suscipit rem culpa recusandae quidem.', 'Fuga corporis occaecati tenetur hic in est sapiente deleniti. Delectus cupiditate voluptatum hic ut nihil eum. Cupiditate quia blanditiis omnis ipsa est. Itaque corrupti nobis et accusamus cumque et sunt et.\n\nNihil qui nihil quidem consequatur velit id qui. Deserunt minima enim maxime iusto aut voluptate ea. Porro quia voluptas repellendus odit et et.\n\nIste nisi voluptatem quis quia qui cumque eum. Magnam consectetur non pariatur qui autem vel voluptatem. Quaerat et harum assumenda qui alias sed aut.', 3, 9, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(46, 'Maxime alias suscipit sed exercitationem eum nam quaerat nulla.', 'Molestias culpa distinctio dicta aperiam. Officiis eligendi magni qui voluptas perferendis omnis autem. Suscipit est aspernatur dolorem non ipsa quasi. Recusandae modi ut velit. Optio dicta aperiam autem voluptas.\n\nVeritatis doloremque temporibus et aut sit. Accusantium accusamus alias alias dolorem aut voluptatum. Doloribus debitis officia aut soluta.\n\nEt et molestiae molestiae perspiciatis. In voluptatibus sint sed praesentium ducimus libero. Enim non in sit.', 3, 5, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(47, 'Qui omnis est voluptas eaque dolorum dolor dolores.', 'Illum nulla commodi eligendi voluptatem qui. Enim amet error illo incidunt et alias vel. Quia doloribus praesentium aspernatur dolorem ducimus ratione blanditiis.\n\nQuia provident dolorem officia sit repellendus. Quo beatae enim ab numquam voluptates et. Qui delectus amet consectetur perspiciatis quibusdam id expedita. Dolorum velit quo magni qui.\n\nArchitecto natus voluptate nemo quia eius eligendi. Rerum qui non et natus.', 3, 7, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(48, 'Id consequatur voluptas quia qui.', 'Aliquid qui voluptates aliquam sit dolore voluptas similique velit. Officia asperiores laboriosam omnis maxime inventore impedit. Quia est et at.\n\nVoluptatum sed voluptatem voluptatem debitis id. Explicabo eaque officiis dolorum culpa illum dolorem. Aut eveniet et molestias sed deserunt. Assumenda explicabo odio et et est.\n\nSequi non commodi eos aut. Nesciunt quia amet dolor. Non iure nostrum natus enim corrupti deserunt distinctio. Explicabo ratione laboriosam eos perferendis dolor sequi numquam.', 3, 2, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(49, 'Eveniet delectus excepturi repellendus.', 'Nostrum odit ut est fugiat praesentium animi. Atque unde eaque occaecati omnis architecto optio et. Dolorem accusantium sed sit hic. Accusamus voluptas dolores et.\n\nIncidunt sunt sed doloremque voluptates doloribus quod voluptates. Odit molestiae quasi suscipit et provident accusantium. Facere quia qui quae minima aut suscipit.\n\nQuis odio velit quia. Officiis tenetur quis aut voluptas rerum.', 1, 9, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(50, 'Aut rem numquam quisquam voluptatem.', 'Iure provident perspiciatis est et. Dolorem autem est quam ipsam nisi debitis voluptatem alias. Non in doloribus molestiae nisi.\n\nQui perspiciatis sunt dolor velit. Doloremque enim est et dolor velit voluptas. Illum fuga autem harum occaecati hic.\n\nAutem architecto laboriosam exercitationem et. Ea id autem corrupti exercitationem qui vero et. Quia soluta quo a debitis.', 2, 1, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(51, 'Omnis nulla perspiciatis consequatur molestiae nam itaque numquam maxime.', 'Eum maiores voluptates ducimus enim qui vero omnis. Qui quidem et quo eligendi fugit. Est incidunt iure et laudantium. Provident reprehenderit id voluptas modi sint doloremque ut.\n\nAut mollitia atque magni aut. Aut eligendi distinctio omnis et cumque. Error voluptatem tempora facere odio reiciendis eaque delectus occaecati.\n\nIpsa sapiente non porro saepe dignissimos et. Quod quod et non voluptas aliquid similique odio. Doloremque est atque doloremque animi.', 2, 4, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(52, 'Debitis velit quis voluptatem odit.', 'Non esse quasi cum dolores sunt provident. Necessitatibus ad nobis ullam ut officia officiis sit rerum. Odio tempora inventore in eligendi debitis qui. Hic impedit sint quo aut. Est tempora neque omnis quia est dolorum.\n\nTenetur omnis est quasi ipsam iusto est et quam. Reprehenderit sit officia quas ab. Explicabo non rerum rerum fuga corporis quia qui assumenda.\n\nSapiente nihil ab maiores quia iusto sint ut dolorem. Quia sunt incidunt sed. Aut qui minus eligendi autem repudiandae quia. Enim aut nesciunt non molestias fugiat velit modi modi.', 1, 8, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(53, 'Et voluptatum quam sunt quidem natus.', 'Optio dignissimos sit dolorum facilis ducimus similique. Qui cumque recusandae rerum necessitatibus voluptatem ut voluptas voluptatem. Ipsam non quos libero minus repellat.\n\nIllo aut in accusantium rem commodi. Debitis odit ratione vel neque quo iure. Aut iusto voluptates velit eum ut.\n\nDolores rerum voluptatibus et amet inventore. Saepe nemo et provident doloremque omnis. Officiis voluptatem commodi est aut autem aut.', 3, 7, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(54, 'Tempore enim itaque maiores enim nemo fugit.', 'Esse rerum velit velit. Cumque quia ad voluptates asperiores rerum doloribus sit. Et eligendi sunt omnis earum inventore. Quasi ad qui nisi eius quidem.\n\nDucimus eum nulla quidem iusto vel. Mollitia quasi iste dignissimos quo nulla numquam. Ratione ea provident expedita vel doloremque minus tempora nihil. Vero possimus culpa ad dolor.\n\nQuo exercitationem amet culpa est consequatur placeat distinctio assumenda. Qui odit dolorem voluptates rerum. Non qui neque maiores modi beatae quibusdam adipisci.', 1, 1, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(55, 'Culpa sint quidem incidunt voluptatibus.', 'Nemo laboriosam deserunt enim eum aliquam. Quod et quia velit sapiente. Laudantium sed quos inventore eveniet.\n\nLibero voluptas sapiente enim minus dolores vel. Aut autem soluta quasi aliquam ut rem. Voluptate laudantium doloremque dolorem est error aut officia. Et at numquam ipsam eaque qui molestiae eos.\n\nVoluptatibus sed quia cupiditate itaque quo nisi. Id a inventore aliquid ea repellendus omnis. Quia veniam ratione optio. Sunt nisi numquam placeat perspiciatis quam.', 3, 1, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(56, 'Adipisci fuga et voluptas id nulla.', 'Et praesentium tempora repellat eaque est cumque ut. Culpa alias sed deserunt quo. Sed autem atque aut esse. Animi quia illum libero voluptatem.\n\nAutem suscipit molestiae impedit omnis nihil assumenda. Architecto nisi rerum eius doloribus consequuntur consequatur. Excepturi laboriosam voluptates sequi est quisquam. Commodi maxime vel aut numquam assumenda asperiores ut.\n\nVero reiciendis neque expedita eos rerum. Ut maiores id quis id nesciunt perspiciatis. Temporibus expedita sit qui necessitatibus totam qui corrupti sit.', 2, 6, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(57, 'Temporibus quia et voluptas assumenda.', 'Laboriosam accusamus sed dolorem. Et omnis illo molestiae sed saepe odit. Qui laudantium occaecati illum magnam quam tenetur et. Magnam amet ut excepturi qui vel vel. Commodi molestiae repudiandae cum cumque.\n\nTotam perspiciatis minus animi voluptatem qui laudantium. Voluptate officiis commodi ut. Sed soluta eum quos dolor unde ullam perferendis repellendus.\n\nOdit blanditiis cum tempora beatae facilis consequatur. Est est ipsa non. Qui non labore voluptatibus facilis facilis consequatur totam tempora. Ut quam sit tenetur. Dicta dolore deleniti natus et provident deserunt doloremque.', 2, 8, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(58, 'Sequi voluptatem rerum ea tenetur voluptatibus.', 'Praesentium quasi reprehenderit sit qui. At voluptatem eum nostrum architecto non nesciunt modi. Quis quidem consequatur autem est ut. Laudantium dolore tenetur magni modi eveniet totam.\n\nOptio neque enim aut quasi et. Placeat vel dolor cupiditate nam. Quam voluptatem repudiandae architecto cumque ea consectetur. Ut dolorem adipisci et ex est quod sit. Quos maiores ea dicta illum corporis voluptatem.\n\nEx officia consequuntur voluptatem corporis minima. Quae est assumenda ipsum et amet mollitia. Quia minima ducimus rem ut inventore suscipit. Minima excepturi alias non pariatur sed. Et voluptatibus at at laboriosam pariatur velit quidem.', 2, 5, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(59, 'Laudantium magnam mollitia vel.', 'Officiis quo et inventore et quas voluptate et. Eligendi quis placeat et consequatur blanditiis iste. Dolore labore recusandae aut possimus nulla accusamus ea.\n\nAut distinctio asperiores reprehenderit libero. Recusandae dolores quae placeat voluptatum. Minima ratione ut impedit aliquam ipsam eligendi cum.\n\nEt nam sint aliquam reprehenderit officiis mollitia. Et illum est id minus ratione. Saepe magni minus magnam sunt.', 3, 1, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(60, 'Enim dolor rerum fuga consequuntur ipsam qui ipsam.', 'Repudiandae provident est et enim. Et illum laboriosam consequatur corrupti fugit sit laboriosam. Eos dolor similique accusamus facilis aut quasi. Est numquam dolorem rerum facere qui.\n\nVel delectus maxime deserunt. Sequi voluptas aut dolore quos est. Est minus earum qui voluptas id in.\n\nQuia sit voluptates consectetur odit voluptatum eius debitis aliquam. Est autem et libero. Sit impedit dignissimos eum aut totam est rem.', 1, 9, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(61, 'Modi quo quasi quisquam ratione.', 'Beatae nemo deleniti iure possimus enim voluptatem. Nihil eos dolor sunt distinctio.\n\nPlaceat voluptatem quia ex nihil voluptatum et exercitationem aut. Quo maxime vel dolor quo ipsa aut ut. Excepturi laboriosam illum quo est. Corporis non reprehenderit aliquam quia.\n\nEsse sequi voluptas cum velit. Ipsum assumenda illum sed est cum cum. Quia at alias deserunt. Numquam rem laborum ullam quo. Aliquid architecto illo rerum similique quidem optio.', 2, 3, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(62, 'Molestias suscipit repellat vitae necessitatibus ea architecto et.', 'Aut et excepturi autem similique. Earum perspiciatis consequatur dolore harum.\n\nAutem aut atque maxime ipsum ut amet. Delectus laboriosam officia quia. Consequatur dolore quo repellendus beatae laudantium nihil hic. Recusandae iure est maiores fugiat accusantium natus dolores laborum.\n\nIn facere fugit expedita repellat consequatur ex nihil. Voluptas autem ipsam necessitatibus fuga blanditiis fuga. Consequatur non corporis est omnis.', 1, 1, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(63, 'Aut quas quia esse aliquid ut.', 'Est vel aut odio porro adipisci. Similique ad eum inventore quam. Cum rerum eos enim a quas recusandae quas.\n\nEt ipsum aut suscipit delectus harum recusandae. Nemo voluptate dignissimos laboriosam cum harum nihil voluptatem. Eveniet sit optio saepe odit sint ratione ut. Commodi quas in voluptatem aliquam est dolorem.\n\nAut sit et vel voluptas maxime ut. Fugiat qui cupiditate repudiandae ex et ad deleniti. Est animi voluptatum error sit dignissimos. Consectetur doloremque quia sunt illum enim nihil veniam.', 3, 1, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(64, 'Architecto quasi dolorem quasi et.', 'Dolorem earum cupiditate ea est. Dignissimos at quasi et consectetur enim nemo. Facere suscipit ea excepturi. Ut rerum in maxime consequatur quo maxime ut.\n\nAliquam aut velit sed quia. Et natus voluptatem doloribus molestias illum sapiente perspiciatis. Cupiditate ut est expedita qui. Sunt dolorum iure in asperiores ipsa ducimus.\n\nIpsa esse molestiae aut quia quo culpa. Dolorem autem et omnis omnis totam fuga porro.', 1, 3, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(65, 'Maiores error nulla qui natus consectetur a nesciunt quidem.', 'Pariatur et harum voluptatem illo perspiciatis aut. Quia et aliquid alias eveniet accusantium perferendis dolor. Rem consectetur vero nam nisi. Dignissimos quas consequuntur incidunt veritatis ullam qui. Ut et molestiae molestiae sint aspernatur voluptatibus ad.\n\nItaque in incidunt commodi dolorem sunt velit. Expedita et nemo consequuntur molestiae rem et quo. Impedit quibusdam deserunt iste sunt repudiandae id velit.\n\nQuod et sed quasi eum. Vel ipsa sed reiciendis fugit. Aut minima aliquid nesciunt cum saepe nobis enim eligendi.', 1, 7, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(66, 'Voluptas distinctio distinctio beatae iste.', 'Eum aperiam quasi inventore esse consequatur id. In ut officiis sed impedit cupiditate. Quisquam quasi occaecati quam nihil cupiditate quis. Ut adipisci aut inventore corrupti impedit omnis.\n\nFuga fuga in autem voluptatibus vitae vitae ut. Neque et et voluptates neque. Exercitationem exercitationem explicabo ipsa libero in. Unde in corporis repudiandae voluptatem ut et.\n\nFuga voluptate et qui est. Sit sint dolorum voluptate.', 1, 4, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(67, 'Cupiditate voluptatum qui labore consequatur.', 'Ab at qui beatae rerum sed velit accusamus. Perferendis voluptatem blanditiis suscipit laborum. Tenetur voluptatem culpa consequatur.\n\nCupiditate rerum at nostrum ea quia omnis est. Perspiciatis ut beatae magni ducimus aut eligendi animi. Et esse sint possimus placeat corporis nihil.\n\nEst non esse ipsa adipisci hic sed hic. Itaque rerum at in quia aut. Unde quidem cumque consectetur harum adipisci ut voluptatem qui.', 1, 9, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(68, 'Repellat tenetur omnis ipsam tenetur.', 'Iure enim maxime eos accusamus quaerat. Quasi sit aut voluptas assumenda labore occaecati ea. Ipsum consequatur quibusdam vitae nisi et iusto. Sit et expedita consequatur commodi ipsam ipsa et.\n\nSit esse recusandae perspiciatis dolores itaque cupiditate. Enim aut ut molestiae quia perspiciatis. Placeat pariatur sit magni esse.\n\nTemporibus non cupiditate molestiae autem aut. Dolore animi deleniti enim et facilis accusantium. Animi est vel asperiores sed atque est. Quisquam necessitatibus enim ipsa. Veritatis labore vel voluptates.', 2, 8, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(69, 'Aut rerum doloribus quam quia.', 'Tenetur enim quos possimus. Dolor totam vero natus alias vero impedit et. Vel voluptatem est accusamus asperiores. Unde dolores quasi qui facere cumque cumque aperiam.\n\nQuod aut et consequatur voluptates doloremque doloremque magnam. Natus architecto vitae iste natus vero. Sint voluptas ab repudiandae doloremque adipisci culpa excepturi. Pariatur quidem et saepe sint fugit. Est ab facilis dolores nam doloribus cumque dolor.\n\nFugiat vero delectus commodi id quia sunt ut. Occaecati sed dolorem est. Necessitatibus hic sunt corporis id non esse in.', 2, 8, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(70, 'Voluptatem sunt molestiae ea quia occaecati excepturi sit.', 'Dolor necessitatibus magni eius porro eum consequatur labore. Omnis earum accusantium quo quos. Et quas voluptate eum adipisci architecto sint.\n\nNulla adipisci dolores veritatis accusantium fuga et quo. Omnis et neque quasi consequatur et reprehenderit. Voluptate officia earum qui pariatur. Aut exercitationem quia voluptates consequatur perferendis sunt voluptatem sunt.\n\nEnim fugit quo et dolores ad. Suscipit rerum ex cum nulla ex accusantium magnam. Eius sed non veritatis voluptas. Similique debitis recusandae nihil. Autem non quia est dolores facere veritatis.', 2, 6, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(71, 'Qui voluptate et repellat debitis.', 'Fugit ducimus nulla voluptas possimus ratione ea. Assumenda et modi aperiam soluta. Enim nam sit in cum. Ratione nesciunt corrupti numquam similique.\n\nTempore eveniet illo nisi quam et ipsa blanditiis. Incidunt mollitia et veniam rerum dolorem assumenda alias. Voluptatibus non debitis enim saepe dolores fuga maiores et.\n\nPariatur et delectus culpa placeat est. Alias est vel minus aspernatur veniam voluptas. Natus architecto fugit quis quia aut et. Maxime aliquid impedit autem pariatur natus corporis voluptas aut.', 3, 3, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(72, 'Non ut non pariatur dolor hic.', 'Eos et aut eum occaecati voluptas. Vel voluptatem atque quam a voluptatem expedita. Rerum quam eum est.\n\nArchitecto asperiores soluta officiis rerum est non rerum quasi. Temporibus explicabo assumenda ratione. Quod quisquam doloremque vel.\n\nDolor debitis natus maxime excepturi et. Omnis voluptatem aut atque velit. Tenetur molestias voluptates voluptatum earum quis molestias sunt. Voluptatem voluptatibus exercitationem iusto quia porro veniam.', 3, 6, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(73, 'Consectetur consequatur consequatur ut eos voluptatem dolorem.', 'Porro sed vel qui itaque. Vel eum eaque nisi maxime sint sed rem.\n\nUt molestiae non totam atque quasi blanditiis praesentium. Quo nihil ipsum vel ut et non aliquam. Quia ipsum rerum qui rerum sint. Sed id sed quasi fuga ab quo officia. Quia necessitatibus sunt et exercitationem rerum autem non.\n\nRem rerum nam voluptas est qui quam minus qui. Temporibus eaque nisi nostrum aspernatur delectus ut quia repudiandae. Rem aperiam qui praesentium voluptate. Aspernatur quidem tempora beatae officiis qui tenetur quod error.', 2, 1, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(74, 'Dolorem incidunt enim est corporis doloremque minima consectetur.', 'Nulla doloremque vel omnis molestias tempora dolorum. Debitis placeat eum labore magnam veritatis sed. Numquam animi minus at explicabo. Expedita rerum nulla consequatur voluptatum.\n\nExpedita qui vitae ut consequatur enim laboriosam corporis. Laboriosam vel totam repudiandae consequatur est quia expedita. Inventore reprehenderit consectetur molestiae commodi ex. Beatae alias reprehenderit quos officia placeat.\n\nPariatur fuga optio sunt illo in. Error iusto repellendus nihil et. Natus qui quia qui eos omnis aut. Est sit consequatur omnis illum aut.', 1, 4, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(75, 'Ullam dolores voluptate at ad nesciunt.', 'Officiis est totam ullam atque. Et quidem quos voluptatum cumque. Eos optio illo qui. Omnis et optio voluptas illo non repellendus quia sed.\n\nQuo voluptas officiis voluptas sed porro officiis. Repellendus quia voluptatem fugiat quasi. Ut ipsum dolore in labore similique. Ipsum eligendi illo repellat placeat.\n\nOdio blanditiis qui perspiciatis asperiores. Rerum architecto aliquam numquam tempore vel ut.', 3, 3, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(76, 'Nobis vel voluptatibus ab et at.', 'Eaque sequi fugit molestiae qui repellendus dignissimos. Quia ut omnis quidem recusandae. Facere iusto aut atque et illo nesciunt. Quas quod aut provident et quos iste eum.\n\nOccaecati rerum sed asperiores exercitationem eum dolores aut. Excepturi pariatur soluta dolores doloremque veritatis odio et. Aut qui nesciunt repellat omnis sint ad fugiat. In cupiditate sed nihil similique.\n\nPariatur aspernatur voluptatibus ut ducimus accusamus quaerat. Et earum consectetur asperiores sit nemo et neque. Ea repellendus cumque quis amet saepe aut. Ratione nisi dolor omnis aut qui.', 1, 2, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(77, 'Blanditiis placeat et et non.', 'Magni quo dolor sint in illum et. Rem dicta est provident voluptatem tempora. Rerum fugiat magni et quae fugiat qui at. Non expedita delectus consequatur explicabo.\n\nLabore quasi ex provident. Dolore non exercitationem dolores officiis omnis. Dolorem nam quibusdam quos deserunt explicabo.\n\nConsequatur hic occaecati necessitatibus expedita. Quaerat voluptatem excepturi veniam velit inventore. Omnis est debitis quidem.', 3, 9, '2023-03-20 08:00:52', '2023-03-20 08:00:52'),
(78, 'Est non ipsum aperiam.', 'Rerum aut ut sed eum. Est corporis unde rerum accusantium hic ut necessitatibus. Ut et voluptatibus nihil non saepe quis esse. Iusto eveniet nam velit illo deleniti perferendis culpa et.\n\nQuo voluptatem dignissimos ratione. Eum aperiam explicabo et nulla ea. Amet explicabo enim cum omnis. Doloremque est dolorem adipisci officia autem.\n\nUt similique qui enim autem aspernatur. Harum voluptas fugit minus sit aspernatur eum sequi. Aliquam sunt eos voluptatem quia non illum. Mollitia nihil et culpa eveniet distinctio velit. Et debitis eaque cumque corporis sapiente possimus.', 2, 9, '2023-03-20 08:00:52', '2023-03-20 08:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  `category_fr` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `category`, `category_fr`) VALUES
(1, 'Atari', 'Atari'),
(2, 'Computers', 'Ordinateurs'),
(3, 'Joysticks', 'Manettes'),
(4, 'Emulation', 'Émulation'),
(5, 'Culture', 'Culture'),
(6, 'Nostalgia', 'Nostalgie'),
(7, 'Hardware', 'Matériel'),
(8, 'Soundtracks', 'Trame Sonores'),
(9, 'Guides', 'Guides');

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nom` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateNaissance` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ville` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`id`, `id_user`, `nom`, `adresse`, `phone`, `email`, `dateNaissance`, `id_ville`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Lauren Leanon', '9070 Kunde Valley Suite 902', '667.242.9191', 'forrest33@example.net', '1988-11-02', 61, '2023-02-04 06:03:11', '2023-02-04 13:29:19'),
(2, NULL, 'Kristoffer Haag', '929 Philip Oval', '(715) 497-9084', 'ldonnelly@example.net', '1974-07-28', 73, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(3, NULL, 'Mrs. Gisselle Kertzmann I', '6722 Stehr Row Apt. 435', '+1.302.847.6165', 'qzieme@example.org', '1982-12-20', 64, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(4, NULL, 'Kelvin Lindgren', '6827 Bergstrom Isle', '+1-269-834-3451', 'rhett.bradtke@example.net', '2003-06-25', 67, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(5, NULL, 'Mrs. Jolie Heathcote', '67923 Erin Highway', '+1.657.658.6988', 'elmore.dubuque@example.net', '1992-04-27', 61, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(6, NULL, 'Gina Thiel IV', '2321 Peter Lodge Suite 096', '+1.929.346.8475', 'agottlieb@example.com', '1970-09-05', 62, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(7, NULL, 'Madge Kulas', '3216 Runte Forges Apt. 234', '727-729-0947', 'winfield45@example.net', '2003-08-30', 75, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(8, NULL, 'Kip McClure Sr.', '4642 Pouros Valleys Apt. 176', '1-952-750-3004', 'kquigley@example.net', '1995-05-15', 61, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(9, NULL, 'Dr. Alba DuBuque', '175 Waters Fields', '(248) 779-6860', 'shakira89@example.org', '2018-10-01', 74, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(10, NULL, 'Mrs. Heath Johns DDS', '43765 Williamson Harbor Apt. 210', '+1-938-474-7987', 'corine.lubowitz@example.org', '1986-01-03', 61, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(11, NULL, 'Orrin Ankunding', '640 Connie Court', '781-799-6493', 'gloria.nitzsche@example.org', '1987-12-13', 72, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(12, NULL, 'Miss Berenice Willms', '601 Kaylin Extension', '+1.631.730.0307', 'qbrekke@example.com', '2006-02-22', 71, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(13, NULL, 'Damian Swift', '970 Thomas Pass', '+1.445.204.3544', 'liana.watsica@example.net', '1985-12-06', 70, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(14, NULL, 'Jermaine Kuvalis', '9310 Bartoletti Roads', '1-520-972-6817', 'mia.stracke@example.org', '1975-10-29', 62, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(15, NULL, 'Tyrese Mante', '536 Julien Fork Apt. 697', '331.586.7642', 'durgan.carmela@example.com', '1987-07-11', 68, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(16, NULL, 'Ms. Josiane Conn Sr.', '680 Finn Cape Suite 894', '848-417-0832', 'balistreri.laverna@example.com', '1978-03-05', 67, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(17, NULL, 'Mrs. Melyssa Lind III', '6803 Garnett Run', '+1 (505) 597-4097', 'renner.alfredo@example.org', '1994-11-04', 70, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(18, NULL, 'Dr. Jerrell Lueilwitz Jr.', '2530 Turner Loop Suite 615', '484-347-0882', 'lilliana71@example.com', '1976-12-01', 75, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(19, NULL, 'Frederique Lehner', '2114 Giovanna Harbors Suite 064', '(928) 824-0136', 'wiza.alfred@example.net', '1991-10-21', 61, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(20, NULL, 'Jasmin Russel', '35324 Elouise Tunnel', '+1 (641) 808-4849', 'jennyfer06@example.net', '1991-04-22', 70, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(21, NULL, 'Elijah Parisian', '168 Armstrong Forest Suite 591', '+1-949-744-1650', 'kunde.haleigh@example.org', '1992-08-11', 66, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(22, NULL, 'Cristina Buckridge', '38463 Paul Rue Apt. 664', '+1 (228) 923-0935', 'eupton@example.com', '1975-10-27', 73, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(23, NULL, 'Shanna Conn', '4258 Malika Gateway Apt. 290', '+1-865-992-5018', 'kennedi.swaniawski@example.com', '1978-07-18', 64, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(24, NULL, 'Perry Stamm', '36238 Emmitt Ford', '+1-352-546-5122', 'cummerata.gabe@example.org', '2011-08-20', 68, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(25, NULL, 'Salvador Koelpin Sr.', '435 Fisher Walks Suite 600', '1-678-823-1338', 'damore.eleonore@example.org', '2018-01-22', 67, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(26, NULL, 'Amparo O\'Kon', '101 Alysson Pine', '(442) 534-3549', 'jacky.okon@example.com', '1971-01-12', 70, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(27, NULL, 'Nina McKenzie', '374 Magdalena Curve', '(262) 958-7551', 'edwina57@example.net', '2018-04-11', 66, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(28, NULL, 'Nina Abernathy I', '68910 Crystal Station Apt. 049', '+14409304629', 'delores.okon@example.com', '1970-03-17', 75, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(29, NULL, 'Sigurd White', '367 Evert Flat Apt. 245', '+1.463.994.2750', 'dluettgen@example.net', '1993-06-16', 61, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(30, NULL, 'Kacey Bailey', '80300 Baby Way Suite 329', '1-310-733-5650', 'jsmitham@example.com', '1977-05-09', 67, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(31, NULL, 'Prof. Zoila Hickle Sr.', '8325 Carrie Burgs Apt. 694', '903.967.3672', 'destiny98@example.com', '1985-11-14', 64, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(32, NULL, 'Grady Wisoky', '50431 Lolita Vista Suite 636', '1-272-691-4716', 'ardith.homenick@example.org', '1998-06-21', 62, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(33, NULL, 'Prof. Ova Kiehn', '693 Volkman Port', '+1-904-965-9906', 'zechariah.kuphal@example.org', '2013-03-10', 69, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(34, NULL, 'Lilly Beatty', '4952 Hoppe Springs', '(703) 336-1227', 'sabshire@example.net', '2010-10-19', 66, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(35, NULL, 'Shanel Considine', '23529 Corkery Viaduct', '+1-940-364-6135', 'sierra29@example.org', '1987-02-10', 71, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(36, NULL, 'Savanah Hartmann', '9457 Linda Loaf', '+1 (283) 562-7848', 'kirk.ziemann@example.org', '1978-02-19', 62, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(37, NULL, 'Mr. Elliot Brakus', '3604 Torphy Inlet Suite 374', '+1-814-205-1677', 'vwaters@example.com', '2009-11-07', 71, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(38, NULL, 'Clay Jacobson', '231 Kris Grove', '+1.458.267.1923', 'rnikolaus@example.net', '1974-05-24', 67, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(39, NULL, 'Regan Schamberger', '28168 Norwood Forge Suite 207', '+1.689.374.4651', 'orie20@example.org', '1986-04-20', 62, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(40, NULL, 'Lindsey Marquardt', '116 Cummerata Forges', '318.670.9782', 'cbrown@example.com', '1979-01-26', 68, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(41, NULL, 'Euna Goldner', '54030 Hammes Locks', '(707) 977-4933', 'wilber.hudson@example.net', '2013-02-28', 70, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(42, NULL, 'Octavia Waelchi', '873 Pouros Divide Suite 513', '+1-708-578-5965', 'kiehn.craig@example.org', '1989-10-11', 64, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(43, NULL, 'Arlie Marks', '566 Mohammed Islands Suite 811', '540-229-7321', 'afay@example.org', '1990-12-28', 75, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(44, NULL, 'Amelia Haag', '502 Anderson Village Apt. 217', '1-760-994-0294', 'hintz.delilah@example.org', '1984-09-15', 72, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(45, NULL, 'Brando Schmitt V', '4252 Jeanie Streets Suite 235', '+1 (706) 477-5824', 'hilpert.fatima@example.net', '1977-12-24', 75, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(46, NULL, 'Hardy Dibbert', '351 Legros Glens', '1-719-384-3628', 'considine.kaelyn@example.org', '2015-12-10', 72, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(47, NULL, 'Royce Howell III', '7441 Aniyah Villages Apt. 998', '320-740-0398', 'kristoffer67@example.net', '1993-04-30', 61, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(48, NULL, 'Herbert Koss', '28718 Jacobs Mews Suite 824', '913-746-2241', 'evangeline.kulas@example.org', '1991-04-24', 64, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(49, NULL, 'Kevon Borer', '37349 Eunice Fall Apt. 712', '603-770-7934', 'harber.al@example.com', '2021-09-27', 71, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(50, NULL, 'Michele Kuphal', '719 Sawayn Course', '1-484-373-1235', 'kariane.stehr@example.net', '2019-06-28', 72, '2023-02-04 06:03:11', '2023-02-04 06:03:11'),
(105, 1, 'Kamba', '12345 Test Street', '456-454-4564', 'test@test.com', '1900-01-01', 73, '2023-02-25 12:39:25', '2023-02-25 12:39:25'),
(106, NULL, 'Marcus', '4545 Fake Street South', '555-555-5555', 'testy@testo.com', '1976-06-07', 67, '2023-02-27 12:16:56', '2023-02-27 12:16:56'),
(107, NULL, 'Farcus', '4545 Fake Street South', '555-555-5555', 'fake@testo.com', '1976-06-08', 61, '2023-02-27 12:19:20', '2023-02-27 12:19:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_uploads`
--

CREATE TABLE `file_uploads` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_uploads`
--

INSERT INTO `file_uploads` (`id`, `user_id`, `title`, `name`, `path`, `created_at`, `updated_at`) VALUES
(2, 1, 'Bla bla bla', NULL, 'public/IOfVxoqQrmGnDFXxjw2ypjIU0TvkiqPPz418oTMC.pdf', '2023-02-28 10:33:18', '2023-02-28 10:33:18'),
(12, 1, 'SPirals', NULL, 'local/JxQpcCDfAQPkNKdeDMfkSivxib5s6QKjHNqrVFJH.png', '2023-03-20 07:36:32', '2023-03-20 07:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_03_235519_create_etudiants_table', 2),
(6, '2023_02_03_235558_create_villes_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kamba', 'test@test.com', NULL, '$2y$10$5s/f2XI9vJGUYHHWgQY53OheVPczphkB.Q/QLieY28OXV9XMYCx.q', NULL, '2023-02-25 12:39:25', '2023-02-25 12:39:25'),
(2, 'Marcus', 'testy@testo.com', NULL, '$2y$10$kdw98K1Wt3t2KNK7JEdXYOt7GxK3h9s/qNkbHXefuFgdmk.JQFJzW', NULL, '2023-02-27 12:16:56', '2023-02-27 12:16:56'),
(3, 'Farcus', 'fake@testo.com', NULL, '$2y$10$Gc/AHe86pEIGNARrnglVaut9wizIUfRTQSiJBMqDMhTdZxOoMDING', NULL, '2023-02-27 12:19:20', '2023-02-27 12:19:20');

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(61, 'Smithberg', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(62, 'Lillianberg', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(63, 'Port Roelburgh', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(64, 'South Jarodside', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(65, 'Jimmiechester', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(66, 'Port Alfreda', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(67, 'Lake Laury', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(68, 'Spencerton', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(69, 'Port Candacemouth', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(70, 'Schambergerville', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(71, 'Hellerside', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(72, 'Randiview', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(73, 'North Clark', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(74, 'South Elisabethview', '2023-02-04 05:44:10', '2023-02-04 05:44:10'),
(75, 'Aaliyahside', '2023-02-04 05:44:10', '2023-02-04 05:44:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_id_idx` (`user_id`),
  ADD KEY `fk_blog_posts_categorys1_idx` (`categorys_id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ville_idx` (`id_ville`),
  ADD KEY `id_user_idx` (`id_user`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `file_uploads`
--
ALTER TABLE `file_uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_uploads`
--
ALTER TABLE `file_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `fk_blog_posts_categorys1` FOREIGN KEY (`categorys_id`) REFERENCES `categorys` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_ville` FOREIGN KEY (`id_ville`) REFERENCES `villes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `file_uploads`
--
ALTER TABLE `file_uploads`
  ADD CONSTRAINT `file_uploads_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
