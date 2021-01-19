-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 26, 2020 at 11:51 AM
-- Server version: 10.3.22-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `halavsma_halalmarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_config`
--

CREATE TABLE `app_config` (
  `id` int(11) NOT NULL,
  `close_day` varchar(50) CHARACTER SET utf8 NOT NULL,
  `app_status` int(11) NOT NULL DEFAULT 1,
  `details_ar` text CHARACTER SET utf8 NOT NULL,
  `details_tr` text CHARACTER SET utf8 NOT NULL,
  `fb` text CHARACTER SET utf8 DEFAULT NULL,
  `tw` text CHARACTER SET utf8 DEFAULT NULL,
  `yt` text CHARACTER SET utf8 DEFAULT NULL,
  `wt` text DEFAULT NULL,
  `close_app` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_config`
--

INSERT INTO `app_config` (`id`, `close_day`, `app_status`, `details_ar`, `details_tr`, `fb`, `tw`, `yt`, `wt`, `close_app`, `image`, `created_at`, `updated_at`) VALUES
(1, 'NotFound', 1, '<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span dir=\"LTR\" style=\"font-size:14pt\">Halal Market&nbsp;</span><span style=\"font-size:14pt\">هو تطبيق يتم من خلاله تسويق منتجات استهلاكية كالخضار والفواكه الطازجة ومنتجات السوبرماركت والتي يتم تامينها من الأسواق المركزية في الإقليم المستهدف.&nbsp;</span><span dir=\"LTR\" lang=\"EN-US\" style=\"font-size:14pt\">Halal Market</span><span style=\"font-size:14pt\">&nbsp;(سوف يشار إليه فيما بعد بـ</span><span dir=\"LTR\" style=\"font-size:14pt\">&nbsp;&quot;HM&quot;&nbsp;</span><span style=\"font-size:14pt\">العميل او الزبون (سوف يشار إليه لاحقاً بـ &quot;العميل&quot;) مندوبي التوزيع (ويشار إليهم بـ &quot;مندوب توزيع</span><strong><span dir=\"LTR\" style=\"font-size:14pt\">&quot;</span></strong><strong><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">).</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong><span style=\"font-size:14pt\">التطبيق والعضوية</span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\"><span style=\"color:black\">بعد تنزيل التطبيق، وملء الأقسام المطلوبة للتسجيل وتأكيد رقم&nbsp;</span></span><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">الموبايل</span></span></span><span style=\"font-size:14pt\"><span style=\"color:black\">، يمكن للعميل البدء في إستخدام التطبيق وفقا لهذه الشروط عن طريق إدخال كلمة المرور الخاصة به.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">يوافق العميل على أن جميع المعلومات المدخلة للتطبيق كاملة وصحيحة ومحدثة. ويمكن للعميل دائمًا تحديث معلوماته الشخصية من خلال التطبيق</span><span dir=\"LTR\" style=\"font-size:14pt\">.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong><span style=\"font-size:14pt\">استخدام التطبيق</span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">عندما يسجل العميل في التطبيق وينقر على زر تأكيد الطلب بعد فتح التطبيق، سيتم تسليم المنتجات إليه على العنوان الذي يختاره وفي وقت التسليم الذي سيوافق عليه</span><span dir=\"LTR\" style=\"font-size:14pt\">.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">في حالة عدم استقبال العميل للطلب المورد او عدم استلامه من مندوب التوزيع دون سبب وجيه، تحتفظ</span><span dir=\"LTR\" style=\"font-size:14pt\">&nbsp;HM&nbsp;</span><span style=\"font-size:14pt\">بالحق في حذف العميل من التطبيق</span><span dir=\"LTR\" style=\"font-size:14pt\">.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">يلتزم العميل بدفع كامل قيمة الطلب او الطلبات الموكدة من قبله عبر التطبيق.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">يوافق العميل على عدم اتخاذ أي فعل و/او إجراء قد يستغل الخدمة التي تقدمها</span><span dir=\"LTR\" style=\"font-size:14pt\">&nbsp;HM&nbsp;</span><span style=\"font-size:14pt\">مجانًا</span><span dir=\"LTR\" style=\"font-size:14pt\">.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">عندما يقوم العميل بتأكيد طلب، يتم تحصيل مبلغ الطلب بواسطة</span><span dir=\"LTR\" style=\"font-size:14pt\">&nbsp;HM&nbsp;</span><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">و</span></span><span style=\"font-size:14pt\">يمكن للعميل إلغاء الطلب من خلال الاتصال بخدمة العملاء</span>&nbsp;<span style=\"font-size:14pt\">وذلك بناءً على سبب وجيه</span><span dir=\"LTR\" style=\"font-size:14pt\">.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">في حالة انتهاك العميل لهذه الشروط، تحتفظ&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">&nbsp;بالحق في تعليق عضوية العميل او حذفه تماماً من التطبيق.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">باستخدامه الخدمة التي تقدمها&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">، يوافق العميل على استخدام التطبيق وفقاً للقانون والغرض، وأنه يتحمل مسؤوليته القانونية الخاصة في كل معاملة وإجراء يقوم به داخل التطبيق.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">لا تتحمل&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">&nbsp;المسؤولية بأي شكل من الأشكال، بشكل مباشر او غير مباشر، عن أي فعاليات و/او إجراءات و/او أنشطة ينفذها العميل من خلال التطبيق و/او في سياق هذه الشروط والقوانين.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">في حالة عدم قدرة العميل على الاستفادة من الخدمة بسبب صعوبات فنية، لن تكون</span>&nbsp;<span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">&nbsp;مسؤولة عن أي التزام محدد بموجب هذه الشروط ولا يمكن تقديم أي طلب</span>&nbsp;<span style=\"font-size:14pt\">تعويضات تحت أي اسم او مسمى.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">يقر العميل بأنه لا يمكن تحميل&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">&nbsp;المسؤولية، بشكل مباشر او غير مباشر، عن أي&nbsp;</span><span style=\"font-size:14pt\">أعمال</span><span style=\"font-size:14pt\">&nbsp;و/او إجراءات و/او أنشطة يقوم بها مندوب التوزيع و/او أي طرف ثالث ينتهك هذه الشروط والقانون من خلال التطبيق و/او داخل التطبيق.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">يوافق العميل على أن المسؤولية الكاملة عن أمان أدوات الوصول -والتي هي ملك له- إلى النظام (اسم المستخدم، وكلمة المرور، وما إلى ذلك) التي يستخدمها للاستفادة من خدمات&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">، لتفادي وصول أي طرف ثالث لتلك المعلومات.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">يوافق العميل على أنه لن يقوم بإعادة إنتاج او نسخ او توزيع الصور والنصوص والصور السمعية البصرية ومقاطع الفيديو والملفات وقواعد البيانات والكتالوجات والقوائم المضمنة في التطبيق، والذي يعتبر تعدي على الحقوق الشخصية او حقوق الملكية والملكية الخاصة بـ&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">&nbsp;و/او طرف ثالث آخر.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">عندما يطلب العميل منتج/</span>&nbsp;<span style=\"font-size:14pt\">خدمة متوفرة في التطبيق، يعمل</span><span dir=\"LTR\" style=\"font-size:14pt\">&nbsp;HM&nbsp;</span><span style=\"font-size:14pt\">كوسيط فقط، وبالتالي لا يكون مسؤول عن الجودة او توفير المنتجات او الخدمات المقدمة للعميل من خلال التطبيق مباشرة. ولا يتحمل أي مسؤولية عن التعويض عن الضرر الناجم</span><span dir=\"LTR\" style=\"font-size:14pt\">.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\"><span style=\"color:black\">يوافق العميل على أن جميع الطلبات المقدمة على التطبيق وجميع المشتريات هي للاستخدام الشخصي وليس لأغراض إعادة البيع.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\"><span style=\"color:black\">تقتصر الطلبات المقدمة من خلال التطبيق على توفر القوائم التجارية في وقت الطلب. قد لا تتمكن&nbsp;</span></span><span dir=\"LTR\" style=\"font-size:14pt\"><span style=\"color:black\">HM</span></span><span style=\"font-size:14pt\"><span style=\"color:black\">&nbsp;من تسليم بعض المنتجات غير المتوفرة في المخازن ذات الصلة إلى العميل او عرض منتج بديل على العميل. قد لا يعني عرض المنتجات في التطبيق أنها في المخزون.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\"><span style=\"color:black\">في حالة حدوث خطأ في معلومات السعر ومواصفات المنتج/ الخدمة المقدمة من خلال التطبيق، يمكن ل&nbsp;</span></span><span dir=\"LTR\" style=\"font-size:14pt\"><span style=\"color:black\">HM</span></span><span style=\"font-size:14pt\"><span style=\"color:black\">&nbsp;إبلاغ العملاء وتسليم او إلغاء الطلب لتصحيح هذا الخطأ.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\"><span style=\"color:black\">سوف تولي&nbsp;</span></span><span dir=\"LTR\" style=\"font-size:14pt\"><span style=\"color:black\">HM</span></span><span style=\"font-size:14pt\"><span style=\"color:black\">&nbsp;العناية الواجبة عند تقديم شرح دقيق وصادق حول محتوى المنتجات المعروضة للبيع من خلال التطبيق، لكنها ليست مسؤولة عن أي مشاكل او أضرار قد تنشأ بسبب التفسيرات المفقودة و/او غير الصحيحة فيما يتعلق بمحتويات المنتجات.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong><span style=\"font-size:14pt\"><span style=\"color:black\">إنهاء هذا العقد</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\"><span style=\"color:black\">يجوز للعميل إلغاء عضوية&nbsp;</span></span><span dir=\"LTR\" style=\"font-size:14pt\"><span style=\"color:black\">HM</span></span><span style=\"font-size:14pt\"><span style=\"color:black\">&nbsp;في أي وقت، دون إبداء أي سبب، بالطرق التالية؛</span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14pt\"><span style=\"color:black\">عن طريق إرسال بريد إلكتروني إلى&nbsp;</span></span><a href=\"mailto:info@e-halalmarket.com\" style=\"color:#954f72; text-decoration:underline\"><span dir=\"LTR\" style=\"font-size:14pt\">info@e-halalmarket.com</span></a></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14pt\"><span style=\"color:black\">عن طريق الاتصال برقم خدمة العملاء (</span></span><span dir=\"LTR\" style=\"font-size:14pt\">00 32 465 10 78 06</span><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">)</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong><span style=\"font-size:14pt\"><span style=\"color:black\">حماية البيانات الشخصية والخصوصية</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\"><span style=\"color:black\">كمشرف تقوم&nbsp;</span></span><span dir=\"LTR\" style=\"font-size:14pt\"><span style=\"color:black\">HM</span></span><span style=\"font-size:14pt\"><span style=\"color:black\">&nbsp;بجمع البيانات التالية في وقت التسجيل في التطبيق، لأنهم مرتبطون بشكل مباشر بإنشاء وأداء عقد العضوية هذا:</span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14pt\">ملفات تعريف الارتباط (الاسم واللقب ورقم الهاتف المحمول وعنوان البريد الإلكتروني</span><span style=\"font-size:14pt\"><span style=\"font-family:Arial,sans-serif\">)</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14pt\">معلومات إصدار نظام التشغيل للجهاز المحمول الذي تستخدمه</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14pt\">معلومات الموقع من الجهاز المحمول الذي تستخدمه</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14pt\">معلومات التصويت والتعليقات المقدمة للساعي في نهاية التسليم</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14pt\">التعليقات المقدمة في قسم &quot;الاقتراح والشكوى&quot; داخل الطلب</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14pt\">نقل البيانات الشخصية وأمن البيانات</span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">آخذين بعين الاعتبار انه يتم عبر الإنترنت العام لا يمكن ضمان أن نقل البيانات آمن 100٪. فنحن نستخدم اتصالات مشفرة لحماية بياناتك، ولكن خطر الهجمات على اتصال الإنترنت أثناء نقل البيانات على مسؤوليتك الخاصة. وسوف نتخذ جميع أنواع الإجراءات الأمنية لحماية بياناتك بعد وصولها إلى خوادمنا.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">لا تقوم&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">&nbsp;ببيع او تأجير او تسويق او نقل أي بيانات شخصية و/او بيانات حركة المرور او محتوى الاتصال إلى أطراف ثالثة دون موافقتك الصريحة، باستثناء ما ذكر أعلاه، ما لم يكن ذلك مطلوبًا قانونيًا او رسمياً.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">نحتفظ بالحق في إجراء تغييرات على سياسة الخصوصية من وقت لآخر. وفي حال قمنا بذلك، فسيتم تزويدك بمعلومات حول ذلك.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong><span style=\"font-size:14pt\">حقوق الملكية الفكرية</span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">جميع عناصر التطبيق، بما في ذلك على سبيل المثال لا الحصر، التصميم والنص والصورة والرموز الأخرى (المشار إليها فيما يلي باسم &quot;أعمال&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">&nbsp;المحمية بحقوق الطبع والنشر&quot;) تعود إلى&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">. لا يجوز للعميل استخدام خدمات&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">&nbsp;ومعلومات&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">وأعمال&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">&nbsp;المحمية بحقوق الطبع والنشر لأغراض تجارية. لا يجوز للعميل إعادة إنتاج او توزيع او اشتقاق أي عمل يخضع لحقوق الطبع والنشر لـ&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">&nbsp;دون إذن من&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong><span style=\"font-size:14pt\">التغيير في نص هذا العقد</span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">يجوز ل</span><span dir=\"LTR\" style=\"font-size:14pt\">&nbsp;HM</span><span style=\"font-size:14pt\">&nbsp;تغيير العقد في أي وقت، وفقًا لتقديرها الخاص ومن جانب واحد، من خلال التطبيق، في أي وقت تراه مناسبًا. ستصبح الأحكام المعدلة لهذه الشروط سارية في التاريخ او بعد إعلان العميل قبولها عبر الإنترنت من خلال التطبيق، وستبقى الأحكام المتبقية سارية وستستمر في تقديم شروطها ونتائجها.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong><span style=\"font-size:14pt\">الظروف والاسباب القاهرة</span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">في جميع الحالات التي تعتبر قوة قاهرة، فإن&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">&nbsp;ليست مسؤولة عن أداء متأخر او غير كامل او عدم تنفيذ أي من الإجراءات التي تحددها هذه الشروط. لن يتم اعتبار مثل هذه المواقف ومثل هذه التأخيرات، او الأداء الضعيف او المتعثر، او التقصير، او التعويض تحت أي اسم مطلوب من&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">. ويعني مصطلح &quot;القوة القاهرة&quot; ؛ على سبيل المثال لا الحصر، الكوارث الطبيعية وأعمال الشغب والحروب والإضرابات ومشاكل الاتصال والبنية التحتية وانقطاع الإنترنت وانقطاع التيار الكهربائي وسوء الأحوال الجوية؛ وممكن تفسيره على أنه أحداث لا مفر منها لا يتم تجنبها على الرغم من الرعاية المعقولة من الطرف المعني وعلى الرغم من الرعاية اللازمة من قبل&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">إنهاء هذا العقد</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">ستظل هذه الشروط سارية حتى انتهاء عضوية العميل وستستمر النتائج والمسؤوليات المترتبة على الأطراف. في حالة تصرف العميل بشكل ينتهك الأحكام المحددة في هذه الشروط والقواعد المتعلقة بالاستخدام والعضوية وخدمات&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">&nbsp;المدرجة في التطبيق؛ ممكن ل</span><span dir=\"LTR\" style=\"font-size:14pt\">&nbsp;HM</span><span style=\"font-size:14pt\">&nbsp;إنهاء العقد من جانب واحد.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong><span style=\"font-size:14pt\">صلاحية سجلات&nbsp;</span></strong><strong><span dir=\"LTR\" style=\"font-size:14pt\">HM</span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">يقر العميل بأنه في النزاعات التي قد تنشأ بموجب هذه الشروط، فإن السجلات الإلكترونية وسجلات النظام والسجلات التجارية وسجلات الكمبيوتر المحمول والميكروفيلم والميكروفيش وسجلات الكمبيوتر التي تحتفظ بها&nbsp;</span><span dir=\"LTR\" style=\"font-size:14pt\">HM</span><span style=\"font-size:14pt\">&nbsp;في قاعدة بياناتها او خوادمها ستشكل أدلة موثوقة وملزمة ونهائية وحصرية.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong><span style=\"font-size:14pt\">دخول هذا العقد حيز التنفيذ</span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"font-size:14pt\">تدخل هذه الاتفاقية حيز التنفيذ بعد القبول المتبادل بموافقة العميل الإلكترونية.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"color:black\">Halal Market taze sebze meyve ve market &uuml;r&uuml;nleri gibi t&uuml;ketim &uuml;r&uuml;nlerinin hedef b&ouml;lgenin Hal ve Toptancılardan tedarik ederek pazarlandığı bir uygulamadır. Halal Market (bundan sonra &ldquo;HM&rdquo; olarak anılacaktır), m&uuml;şteriler (bundan sonra &ldquo;M&uuml;şteri&rdquo; olarak da anılacaktır) kuryeleri (bundan sonra &ldquo;Kurye&rdquo; olarak anılacaktır).</span></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong>&Uuml;yelik</strong></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri, Uygulama&rsquo;yı indirip, kayıt i&ccedil;in gerekli olan b&ouml;l&uuml;mleri doldurup GSM numarasını onayladıktan sonra şifresini girerek, işbu Koşullar d&acirc;hilinde Uygulama&rsquo;yı kullanmaya başlayabilir.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri, başvuru esnasında verdiği t&uuml;m bilgilerin daima ve her bakımdan eksiksiz, ger&ccedil;eğe uygun ve g&uuml;ncel olduğunu kabul eder. M&uuml;şteri, her zaman kişisel bilgilerini Uygulama aracılığıyla g&uuml;ncelleyebilir.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri toplam sipariş tutarını teslimat ve/veya servis &uuml;creti ile birlikte teslimat esnasında &ouml;der.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong>Uygulamanın Kullanımı</strong></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri, Uygulama&rsquo;ya kayıt olup Uygulama&rsquo;yı a&ccedil;tıktan sonra sipariş onaylama butonuna tıkladığında, Uygulama aracılığıyla, onayladığı teslimat saatinde se&ccedil;tiği adreste &uuml;r&uuml;nler kendisine Teslim edilecek.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şterinin gelen siparişi beklememesi veya gelen kuryeden ge&ccedil;erli bir sebep olmaksızın siparişi almaması durumunda, HM M&uuml;şteri&rsquo;yi Uygulama&rsquo;dan &ccedil;ıkarma hakkını saklı tutar. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri, Uygulama&rsquo;yı kullanarak ger&ccedil;ekleştirdiği siparişin bedelinin tamamını &ouml;demekle y&uuml;k&uuml;ml&uuml;d&uuml;r. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri, HM&rsquo;in &uuml;cretsiz olarak sunduğu hizmeti istismar edebilecek herhangi bir işlem ve/veya eylemde bulunmamayı kabul eder. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri, sipariş verdiğinde sipariş tutarı HM tarafından tahsil edilmektedir. M&uuml;şteri ge&ccedil;erli bir nedeni olmak &uuml;zere siparişini iptal etmek i&ccedil;in HM M&uuml;şteri Hizmetleri&rsquo;ne ulaşarak siparişinin iptalini talep edebilir.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri&rsquo;nin işbu belirtilen koşullara aykırı davrandığının tespiti halinde, HM M&uuml;şteri&rsquo;nin &uuml;yeliğini askıya alma veya Uygulama&rsquo;dan tamamen &ccedil;ıkarma hakkını saklı tutar. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">HM&rsquo;in sunduğu hizmetten yararlanan M&uuml;şteri, Uygulama&rsquo;yı hukuka ve amacına uygun şekilde kullanmayı ve Uygulama dahilinde yaptığı her işlem ve eylemdeki hukuki sorumluluğunun kendisine ait olduğunu kabul eder.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri&rsquo;nin Uygulama aracılığıyla ve/veya dahilinde, işbu koşullara ve hukuka aykırı olarak ger&ccedil;ekleştirdiği herhangi bir işlem, eylem ve/veya faaliyetleri nedeniyle HM doğrudan veya dolaylı olarak hi&ccedil;bir şekilde sorumlu tutulamaz. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">HM, M&uuml;şteri&rsquo;den kaynaklanan teknik aksaklıklar sebebiyle hizmetten faydalanılamaması durumunda işbu Koşullar ile belirlenen y&uuml;k&uuml;ml&uuml;l&uuml;klerinden herhangi birini ifa edememesi nedeniyle sorumlu tutulamayacak ve kendisinden herhangi bir nam altında herhangi bir talepte bulunulamayacaktır. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri, Uygulama aracılığıyla ve/veya Uygulama dahilinde, işbu Koşullara ve hukuka aykırı olarak kurye ve/veya &uuml;&ccedil;&uuml;nc&uuml; kişiler tarafından ger&ccedil;ekleştirilen herhangi bir işlem, eylem ve/veya faaliyetleri nedeniyle HM&rsquo;in doğrudan veya dolaylı olarak hi&ccedil;bir şekilde sorumlu tutulamayacağını kabul eder.&nbsp;</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri, Uygulama aracılığıyla HM tarafından sunulan hizmetlerden yararlanabilmek amacıyla kullandığı sistem erişim ara&ccedil;larının (kullanıcı ismi, şifre vb.) g&uuml;venliği, saklanması, &uuml;&ccedil;&uuml;nc&uuml; kişilerin bilgisinden uzak tutulması ile ilgili t&uuml;m sorumluluğun tamamen kendisine ait olduğunu kabul eder.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri, Uygulama dahilinde bulunan, HM ve/veya başka bir &uuml;&ccedil;&uuml;nc&uuml; şahsın ayni veya şahsi haklarına, malvarlığı &uuml;zerindeki haklarına saldırıda bulunan nitelikteki resimleri, metinleri, g&ouml;rsel ve işitsel imgeleri, video kliplerini, dosyaları, veri tabanlarını, katalogları ve listeleri &ccedil;oğaltmayacağını, kopyalamayacağını, dağıtmayacağını, işlemeyeceğini kabul eder.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri, Uygulamada sunulan &uuml;r&uuml;n/hizmeti sipariş ettiğinde, HM sadece bir aracı olarak hareket eder ve bu nedenle direkt olarak ticari işletmeler ve s&ouml;z konusu &uuml;&ccedil;&uuml;nc&uuml; kişiler tarafından &uuml;retilen &uuml;r&uuml;n/hizmetlerin kalitesinden, doğru sağlanmasından ya da M&uuml;şteri&rsquo;ye Uygulama &uuml;zerinden sunulan &uuml;r&uuml;n/hizmetler nedeniyle verilen zararın tazmini ile ilgili herhangi bir sorumluluk &uuml;stlenmez.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri, Uygulama &uuml;zerinde verilen t&uuml;m siparişlerin, yapılan t&uuml;m alışverişlerin kişisel kullanım ama&ccedil;lı olduğunu, bunların tekrar satış ama&ccedil;lı olmadığını kabul eder.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Uygulama &uuml;zerinden verilen siparişler, men&uuml;lerinin sipariş anındaki mevcudiyetiyle sınırlıdır. HM stokta bulunmayan &uuml;r&uuml;nlerin M&uuml;şteri&rsquo;ye teslimini sağlayamayabilir veya alternatif &uuml;r&uuml;n sunabilir. &Uuml;r&uuml;nlerin Uygulamada teşhir edilmesi bunların&nbsp;stoklarda bulunduğu anlamına gelmeyebilir.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Uygulama &uuml;zerinden satışa sunulan &uuml;r&uuml;n/hizmetlerin fiyat ve &uuml;r&uuml;n &ouml;zellik bilgilerinde hata oluştuğu takdirde HM, m&uuml;şterileri bilgilendirerek, bu hatayı d&uuml;zeltecek şekilde teslimatı yapabilir veya siparişi iptal edebilir.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Uygulama &uuml;zerinden satışa sunulan &uuml;r&uuml;nlerin i&ccedil;eriğine dair doğru ve d&uuml;r&uuml;st a&ccedil;ıklama yapılmasına dair HM gerekli &ouml;zeni g&ouml;sterecektir ancak sipariş i&ccedil;eriklerine dair yapılan eksik ve/veya hatalı a&ccedil;ıklamalardan dolayı oluşacak problemlerden veya zararlardan HM sorumlu değildir.&nbsp;</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong>Sona Erme</strong></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri, HM &uuml;yeliğini istediği anda sebep g&ouml;stermeksizin, aşağıdaki yollarla iptal edebilir;&nbsp;</span></span></span></p>\r\n\r\n<ul dir=\"ltr\">\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\">info@e-halalmarket.com adresine elektronik posta g&ouml;ndererek,</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\">00 32 465 10 78 06 numaralı m&uuml;şteri hizmetlerini arayarak sonlandırabilir.</span></span></li>\r\n</ul>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong>Kişisel Verilerin Korunması ve Gizlilik Politikası</strong></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">HM, veri sorumlusu sıfatıyla aşağıdaki verileri, Uygulamaya kayıt esnasında toplayarak işbu &uuml;yelik s&ouml;zleşmesinin kurulması ve ifasıyla doğrudan ilgili olmaları nedeniyle işler: </span></span></span></p>\r\n\r\n<ul dir=\"ltr\">\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\">Tanımlama bilgileri (ad, soyadı, cep telefonu numarası, e-posta adresi).</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\">Kullandığınız mobil aygıtın işletim sistemi versiyonu bilgisi.</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\">Kullandığınız mobil aygıttan edinilen konum bilgileri.</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\">Teslimat sonunda kuryeye verilen oylama bilgisi ve yorumlar.</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\">Uygulama i&ccedil;indeki &quot;&Ouml;neri ve Şik&acirc;yet&quot; b&ouml;l&uuml;m&uuml;nde iletilen yorumlar.</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\">Kişisel Verilerin Aktarılması ve Veri G&uuml;venliği</span></span></li>\r\n</ul>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Verilerin aktarılmasının halka a&ccedil;ık internet &uuml;zerinden yapılmasının %100 g&uuml;venli olduğunun garantisi verilemez. Verilerinizi korumak i&ccedil;in şifrelenmiş bağlantı kullanmaktayız fakat veri aktarımı sırasında internet bağlantınıza yapılan saldırıların riski sizin &uuml;zerinizdedir. Verileriniz sunucularımıza ulaştıktan sonra korunması ile ilgili her t&uuml;rl&uuml; g&uuml;venlik &ouml;nlemi tarafımızca alınır.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">HM, yukarıda belirtilen istisna dışında, hukuken gerekli veya y&uuml;k&uuml;ml&uuml; olmadık&ccedil;a kişisel verileri ve/veya trafik verilerini ya da iletişim i&ccedil;eriğini sizin a&ccedil;ık izniniz olmadan satmaz, kiralamaz, pazarlamaz veya başka bir suretle &uuml;&ccedil;&uuml;nc&uuml; kişilere aktarmaz.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Gizlilik Politikası &uuml;zerinde zaman zaman değişiklik yapmak hakkımızı saklı tutarız. Herhangi bir değişiklik yapmamız durumunda bununla ilgili bilgi tarafınıza verilecektir.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong>Fikri M&uuml;lkiyet Hakları</strong></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Uygulamanın tasarım, metin, imge, html kodu ve diğer kodlar da dahil ve fakat bunlarla sınırlı olmamak kaydıyla, t&uuml;m unsurları (bundan b&ouml;yle &ldquo;HM&#39;in telif haklarına tabi &ccedil;alışmalar&rdquo; olarak anılacaktır) HM&rsquo;e aittir. M&uuml;şteri, HM Hizmetleri&#39;ni, HM bilgilerini ve HM&#39;in telif haklarına tabi &ccedil;alışmalarını ticari ama&ccedil;la kullanamaz. M&uuml;şteri HM&#39;in izni olmaksızın, HM&rsquo;in telif haklarına tabi &ccedil;alışmalarını &ccedil;oğaltamaz, dağıtamaz veya bunlardan t&uuml;remiş &ccedil;alışmalar yapamaz veya hazırlayamaz.&nbsp;</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong>S&ouml;zleşme Değişiklikleri</strong></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">HM, tamamen kendi takdirine bağlı ve tek taraflı olarak, s&ouml;zleşmeyi, uygun g&ouml;receği herhangi bir zamanda, Uygulama &uuml;zerinden ilan ederek değiştirebilir. İşbu Koşulların değişen h&uuml;k&uuml;mleri, ilan edildikleri tarihte veya sonrasında, M&uuml;şteri tarafından Uygulama &uuml;zerinden online kabul edilmesi ile ge&ccedil;erlilik kazanacak, geri kalan h&uuml;k&uuml;mler aynen y&uuml;r&uuml;rl&uuml;kte kalarak h&uuml;k&uuml;m ve sonu&ccedil;larını doğurmaya devam edecektir.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong>M&uuml;cbir Sebepler</strong></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Hukuken m&uuml;cbir sebep sayılan t&uuml;m durumlarda HM, işbu Koşullar ile belirlenen edimlerinden herhangi birini ge&ccedil; veya eksik ifa etme veya ifa etmeme nedeniyle y&uuml;k&uuml;ml&uuml; değildir. Bu ve bunun gibi durumlar, HM i&ccedil;in, gecikme, eksik ifa etme veya ifa etmeme veya temerr&uuml;t addedilmeyecek veya bu durumlar i&ccedil;in HM&#39;den herhangi bir nam altında tazminat talep edilemeyecektir. &quot;M&uuml;cbir sebep&quot; terimi; doğal afet, isyan, savaş, grev, iletişim sorunları, altyapı ve internet arızaları, elektrik kesintisi ve k&ouml;t&uuml; hava koşulları da dahil ve fakat bunlarla sınırlı olmamak kaydıyla; ilgili tarafın makul kontrol&uuml; haricinde ve HM&#39;in gerekli &ouml;zeni g&ouml;stermesine rağmen &ouml;nleyemediği, ka&ccedil;ınılamayacak olaylar olarak yorumlanacaktır. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong>S&ouml;zleşmenin Feshi</strong></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">İşbu Koşullar, M&uuml;şteri&rsquo;nin &uuml;yeliği sona erinceye kadar y&uuml;r&uuml;rl&uuml;kte kalacak ve Taraflar arası h&uuml;k&uuml;m ve sonu&ccedil;larını doğurmaya devam edecektir. HM, M&uuml;şteri&rsquo;nin işbu Koşullar dahilinde belirtilen h&uuml;k&uuml;mlere ve Uygulama i&ccedil;inde yer alan kullanıma, &uuml;yeliğe ve HM Hizmetleri&#39;ne ilişkin benzeri kurallara aykırı hareket etmesi durumunda; s&ouml;zleşmeyi tek taraflı olarak feshedebilecektir. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong>HM&rsquo;in Kayıtlarının Ge&ccedil;erliliği</strong></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">M&uuml;şteri, işbu Koşullar dahilinde doğabilecek ihtilaflarda, HM&#39;in kendi veri tabanında veya sunucularında tuttuğu elektronik kayıtların ve sistem kayıtlarının, ticari kayıtlarının, defter kayıtlarının, mikrofilm&nbsp;ve bilgisayar kayıtlarının muteber, bağlayıcı, kesin ve m&uuml;nhasır delil teşkil edeceğini kabul eder.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><strong>Y&uuml;r&uuml;rl&uuml;k</strong></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0cm; margin-right:-14.2pt; text-align:justify\"><span style=\"font-size:medium\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">İşbu S&ouml;zleşme M&uuml;şteri&rsquo;nin elektronik olarak onay vermesi ile karşılıklı olarak kabul edilerek y&uuml;r&uuml;rl&uuml;ğe girmiştir.</span></span></span></p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:116px; position:absolute; top:-12.0104px\">\r\n<div class=\"gtx-trans-icon\" dir=\"ltr\" style=\"text-align:justify\">&nbsp;</div>\r\n</div>', 'https://goo.g', 'https://twitter.com/', 'https://instagram.com/', NULL, 0, '1565417396.jpg', '2018-11-06 09:09:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(500) DEFAULT NULL,
  `name_tr` varchar(500) DEFAULT NULL,
  `image_ar` varchar(500) DEFAULT NULL,
  `image_tr` varchar(500) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `ordered` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_tr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_ar` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_tr` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_sm_ar` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_sm_tr` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `lang` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `ordered` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name_ar`, `name_tr`, `image_ar`, `image_tr`, `image_sm_ar`, `image_sm_tr`, `type`, `lang`, `active`, `ordered`, `created_at`, `updated_at`) VALUES
(5, 'خضار', 'Sebze', '1586034092_ar.jpg', '1586034092_tr.jpg', '1586034092_sm_ar.jpg', '1586034092_sm_tr.jpg', 1, 0, 1, 0, '2020-03-26 17:41:14', '2020-04-18 00:03:46'),
(6, 'فواكه', 'Meyve', '1586034132_ar.jpg', '1586034132_tr.jpg', '1586034132_sm_ar.jpg', '1586034132_sm_tr.jpg', 1, 0, 1, 0, '2020-03-26 17:43:05', '2020-04-05 04:02:12'),
(7, 'لحوم ودواجن', 'Et ve Tavuk', '1586034185_ar.jpg', '1586034185_tr.jpg', '1586034185_sm_ar.jpg', '1586034185_sm_tr.jpg', 1, 0, 1, 0, '2020-03-28 12:44:40', '2020-04-17 16:14:56'),
(8, 'مخبوزات', 'Unlu Mamuller', '1586034367_ar.jpg', '1586034367_tr.jpg', '1586034367_sm_ar.jpg', '1586034367_sm_tr.jpg', 1, 0, 1, 0, '2020-03-28 12:49:22', '2020-04-16 00:48:52'),
(9, 'منتجات الالبان', 'Süt Ürünleri', '1586034414_ar.jpg', '1586034414_tr.jpg', '1586034414_sm_ar.jpg', '1586034414_sm_tr.jpg', 1, 0, 1, 0, '2020-03-28 12:50:47', '2020-04-16 00:58:39'),
(10, 'بهارات وزهور ومجففات', 'Baharat ve kurutulmuş Ürünler', '1587217644_ar.jpg', '1587217644_tr.jpg', '1587217644_sm_ar.jpg', '1587217644_sm_tr.jpg', 1, 0, 1, 0, '2020-03-28 20:30:21', '2020-04-18 20:47:24'),
(11, 'منتجات اساساية', 'Temel Gıda', '1585402331_ar.jpg', '1585402331_tr.jpg', '1585402331_sm_ar.jpg', '1585402331_sm_tr.jpg', 1, 0, 1, 0, '2020-03-28 20:32:11', '2020-04-16 00:56:48'),
(12, 'عناية شخصية', 'Kişisel Bakım', '1586034840_ar.jpg', '1586034840_tr.jpg', '1586034840_sm_ar.jpg', '1586034840_sm_tr.jpg', 1, 0, 1, 0, '2020-03-28 20:34:11', '2020-04-17 16:15:12'),
(13, 'منظفات', 'Ev Bakım', '1586034942_ar.jpg', '1586034942_tr.jpg', '1587119114_sm_ar.jpg', '1587119114_sm_tr.jpg', 1, 0, 1, 0, '2020-03-28 20:38:12', '2020-04-17 17:25:14'),
(14, 'معلبات', 'Konserve', '1587217689_ar.jpg', '1587217689_tr.jpg', '1587217689_sm_ar.jpg', '1587217689_sm_tr.jpg', 1, 0, 1, 0, '2020-03-28 20:46:33', '2020-04-18 20:48:09'),
(15, 'مشروبات', 'İçecekler', '1587217764_ar.jpg', '1587217764_tr.jpg', '1587217764_sm_ar.jpg', '1587217764_sm_tr.jpg', 1, 0, 1, 0, '2020-04-14 00:52:50', '2020-04-18 20:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `body` text CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_data` text DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `body`, `image`, `customer_id`, `customer_data`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'تجريب', NULL, 1, '{\"id\":1,\"mobile\":\"52579958\",\"first_name\":\"\\u0627\\u0633\\u0639\\u062f\",\"last_name\":\"\\u062a\\u062d\\u0631\\u064a\\u0628\",\"verify_code\":\"4078\",\"editable_code\":null,\"new_mobile\":null,\"status\":\"1\",\"type\":\"1\",\"version_name\":\"1.0.0\",\"access_token\":\"d1031ff0c73bfbb9a2db87f516a3679c01d6650daa9b4184d054b198b45c2d72d69003211fc397bd862d71b380e63fb8ed4b977b2404529573c3a6aab26923f7\",\"device_token\":\"c-nzNE44X5E:APA91bGnqHTFokZ2wxHdxB1g6U-jCCEntN6vxkF8fYh2h1JGYXsmdtsbKbxnoBMoGBaxpzTHvjWxCgT9UE4-ITBtoJ-HCfObue2MbHP7IjQ57swMOLSZLeEAoSQrkt7PyiaDOIVg_gtF\",\"active\":\"1\",\"lang\":\"2\",\"model\":null,\"version\":null,\"is_show\":\"0\",\"notes\":\"\",\"created_at\":\"2020-04-17 21:16:07\",\"updated_at\":\"2020-04-18 14:49:45\",\"deleted_at\":null,\"region\":\"3\"}', 1, '2020-04-18 19:13:47', '2020-04-18 19:15:48', '2020-04-18 19:15:48'),
(2, NULL, 'تجريل', NULL, 1, '{\"id\":1,\"mobile\":\"52579958\",\"first_name\":\"\\u0627\\u0633\\u0639\\u062f\",\"last_name\":\"\\u062a\\u062d\\u0631\\u064a\\u0628\",\"verify_code\":\"4078\",\"editable_code\":null,\"new_mobile\":null,\"status\":\"1\",\"type\":\"1\",\"version_name\":\"1.0.0\",\"access_token\":\"d1031ff0c73bfbb9a2db87f516a3679c01d6650daa9b4184d054b198b45c2d72d69003211fc397bd862d71b380e63fb8ed4b977b2404529573c3a6aab26923f7\",\"device_token\":\"c-nzNE44X5E:APA91bGnqHTFokZ2wxHdxB1g6U-jCCEntN6vxkF8fYh2h1JGYXsmdtsbKbxnoBMoGBaxpzTHvjWxCgT9UE4-ITBtoJ-HCfObue2MbHP7IjQ57swMOLSZLeEAoSQrkt7PyiaDOIVg_gtF\",\"active\":\"1\",\"lang\":\"2\",\"model\":null,\"version\":null,\"is_show\":\"0\",\"notes\":\"\",\"created_at\":\"2020-04-17 21:16:07\",\"updated_at\":\"2020-04-18 14:49:45\",\"deleted_at\":null,\"region\":\"3\"}', 1, '2020-04-18 19:16:27', '2020-04-18 19:17:45', '2020-04-18 19:17:45'),
(3, NULL, 'تتت', NULL, 1, '{\"id\":1,\"mobile\":\"52579958\",\"first_name\":\"\\u0627\\u0633\\u0639\\u062f\",\"last_name\":\"\\u062a\\u062d\\u0631\\u064a\\u0628\",\"verify_code\":\"4078\",\"editable_code\":null,\"new_mobile\":null,\"status\":\"1\",\"type\":\"1\",\"version_name\":\"1.0.0\",\"access_token\":\"d1031ff0c73bfbb9a2db87f516a3679c01d6650daa9b4184d054b198b45c2d72d69003211fc397bd862d71b380e63fb8ed4b977b2404529573c3a6aab26923f7\",\"device_token\":\"c-nzNE44X5E:APA91bGnqHTFokZ2wxHdxB1g6U-jCCEntN6vxkF8fYh2h1JGYXsmdtsbKbxnoBMoGBaxpzTHvjWxCgT9UE4-ITBtoJ-HCfObue2MbHP7IjQ57swMOLSZLeEAoSQrkt7PyiaDOIVg_gtF\",\"active\":\"1\",\"lang\":\"2\",\"model\":null,\"version\":null,\"is_show\":\"0\",\"notes\":\"\",\"created_at\":\"2020-04-17 21:16:07\",\"updated_at\":\"2020-04-18 14:49:45\",\"deleted_at\":null,\"region\":\"3\"}', 1, '2020-04-18 19:18:29', '2020-04-18 19:18:29', NULL),
(4, NULL, 'نن', NULL, 1, '{\"id\":1,\"mobile\":\"52579958\",\"first_name\":\"\\u0627\\u0633\\u0639\\u062f\",\"last_name\":\"\\u062a\\u062d\\u0631\\u064a\\u0628\",\"verify_code\":\"4078\",\"editable_code\":null,\"new_mobile\":null,\"status\":\"1\",\"type\":\"1\",\"version_name\":\"1.0.0\",\"access_token\":\"d1031ff0c73bfbb9a2db87f516a3679c01d6650daa9b4184d054b198b45c2d72d69003211fc397bd862d71b380e63fb8ed4b977b2404529573c3a6aab26923f7\",\"device_token\":\"c-nzNE44X5E:APA91bGnqHTFokZ2wxHdxB1g6U-jCCEntN6vxkF8fYh2h1JGYXsmdtsbKbxnoBMoGBaxpzTHvjWxCgT9UE4-ITBtoJ-HCfObue2MbHP7IjQ57swMOLSZLeEAoSQrkt7PyiaDOIVg_gtF\",\"active\":\"1\",\"lang\":\"2\",\"model\":null,\"version\":null,\"is_show\":\"0\",\"notes\":\"\",\"created_at\":\"2020-04-17 21:16:07\",\"updated_at\":\"2020-04-18 14:49:45\",\"deleted_at\":null,\"region\":\"3\"}', 1, '2020-04-18 19:30:15', '2020-04-18 19:30:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name_tr` varchar(255) CHARACTER SET utf8 NOT NULL,
  `intro_state` varchar(255) CHARACTER SET utf8 NOT NULL,
  `currency_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `currency_tr` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `verify_code` varchar(10) NOT NULL,
  `editable_code` varchar(255) DEFAULT NULL,
  `new_mobile` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 2,
  `version_name` varchar(255) NOT NULL DEFAULT '1.0.0',
  `access_token` text NOT NULL,
  `device_token` text DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `lang` int(11) NOT NULL DEFAULT 1,
  `model` varchar(500) DEFAULT NULL,
  `version` varchar(500) DEFAULT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT 0,
  `notes` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `mobile`, `first_name`, `last_name`, `verify_code`, `editable_code`, `new_mobile`, `status`, `type`, `version_name`, `access_token`, `device_token`, `active`, `lang`, `model`, `version`, `is_show`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '52579958', 'اسعد', 'تحريب', '4078', NULL, NULL, 1, 1, '1.0.0', 'd1031ff0c73bfbb9a2db87f516a3679c01d6650daa9b4184d054b198b45c2d72d69003211fc397bd862d71b380e63fb8ed4b977b2404529573c3a6aab26923f7', 'c-nzNE44X5E:APA91bGnqHTFokZ2wxHdxB1g6U-jCCEntN6vxkF8fYh2h1JGYXsmdtsbKbxnoBMoGBaxpzTHvjWxCgT9UE4-ITBtoJ-HCfObue2MbHP7IjQ57swMOLSZLeEAoSQrkt7PyiaDOIVg_gtF', 1, 1, NULL, NULL, 0, '', '2020-04-18 01:16:07', '2020-04-18 20:22:12', NULL),
(2, '56882685', 'اسعد', 'تجريب', '2542', NULL, NULL, 1, 1, '1.0.0', '1d94a67979ea3ba21f9b8869e6e2a8a915caece95fdcd177b13f6b77d02bd3770684247d1e404ff4c8fad54333942f43c8220a3a0243e8cdf90dd426cb611af8', 'fqMYIVOnGkw:APA91bET0jRdr5UfAzgh_RNbc0M06RdKnCr9-aBYK0tnYpegxUKJxEp9zfMXvZzGNLGHCOazSBuWegvkBuPmrjWtDsl1lgNExPsJVxCnwjTnxl-HBqX1Z8UMWXqc4QzwOyhIz2UvVqzt', 1, 1, NULL, NULL, 0, '', '2020-04-18 23:03:58', '2020-04-19 00:21:56', NULL),
(3, '472258886', 'تجريب', 'اسعد', '4590', NULL, NULL, 1, 1, '1.0.0', '11a17565c9eed6cb09c116e16c3850979f5972d62311782810161d5465a1ed2272fb42c308fe825fc6584f2f33fa641fc290d3061bfcae2cc4e7ba006177e490', 'f1sfLWzK9rg:APA91bHZZioj59luEhVScYu8MnhoYEVS0jYLgKIL-ZN5SiX-0txxnR8IE40wsVgOvU5pdPoK5UpigTqPOBBer0iJcQ2SUBGKJMSjIlRbXtbgtVVlbe8dlv4utE1LDMyzrG2qI6H2HG_w', 1, 1, NULL, NULL, 0, '', '2020-04-19 20:19:47', '2020-04-19 20:44:51', NULL),
(4, '499379710', 'اسعد', 'تجريب', '7352', NULL, NULL, 1, 1, '1.0.0', 'c86a7a041ec7ec96d60677e378bc458b4b4d3750fb6e3a6312920edaeb457b7c3fe810905830f188d3d877c9ff8f4db595923f303c92731a68ce4617aa2d7676', 'fqMYIVOnGkw:APA91bET0jRdr5UfAzgh_RNbc0M06RdKnCr9-aBYK0tnYpegxUKJxEp9zfMXvZzGNLGHCOazSBuWegvkBuPmrjWtDsl1lgNExPsJVxCnwjTnxl-HBqX1Z8UMWXqc4QzwOyhIz2UvVqzt', 1, 1, NULL, NULL, 0, '', '2020-04-19 21:04:26', '2020-04-21 17:26:47', NULL),
(5, '470566852', 'اسعد', 'تجريب', '1585', NULL, NULL, 0, 1, '1.0.0', 'c0cc275bfd96bfd764ac7f1f9641f9cd184ca501a9c0e83d2b9656c8327800dc3d2df091f16d381605eeacd0e49c49d0746b57cf9b9c791e5345663a075da3e0', 'fqMYIVOnGkw:APA91bET0jRdr5UfAzgh_RNbc0M06RdKnCr9-aBYK0tnYpegxUKJxEp9zfMXvZzGNLGHCOazSBuWegvkBuPmrjWtDsl1lgNExPsJVxCnwjTnxl-HBqX1Z8UMWXqc4QzwOyhIz2UvVqzt', 1, 1, NULL, NULL, 0, '', '2020-04-21 16:12:33', '2020-04-21 16:34:19', NULL),
(6, '05524715514', 'asad', 'test', '5658', NULL, NULL, 0, 1, '1.0.0', 'd6dea24033f87aa56be0fb0de95e8fe4a8f6718efbdef80aa460a60810b09309eede901fa4ea89386c67af4e873fd8095d0ac0f2a8e5c31e1f744f4e889b5ab2', '55555555555555', 1, 1, NULL, NULL, 0, '', '2020-04-21 16:32:58', '2020-04-21 16:32:58', NULL),
(7, '05524715514', 'asad', 'test', '6400', NULL, NULL, 0, 1, '1.0.0', 'b5508d6a1ad673b572a1a375030ef4f3ea5b3cb1518a4177fb96caf15ec1725dadd53eeabf115e0c8e03ccc935640c48239b63e2b158c72ef9d2018046ab214b', '55555555555555', 1, 1, NULL, NULL, 0, '', '2020-04-21 16:34:12', '2020-04-21 16:34:12', NULL),
(8, '05524715514', 'asad', 'test', '1860', NULL, NULL, 0, 1, '1.0.0', '7b0d0029cbb6fa2d6eb2c68d8449844f9b238bc9cd94e6303ce1d359570306b23bc336476c324b1c7c28cefc32b11db55485701041d41d6ee95a5b5a5b57ac71', '55555555555555', 1, 1, NULL, NULL, 0, '', '2020-04-21 16:35:29', '2020-04-21 16:35:29', NULL),
(9, '05524715514', 'asad', 'test', '4606', NULL, NULL, 0, 1, '1.0.0', '07ef34d65fa71a4ca48a725a9acf410e4897b94f0814cc36e48f42a2c4d7044703dd34ebf26a536f713131a6980b6964586d82c1ac4ea4c014719a77b863040b', '55555555555555', 1, 1, NULL, NULL, 0, '', '2020-04-21 16:51:53', '2020-04-21 16:51:53', NULL),
(10, '05524715514', 'asad', 'test', '7616', NULL, NULL, 0, 1, '1.0.0', 'fb203abce577b6d5bf626dcb50fa2918e5eef7bbb88d54d562b4b18f36f4ccdea55e995bb8e848a4b7ec352c470aafd8f39c7c2772c413b4464773dbf8942111', '55555555555555', 1, 1, NULL, NULL, 0, '', '2020-04-21 17:05:58', '2020-04-21 17:05:58', NULL),
(11, '05524715514', 'asad', 'test', '6381', NULL, NULL, 0, 1, '1.0.0', '045fee08d7518cab82704b894240ebb9086a32711f844c8f96c16fdecb7c15831736dd1499439d238c0ec98f6b422f649debcabc7c1de4a276ac610c7708dc89', '55555555555555', 1, 1, NULL, NULL, 0, '', '2020-04-21 17:11:52', '2020-04-21 17:11:52', NULL),
(12, '05524715514', 'asad', 'test', '4792', NULL, NULL, 0, 1, '1.0.0', '6c84af3bc44cc7280eb3038cbaea789558d601a3bc8611dacd6337c285bd788662356ac55d4df4104f533c1d39b79c98d96fed34564549414acf6fa682bf5839', '55555555555555', 1, 2, NULL, NULL, 0, '', '2020-04-21 17:18:59', '2020-04-21 17:18:59', NULL),
(13, '05524715514', 'asad', 'test', '3067', NULL, NULL, 0, 1, '1.0.0', '5ee9e93b62bfa7088a460e9d94fdb1ea86859c2001f9c37dd7467e64787bf59b9edf98b7fd60720a804f9cb81e78238b8c25fdfef2c16e133acf86bc3ae21c5f', '55555555555555', 1, 1, NULL, NULL, 0, '', '2020-04-21 17:28:27', '2020-04-21 17:28:27', NULL),
(14, '465107806', 'اسعد', 'تجريب', '3472', NULL, NULL, 0, 1, '1.0.0', '5c60bd088b8e93361ba4f3143716b7b15bbae34260658250c8288c197ecfbdd8e15fbdbc33e06b36f56ce565f5f4800e09fbd2aff4ad1f1336659da640f43e5c', 'fqMYIVOnGkw:APA91bET0jRdr5UfAzgh_RNbc0M06RdKnCr9-aBYK0tnYpegxUKJxEp9zfMXvZzGNLGHCOazSBuWegvkBuPmrjWtDsl1lgNExPsJVxCnwjTnxl-HBqX1Z8UMWXqc4QzwOyhIz2UvVqzt', 1, 1, NULL, NULL, 0, '', '2020-04-21 17:30:39', '2020-04-21 17:30:39', NULL),
(15, '05524715514', 'asad', 'test', '1386', NULL, NULL, 0, 1, '1.0.0', '7324519a00933495167a57fddabde66a3110d925eecca104aa1a7de6edd47b79643a80e8c68d14902ee19bdf8d71b976c7b8bdc5d9a78b372fae863aa749a730', '5524710434', 1, 1, NULL, NULL, 0, '', '2020-04-21 17:54:57', '2020-04-21 17:54:57', NULL),
(16, '5524710434', 'asad', 'test', '9890', NULL, NULL, 0, 1, '1.0.0', '2e8f2b2f40a7552d01203eb802768adde607fdf0a8148f3f970b2077aa6895e5d2f3574b6a7e9e48892f62ee0f33639fe0f84b6630243bd978920b0ce8a1c45e', '5524710434', 1, 1, NULL, NULL, 0, '', '2020-04-21 17:55:05', '2020-04-21 17:55:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `compound_name` varchar(255) DEFAULT NULL,
  `building_number` varchar(255) DEFAULT NULL,
  `apartment_number` varchar(255) DEFAULT NULL,
  `floor_number` varchar(255) DEFAULT NULL,
  `other_details` text DEFAULT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `location_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `customer_id`, `name`, `latitude`, `longitude`, `compound_name`, `building_number`, `apartment_number`, `floor_number`, `other_details`, `icon`, `status`, `location_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'البيت', '50.68609414818915', '5.51700621843338', NULL, NULL, NULL, NULL, NULL, 'home.jpg', 1, 3, '2020-04-18 09:47:16', '2020-04-18 16:47:16'),
(2, 1, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-18 01:16:08', '2020-04-18 01:16:08'),
(3, 1, 'مم', '50.68820810887167', '5.5145687609910965', NULL, NULL, NULL, NULL, NULL, 'other.jpg', 0, 3, '2020-04-18 19:33:15', '2020-04-18 19:33:15'),
(4, 2, 'البيت', '50.65091284996894', '5.506074875593185', NULL, NULL, NULL, NULL, NULL, 'home.jpg', 1, 3, '2020-04-18 16:05:27', '2020-04-18 23:05:27'),
(5, 2, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-18 23:03:59', '2020-04-18 23:03:59'),
(6, 3, 'البيت', '50.68457234341478', '5.5111486092209825', NULL, NULL, NULL, NULL, NULL, 'home.jpg', 1, 3, '2020-04-19 13:37:45', '2020-04-19 20:37:45'),
(7, 3, 'العمل', '50.6709508003558', '5.524384304881096', NULL, NULL, NULL, NULL, NULL, 'work.jpg', 1, 3, '2020-04-19 14:07:46', '2020-04-19 21:07:46'),
(8, 4, 'البيت', '50.71531940544331', '5.520080029964447', NULL, NULL, NULL, NULL, NULL, 'home.jpg', 1, 3, '2020-04-19 14:17:13', '2020-04-19 21:17:13'),
(9, 4, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-19 21:04:27', '2020-04-19 21:04:27'),
(10, 5, 'البيت', '', '', '', '', '', '', '', 'home.jpg', 1, 0, '2020-04-21 16:12:35', '2020-04-21 16:12:35'),
(11, 5, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-21 16:12:35', '2020-04-21 16:12:35'),
(12, 6, 'البيت', '', '', '', '', '', '', '', 'home.jpg', 1, 0, '2020-04-21 16:32:59', '2020-04-21 16:32:59'),
(13, 6, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-21 16:32:59', '2020-04-21 16:32:59'),
(14, 7, 'البيت', '', '', '', '', '', '', '', 'home.jpg', 1, 0, '2020-04-21 16:34:12', '2020-04-21 16:34:12'),
(15, 7, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-21 16:34:13', '2020-04-21 16:34:13'),
(16, 8, 'البيت', '', '', '', '', '', '', '', 'home.jpg', 1, 0, '2020-04-21 16:35:30', '2020-04-21 16:35:30'),
(17, 8, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-21 16:35:30', '2020-04-21 16:35:30'),
(18, 9, 'البيت', '', '', '', '', '', '', '', 'home.jpg', 1, 0, '2020-04-21 16:51:54', '2020-04-21 16:51:54'),
(19, 9, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-21 16:51:54', '2020-04-21 16:51:54'),
(20, 10, 'البيت', '', '', '', '', '', '', '', 'home.jpg', 1, 0, '2020-04-21 17:05:59', '2020-04-21 17:05:59'),
(21, 10, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-21 17:05:59', '2020-04-21 17:05:59'),
(22, 11, 'البيت', '', '', '', '', '', '', '', 'home.jpg', 1, 0, '2020-04-21 17:11:53', '2020-04-21 17:11:53'),
(23, 11, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-21 17:11:53', '2020-04-21 17:11:53'),
(24, 12, 'البيت', '', '', '', '', '', '', '', 'home.jpg', 1, 0, '2020-04-21 17:19:01', '2020-04-21 17:19:01'),
(25, 12, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-21 17:19:01', '2020-04-21 17:19:01'),
(26, 13, 'البيت', '', '', '', '', '', '', '', 'home.jpg', 1, 0, '2020-04-21 17:28:28', '2020-04-21 17:28:28'),
(27, 13, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-21 17:28:28', '2020-04-21 17:28:28'),
(28, 14, 'البيت', '', '', '', '', '', '', '', 'home.jpg', 1, 0, '2020-04-21 17:30:40', '2020-04-21 17:30:40'),
(29, 14, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-21 17:30:40', '2020-04-21 17:30:40'),
(30, 15, 'البيت', '', '', '', '', '', '', '', 'home.jpg', 1, 0, '2020-04-21 17:55:00', '2020-04-21 17:55:00'),
(31, 15, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-21 17:55:00', '2020-04-21 17:55:00'),
(32, 16, 'البيت', '', '', '', '', '', '', '', 'home.jpg', 1, 0, '2020-04-21 17:55:06', '2020-04-21 17:55:06'),
(33, 16, 'العمل', '', '', '', '', '', '', '', 'work.jpg', 1, 0, '2020-04-21 17:55:06', '2020-04-21 17:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `customer_favorite`
--

CREATE TABLE `customer_favorite` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_favorite`
--

INSERT INTO `customer_favorite` (`id`, `customer_id`, `item_id`, `created_at`, `updated_at`) VALUES
(2, 18, 49, '2020-04-17 21:04:29', '2020-04-17 21:04:29'),
(4, 3, 10, '2020-04-19 20:36:33', '2020-04-19 20:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `customer_notification`
--

CREATE TABLE `customer_notification` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_notification`
--

INSERT INTO `customer_notification` (`id`, `customer_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
(13, 3, '{\"title_ar\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u064a\\u0648\\u0645\",\"title_tr\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u064a\\u0648\\u0645\",\"body\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u064a\\u0648\\u0645\",\"image\":null,\"type\":\"1\",\"url\":null,\"category_id\":\"0\",\"item_id\":\"0\",\"position\":\"0\"}', NULL, '2020-04-19 18:42:33', '0000-00-00 00:00:00'),
(14, 2, '{\"title_ar\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u064a\\u0648\\u0645\",\"title_tr\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u064a\\u0648\\u0645\",\"body\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u064a\\u0648\\u0645\",\"image\":null,\"type\":\"1\",\"url\":null,\"category_id\":\"0\",\"item_id\":\"0\",\"position\":\"0\"}', NULL, '2020-04-19 18:42:33', '0000-00-00 00:00:00'),
(15, 1, '{\"title_ar\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u064a\\u0648\\u0645\",\"title_tr\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u064a\\u0648\\u0645\",\"body\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u064a\\u0648\\u0645\",\"image\":null,\"type\":\"1\",\"url\":null,\"category_id\":\"0\",\"item_id\":\"0\",\"position\":\"0\"}', NULL, '2020-04-19 18:42:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_notification_sender`
--

CREATE TABLE `customer_notification_sender` (
  `id` int(11) NOT NULL,
  `device_token` text CHARACTER SET utf8 NOT NULL,
  `data` text CHARACTER SET utf8 NOT NULL,
  `title` text CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `link` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `url` varchar(191) DEFAULT NULL,
  `device` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `data_base` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_old`
--

CREATE TABLE `customer_old` (
  `id` int(11) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `verify_code` varchar(10) NOT NULL,
  `editable_code` varchar(255) DEFAULT NULL,
  `new_mobile` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 2,
  `access_token` text NOT NULL,
  `device_token` text DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `lang` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_team`
--

CREATE TABLE `delivery_team` (
  `id` int(11) NOT NULL,
  `mobile` varchar(199) CHARACTER SET utf8 NOT NULL,
  `full_name` varchar(199) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL,
  `access_token` text NOT NULL,
  `device_token` text NOT NULL,
  `lang` varchar(4) NOT NULL,
  `vehicle_type` varchar(199) CHARACTER SET utf8 DEFAULT NULL,
  `vehicle_number` varchar(199) CHARACTER SET utf8 DEFAULT NULL,
  `location_id` int(11) NOT NULL DEFAULT 0,
  `password` varchar(199) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` varchar(199) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_tr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_tr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name_ar`, `name_tr`, `image_ar`, `image_tr`, `active`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'تجريب', 'تجريب', '1585169042_ar.png', '1585169042_tr.png', 1, 1, '2020-03-26 03:44:02', '2020-03-26 03:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_tr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `sub_category_id` int(11) NOT NULL DEFAULT 0,
  `brands_id` int(11) DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_tr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `discount_price` double(8,2) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `highest_quantity` float NOT NULL DEFAULT 0,
  `unit_id` int(10) UNSIGNED DEFAULT NULL,
  `feature_id` int(10) UNSIGNED DEFAULT NULL,
  `special` int(11) NOT NULL DEFAULT 0,
  `offer` int(11) NOT NULL DEFAULT 0,
  `lang` int(11) NOT NULL DEFAULT 0,
  `ordered` int(11) NOT NULL DEFAULT 0,
  `ordered_offer` int(11) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL,
  `unit_name_ar` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_name_tr` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `increase_amount` double NOT NULL DEFAULT 1,
  `limit_store_buy` int(11) NOT NULL DEFAULT 5,
  `barcode` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name_ar`, `name_tr`, `category_id`, `sub_category_id`, `brands_id`, `image`, `details_ar`, `details_tr`, `price`, `discount_price`, `quantity`, `highest_quantity`, `unit_id`, `feature_id`, `special`, `offer`, `lang`, `ordered`, `ordered_offer`, `user_id`, `active`, `unit_name_ar`, `unit_name_tr`, `increase_amount`, `limit_store_buy`, `barcode`, `keyword`, `name_en`, `unit_name_en`, `details_en`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'طماطم طازج', 'Domates Taze', 5, 0, NULL, '1587457934.jpg', '<p>.</p>', '<p>.</p>', 2.15, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 1, 0, 1, 1, 'كيلو', 'kg', 1, 50, NULL, NULL, 'Tomato Fresh', 'kg', '<p>.....</p>', '2020-03-26 18:19:45', '2020-04-22 19:10:33', NULL),
(7, 'طماطم عنقود', 'Domates Salkim', 5, 0, 0, '1585221865.jpg', NULL, NULL, 2.60, 2.20, 10000, 3, 1, 2, 0, 0, 0, 1, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, NULL, NULL, NULL, '2020-03-26 18:24:25', '2020-03-26 19:10:46', '2020-03-26 19:10:46'),
(8, 'بطاطس طازج', 'Patates Taze', 5, 0, NULL, '1586064171.jpg', NULL, NULL, 1.10, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 2, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Potato Fresh', 'kg', NULL, '2020-03-26 18:29:48', '2020-04-22 19:56:37', NULL),
(9, 'بطاطس صغيرة', 'Patates Haslamalik', 5, 0, 0, '1585222675.jpg', NULL, NULL, 0.99, 0.85, 10000, 3, 1, 2, 0, 0, 0, 3, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, NULL, NULL, NULL, '2020-03-26 18:37:55', '2020-04-17 17:28:25', '2020-04-17 17:28:25'),
(10, 'بطاطس صغيرة', 'Patates Haşlamalik', 5, 0, NULL, '1586064200.jpg', NULL, NULL, 0.85, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 4, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Potato Small', 'kg', NULL, '2020-03-26 18:37:57', '2020-04-22 19:56:48', NULL),
(11, 'خيار صغير طازج', 'Küçük Salatalık Taze', 5, 0, NULL, '1587486311.jpg', NULL, NULL, 2.50, 0.00, 10000, 5, 1, NULL, 0, 0, 0, 5, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Cucumber Small Fresh', 'kg', NULL, '2020-03-26 18:45:36', '2020-04-21 23:25:11', NULL),
(12, 'خيار كبير طازج', 'Büyük Salatalık', 5, 0, NULL, '1586064356.jpg', NULL, NULL, 0.75, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 6, 0, 1, 1, 'حبة', 'tane', 1, 10, NULL, NULL, 'Cucumber Big Fresh', 'pc', NULL, '2020-03-26 19:03:20', '2020-04-21 23:28:11', NULL),
(13, 'افوكادو طازج', 'Avokado Taze', 5, 0, NULL, '1586064438.jpg', NULL, NULL, 1.50, 0.00, 10000, 20, 1, NULL, 0, 0, 0, 7, 0, 1, 1, 'حبة', 'tane', 1, 10, NULL, NULL, 'Avokado Fresh', 'pc', NULL, '2020-03-26 19:16:49', '2020-04-22 19:57:08', NULL),
(14, 'قرع عسلي طازج', 'Balkabağı Taze', 5, 0, NULL, '1586064479.jpg', NULL, NULL, 1.50, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 8, 0, 1, 1, 'حبة', 'ad', 1, 10, NULL, NULL, 'Pumpkin Fresh', 'ad', NULL, '2020-03-26 19:22:16', '2020-04-22 19:57:15', NULL),
(15, 'بازلاء طازج', 'Bezelye Taze', 5, 0, NULL, '1586064512.jpg', NULL, NULL, 2.00, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 9, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Green Pea Fresh', 'kg', NULL, '2020-03-26 19:24:54', '2020-04-22 19:57:20', NULL),
(16, 'جزر طازج', 'Havuç Taze', 5, 0, NULL, '1587487082.jpg', NULL, NULL, 0.60, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 10, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Carrot Fresh', 'kg', NULL, '2020-03-26 19:31:48', '2020-04-22 19:57:25', NULL),
(17, 'ليمون طازج', 'Limon Taze', 5, 0, NULL, '1587487307.jpg', NULL, NULL, 2.50, 0.00, 10000, 5, 1, NULL, 0, 0, 0, 11, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Lemon Fresh', 'kg', NULL, '2020-03-26 19:36:05', '2020-04-22 19:58:04', NULL),
(18, 'خس ملفوف  طازج', 'Göbek Taze', 5, 0, NULL, '1586064697.jpg', NULL, NULL, 1.10, 0.00, 10000, 8, 1, NULL, 0, 0, 0, 12, 0, 1, 1, 'حبة', 'tane', 1, 10, NULL, NULL, 'Green Iceberg', 'pc', NULL, '2020-03-26 19:50:34', '2020-04-22 19:57:54', NULL),
(19, 'فراولة طازج', 'Çilek Taze', 6, 0, NULL, '1587458384.jpg', NULL, NULL, 0.00, 0.00, 10000, 8, 1, NULL, 0, 0, 0, 1, 0, 1, 1, '500 جم', '500 gr', 1, 10, NULL, NULL, 'Strawberry Fresh', '500 g', NULL, '2020-03-26 19:54:49', '2020-04-22 19:54:15', NULL),
(20, 'تفاح احمر طازج', 'Kırmızı Elma Taze', 6, 0, NULL, '1587488555.jpg', NULL, NULL, 1.60, 0.00, 10000, 5, 1, NULL, 0, 0, 0, 2, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Red Apple Fresh', 'kg', NULL, '2020-03-26 19:59:43', '2020-04-22 19:44:07', NULL),
(21, 'موز', 'Muz Taze', 6, 0, NULL, '1586065845.jpg', NULL, NULL, 0.00, 0.00, 10000, 8, 1, NULL, 0, 0, 0, 3, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Banana Fresh', 'kg', NULL, '2020-03-26 21:40:41', '2020-04-22 20:02:11', NULL),
(22, 'مانجو طازج', 'Mango Taze', 6, 0, NULL, '1587488708.jpg', NULL, NULL, 0.00, 0.00, 10000, 12, 1, NULL, 0, 0, 0, 4, 0, 1, 1, 'حبة', 'ad', 1, 10, NULL, NULL, 'Mango Fresh', 'pc', NULL, '2020-03-26 21:43:34', '2020-04-22 19:42:47', NULL),
(23, 'رمان احمر طازج', 'Nar Taze', 6, 0, NULL, '1586066032.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, NULL, 0, 0, 0, 5, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Pomegranate Fresh', 'kg', NULL, '2020-03-26 21:46:52', '2020-04-22 19:42:21', NULL),
(24, 'كرز طازج', 'Kiraz', 6, 0, NULL, '1586066122.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, NULL, 0, 0, 0, 6, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Red Cherry Fresh', 'kg', NULL, '2020-03-26 21:49:23', '2020-04-22 19:55:17', NULL),
(25, 'كيوي طازج', 'Kivi Taze', 6, 0, NULL, '1586066195.jpg', NULL, NULL, 0.00, 0.00, 10000, 20, 1, NULL, 0, 0, 0, 7, 0, 1, 1, 'حبة', 'aded', 1, 10, NULL, NULL, 'Kiwi Fresh', 'pc', NULL, '2020-03-26 21:51:18', '2020-04-22 19:39:46', NULL),
(26, 'تفاح اصفر طازج', 'Sarı Elma Taze', 6, 0, NULL, '1587488857.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, NULL, 0, 0, 0, 8, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Yellow Apple Fresh', 'kg', NULL, '2020-03-26 21:53:49', '2020-04-22 00:07:38', NULL),
(27, 'تفاح اخضر طازج', 'Yeşil Elma Taze', 6, 0, NULL, '1587489061.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, NULL, 0, 0, 0, 9, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Green Apple Fresh', 'kg', NULL, '2020-03-26 21:56:13', '2020-04-22 00:11:01', NULL),
(28, 'برتقال طازج', 'Portakal Taze', 6, 0, NULL, '1587634248.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, NULL, 0, 0, 0, 10, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Orange Fresh', 'kg', NULL, '2020-03-26 21:58:08', '2020-04-23 16:30:48', NULL),
(29, 'اناناس طازج', 'Ananas Taze', 6, 0, NULL, '1586066429.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, NULL, 0, 0, 0, 11, 0, 1, 1, 'حبة', 'aded', 1, 10, NULL, NULL, 'Pineapple Fresh', 'pc', NULL, '2020-03-26 22:41:01', '2020-04-22 19:47:55', NULL),
(30, 'باذنجان طازج', 'Patican Taze', 5, 0, NULL, '1586064748.jpg', NULL, NULL, 2.00, 0.00, 10000, 5, 1, NULL, 0, 0, 0, 13, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Eggplant Fresh', 'kg', NULL, '2020-03-26 22:42:58', '2020-04-21 23:50:42', NULL),
(31, 'فلفل اخضر طازج', 'Sivri Biber Taze', 5, 0, NULL, '1586066785.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, NULL, 0, 0, 0, 14, 0, 1, 1, '250 جم', '250 gr', 1, 10, NULL, NULL, 'Green Pepper', '250 g', NULL, '2020-03-26 22:48:47', '2020-04-21 23:55:43', NULL),
(32, 'كوسة', 'Kabak', 5, 0, NULL, '1586064774.jpg', NULL, NULL, 0.00, 0.00, 10000, 8, 1, NULL, 0, 0, 0, 15, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Zucchini Fresh', 'kg', NULL, '2020-03-26 22:50:54', '2020-04-22 19:59:17', NULL),
(33, 'طماطم عنقود', 'Salkım Domates Taze', 5, 0, NULL, '1586064793.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, NULL, 0, 0, 0, 16, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Grape Tomato Fresh', 'kg', NULL, '2020-03-26 22:53:02', '2020-04-22 19:25:16', NULL),
(34, 'قرنبيط طازج', 'Karnabahar Taze', 5, 0, NULL, '1586064840.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 17, 0, 1, 1, 'حبة', 'tane', 1, 10, NULL, NULL, 'Cauliflower Fresh', 'pc', NULL, '2020-03-26 22:57:52', '2020-04-22 19:59:32', NULL),
(35, 'ملفوف احمر', 'Kırmızı Lahana Taze', 5, 0, NULL, '1586064888.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 18, 0, 1, 1, 'حبة', 'aded', 1, 10, NULL, NULL, 'Red Cabbage Fresh', 'pc', NULL, '2020-03-26 23:00:22', '2020-04-22 19:59:40', NULL),
(36, 'ملفوف طازج', 'Lahana Taze', 5, 0, NULL, '1586066533.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 19, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Cabbage Fresh', 'kg', NULL, '2020-03-26 23:04:57', '2020-04-22 19:59:45', NULL),
(37, 'فطر طازج', 'Mantar Taze', 5, 0, NULL, '1586065020.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 20, 0, 1, 1, '250 جم', '250 gr', 1, 10, NULL, NULL, 'Mushrooms Fresh', '250 g', NULL, '2020-03-26 23:06:52', '2020-04-22 19:59:50', NULL),
(38, 'بصل اخضر طازج', 'Yeşil Soğan Taze', 5, 0, NULL, '1586065059.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 21, 0, 1, 1, 'حزمة', 'demet', 1, 10, NULL, NULL, 'Scallion Fresh', 'bunch', NULL, '2020-03-26 23:09:06', '2020-04-22 19:18:49', NULL),
(39, 'فجل طازج', 'Türp Taze', 5, 0, NULL, '1587484913.jpg', NULL, NULL, 2.00, 0.00, 10000, 3, 1, NULL, 0, 0, 0, 22, 0, 1, 1, '500 جم', '500 gr', 1, 10, NULL, NULL, 'Radish Fresh', '500 g', NULL, '2020-03-26 23:11:36', '2020-04-21 23:01:53', NULL),
(40, 'بطاطس حلوة', 'Tatlı Patates Taze', 5, 0, NULL, '1586065227.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 23, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Sweet Potato Fresh', 'kg', NULL, '2020-03-26 23:13:55', '2020-04-22 20:00:17', NULL),
(41, 'جرادة / شبت طازج', 'Dereotu', 5, 0, NULL, '1586066586.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 24, 0, 1, 1, 'حزمة', 'demet', 1, 10, NULL, NULL, 'Dill Fresh', 'bunch', NULL, '2020-03-26 23:16:45', '2020-04-22 20:00:24', NULL),
(42, 'نعناع طازج', 'Nane Taze', 5, 0, NULL, '1586066633.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 25, 0, 1, 1, 'حزمة', 'demet', 1, 10, NULL, NULL, 'Mint Fresh', 'bunch', NULL, '2020-03-26 23:19:09', '2020-04-22 20:00:29', NULL),
(43, 'ريحان  طازج', 'Reyhan Taze', 5, 0, NULL, '1586066678.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 26, 0, 1, 1, 'حزمة', 'demet', 1, 10, NULL, NULL, 'Basil Fresh', 'bunch', NULL, '2020-03-26 23:20:43', '2020-04-22 20:00:35', NULL),
(44, 'بقدونس طازج', 'Maydanoz Taze', 5, 0, NULL, '1586066722.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 27, 0, 1, 1, 'حزمة', 'demet', 1, 10, NULL, NULL, 'Parsley Fresh', 'bunch', NULL, '2020-03-26 23:22:00', '2020-04-22 20:00:41', NULL),
(45, 'فلفل احمر حلو', 'Kırmızı Tatlı Biber Taze', 5, 0, NULL, '1586065347.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, NULL, 0, 0, 0, 28, 0, 1, 1, '500 جم', '500 gr', 1, 10, NULL, NULL, 'Red Pepper Fresh', '500 g', NULL, '2020-03-26 23:24:19', '2020-04-22 20:00:50', NULL),
(46, 'ثوم', 'Sarımsak', 5, 0, NULL, '1586065381.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 29, 0, 1, 1, '200 جم', '200 gr', 1, 500, NULL, NULL, 'Garlic', '200 g', NULL, '2020-03-26 23:30:36', '2020-04-22 20:01:14', NULL),
(47, 'test', 'test', 14, 0, 0, '1585816908.jpg', NULL, NULL, 11.00, 1.00, 10000, 3, 1, 2, 0, 0, 0, 10, 0, 1, 1, 'test', 'test', 1, 10, NULL, NULL, NULL, NULL, NULL, '2020-04-02 15:41:48', '2020-04-03 21:14:01', '2020-04-03 21:14:01'),
(48, 'test1', 'test2', 14, 0, 0, '1585817521.jpg', NULL, NULL, 2.00, 2.00, 10000, 3, 1, 2, 0, 0, 0, 11, 0, 1, 1, 'test3', 'test4', 1, 10, NULL, NULL, NULL, NULL, NULL, '2020-04-02 15:52:01', '2020-04-03 21:13:56', '2020-04-03 21:13:56'),
(49, 'زيتون اسود بلاد', 'Bled Siyah Zeytin', 14, 0, NULL, '1585924412.jpg', NULL, NULL, 1.65, 0.00, 10000, 5, 1, 2, 0, 0, 0, 10, 0, 1, 1, '850 جم', '850 gr', 1, 10, NULL, NULL, 'Bled Olive Black', '850 g', NULL, '2020-04-03 21:33:32', '2020-04-15 15:33:26', NULL),
(71, 'afsds', 'hjhkg', 5, 0, 0, '1585979391.png', '<p>fds</p>', '<p>jhkgkh</p>', 12.00, 12.00, 10000, 100, 1, 2, 0, 0, 0, 30, 0, 3, 1, 'ghjf', 'hgj', 1, 10, 'afsdsgd', NULL, NULL, NULL, NULL, '2020-04-04 12:49:52', '2020-04-04 15:14:46', '2020-04-04 15:14:46'),
(72, 'زيتون اسود بلاد', 'Bled Siyah Zeytin', 14, 0, NULL, '1585988027.jpg', NULL, NULL, 1.15, 0.00, 10000, 5, 1, 2, 0, 0, 0, 11, 0, 1, 1, '400 جم', '400 GR', 1, 10, NULL, NULL, 'Bled Olive Black', '400 g', NULL, '2020-04-04 15:13:48', '2020-04-15 15:37:34', NULL),
(73, 'زيتون اخضر بلاد', 'Bled Siyah Zeytin', 14, 0, NULL, '1585989497.jpg', NULL, NULL, 1.65, 0.00, 10000, 5, 1, 2, 0, 0, 0, 12, 0, 1, 1, '850 جم', '850 GR', 1, 10, NULL, NULL, 'Bled Olive Black', '850 g', NULL, '2020-04-04 15:38:17', '2020-04-15 15:38:57', NULL),
(74, 'زيتون اخضر بلاد', 'Bled Yeşil Zeytin', 14, 0, NULL, '1585990425.jpg', NULL, NULL, 1.15, 0.00, 10000, 5, 1, 2, 0, 0, 0, 13, 0, 1, 1, '400 جم', '400 gr', 1, 10, NULL, NULL, 'Bled Olive Green', '400 g', NULL, '2020-04-04 15:53:45', '2020-04-15 15:40:19', NULL),
(75, 'بلاد زيتون اخضر', 'Bled Yeşil Zeytin', 14, 0, 0, '1585990502.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, 2, 0, 0, 0, 14, 0, 1, 1, '٢٠٠ جم', '200 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 15:55:02', '2020-04-04 16:38:35', '2020-04-04 16:38:35'),
(76, 'بلاد زيتون اخضر', 'Bled Yeşil Zeytin', 14, 0, 0, '1585990543.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, 2, 0, 0, 0, 15, 0, 1, 1, '٢٠٠ جم', '200 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 15:55:43', '2020-04-04 16:38:23', '2020-04-04 16:38:23'),
(77, 'فول مدمس', 'Chtaura Foul Medammes', 14, 0, 0, '1585993545.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, 2, 0, 0, 0, 14, 0, 1, 1, '٤٠٠ جم', '400 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 16:45:45', '2020-04-04 17:12:59', '2020-04-04 17:12:59'),
(78, 'فول مدمس شتورة', 'Chtaura Foul Medammes', 14, 0, 0, '1585993586.jpg', NULL, NULL, 0.75, 0.00, 10000, 5, 1, 2, 0, 0, 0, 15, 0, 1, 1, '400 جم', '400 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 16:46:26', '2020-04-15 16:17:20', NULL),
(79, 'فول مدمس', 'Chtaura Foul Medammes', 14, 0, 0, '1585993865.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, 2, 0, 0, 0, 16, 0, 1, 1, '٤٠٠ جم', '400 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 16:51:05', '2020-04-04 17:13:18', '2020-04-04 17:13:18'),
(80, 'Asad Erheem', 'Asad Erheem', 7, 0, 0, '1585993994.jpg', NULL, NULL, 30.00, 21.00, 10000, 30, 1, 2, 0, 0, 0, 28, 0, 1, 1, 'كيلو', 'kg', 1, 50, NULL, NULL, NULL, NULL, NULL, '2020-04-04 16:53:14', '2020-04-04 17:03:27', '2020-04-04 17:03:27'),
(81, 'فول مدمس', 'Chtaura Foul Medammes', 14, 0, 0, '1585994021.jpg', NULL, NULL, 100.00, 100.00, 10000, 5, 1, 2, 0, 0, 0, 17, 0, 1, 1, '٤٠٠ جم', '400 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 16:53:41', '2020-04-04 17:13:13', '2020-04-04 17:13:13'),
(82, 'فول مدمس', 'Chtaura Foul Medammes', 14, 0, 0, '1585994138.jpg', NULL, NULL, 100.00, 100.00, 10000, 5, 1, 2, 0, 0, 0, 18, 0, 1, 1, '٤٠٠ جم', '400 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 16:55:38', '2020-04-04 17:13:09', '2020-04-04 17:13:09'),
(83, 'شتورا فول مدمس', 'Chtaura Foul Medammes', 14, 0, 0, '1585995140.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, 2, 0, 0, 0, 19, 0, 1, 1, '٤٠٠ جم', '400 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 17:12:20', '2020-04-04 17:13:04', '2020-04-04 17:13:04'),
(84, 'حمص بالطحينية شتورة', 'Chtaura Hummus Tahini', 14, 0, 0, '1585995356.jpg', NULL, NULL, 0.75, 0.00, 10000, 5, 1, 2, 0, 0, 0, 16, 0, 1, 1, '370 جم', '370 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 17:15:56', '2020-04-15 16:17:27', NULL),
(85, 'صلصة طماطم سيكام', 'Sican Domates Salçası', 14, 0, 0, '1585995702.jpg', NULL, NULL, 1.75, 0.00, 10000, 5, 1, 2, 0, 0, 0, 17, 0, 1, 1, '834 جم', '834 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 17:21:42', '2020-04-15 16:06:17', NULL),
(86, 'صلصة طماطم توكاش', 'Tukaş Domates Salçası', 14, 0, 0, '1585995882.jpg', NULL, NULL, 1.85, 0.00, 10000, 5, 1, 2, 0, 0, 0, 18, 0, 1, 1, '830 جم', '830 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 17:24:42', '2020-04-15 15:56:06', NULL),
(87, 'بورجو صلصة طماطم', 'Burcu Domates Salçası', 14, 0, 0, '1585996028.jpg', NULL, NULL, 1.85, 0.00, 10000, 5, 1, 2, 0, 0, 0, 19, 0, 1, 1, '830 جم', '830 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 17:27:08', '2020-04-15 15:56:17', NULL),
(88, 'سيكام صلصة طماطم', 'Sicam Domates Salçası', 14, 0, 0, '1585997711.jpg', NULL, NULL, 1.20, 0.00, 10000, 5, 1, 2, 0, 0, 0, 20, 0, 1, 1, '400 جم', '400 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 17:55:11', '2020-04-05 03:54:16', NULL),
(89, 'صانتات بازيلاء مصلوقة', 'Suntat Haşilanmiş Bezelye', 14, 0, 0, '1585998162.jpg', NULL, NULL, 1.09, 0.00, 10000, 5, 1, 2, 0, 0, 0, 21, 0, 1, 1, '800 جم', '800 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 18:02:42', '2020-04-05 03:54:46', NULL),
(90, 'ذرة صانتات', 'Suntat Mısır', 14, 0, NULL, '1585998420.jpg', NULL, NULL, 0.89, 0.00, 10000, 5, 1, 2, 0, 0, 0, 22, 0, 1, 1, '340 جم', '340 GR', 1, 10, NULL, NULL, 'Suntat Corn', '340 g', NULL, '2020-04-04 18:07:00', '2020-04-15 19:46:02', NULL),
(91, 'صانتات حمص مصلوق', 'Suntat Nohut Haşlama', 14, 0, 0, '1585998728.jpg', NULL, NULL, 1.09, 0.00, 10000, 5, 1, 2, 0, 0, 0, 23, 0, 1, 1, '800 جم', '800 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 18:12:08', '2020-04-04 23:43:14', NULL),
(92, 'صانتات فاصوليا مصلوقة', 'Suntat Fasulye Haşlama', 14, 0, 0, '1585998955.jpg', NULL, NULL, 1.09, 0.00, 10000, 5, 1, 2, 0, 0, 0, 24, 0, 1, 1, '800 جم', '800 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 18:15:55', '2020-04-05 03:55:29', NULL),
(93, 'صانتات بازيلاء', 'Suntat Bezelye Haşlama', 14, 0, 0, '1585999308.jpg', NULL, NULL, 0.59, 0.00, 10000, 5, 1, 2, 0, 0, 0, 25, 0, 1, 1, '400 جم', '400 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 18:21:48', '2020-04-05 03:55:48', NULL),
(94, 'صانتات فاصوليا', 'Suntat Fasulye', 14, 0, 0, '1585999538.jpg', NULL, NULL, 0.59, 0.00, 10000, 5, 1, 2, 0, 0, 0, 26, 0, 1, 1, '400 جم', '400 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 18:25:38', '2020-04-04 18:25:38', NULL),
(95, 'توكاش صلصة طماطم', 'Tukaş Domates Salçası', 14, 0, 0, '1585999902.jpg', NULL, NULL, 1.42, 0.00, 10000, 5, 1, 2, 0, 0, 0, 27, 0, 1, 1, '400 جم', '400 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 18:31:42', '2020-04-15 16:02:52', NULL),
(96, 'زيت زيتون الطاجين', 'Tajine Zeytin Yağı', 11, 0, NULL, '1586000646.jpg', NULL, NULL, 6.20, 0.00, 10000, 3, 1, 2, 0, 0, 0, 22, 0, 1, 1, '٢ لتر', '2 LT', 1, 10, NULL, NULL, 'Tagine Olive Oil', '2 lt', NULL, '2020-04-04 18:44:06', '2020-04-15 20:14:06', NULL),
(97, 'زيت زيتون الطاجين', 'Tajine Zeytin Yağı', 11, 0, NULL, '1586001095.jpg', NULL, NULL, 3.59, 0.00, 10000, 5, 1, 2, 0, 0, 0, 23, 0, 1, 1, '١ لتر', '1 LT', 1, 10, NULL, NULL, 'Tajine Olive Oil', '1 lt', NULL, '2020-04-04 18:51:35', '2020-04-15 19:54:38', NULL),
(98, 'زيت الذرة عافية', 'Afia Mısır Yağı', 11, 0, NULL, '1586002058.jpg', NULL, NULL, 1.89, 0.00, 10000, 5, 1, 2, 0, 0, 0, 24, 0, 1, 1, 'لتر', 'lt', 1, 5, NULL, NULL, 'Afia Corn Oil', 'lt', NULL, '2020-04-04 19:07:38', '2020-04-15 20:14:27', NULL),
(99, 'زيت عباد الشمس صافية', 'Safia Ayçiçek Yağı', 11, 0, NULL, '1586002236.jpg', NULL, NULL, 1.68, 0.00, 10000, 5, 1, 2, 0, 0, 0, 25, 0, 1, 1, 'لتر', 'lt', 1, 5, NULL, NULL, 'Safia Sunlower Oil', 'lt', NULL, '2020-04-04 19:10:36', '2020-04-15 20:15:26', NULL),
(100, 'درة طحينة السمسم', 'Durra Tahin', 14, 0, 0, '1586003734.jpg', NULL, NULL, 5.40, 0.00, 10000, 2, 1, 2, 0, 0, 0, 28, 0, 1, 1, '800 جم', '800 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 19:35:34', '2020-04-05 03:56:41', NULL),
(101, 'طحينة سمسم الدرة', 'Durra Tahin', 14, 0, 0, '1586012435.jpg', NULL, NULL, 2.90, 0.00, 10000, 5, 1, 2, 0, 0, 0, 29, 0, 1, 1, '400 جم', '400 GR', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-04 22:00:35', '2020-04-05 03:49:56', NULL),
(102, 'بصل ناشف', 'Kuru Soğan', 5, 0, NULL, '1587488420.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 30, 0, 1, 1, 'كيلو', 'kg', 1, 5, NULL, NULL, 'Onion', 'kg', NULL, '2020-04-05 13:09:45', '2020-04-22 20:01:20', NULL),
(103, 'طحينة سمسم مس', 'Mis Tahin', 14, 0, NULL, '1586067525.jpg', NULL, NULL, 5.49, 0.00, 10000, 2, 1, 2, 0, 0, 0, 26, 0, 1, 1, 'كيلو', 'kg', 1, 5, NULL, NULL, 'Mis Tahini', 'kg', NULL, '2020-04-05 13:18:45', '2020-04-13 19:47:23', NULL),
(104, 'طحينة سمسم مس', 'Mis Tahin', 14, 0, NULL, '1586067768.jpg', NULL, NULL, 3.19, 0.00, 10000, 3, 1, 2, 0, 0, 0, 27, 0, 1, 1, '500 جم', '550 gr', 1, 5, NULL, NULL, 'Mis Tahini', '550 g', NULL, '2020-04-05 13:22:48', '2020-04-13 19:49:17', NULL),
(105, 'صلصة فلفل حلو بورجو', 'Burcu Tatli Biber Salçası', 14, 0, NULL, '1586068087.jpg', NULL, NULL, 2.99, 0.00, 10000, 3, 1, 2, 0, 0, 0, 28, 0, 1, 1, '600 جم', '600 gr', 1, 5, NULL, NULL, 'Burcu Pepper Sause', '600 g', NULL, '2020-04-05 13:28:07', '2020-04-13 19:45:24', NULL),
(106, 'صلصة فلفل حار بورجو', 'Burcu Aci Biber Salçası', 14, 0, NULL, '1586068235.jpg', NULL, NULL, 2.99, 0.00, 10000, 3, 1, 2, 0, 0, 0, 29, 0, 1, 1, '600 جم', '600 gr', 1, 5, NULL, NULL, 'Burcu Hot pepper sauce', '600 g', NULL, '2020-04-05 13:30:35', '2020-04-13 19:37:54', NULL),
(107, 'صلصة فلفل حار توكاش', 'Turkaş Biber Salçası', 14, 0, NULL, '1586068398.jpg', NULL, NULL, 2.99, 0.00, 10000, 3, 1, 2, 0, 0, 0, 30, 0, 1, 1, '700 جم', '700 gr', 1, 5, NULL, NULL, 'Tukaş Hot Pepper Sauce', '700 g', NULL, '2020-04-05 13:33:18', '2020-04-13 19:43:30', NULL),
(108, 'اندومي دجاج', 'Indomie Noodle Tavuk', 11, 0, NULL, '1586068796.jpg', NULL, NULL, 0.37, 0.00, 10000, 10, 1, 2, 0, 0, 0, 31, 0, 1, 1, '70 جم', '70 gr', 1, 10, NULL, NULL, 'Indomie Noodle Chicken', '70 g', NULL, '2020-04-05 13:39:56', '2020-04-15 20:06:04', NULL),
(109, 'اندومي خضار', 'Indomie Noodle Sebze', 11, 0, NULL, '1586069036.jpg', NULL, NULL, 0.37, 0.00, 10000, 10, 1, 2, 0, 0, 0, 32, 0, 1, 1, '70 جم', '70 gr', 1, 10, NULL, NULL, 'Indomie Noodle Vegetables', '70 g', NULL, '2020-04-05 13:43:56', '2020-04-15 20:07:43', NULL),
(110, 'اندومي بالكاري', 'Indomie Noodle', 11, 0, NULL, '1586069139.jpg', NULL, NULL, 0.37, 0.00, 10000, 10, 1, 2, 0, 0, 0, 33, 0, 1, 1, '70 جم', '70 gr', 1, 10, NULL, NULL, 'Indomie Noodle Curry', '70 g', NULL, '2020-04-05 13:45:39', '2020-04-15 20:08:43', NULL),
(111, 'ذرة بورجو', 'Burcu Mısır', 14, 0, NULL, '1586069760.jpg', NULL, NULL, 1.99, 0.00, 10000, 5, 1, 2, 0, 0, 0, 30, 0, 1, 1, '3X200 جم', '3X200gr', 1, 10, NULL, NULL, 'Burcu Corn', 'g200*3', NULL, '2020-04-05 13:56:00', '2020-04-15 19:47:32', NULL),
(112, 'سباجيتي ديفيلا', 'Divella Spagetti Makarna', 11, 0, NULL, '1586070190.jpg', NULL, NULL, 0.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 34, 0, 1, 1, '500 جم', '500 gr', 1, 10, NULL, NULL, 'Divella Pasta Spagetti', '500 g', NULL, '2020-04-05 14:03:10', '2020-04-15 19:41:07', NULL),
(113, 'مكارنة سباجيتي بوياتي', 'Poiatti Spagetti Makarna', 11, 0, NULL, '1586070418.jpg', NULL, NULL, 1.59, 0.00, 10000, 5, 1, 2, 0, 0, 0, 35, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Poiatti Pasta Spagetti', 'kg', NULL, '2020-04-05 14:06:58', '2020-04-18 00:25:57', NULL),
(114, 'ماكارنا ريجاتوني ديفلا', 'Divella Makarna Rigatoni', 11, 0, NULL, '1586070979.jpg', NULL, NULL, 0.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 36, 0, 1, 1, '500 جم', '500 gr', 1, 10, NULL, NULL, 'Divella Pasta Rigatoni', '500 g', NULL, '2020-04-05 14:16:19', '2020-04-15 19:38:02', NULL),
(115, 'ماكارنا اليكوي ريفيلا', 'Divella Makarna Elicoidali', 11, 0, NULL, '1586071196.jpg', NULL, NULL, 0.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 37, 0, 1, 1, '500 جم', '500 gr', 1, 10, NULL, NULL, 'Divella Pasta Elicoidali', '500 g', NULL, '2020-04-05 14:19:57', '2020-04-15 19:38:21', NULL),
(116, 'ماكارنا كانديلا ديفيلا', 'Divella Makarna Candela', 11, 0, NULL, '1586071445.jpg', NULL, NULL, 0.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 38, 0, 1, 1, '500 جم', '500 gr', 1, 10, NULL, NULL, 'Divella Pasta Candela', '500 g', NULL, '2020-04-05 14:24:05', '2020-04-15 19:37:35', NULL),
(117, 'ماكارنا زيتي ديفيلا', 'Divella Makarna Ziti', 11, 0, NULL, '1586071572.jpg', NULL, NULL, 0.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 39, 0, 1, 1, '500 جم', '500 gr', 1, 10, NULL, NULL, 'Divella Pasta Ziti', '500 g', NULL, '2020-04-05 14:26:12', '2020-04-15 19:37:00', NULL),
(118, 'ماكارنا فوسولي ديفيلا', 'Divella Makarna Fusilli', 11, 0, NULL, '1586071697.jpg', NULL, NULL, 0.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 40, 0, 1, 1, '500 جم', '500 gr', 1, 10, NULL, NULL, 'Divella Pasta Fussili', '500 g', NULL, '2020-04-05 14:28:17', '2020-04-15 19:36:16', NULL),
(119, 'ارز صانتات', 'Suntat Pilavlık Pirinç', 11, 0, NULL, '1586072465.jpg', NULL, NULL, 1.69, 0.00, 10000, 5, 1, 2, 0, 0, 0, 41, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Suntat Rice Pilavlik', 'kg', NULL, '2020-04-05 14:35:59', '2020-04-15 17:48:28', NULL),
(120, 'ارز مدبب صانتات', 'Suntat Sivri Pirinç', 11, 0, NULL, '1586072376.jpg', NULL, NULL, 1.69, 0.00, 10000, 5, 1, 2, 0, 0, 0, 42, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Suntat Rice Sivri', 'kg', NULL, '2020-04-05 14:39:37', '2020-04-15 17:49:50', NULL),
(121, 'ارز اصفر صانتات', 'Suntat Altın Pirinç', 11, 0, NULL, '1586072662.jpg', NULL, NULL, 1.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 43, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Suntat Rice Altın', 'kg', NULL, '2020-04-05 14:44:22', '2020-04-15 17:51:06', NULL),
(122, 'ارز بالدو صانتات', 'Suntat Baldo Pirinç', 11, 0, NULL, '1586072843.jpg', NULL, NULL, 2.39, 0.00, 10000, 5, 1, 2, 0, 0, 0, 44, 0, 1, 1, 'كيلو', 'kg', 1, 5, NULL, NULL, 'Suntat Rice Baldo', 'kg', NULL, '2020-04-05 14:47:23', '2020-04-15 18:02:22', NULL),
(123, 'ارز ريس صانتات', 'Suntat Reis Pirinç', 11, 0, NULL, '1586073080.jpg', NULL, NULL, 1.69, 0.00, 10000, 5, 1, 2, 0, 0, 0, 45, 0, 1, 1, 'كيلو', 'kg', 1, 5, NULL, NULL, 'Suntat Rice Reis', 'kg', NULL, '2020-04-05 14:51:20', '2020-04-15 17:45:20', NULL),
(124, 'عدس حب صانتات', 'Suntat Yeşil Mercimek', 11, 0, NULL, '1586073261.jpg', NULL, NULL, 2.19, 0.00, 10000, 5, 1, 2, 0, 0, 0, 46, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Suntat Green Lentil', 'kg', NULL, '2020-04-05 14:54:21', '2020-04-15 18:45:45', NULL),
(125, 'عدس اصفر صانتات', 'Suntat Kırmızı Mercimek', 11, 0, NULL, '1586073507.jpg', NULL, NULL, 1.99, 0.00, 10000, 5, 1, 2, 0, 0, 0, 47, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Suntat Red Lentil', 'kg', NULL, '2020-04-05 14:58:27', '2020-04-15 18:47:11', NULL),
(126, 'فاصوليا حب صانتات', 'Suntat Kuru Barbunye', 11, 0, NULL, '1586073912.jpg', NULL, NULL, 3.29, 0.00, 10000, 5, 1, 2, 0, 0, 0, 48, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Suntat Kidney Beans', 'kg', NULL, '2020-04-05 15:05:12', '2020-04-15 19:13:44', NULL),
(127, 'حمص حب صانتات', 'Suntat Kuru Nohut', 11, 0, NULL, '1586074077.jpg', NULL, NULL, 2.40, 0.00, 10000, 5, 1, 2, 0, 0, 0, 49, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Suntat Chickpea', 'kg', NULL, '2020-04-05 15:07:57', '2020-04-18 15:10:47', NULL),
(128, 'كسكس وسط زاكية', 'Zakia Kuskus Orta', 11, 0, NULL, '1586074471.jpg', NULL, NULL, 1.99, 0.00, 10000, 5, 1, 2, 0, 0, 0, 50, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Zakia Couscous Medium', 'kg', NULL, '2020-04-05 15:14:31', '2020-04-15 19:30:00', NULL),
(129, 'كسكس وسط زكية', 'Zakia Kuskus Orta', 11, 0, NULL, '1586074480.jpg', NULL, NULL, 1.99, 0.00, 10000, 3, 1, 2, 0, 0, 0, 51, 0, 1, 1, 'كيلو', 'kg', 1, 5, NULL, NULL, NULL, NULL, NULL, '2020-04-05 15:14:40', '2020-04-15 19:27:08', '2020-04-15 19:27:08'),
(130, 'كسكس ناعم زكية', 'Zakia Kuskus Ince', 11, 0, NULL, '1586075031.jpg', NULL, NULL, 1.99, 0.00, 10000, 5, 1, 2, 0, 0, 0, 52, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Zakia Couscous Fine', 'kg', NULL, '2020-04-05 15:23:52', '2020-04-15 19:26:19', NULL),
(131, 'كسكس وسط داري', 'Dari Kuskus Orta', 11, 0, NULL, '1586075239.jpg', NULL, NULL, 2.19, 0.00, 10000, 5, 1, 2, 0, 0, 0, 53, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Dari Couscous Medium', 'kg', NULL, '2020-04-05 15:27:19', '2020-04-15 19:30:25', NULL),
(132, 'كسكس ناعم داري', 'Dari Kuskus Ince', 11, 0, NULL, '1586075377.jpg', NULL, NULL, 2.19, 0.00, 10000, 5, 1, 2, 0, 0, 0, 54, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Dari Couscous Fine', 'kg', NULL, '2020-04-05 15:29:37', '2020-04-15 19:29:21', NULL),
(133, 'فاصوليا حب جاريدو', 'Garrido Kuru Fasulye', 11, 0, NULL, '1586076782.jpg', NULL, NULL, 2.59, 0.00, 10000, 5, 1, 2, 0, 0, 0, 55, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Garrido White Beans', 'kg', NULL, '2020-04-05 15:53:02', '2020-04-15 19:04:16', NULL),
(134, 'حمص حب اكسترا جاريدو', 'Garrido Nohut Extra', 11, 0, NULL, '1586076967.jpg', NULL, NULL, 2.89, 0.00, 10000, 5, 1, 2, 0, 0, 0, 56, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Garrido Chickpea Extra', 'kg', NULL, '2020-04-05 15:56:07', '2020-04-15 19:16:34', NULL),
(135, 'سكر بلوري افريدي', 'Everyday Kristal Şeker', 11, 0, NULL, '1586077335.jpg', NULL, NULL, 0.99, 0.00, 10000, 5, 1, 2, 0, 0, 0, 57, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Everyday Sugar Cristsal', 'kg', NULL, '2020-04-05 16:02:15', '2020-04-15 19:21:49', NULL),
(136, 'بابا غنوج شتورا', 'Chtaura Kozlanmış Patlıcan', 14, 0, NULL, '1586782557.jpg', NULL, NULL, 1.25, 0.00, 10000, 5, 1, 2, 0, 0, 0, 58, 0, 1, 1, '370 جم', '370 gr', 1, 5, NULL, NULL, 'Chtaura Babaghannouj', '370 g', NULL, '2020-04-05 16:51:56', '2020-04-15 16:17:46', NULL),
(137, 'زيت زيتون مارمارا بيرليك', 'Marmarabirlik Zeytin Yağı', 11, 0, NULL, '1586783411.jpg', NULL, NULL, 7.89, 0.00, 10000, 5, 1, 2, 0, 0, 0, 59, 0, 1, 1, 'لتر', 'lt', 1, 5, NULL, NULL, 'Marmarabirlik Olive Oil', 'lt', NULL, '2020-04-05 16:58:03', '2020-04-13 20:10:11', NULL),
(138, 'برغل حبة كبير دورو', 'Duru Bulgur Başbaşı', 11, 0, NULL, '1586783841.jpg', NULL, NULL, 1.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 60, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Duru Bulgur Large', 'kg', NULL, '2020-04-05 17:03:58', '2020-04-15 18:30:58', NULL),
(139, 'برغر وسط دورو', 'Duru Bulgur Pilavlık', 11, 0, NULL, '1586081214.png', NULL, NULL, 1.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 61, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Duru Bulgur Pilavlik', 'kg', NULL, '2020-04-05 17:06:55', '2020-04-15 18:32:14', NULL),
(140, 'ارز دورو', 'Duru Pilavlık', 11, 0, NULL, '1586948290.jpg', NULL, NULL, 1.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 62, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Duru Rice Pilavlik', 'kg', NULL, '2020-04-05 18:48:09', '2020-04-15 17:58:10', NULL),
(141, 'ارز توسيا دورو', 'Duru Tosya Pirinç', 11, 0, NULL, '1586948432.jpg', NULL, NULL, 1.89, 0.00, 10000, 5, 1, 2, 0, 0, 0, 63, 0, 1, 1, 'كيلو', 'kg', 1, 5, NULL, NULL, 'Duru Rice Tosya', 'kg', NULL, '2020-04-05 18:50:47', '2020-04-15 18:00:32', NULL),
(142, 'ارز اوسمانجيك دورو', 'Duru Osmancık Pirinç', 11, 0, NULL, '1586783084.jpg', NULL, NULL, 2.99, 0.00, 10000, 5, 1, 2, 0, 0, 0, 26, 0, 1, 1, 'كيلو', 'kg', 1, 5, NULL, NULL, 'Duru Rice Osmancık', 'kg', NULL, '2020-04-05 18:52:58', '2020-04-15 17:46:31', NULL),
(143, 'برغل للكبة دورو', 'Duru Köftelik Bulgur', 11, 0, NULL, '1586948749.jpg', NULL, NULL, 1.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 64, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Duru Bulgur Köftelik', 'kg', NULL, '2020-04-05 18:57:33', '2020-04-15 18:05:49', NULL),
(144, 'برغل خشن دورو', 'Duru İri Pilavlık Bulgur', 11, 0, NULL, '1586948858.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, 2, 0, 0, 0, 65, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Duru Bulgur Iri Pilavlik', 'kg', NULL, '2020-04-05 19:00:52', '2020-04-15 18:07:38', NULL),
(145, 'برغل بني دورو', 'Duru Esmer Pilavlik Bulgur', 11, 0, NULL, '1586949437.jpg', NULL, NULL, 1.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 66, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Duru Bulgur Esmer', 'kg', NULL, '2020-04-05 19:10:11', '2020-04-15 18:21:27', NULL),
(146, 'برغل بني ناعم للكبة دورو', 'Duru Esmer Köftelik İnce Bulgur', 11, 0, NULL, '1586949564.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, 2, 0, 0, 0, 67, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Duru Bulgur Esmer Köftelik Ince', 'kg', NULL, '2020-04-05 19:15:27', '2020-04-15 18:19:24', NULL),
(147, 'برغل للكبة ناعم دورو', 'Duru Köftelik ince Bulgur', 11, 0, NULL, '1586949856.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, 2, 0, 0, 0, 68, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Duru Bulgur Ince Köftelik', 'kg', NULL, '2020-04-05 19:21:15', '2020-04-15 18:24:16', NULL),
(148, 'برغل ناعم دورو', 'Duru İnce Pilavlık Bulgur', 11, 0, NULL, '1586949934.jpg', NULL, NULL, 1.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 69, 0, 1, 1, 'كيلو', 'kg', 1, 5, NULL, NULL, 'Duru Bulgur Ince Pilavlik', 'kg', NULL, '2020-04-05 19:25:55', '2020-04-15 18:25:34', NULL),
(149, 'برغل دورو', 'Duru Bulgur', 11, 0, NULL, '1586949993.jpg', NULL, NULL, 1.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 70, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Duru Bulgur Pilavlik', 'kg', NULL, '2020-04-05 19:31:57', '2020-04-15 18:36:37', '2020-04-15 18:36:37'),
(150, 'زيت زيتون ديفلا', 'Divella Zeytin Yağı', 11, 0, NULL, '1586950207.jpg', NULL, NULL, 6.39, 0.00, 10000, 5, 1, 2, 0, 0, 0, 71, 0, 1, 1, 'لتر', 'lt', 1, 10, NULL, NULL, 'Devivella Olive Oil', 'lt', NULL, '2020-04-05 19:46:57', '2020-04-15 18:30:07', NULL),
(152, 'جبنة بيضاء 65% غازي', 'Gazi Beyaz Peynir 65%', 9, 0, NULL, '1586425856.jpg', NULL, NULL, 0.00, 0.00, 10000, 3, 1, 2, 0, 0, 0, 1, 0, 1, 0, '800 جم', '800 gr', 1, 10, NULL, NULL, 'Gazi Feta Cheese 65%', '800 g', NULL, '2020-04-09 16:50:56', '2020-04-18 00:46:03', NULL),
(153, 'جبنة بيضاء 65% غازي', 'Gazi Beyaz Peynir 65%', 9, 0, NULL, '1586698798.jpg', NULL, NULL, 6.99, 0.00, 10000, 3, 1, 2, 0, 0, 0, 2, 0, 1, 1, '800 جم', '800 gr', 1, 10, NULL, NULL, 'White Cheese 65%', '800 g', NULL, '2020-04-12 20:39:58', '2020-04-12 20:40:41', '2020-04-12 20:40:41'),
(154, 'جبنة شاه 50٪ غازي', 'Gazi Koyun Peynir 50%', 9, 0, NULL, '1586699877.jpg', NULL, NULL, 0.00, 0.00, 10000, 3, 1, 2, 0, 0, 0, 2, 0, 1, 0, '800 جم', '800 gr', 1, 10, NULL, NULL, 'Gazi Sheep Cheese 50%', '800 g', NULL, '2020-04-12 20:57:57', '2020-04-18 00:46:16', NULL),
(155, 'جبنة غنم 50% غازي', 'Gazi Keçi Peynir 50%', 9, 0, NULL, '1586700450.jpg', NULL, NULL, 0.00, 0.00, 10000, 3, 1, 2, 0, 0, 0, 3, 0, 1, 0, '800 جم', '800 gr', 1, 10, NULL, NULL, 'Gazi Goat Cheese 50%', '800 g', NULL, '2020-04-12 21:07:30', '2020-04-18 00:46:22', NULL),
(156, 'جبنة بيضاء 60% غازي', 'Gazi Beyaz Peynir 60%', 9, 0, NULL, '1586700979.jpg', NULL, NULL, 6.99, 0.00, 9999, 3, 1, 2, 0, 0, 0, 4, 0, 1, 1, '800 جم', '800 gr', 1, 10, NULL, NULL, 'Gazi feta Cheese 60%', '800 g', NULL, '2020-04-12 21:16:19', '2020-04-15 20:23:23', NULL),
(157, 'جبنة بيضاء 45% غازي', 'Gazi Beyaz Peynir 45%', 9, 0, NULL, '1586701340.jpg', NULL, NULL, 5.99, 0.00, 9998, 3, 1, 2, 0, 0, 0, 5, 0, 1, 1, '800 جم', '800 gr', 1, 10, NULL, NULL, 'Gazi feta Cheese 45%', '800 g', NULL, '2020-04-12 21:22:20', '2020-04-15 20:24:42', NULL),
(158, 'جبنة بيضاء 55% غازي', 'Gazi Beyaz Peynir 55%', 9, 0, NULL, '1586701503.jpg', NULL, NULL, 5.59, 0.00, 10000, 3, 1, 2, 0, 0, 0, 6, 0, 1, 1, '800 جم', '800 gr', 1, 10, NULL, NULL, 'Gazi Feta Cheese 55%', '800 g', NULL, '2020-04-12 21:25:03', '2020-04-15 20:26:07', NULL),
(159, 'جبنة بيضاء 55% غازي', 'Gazi Beyaz Peynir 55%', 9, 0, NULL, '1586701506.jpg', NULL, NULL, 0.00, 0.00, 10000, 3, 1, 2, 0, 0, 0, 7, 0, 1, 1, '800 جم', '800 gr', 1, 5, NULL, NULL, 'Gazi Feta Cheese 55%', '800 g', NULL, '2020-04-12 21:25:07', '2020-04-13 00:18:12', '2020-04-13 00:18:12'),
(160, 'جبنة بيضاء بدون لاكتوز 55% غازي', 'Gazi Laktozsuz Beyaz Peynir 55%', 9, 0, NULL, '1586701788.jpg', NULL, NULL, 7.39, 0.00, 10000, 3, 1, 2, 0, 0, 0, 8, 0, 1, 1, '800 جم', '800 gr', 1, 10, NULL, NULL, 'Gazi Feta Cheese Free Lactose 55%', '800 g', NULL, '2020-04-12 21:29:48', '2020-04-15 20:27:18', NULL),
(161, 'لبنة بيضاء غازي', 'Gazi Süzme Beyaz Peynir', 9, 0, NULL, '1586702576.jpg', NULL, NULL, 0.00, 0.00, 10000, 3, 1, 2, 0, 0, 0, 9, 0, 1, 0, '800 جم', '800 gr', 1, 10, NULL, NULL, 'Gazi Suzme Feta Cheese', '800 g', NULL, '2020-04-12 21:42:56', '2020-04-18 00:46:55', NULL),
(162, 'جبنة بيضاء 55% غازي', 'Gazi Beyaz Peynir 55%', 9, 0, NULL, '1586709181.jpg', NULL, NULL, 4.69, 0.00, 10000, 3, 1, 2, 0, 0, 0, 10, 0, 1, 1, '400 جم', '400 gr', 1, 5, NULL, NULL, 'Gazi Feta Cheese 55%', '400 g', NULL, '2020-04-12 23:33:01', '2020-04-15 20:30:51', NULL),
(163, 'جبنة بيضاء 60% غازي', 'Gazi Beyaz Peynir 60%', 9, 0, NULL, '1586709422.jpg', NULL, NULL, 4.75, 0.00, 10000, 3, 1, 2, 0, 0, 0, 11, 0, 1, 1, '400 جم', '400 gr', 1, 10, NULL, NULL, 'Gazi feta Cheese 60%', '400 g', NULL, '2020-04-12 23:37:02', '2020-04-15 20:31:57', NULL),
(164, 'جبنة بيضاء 45% غازي', 'Gazi Beyaz Peynir 45%', 9, 0, NULL, '1586709576.jpg', NULL, NULL, 4.50, 0.00, 10000, 3, 1, 2, 0, 0, 0, 12, 0, 1, 1, '400 جم', '400 gr', 1, 10, NULL, NULL, 'Gazi feta Cheese 45%', '400 g', NULL, '2020-04-12 23:39:36', '2020-04-15 20:33:01', NULL),
(165, 'جبنة بيضاء بدون لاكتوز 55% غازي', 'Gazi Laktozsuz Beyaz Peynir 55%', 9, 0, NULL, '1586709785.jpg', NULL, NULL, 0.00, 0.00, 10000, 3, 1, 2, 0, 0, 0, 13, 0, 1, 0, '400 جم', '400 gr', 1, 10, NULL, NULL, 'Gazi Feta Cheese Free Lactose 55%', '400 g', NULL, '2020-04-12 23:43:05', '2020-04-18 00:47:19', NULL),
(166, 'جبنة شاه 50٪ غازي', 'Gazi Koyun Peynir 50%', 9, 0, NULL, '1586709923.jpg', NULL, NULL, 0.00, 0.00, 10000, 3, 1, 2, 0, 0, 0, 14, 0, 1, 0, '400 جم', '400 gr', 1, 5, NULL, NULL, 'Gazi Sheep Cheese 50%', '400 g', NULL, '2020-04-12 23:45:23', '2020-04-18 00:47:24', NULL),
(167, 'جبنة غنم 50% غازي', 'Gazi Keçi Peynir 50%', 9, 0, NULL, '1586710045.jpg', NULL, NULL, 6.50, 0.00, 10000, 3, 1, 2, 0, 0, 0, 15, 0, 1, 1, '400 جم', '400 gr', 1, 5, NULL, NULL, 'Gazi Goat Cheese 50%', '400 g', NULL, '2020-04-12 23:47:25', '2020-04-19 19:01:56', NULL),
(168, 'بطيخ شرائح طازج', 'Karpuz Dilim Taze', 6, 0, NULL, '1586710367.jpg', NULL, NULL, 0.00, 0.00, 10000, 6, 1, NULL, 0, 0, 0, 12, 0, 1, 1, 'كيلو', 'kg', 1, 5, NULL, NULL, 'Watermelon Slices Fresh', 'kg', NULL, '2020-04-12 23:52:47', '2020-04-22 19:55:48', NULL),
(169, 'بطيخ حبة كاملة طازج', 'Karpuz Tam Taze', 6, 0, NULL, '1586710659.jpg', NULL, NULL, 0.00, 0.00, 10000, 24, 1, NULL, 0, 0, 0, 13, 0, 1, 1, 'كيلو', 'kg', 1, 20, NULL, NULL, 'Watermelon Piece Fresh', 'kg', NULL, '2020-04-12 23:57:39', '2020-04-22 19:56:01', NULL),
(170, 'شمام / كنتلوب طازج', 'Kavun Aded Taze', 6, 0, NULL, '1586710935.jpg', NULL, NULL, 0.00, 0.00, 10000, 6, 1, NULL, 0, 0, 0, 14, 0, 1, 1, 'حبة', 'ad', 1, 12, NULL, NULL, 'Melon Piece Fresh', 'pc', NULL, '2020-04-13 00:02:15', '2020-04-22 19:52:38', NULL),
(171, 'زيتون اسود ملح خفيف مارمارا .', 'Marmarabirlik Siyah Zeytin Az Tuzlu', 14, 0, NULL, '1586766015.jpg', NULL, NULL, 3.59, 0.00, 10000, 3, 1, 2, 0, 0, 0, 31, 0, 1, 1, '800 جم', '800 gr', 1, 5, NULL, NULL, 'Marmarabirlik Black Olive Les Salty', '800 g', NULL, '2020-04-13 15:20:15', '2020-04-13 15:20:15', NULL),
(172, 'زيتون اسود ميجا مارمارا  بيرلك', 'Marmarabirlik Siyah Zeytin Mega', 14, 0, NULL, '1586766249.jpg', NULL, NULL, 5.49, 0.00, 10000, 3, 1, 2, 0, 0, 0, 32, 0, 1, 1, '800 جم', '800 gr', 1, 5, NULL, NULL, 'Marmarabirlik Black Olive Mega', '800 g', NULL, '2020-04-13 15:24:09', '2020-04-13 15:24:09', NULL),
(173, 'زيتون اسود هايبر مارمارا  بيرلك', 'Marmarabirlik Siyah Zeytin Hiper', 14, 0, NULL, '1586766550.jpg', NULL, NULL, 4.49, 0.00, 10000, 3, 1, 2, 0, 0, 0, 33, 0, 1, 1, '800 جم', '800 gr', 1, 5, NULL, NULL, 'Marmarabirlik Black Olive Hiper', '800 g', NULL, '2020-04-13 15:29:10', '2020-04-13 15:29:10', NULL),
(174, 'زيتون اسود سوبر مارمارا  بيرلك', 'Marmarabirlik Siyah Zeytin Süper', 14, 0, NULL, '1586766905.jpg', NULL, NULL, 4.29, 0.00, 10000, 3, 1, 2, 0, 0, 0, 34, 0, 1, 1, '800 جم', '800 gr', 1, 5, NULL, NULL, 'Marmarabirlik Black Olive Super', '800 g', NULL, '2020-04-13 15:35:05', '2020-04-13 15:35:05', NULL),
(175, 'زيتون اسود إكسترا مارمارا  بيرلك', 'Marmarabirlik Siyah Zeytin Ekstra', 14, 0, NULL, '1586767548.jpg', NULL, NULL, 3.39, 0.00, 10000, 3, 1, 2, 0, 0, 0, 35, 0, 1, 1, '800 جم', '800 gr', 1, 5, NULL, NULL, 'Marmarabirlik Black ِEkstra', '800 g', NULL, '2020-04-13 15:45:48', '2020-04-13 15:45:48', NULL),
(176, 'بيض طبق', 'Yumurta', 9, 0, NULL, '1586767832.jpg', NULL, NULL, 1.49, 0.00, 9998, 5, 1, 2, 0, 0, 0, 16, 0, 1, 1, '6 بيضة', '6 aded', 1, 10, NULL, NULL, 'Egg', '6 pcs', NULL, '2020-04-13 15:50:32', '2020-04-15 22:07:50', NULL),
(177, 'بيض طبق', 'Yumurta', 9, 0, NULL, '1586767958.jpg', NULL, NULL, 3.99, 0.00, 10000, 3, 1, 2, 0, 0, 0, 17, 0, 1, 1, '30 بيضة', '30 aded', 1, 10, NULL, NULL, 'Egg', '30 pcs', NULL, '2020-04-13 15:52:38', '2020-04-15 22:08:16', NULL),
(178, 'تمر ماجول', 'Majoul Hurma', 10, 0, NULL, '1586769123.jpg', NULL, NULL, 5.85, 0.00, 10000, 5, 1, 2, 0, 0, 0, 1, 0, 1, 1, '500 جم', '500 gr', 1, 10, NULL, NULL, 'Majoul Dates', '500 g', NULL, '2020-04-13 16:12:03', '2020-04-15 23:14:03', NULL),
(179, 'تمر جزائري نخب اول', 'Hurma Cezayir Birinci Kalite', 10, 0, NULL, '1586769428.jpg', NULL, NULL, 5.25, 0.00, 10000, 5, 1, 2, 0, 0, 0, 2, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Dates Algerian First Class', 'kg', NULL, '2020-04-13 16:17:08', '2020-04-18 20:52:00', NULL),
(180, 'تمر صفوي', 'Hurma Safawi', 10, 0, NULL, '1586769986.jpg', NULL, NULL, 6.25, 0.00, 10000, 5, 1, 2, 0, 0, 0, 3, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Dates Safawi', 'kg', NULL, '2020-04-13 16:26:26', '2020-04-15 23:12:59', NULL),
(181, 'كريمة شوكولا نوتيلا', 'Nutella Çikolata Kreması', 14, 0, NULL, '1586771748.jpg', NULL, NULL, 6.59, 0.00, 10000, 3, 1, 2, 0, 0, 0, 72, 0, 1, 1, '975 جم', '975 gr', 1, 5, NULL, NULL, 'Nutella Chocolate Spread', '975 g', NULL, '2020-04-13 16:55:48', '2020-04-13 20:18:16', NULL),
(182, 'حلاوة طحينية بالشوكولا صانتات', 'Tahin Helva Kakaolu', 14, 0, NULL, '1586779422.jpg', NULL, NULL, 2.19, 0.00, 10000, 3, 1, 2, 0, 0, 0, 36, 0, 1, 1, '350 جم', '350 gr', 1, 5, NULL, NULL, 'Suntat Halvah Cocoa', '350 g', NULL, '2020-04-13 19:03:42', '2020-04-13 19:03:42', NULL),
(183, 'حلاوة طحينية صانتات', 'Suntat Tahin Helva', 14, 0, NULL, '1586779675.jpg', NULL, NULL, 1.29, 0.00, 10000, 3, 1, 2, 0, 0, 0, 37, 0, 1, 1, '350 جم', '350 gr', 1, 5, NULL, NULL, 'Suntat Halvah', '350 g', NULL, '2020-04-13 19:07:55', '2020-04-13 19:14:57', NULL),
(184, 'حلاوة طحينية بالفستق صانتات', 'Tahin Helva Antep Fıstığı', 14, 0, NULL, '1586779833.jpg', NULL, NULL, 2.89, 0.00, 10000, 3, 1, 2, 0, 0, 0, 38, 0, 1, 1, '350 جم', '350 gr', 1, 5, NULL, NULL, 'Suntat Halvah Pistachio', '350 g', NULL, '2020-04-13 19:10:33', '2020-04-13 19:10:33', NULL),
(185, 'حلاوة طحينية مس', 'Suntat Tahin Helva', 14, 0, NULL, '1586780180.png', NULL, NULL, 1.69, 0.00, 10000, 3, 1, 2, 0, 0, 0, 39, 0, 1, 1, '300 جم', '300 gr', 1, 5, NULL, NULL, 'Mis Halvah', '300 g', NULL, '2020-04-13 19:16:20', '2020-04-13 19:16:20', NULL),
(186, 'حلاوة طحينية بالشوكولا مس', 'Mis Tahin Helva Kakaolu', 14, 0, NULL, '1586780330.png', NULL, NULL, 0.00, 0.00, 10000, 3, 1, 2, 0, 0, 0, 40, 0, 1, 1, '300 جم', '300 gr', 1, 5, NULL, NULL, 'Mis Halvah Cocoa', '300 g', NULL, '2020-04-13 19:18:50', '2020-04-13 19:18:50', NULL),
(187, 'حلاوة طحينية بالفستق مس', 'Mis Tahin Helva Kakaolu', 14, 0, NULL, '1586780485.png', NULL, NULL, 2.79, 0.00, 10000, 3, 1, 2, 0, 0, 0, 41, 0, 1, 1, '300 جم', '300 gr', 1, 5, NULL, NULL, 'Mis Halvah Pistachio', '300 g', NULL, '2020-04-13 19:21:25', '2020-04-13 19:21:25', NULL),
(188, 'جبنة موزيريلا إفري دي', 'Everyday Mozzarella Peynir', 9, 0, NULL, '1586780834.jpg', NULL, NULL, 0.69, 0.00, 9998, 10, 1, 2, 0, 0, 0, 42, 0, 1, 1, '200 جم', '200 gr', 1, 10, NULL, NULL, 'Everyday Mozzarella', '200 g', NULL, '2020-04-13 19:27:14', '2020-04-15 20:48:07', NULL),
(189, 'صلصة فلفل حلو توكاش', 'Turkaş Tatlı Biber Salçası', 14, 0, NULL, '1586781747.jpg', NULL, NULL, 2.99, 0.00, 10000, 3, 1, 2, 0, 0, 0, 43, 0, 1, 1, '700 جم', '700 gr', 1, 5, NULL, NULL, 'Tukaş Pepper Sauce', '700 g', NULL, '2020-04-13 19:42:28', '2020-04-13 19:42:28', NULL),
(190, 'كوكا كولا علبة', 'Coca Cola Kutu', 15, 0, NULL, '1586800628.jpg', NULL, NULL, 0.95, 0.00, 10000, 10, 1, 2, 0, 0, 0, 1, 0, 1, 1, '330 مل', '330 ml', 1, 10, NULL, NULL, 'Coca Cola Can', '330 ml', NULL, '2020-04-14 00:57:08', '2020-04-18 18:46:33', NULL),
(191, 'كوكا كولا زيرو', 'Coca Cola Zero', 15, 0, NULL, '1587489224.jpg', NULL, NULL, 0.95, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 2, 0, 1, 1, '330 مل', '330 ml', 1, 10, NULL, NULL, 'Coca Cola Zero', '330 ml', NULL, '2020-04-14 01:04:29', '2020-04-22 00:13:44', NULL),
(192, 'كوكا كولا', 'Coca Cola', 15, 0, NULL, '1586801223.jpg', NULL, NULL, 1.60, 0.00, 10000, 10, 1, 2, 0, 0, 0, 3, 0, 1, 1, '500 مل', '500 ml', 1, 10, NULL, NULL, 'Coca Cola', '500 ml', NULL, '2020-04-14 01:07:03', '2020-04-18 19:03:08', NULL),
(193, 'كوكا كولا زيرو', 'Coca Cola Zero', 15, 0, NULL, '1586801335.jpg', NULL, NULL, 1.70, 0.00, 10000, 10, 1, 2, 0, 0, 0, 4, 0, 1, 1, '500 مل', '500 ml', 1, 10, NULL, NULL, 'Coca Cola Zero', '500 ml', NULL, '2020-04-14 01:08:55', '2020-04-18 19:04:55', NULL),
(194, 'كوكا كولا', 'Coca Cola', 15, 0, NULL, '1586801680.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, 2, 0, 0, 0, 5, 0, 1, 0, '1 لتر', '1 lt', 1, 10, NULL, NULL, 'Coca Cola Bottle', '1 lt', NULL, '2020-04-14 01:14:40', '2020-04-18 18:47:23', NULL),
(195, 'كوكا كولا زيرو', 'Coca Cola Zero', 15, 0, NULL, '1587125174.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, 2, 0, 0, 0, 6, 0, 1, 0, '1 لتر', '1 lt', 1, 10, NULL, NULL, 'Coca Cola Zero', '1 lt', NULL, '2020-04-14 01:17:30', '2020-04-18 19:05:31', NULL),
(196, 'كوكا كولا', 'Coca Cola', 15, 0, NULL, '1587125205.jpg', NULL, NULL, 2.50, 0.00, 10000, 5, 1, 2, 0, 0, 0, 7, 0, 1, 1, '1.5 لتر', '1.5 lt', 1, 5, NULL, NULL, 'Coca Cola', '1.5 lt', NULL, '2020-04-14 01:24:01', '2020-04-18 18:47:46', NULL),
(197, 'كوكا كولا زيرو', 'Coca Cola Zero', 15, 0, NULL, '1587125502.jpg', NULL, NULL, 2.50, 0.00, 10000, 5, 1, 2, 0, 0, 0, 8, 0, 1, 1, '1.5 لتر', '1.5 lt', 1, 10, NULL, NULL, 'Coca Cola Zero', '1.5 lt', NULL, '2020-04-14 01:31:56', '2020-04-18 18:48:09', NULL),
(198, 'فانتا برتقال', 'Fanta Portakal', 15, 0, NULL, '1586803507.jpg', NULL, NULL, 0.90, 0.00, 10000, 10, 1, 2, 0, 0, 0, 9, 0, 1, 1, '330 مل', '330 ml', 1, 10, NULL, NULL, 'Fanta Orange', '330 ml', NULL, '2020-04-14 01:45:07', '2020-04-18 18:51:13', NULL),
(199, 'فانتا ليمون', 'Fanta Limon', 15, 0, NULL, '1586803639.jpg', NULL, NULL, 0.90, 0.00, 10000, 10, 1, 2, 0, 0, 0, 10, 0, 1, 1, '330 مل', '330 ml', 1, 10, NULL, NULL, 'Fanta Lemon', '330 ml', NULL, '2020-04-14 01:47:19', '2020-04-18 18:51:24', NULL),
(200, 'فليفلة خضراء طازج', 'Tatlı Yeşil Piper Fresh', 5, 0, NULL, '1586804389.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, NULL, 0, 0, 0, 31, 0, 1, 1, 'لتر', 'kg', 1, 10, NULL, NULL, 'Green Capsicum Fresh', 'kg', NULL, '2020-04-14 01:59:49', '2020-04-22 19:30:42', NULL),
(201, 'سبانخ طازج', 'Ispanak', 5, 0, NULL, '1586804649.jpg', NULL, NULL, 0.00, 0.00, 10000, 20, 1, 2, 0, 0, 0, 32, 0, 1, 1, 'حزمة', 'demet', 1, 20, NULL, NULL, 'Spinach Fresh', 'bunch', NULL, '2020-04-14 02:04:09', '2020-04-14 02:04:09', NULL),
(202, 'يوسفي طازج', 'Mandalina Taze', 6, 0, NULL, '1586804863.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, 2, 0, 0, 0, 15, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Mandarin Fresh', 'kg', NULL, '2020-04-14 02:07:44', '2020-04-22 19:56:15', NULL),
(203, 'كريمة شوكولا نوتيلا', 'Nutella Çikolata Kreması', 14, 0, NULL, '1586946881.jpg', NULL, NULL, 2.99, 0.00, 10000, 3, 1, 2, 0, 0, 0, 73, 0, 1, 1, '400 جم', '400 g', 1, 10, NULL, NULL, 'Nutella Chocolate Spread', '400 g', NULL, '2020-04-15 17:31:20', '2020-04-15 17:34:41', NULL),
(204, 'لبنة 10% دسم غازي', 'Gazi Süzme Yogurt 10%', 9, 0, NULL, '1586964851.jpg', NULL, NULL, 2.39, 0.00, 10000, 3, 1, 2, 0, 0, 0, 43, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Gazi Yogurt Suzme 10%', 'kg', NULL, '2020-04-15 22:27:34', '2020-04-15 22:34:12', NULL),
(205, 'لبن 3.5%  دسم تشيفتلك غازي', 'Gazi Yogurt Çiftlik 3.5%', 9, 0, NULL, '1586964822.jpg', NULL, NULL, 1.85, 0.00, 9999, 3, 1, 2, 0, 0, 0, 44, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Gazi Yogurt Çiftlik 3.5%', 'kg', NULL, '2020-04-15 22:33:42', '2020-04-15 22:33:42', NULL),
(206, 'ورق الغار', 'Defne Yaprağı', 10, 0, NULL, '1586967891.jpg', NULL, NULL, 1.29, 0.00, 10000, 3, 1, 2, 0, 0, 0, 4, 0, 1, 1, '15 جم', '15 gr', 1, 10, NULL, NULL, 'Bay Leaf', '15 g', NULL, '2020-04-15 23:24:51', '2020-04-18 01:46:59', NULL),
(207, 'سماق مطحون', 'Sumak', 10, 0, NULL, '1586968099.jpg', NULL, NULL, 3.99, 0.00, 10000, 5, 1, 2, 0, 0, 0, 5, 0, 1, 1, '500 جم', '500 gr', 1, 10, NULL, NULL, 'Sumac Ground', '500 g', NULL, '2020-04-15 23:28:19', '2020-04-18 01:44:15', NULL),
(208, 'فلفل مطحون حار', 'Pul Biber', 10, 0, NULL, '1586968314.jpg', NULL, NULL, 1.99, 0.00, 10000, 5, 1, 2, 0, 0, 0, 6, 0, 1, 1, '200 جم', '200 gr', 1, 10, NULL, NULL, 'Chili Pepper', '200 g', NULL, '2020-04-15 23:31:54', '2020-04-18 00:57:21', NULL),
(209, 'قرنفل حب', 'Karanfil', 10, 0, NULL, '1586968690.jpg', NULL, NULL, 4.69, 0.00, 10000, 5, 1, 2, 0, 0, 0, 7, 0, 1, 1, '130 جم', '130 gr', 1, 10, NULL, NULL, 'Clove', '130 g', NULL, '2020-04-15 23:38:10', '2020-04-18 01:46:12', NULL),
(210, 'قرفة مطحونة', 'Tarç Toz', 10, 0, NULL, '1586968927.jpg', NULL, NULL, 1.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 8, 0, 1, 1, '170 جم', '170 gr', 1, 10, NULL, NULL, 'Cinnamon Ground', '170', NULL, '2020-04-15 23:42:07', '2020-04-18 01:45:19', NULL),
(211, 'كركم مطحون', 'Zerdeçal', 10, 0, NULL, '1586969116.jpg', NULL, NULL, 1.29, 0.00, 10000, 5, 1, 2, 0, 0, 0, 9, 0, 1, 1, '100 جم', '100 gr', 1, 10, NULL, NULL, 'Turmeric', '100 g', NULL, '2020-04-15 23:45:16', '2020-04-18 01:43:36', NULL),
(212, 'كمون مطحون', 'Kimyon Toz', 10, 0, NULL, '1586971075.jpg', NULL, NULL, 1.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 10, 0, 1, 1, '200 جم', '200 gr', 1, 10, NULL, NULL, 'Cumin Ground', '200 g', NULL, '2020-04-16 00:17:55', '2020-04-18 01:43:04', NULL),
(213, 'فلفل اسود مطحون', 'Karabiber Toz', 10, 0, NULL, '1586971276.jpg', NULL, NULL, 1.99, 0.00, 10000, 5, 1, 2, 0, 0, 0, 11, 0, 1, 1, '200 جم', '200 gr', 1, 10, NULL, NULL, 'Black Pepper Ground', '200 g', NULL, '2020-04-16 00:21:16', '2020-04-18 01:42:20', NULL),
(214, 'خبز لبناني', 'Ekmek Suriye', 8, 0, NULL, '1586971563.jpg', NULL, NULL, 0.85, 0.00, 10000, 10, 1, 2, 0, 0, 0, 1, 0, 1, 1, 'ربطة', 'paket', 1, 10, NULL, NULL, 'Damascus Bread', 'bag', NULL, '2020-04-16 00:26:03', '2020-04-16 00:28:47', NULL),
(215, 'شاي سيلان تاناي', 'Tanay Çayı, CEYLAN', 15, 0, NULL, '1587067917.jpg', NULL, NULL, 3.59, 0.00, 10000, 3, 1, 2, 0, 0, 0, 11, 0, 1, 1, '500 جم', '500 gr', 1, 10, NULL, NULL, 'Tanay Tea, CEYLON', '500 g', NULL, '2020-04-17 03:11:57', '2020-04-17 03:11:57', NULL),
(216, 'شاي تركي تشايكور', 'Çaykur Çay Turist Çayı', 15, 0, NULL, '1587068845.jpg', NULL, NULL, 3.59, 0.00, 10000, 3, 1, 2, 0, 0, 0, 12, 0, 1, 1, '500 جم', '500 gr', 1, 10, NULL, NULL, 'Caykur Turkish Tea', '500 g', NULL, '2020-04-17 03:27:25', '2020-04-17 03:27:25', NULL),
(217, 'شاي تركي فليز', 'Filiz Çay', 15, 0, NULL, '1587069095.jpg', NULL, NULL, 4.19, 0.00, 10000, 3, 1, 2, 0, 0, 0, 13, 0, 1, 1, '500 جم', '500 gr', 1, 10, NULL, NULL, 'Filiz Turkish Tea', '500 g', NULL, '2020-04-17 03:31:35', '2020-04-17 03:31:35', NULL);
INSERT INTO `items` (`id`, `name_ar`, `name_tr`, `category_id`, `sub_category_id`, `brands_id`, `image`, `details_ar`, `details_tr`, `price`, `discount_price`, `quantity`, `highest_quantity`, `unit_id`, `feature_id`, `special`, `offer`, `lang`, `ordered`, `ordered_offer`, `user_id`, `active`, `unit_name_ar`, `unit_name_tr`, `increase_amount`, `limit_store_buy`, `barcode`, `keyword`, `name_en`, `unit_name_en`, `details_en`, `created_at`, `updated_at`, `deleted_at`) VALUES
(218, 'شاي العلامة الصفراء لبتون', 'Lıpton Çay Yellow Label', 15, 0, NULL, '1587069352.jpg', NULL, NULL, 3.99, 0.00, 10000, 3, 1, 2, 0, 0, 0, 14, 0, 1, 1, '100 كيس', '100 poşet', 1, 10, NULL, NULL, 'Lipton Tea Yellow Label', '100 bag', NULL, '2020-04-17 03:35:52', '2020-04-17 03:35:52', NULL),
(219, 'سبرايت ليمون', 'Sprite Limon', 15, 0, NULL, '1587099444.jpg', NULL, NULL, 0.95, 0.00, 10000, 10, 1, 2, 0, 0, 0, 15, 0, 1, 1, '330 مل', '330 ml', 1, 10, NULL, NULL, 'Sprite Lemon', '330 ml', NULL, '2020-04-17 11:57:24', '2020-04-18 18:51:56', NULL),
(220, 'سبرايت ليمون', 'Sprite Limon', 15, 0, NULL, '1587099790.jpg', NULL, NULL, 1.65, 0.00, 10000, 10, 1, 2, 0, 0, 0, 16, 0, 1, 1, '500 مل', '500 ml', 1, 10, NULL, NULL, 'Sprite Lemon', '500 ml', NULL, '2020-04-17 12:03:10', '2020-04-18 18:52:17', NULL),
(221, 'سبرايت ليمون', 'Sprite Limon', 15, 0, NULL, '1587099816.jpg', NULL, NULL, 0.00, 0.00, 10000, 5, 1, 2, 0, 0, 0, 17, 0, 1, 0, 'لتر', 'lt', 1, 10, NULL, NULL, 'Sprite Lemon', 'lt', NULL, '2020-04-17 12:03:36', '2020-04-18 18:55:43', NULL),
(222, 'سبرايت ليمون', 'Sprite Limon', 15, 0, NULL, '1587099864.jpg', NULL, NULL, 2.40, 0.00, 10000, 3, 1, 2, 0, 0, 0, 18, 0, 1, 1, '1.5 لتر', '1.5 lt', 1, 10, NULL, NULL, 'Sprite Lemon', '1.5 lt', NULL, '2020-04-17 12:04:24', '2020-04-18 18:55:51', NULL),
(223, 'زيت زيتون افريدي', 'Everyday Zeytin Yağı', 11, 0, NULL, '1587100324.jpg', NULL, NULL, 5.15, 0.00, 10000, 3, 1, 2, 0, 0, 0, 72, 0, 1, 1, 'لتر', 'lt', 1, 10, NULL, NULL, 'Everyday Olive Oil', 'lt', NULL, '2020-04-17 12:12:04', '2020-04-18 19:25:54', NULL),
(224, 'زيت عباد الشمس افريدي', 'Everyday Ayçiçek Yağı', 11, 0, NULL, '1587100529.jpg', NULL, NULL, 2.93, 0.00, 10000, 3, 1, 2, 0, 0, 0, 73, 0, 1, 1, '2 لتر', '2 lt', 1, 10, NULL, NULL, 'Everyday Sunflower Oil', '2 lt', NULL, '2020-04-17 12:15:29', '2020-04-18 19:25:16', NULL),
(225, 'زيت الذرة', 'Everyday Mısır Yağı', 11, 0, NULL, '1587100765.jpg', NULL, NULL, 3.75, 0.00, 10000, 3, 1, 2, 0, 0, 0, 74, 0, 1, 1, '2 لتر', '2 lt', 1, 10, NULL, NULL, 'Everyday Corn Oil', '2 lt', NULL, '2020-04-17 12:19:26', '2020-04-18 19:25:35', NULL),
(226, 'زبادي 3.5% يايلا', 'Yayla Yğurt 3.5%', 9, 0, NULL, '1587101290.jpg', NULL, NULL, 1.90, 0.00, 10000, 3, 1, 2, 0, 0, 0, 19, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Yayla Yogurt 3.5%', 'kg', NULL, '2020-04-17 12:28:10', '2020-04-17 12:33:02', NULL),
(227, 'زبادي 10% يايلا', 'Yayla Yogurt', 9, 0, NULL, '1587101506.jpg', NULL, NULL, 2.55, 0.00, 10000, 3, 1, 2, 0, 0, 0, 45, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Yayla Yogurt 10%', 'kg', NULL, '2020-04-17 12:31:46', '2020-04-17 12:31:46', NULL),
(228, 'معجون اسنان مبيض سيجنال', 'Sıgnal Dış Macunu Blancheur', 12, 0, NULL, '1587102474.jpg', NULL, NULL, 2.50, 0.00, 10000, 5, 1, 2, 0, 0, 0, 1, 0, 1, 1, '75 مل', '75 ml', 1, 10, NULL, NULL, 'Sıgnal Tooth Paste Blancheur', '75 ml', NULL, '2020-04-17 12:47:54', '2020-04-17 12:47:54', NULL),
(229, 'معجون اسنان مبيض فحمي سيجنال', 'Sıgnal Dış Macunu Blancheur Charbon', 12, 0, NULL, '1587216710.jpg', NULL, NULL, 2.85, 0.00, 10000, 5, 1, 2, 0, 0, 0, 2, 0, 1, 1, '75 مل', '75 ml', 1, 10, NULL, NULL, 'Sıgnal Tooth Paste Blancheur Charbon', '75 ml', NULL, '2020-04-17 12:48:10', '2020-04-18 20:31:50', NULL),
(230, 'معجون اسنان اكسبيرت سيجنال', 'Sıgnal Dış Macunu Expert Protection', 12, 0, NULL, '1587216747.jpg', NULL, NULL, 2.50, 0.00, 10000, 5, 1, 2, 0, 0, 0, 3, 0, 1, 1, '75 مل', '75 ml', 1, 10, NULL, NULL, 'Sıgnal Tooth Paste Expert Protection', '75 ml', NULL, '2020-04-17 12:49:06', '2020-04-18 20:32:27', NULL),
(231, 'معجون اسنان وشط فريش', 'Colgate MAx Fresh', 12, 0, NULL, '1587102773.jpg', NULL, NULL, 2.40, 0.00, 10000, 5, 1, 2, 0, 0, 0, 4, 0, 1, 1, '100 مل', '100 ml', 1, 10, NULL, NULL, 'Colgate Max Fresh', '100 ml', NULL, '2020-04-17 12:52:53', '2020-04-17 12:52:53', NULL),
(232, 'جل حمام كريم سوفت نيفيا', 'Nivea Duş Jeli  Cream Soft', 12, 0, NULL, '1587103407.jpg', NULL, NULL, 4.20, 0.00, 10000, 5, 1, 2, 0, 0, 0, 5, 0, 1, 1, '750 مل', '750 ml', 1, 10, NULL, NULL, 'Nivea Shower Gel Creme Soft', '750 ml', NULL, '2020-04-17 13:03:27', '2020-04-17 13:03:27', NULL),
(233, 'جل حمام كير ريلاكس نيفيا', 'Nivea Duş Jeli Care&Relax', 12, 0, NULL, '1587103428.jpg', NULL, NULL, 4.20, 0.00, 10000, 5, 1, 2, 0, 0, 0, 6, 0, 1, 1, '750 مل', '750 ml', 1, 10, NULL, NULL, 'Nivea Shower Gel Care&Relx', '750 ml', NULL, '2020-04-17 13:03:48', '2020-04-17 13:03:48', NULL),
(234, 'سائل غسيل الوان 28 داش', 'Dash Çamaşir Sıvı Renkliler', 13, 0, NULL, '1587108766.jpg', NULL, NULL, 7.00, 0.00, 10000, 3, 1, 2, 0, 0, 0, 1, 0, 1, 1, '1,54 لتر', '1,54 lt', 1, 10, NULL, NULL, 'Dash Washing Gel 28', '1,54 lt', NULL, '2020-04-17 14:32:47', '2020-04-17 14:40:14', NULL),
(235, 'سائل غسيل ابيض داش', 'Dash Çamaşır Suyu Beyazlar', 13, 0, NULL, '1587109160.jpg', NULL, NULL, 7.00, 0.00, 10000, 3, 1, 2, 0, 0, 0, 2, 0, 1, 1, '1,54 لتر', '1,54 lt', 1, 10, NULL, NULL, 'Dash Washing Liquid White', '1,54 lt', NULL, '2020-04-17 14:39:20', '2020-04-17 14:39:20', NULL),
(236, 'نسكافيه جولد', 'Nescafee Gold', 15, 0, NULL, '1587109605.jpg', NULL, NULL, 6.65, 0.00, 10000, 3, 1, 2, 0, 0, 0, 19, 0, 1, 1, '200 جم', '200', 1, 10, NULL, NULL, 'Nescafe Gold', '200 g', NULL, '2020-04-17 14:46:45', '2020-04-18 00:11:36', NULL),
(237, 'نسكافيه كلاسيك', 'Nescafe Gold', 15, 0, NULL, '1587109644.jpg', NULL, NULL, 6.25, 0.00, 10000, 3, 1, 2, 0, 0, 0, 20, 0, 1, 1, '200 جم', '200 gr', 1, 10, NULL, NULL, 'Nescafe Gold', '200 g', NULL, '2020-04-17 14:47:24', '2020-04-18 00:11:55', NULL),
(238, 'مرتديلا دجاج صانتات', 'Suntat Tavuk Salam', 7, 0, NULL, '1587110518.jpg', NULL, NULL, 1.19, 0.00, 10000, 5, 1, 2, 0, 0, 0, 1, 0, 1, 1, '200 جم', '200 gr', 1, 10, NULL, NULL, 'Suntat Poultry Sausage', '200 g', NULL, '2020-04-17 15:01:58', '2020-04-19 18:55:07', NULL),
(239, 'مرتديلا دجاج بالفستق صانتات', 'Suntat Tavuk Salam', 7, 0, NULL, '1587111063.jpg', NULL, NULL, 1.79, 0.00, 10000, 5, 1, 2, 0, 0, 0, 2, 0, 1, 1, '200 جم', '200 gr', 1, 10, NULL, NULL, 'Suntat Poultry Pepper Sausage', '200 g', NULL, '2020-04-17 15:11:03', '2020-04-17 15:11:03', NULL),
(240, 'مرتديلا دجاج بالفلفل صانتات', 'Suntat Tavuk Salam', 7, 0, NULL, '1587111182.jpg', NULL, NULL, 1.19, 0.00, 10000, 5, 1, 2, 0, 0, 0, 3, 0, 1, 1, '200 جم', '200 gr', 1, 10, NULL, NULL, 'Suntat Poultry Pıstachio Sausage', '200 g', NULL, '2020-04-17 15:13:02', '2020-04-17 15:13:02', NULL),
(241, 'صابون سائل زيتون كوميلي', 'Komili Sıvı Sabun Zeytin', 13, 0, NULL, '1587111886.jpg', NULL, NULL, 1.49, 0.00, 10000, 3, 1, 2, 0, 0, 0, 3, 0, 1, 1, '400 جم', '400 ml', 1, 10, NULL, NULL, 'Komili Liquid Soap Olive', '400 ml', NULL, '2020-04-17 15:24:46', '2020-04-17 15:24:46', NULL),
(242, 'صابون سائل لافانتا كوميلي', 'Komili Sıvı Sabun Lavanta', 13, 0, NULL, '1587111920.jpg', NULL, NULL, 1.49, 0.00, 10000, 3, 1, 2, 0, 0, 0, 4, 0, 1, 1, '400 جم', '400 ml', 1, 10, NULL, NULL, 'Komili Liquid Soap Lavanta', '400 ml', NULL, '2020-04-17 15:25:20', '2020-04-17 15:25:20', NULL),
(243, 'صابون سائل تروبيكال كوميلي', 'Komili Sıvı Sabun Tropikal', 13, 0, NULL, '1587111953.jpg', NULL, NULL, 1.49, 0.00, 10000, 3, 1, 2, 0, 0, 0, 5, 0, 1, 1, '400 جم', '400 ml', 1, 10, NULL, NULL, 'Komili Liquid Soap Tropikal', '400 ml', NULL, '2020-04-17 15:25:54', '2020-04-17 15:25:54', NULL),
(244, 'زبدة لايت بسيل', 'Becel Margarin Light', 9, 0, NULL, '1587113075.jpg', NULL, NULL, 2.19, 0.00, 10000, 5, 1, 2, 0, 0, 0, 46, 0, 1, 1, '250 جم', '250 gr', 1, 10, NULL, NULL, 'Becel Margarine Light', '250 g', NULL, '2020-04-17 15:44:35', '2020-04-17 15:44:35', NULL),
(245, 'زبدة اوميجا بيسيل', 'Becel Margarin Omega', 9, 0, NULL, '1587113153.jpg', NULL, NULL, 2.19, 0.00, 10000, 5, 1, 2, 0, 0, 0, 47, 0, 1, 1, '250 جم', '250 gr', 1, 10, NULL, NULL, 'Becel Margarine Omega', '250 g', NULL, '2020-04-17 15:45:53', '2020-04-17 15:45:53', NULL),
(246, 'زبدة تارايام اولكر', 'Ülker Margarin Tereyağım', 9, 0, NULL, '1587113263.jpg', NULL, NULL, 0.99, 0.00, 10000, 3, 1, 2, 0, 0, 0, 48, 0, 1, 1, '250 جم', '250 gr', 1, 10, NULL, NULL, 'Ulker Margarin Tereyagim', '250 g', NULL, '2020-04-17 15:47:43', '2020-04-17 15:47:43', NULL),
(247, 'جبنة شيدر 45% غازي', 'Gazi Kaşar Peynir 45%', 9, 0, NULL, '1587118072.jpg', NULL, NULL, 4.50, 0.00, 10000, 5, 1, 2, 0, 0, 0, 49, 0, 1, 1, '400 جم', '400 gr', 1, 10, NULL, NULL, 'Gazi Cheddar Cheese 45%', '400 g', NULL, '2020-04-17 17:07:52', '2020-04-17 17:07:52', NULL),
(248, 'جبنة شيدر 45% غازي', 'Gazi Kaşar Peynir 45%', 9, 0, NULL, '1587118212.jpg', NULL, NULL, 2.70, 0.00, 10000, 5, 1, 2, 0, 0, 0, 50, 0, 1, 1, '250 جم', '250 gr', 1, 10, NULL, NULL, 'Gazi Cheddar Cheese 45%', '250 g', NULL, '2020-04-17 17:10:12', '2020-04-17 17:10:12', NULL),
(249, 'فاتا برتقال', 'Fanta Portakal', 15, 0, NULL, '1587121349.jpg', NULL, NULL, 0.00, 0.00, 10000, 10, 1, 2, 0, 0, 0, 21, 0, 1, 1, '500 جم', '500 ml', 1, 10, NULL, NULL, 'Fanta Orange', '500 ml', NULL, '2020-04-17 18:02:29', '2020-04-17 18:44:41', '2020-04-17 18:44:41'),
(250, 'فاتا برتقال', 'Fanta Portakal', 15, 0, NULL, '1587123851.jpg', NULL, NULL, 1.50, 0.00, 10000, 10, 1, 2, 0, 0, 0, 22, 0, 1, 1, '500 جم', '500 ml', 1, 10, NULL, NULL, 'Fanta Orange', '500 ml', NULL, '2020-04-17 18:02:31', '2020-04-18 18:57:26', NULL),
(251, 'فاتا برتقال', 'Fanta Portakal', 15, 0, NULL, '1587121457.jpg', NULL, NULL, 2.30, 0.00, 10000, 5, 1, 2, 0, 0, 0, 23, 0, 1, 1, '1,5 لتر', '1,5 lt', 1, 10, NULL, NULL, 'Fanta Orange', '1,5 lt', NULL, '2020-04-17 18:04:17', '2020-04-18 18:58:21', NULL),
(252, 'فانتا ليمون', 'Fanta Limon', 15, 0, NULL, '1587121566.jpg', NULL, NULL, 1.50, 0.00, 10000, 10, 1, 2, 0, 0, 0, 24, 0, 1, 1, '500 مل', '500 ml', 1, 10, NULL, NULL, 'Fanta Lemon', '500 ml', NULL, '2020-04-17 18:06:06', '2020-04-18 18:57:41', NULL),
(253, 'فانتا ليمون', 'Fanta Limon', 15, 0, NULL, '1587123905.jpg', NULL, NULL, 2.30, 0.00, 10000, 5, 1, 2, 0, 0, 0, 25, 0, 1, 1, '1,5 لتر', '1,5 lt', 1, 10, NULL, NULL, 'Fanta Lemon', '1,5 lt', NULL, '2020-04-17 18:07:17', '2020-04-18 18:58:11', NULL),
(254, 'ارز ياسمين بيجينو', 'Pigino Jasmin Pirinç', 11, 0, NULL, '1587212469.jpg', NULL, NULL, 2.89, 0.00, 10000, 5, 1, 2, 0, 0, 0, 75, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Pigino Jasmine Rice', 'kg', NULL, '2020-04-18 19:21:09', '2020-04-18 19:21:09', NULL),
(255, 'خبز خمبورجر هيرا', 'Hira Ekmek Burger', 8, 0, NULL, '1587213217.jpg', NULL, NULL, 1.39, 0.00, 10000, 3, 1, 2, 0, 0, 0, 2, 0, 1, 1, '4 قطعة', '4 ad', 1, 10, NULL, NULL, 'Hira Bread Burger', '4 pcs', NULL, '2020-04-18 19:33:37', '2020-04-18 19:34:22', '2020-04-18 19:34:22'),
(256, 'خبز ماكسي بورجر هيرا', 'Hira Ekmek Maxi Burger', 8, 0, NULL, '1587213218.jpg', NULL, NULL, 1.39, 0.00, 10000, 3, 1, 2, 0, 0, 0, 3, 0, 1, 1, '4 قطعة', '4 ad', 1, 10, NULL, NULL, 'Hira Bread Maxi Burger', '4 pcs', NULL, '2020-04-18 19:33:38', '2020-04-18 19:36:29', NULL),
(257, 'خبز بورجر هيرا', 'Hira Ekmek Burger', 8, 0, NULL, '1587213339.jpg', NULL, NULL, 1.39, 0.00, 10000, 3, 1, 2, 0, 0, 0, 4, 0, 1, 1, '6  قطعة', '6 ad', 1, 10, NULL, NULL, 'Hira Bread Burger', '6 pcs', NULL, '2020-04-18 19:35:39', '2020-04-18 19:35:39', NULL),
(258, 'عصير رمان مايسو', 'Meysu Meyvesuyu Nar', 15, 0, NULL, '1587215066.jpg', NULL, NULL, 1.49, 0.00, 10000, 3, 1, 2, 0, 0, 0, 26, 0, 1, 1, 'لتر', 'lt', 1, 10, NULL, NULL, 'Meysu Juice Pomegranate', 'lt', NULL, '2020-04-18 20:04:26', '2020-04-18 20:09:43', NULL),
(259, 'عصير جوافة مايسو', 'Meysu Meyvesuyu Guava', 15, 0, NULL, '1587215145.jpg', NULL, NULL, 1.49, 0.00, 10000, 3, 1, 2, 0, 0, 0, 27, 0, 1, 1, 'كيلو', 'lt', 1, 10, NULL, NULL, 'Meysu Juice Guava', 'lt', NULL, '2020-04-18 20:05:45', '2020-04-18 20:05:45', NULL),
(260, 'عصير مشمش ر مايسو', 'Meysu Meyvesuyu Apricot', 15, 0, NULL, '1587215283.jpg', NULL, NULL, 1.49, 0.00, 10000, 3, 1, 2, 0, 0, 0, 28, 0, 1, 1, 'لتر', 'lt', 1, 10, NULL, NULL, 'Meysu Meyvesuyu Apricot', 'lt', NULL, '2020-04-18 20:08:03', '2020-04-18 20:08:03', NULL),
(261, 'عصير كوكتيل مايسو', 'Meysu Meyvesuyu  Kokteyl', 15, 0, NULL, '1587215357.jpg', NULL, NULL, 1.49, 0.00, 10000, 3, 1, 2, 0, 0, 0, 29, 0, 1, 1, 'لتر', 'lt', 1, 10, NULL, NULL, 'Meysu Juice Cocktail', 'lt', NULL, '2020-04-18 20:09:17', '2020-04-18 20:19:58', NULL),
(262, 'عصير كرز مايسو', 'Meysu Meyvesuyu Vişne', 15, 0, NULL, '1587215597.jpg', NULL, NULL, 1.49, 0.00, 10000, 3, 1, 2, 0, 0, 0, 30, 0, 1, 1, 'لتر', 'lt', 1, 10, NULL, NULL, 'Meysu Juice Cherry', 'lt', NULL, '2020-04-18 20:13:17', '2020-04-18 20:13:17', NULL),
(263, 'عصير مانجو مايسو', 'Meysu Meyvesuyu Mango', 15, 0, NULL, '1587215659.jpg', NULL, NULL, 1.49, 0.00, 10000, 3, 1, 2, 0, 0, 0, 31, 0, 1, 1, 'لتر', 'lt', 1, 10, NULL, NULL, 'Meysu Juice Mango', 'lt', NULL, '2020-04-18 20:14:19', '2020-04-18 20:14:19', NULL),
(264, 'عصير اناناس مايسو', 'Meysu Meyvesuyu Ananas', 15, 0, NULL, '1587215926.jpg', NULL, NULL, 1.49, 0.00, 10000, 3, 1, 2, 0, 0, 0, 32, 0, 1, 1, 'لتر', 'lt', 1, 10, NULL, NULL, 'Meysu Juice Pineapple', 'lt', NULL, '2020-04-18 20:18:46', '2020-04-18 20:18:46', NULL),
(265, 'تين مجفف', 'Kuru İncir', 10, 0, NULL, '1587217251.jpg', NULL, NULL, 3.00, 0.00, 10000, 5, 1, 2, 0, 0, 0, 12, 0, 1, 1, '400 جم', '400 gr', 1, 10, NULL, NULL, 'Dry Fig', '400 g', NULL, '2020-04-18 20:40:51', '2020-04-18 20:40:51', NULL),
(266, 'تمر جزائري', 'Hurma Cezayir', 10, 0, NULL, '1587472712.jpg', NULL, NULL, 4.35, 0.00, 10000, 5, 1, NULL, 0, 0, 0, 13, 0, 1, 1, 'كيلو', 'kg', 1, 10, NULL, NULL, 'Dates Algerian', 'kg', NULL, '2020-04-18 20:45:27', '2020-04-21 19:38:33', NULL),
(267, 'زيتون اخضر سانتات', 'Suntat Zeytin Yeşil', 14, 0, NULL, '1587218108.jpg', NULL, NULL, 2.69, 0.00, 10000, 3, 1, 2, 0, 0, 0, 74, 0, 1, 1, '800 جم', '800 gr', 1, 10, NULL, NULL, 'Suntat Olive Green', '800 g', NULL, '2020-04-18 20:55:08', '2020-04-18 20:55:08', NULL),
(268, 'زينون اسود صانتات', 'Suntat Zeytin Siyah', 14, 0, NULL, '1587218260.jpg', NULL, NULL, 1.99, 0.00, 10000, 3, 1, 2, 0, 0, 0, 75, 0, 1, 1, '800 جم', '800 gr', 1, 10, NULL, NULL, 'Suntat Olive Black', '800 g', NULL, '2020-04-18 20:57:40', '2020-04-18 20:57:40', NULL),
(269, 'بصل ناشف', 'Kuru Soğan', 5, 0, NULL, '1587653518.jpg', NULL, NULL, 0.00, 0.00, 10000, 3, 1, NULL, 0, 0, 0, 33, 0, 1, 1, '5 كيلو', '5 kg', 1, 10, NULL, NULL, 'Onion', '5 kg', NULL, '2020-04-23 21:51:58', '2020-04-23 21:51:58', NULL),
(270, 'بطاطس طازج', 'Patates Taze', 5, 0, NULL, '1587653641.jpg', NULL, NULL, 0.00, 0.00, 10000, 3, 1, NULL, 0, 0, 0, 34, 0, 1, 1, '5 كيلو', '5 kg', 1, 10, NULL, NULL, 'Potato Fresh', '5 kg', NULL, '2020-04-23 21:54:01', '2020-04-23 21:54:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items_price`
--

CREATE TABLE `items_price` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `discount_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items_price`
--

INSERT INTO `items_price` (`id`, `item_id`, `location_id`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(10, 46, 1, 18, 15.99, '2020-04-05 12:45:56', '2020-04-05 12:45:56'),
(12, 49, 1, 10, 10, '2020-04-15 15:33:26', '2020-04-15 15:33:26'),
(13, 190, 1, 10, 10, '2020-04-16 00:17:41', '2020-04-16 00:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `item_views`
--

CREATE TABLE `item_views` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_tr` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1,
  `active` int(11) NOT NULL DEFAULT 0,
  `working_times` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `lang` int(2) NOT NULL DEFAULT 0,
  `payment_method` int(2) NOT NULL DEFAULT 0,
  `is_work_time_today` tinyint(4) DEFAULT 0,
  `is_work_time` tinyint(4) NOT NULL DEFAULT 0,
  `delivery_price` int(11) NOT NULL DEFAULT 0,
  `delivery_price_after` int(11) DEFAULT NULL,
  `json_prices` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name_ar`, `name_tr`, `country_id`, `active`, `working_times`, `user_id`, `lang`, `payment_method`, `is_work_time_today`, `is_work_time`, `delivery_price`, `delivery_price_after`, `json_prices`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'تجريب', 'تجريب', 1, 0, '1', 1, 0, 0, 1, 1, 8, 5, '[]', '2020-03-27 03:14:51', '2020-04-18 18:24:54', NULL),
(5, 'Liege', 'Liege', 1, 1, '1,3', 1, 0, 0, 0, 1, 4, 0, '', '2020-04-19 21:11:28', '2020-04-19 21:11:28', NULL),
(3, 'Liege', 'Liege', 1, 1, '3', 1, 0, 1, 0, 1, 4, 0, '[{\"status\":29,\"price\":11,\"price_after\":1}]', '2020-04-18 01:59:43', '2020-04-19 19:17:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locations_work_time`
--

CREATE TABLE `locations_work_time` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `work_time_type` tinyint(4) NOT NULL,
  `work_time_id` int(11) NOT NULL,
  `orders_number` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations_work_time`
--

INSERT INTO `locations_work_time` (`id`, `location_id`, `work_time_type`, `work_time_id`, `orders_number`, `price`, `created_at`, `updated_at`) VALUES
(23, 4, 1, 1, 10, 0, '2020-04-18 18:20:47', '2020-04-18 18:20:47'),
(2, 2, 1, 1, 10, 0, '2020-04-12 20:20:58', '2020-04-12 20:20:58'),
(24, 3, 1, 3, 30, 0, '2020-04-19 19:17:11', '2020-04-19 19:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `location_data`
--

CREATE TABLE `location_data` (
  `id` int(11) NOT NULL,
  `lat` text NOT NULL,
  `lng` text NOT NULL,
  `location_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location_data`
--

INSERT INTO `location_data` (`id`, `lat`, `lng`, `location_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '41.08945543672987', '28.801087703582766', 1, '2020-04-17 16:56:07', '2020-04-17 23:56:07', '2020-04-17 23:56:07'),
(2, '41.077939741691004', '28.830270137664797', 1, '2020-04-17 16:56:07', '2020-04-17 23:56:07', '2020-04-17 23:56:07'),
(3, '41.0894554367299', '28.834390010711672', 1, '2020-04-17 16:56:07', '2020-04-17 23:56:07', '2020-04-17 23:56:07'),
(4, '41.10076744709626', '28.8057225607605', 1, '2020-04-17 16:56:07', '2020-04-17 23:56:07', '2020-04-17 23:56:07'),
(5, '41.08916051745174', '28.80100187289429', 1, '2020-04-17 16:56:07', '2020-04-17 23:56:07', '2020-04-17 23:56:07'),
(6, '41.08945543672987', '28.801087703582766', 2, '2020-04-12 13:40:59', '2020-04-12 20:40:59', '2020-04-12 20:40:59'),
(7, '41.077939741691004', '28.830270137664797', 2, '2020-04-12 13:40:59', '2020-04-12 20:40:59', '2020-04-12 20:40:59'),
(8, '41.0894554367299', '28.834390010711672', 2, '2020-04-12 13:40:59', '2020-04-12 20:40:59', '2020-04-12 20:40:59'),
(9, '41.10076744709626', '28.8057225607605', 2, '2020-04-12 13:40:59', '2020-04-12 20:40:59', '2020-04-12 20:40:59'),
(10, '41.08916051745174', '28.80100187289429', 2, '2020-04-12 13:40:59', '2020-04-12 20:40:59', '2020-04-12 20:40:59'),
(11, '41.08945543672987', '28.801087703582766', 1, '2020-04-17 23:56:07', '2020-04-17 23:56:07', NULL),
(12, '41.077939741691004', '28.83027013766478', 1, '2020-04-17 23:56:07', '2020-04-17 23:56:07', NULL),
(13, '41.0894554367299', '28.834390010711655', 1, '2020-04-17 23:56:07', '2020-04-17 23:56:07', NULL),
(14, '41.131841739828324', '28.83172925936888', 1, '2020-04-17 23:56:07', '2020-04-17 23:56:07', NULL),
(15, '41.10076744709626', '28.805722560760483', 1, '2020-04-17 23:56:07', '2020-04-17 23:56:07', NULL),
(16, '41.08916051745174', '28.80100187289429', 1, '2020-04-17 23:56:07', '2020-04-17 23:56:07', NULL),
(17, '41.08945543672987', '28.801087703582766', 3, '2020-04-17 19:06:43', '2020-04-18 02:06:43', '2020-04-18 02:06:43'),
(18, '41.077939741691004', '28.830270137664797', 3, '2020-04-17 19:06:43', '2020-04-18 02:06:43', '2020-04-18 02:06:43'),
(19, '41.0894554367299', '28.834390010711672', 3, '2020-04-17 19:06:43', '2020-04-18 02:06:43', '2020-04-18 02:06:43'),
(20, '41.10076744709626', '28.8057225607605', 3, '2020-04-17 19:06:43', '2020-04-18 02:06:43', '2020-04-18 02:06:43'),
(21, '41.08916051745174', '28.80100187289429', 3, '2020-04-17 19:06:43', '2020-04-18 02:06:43', '2020-04-18 02:06:43'),
(22, '49.76553206575301', '3.9038365744323578', 3, '2020-04-17 19:14:41', '2020-04-18 02:14:41', '2020-04-18 02:14:41'),
(23, '50.04058698930814', '2.5484841726989593', 3, '2020-04-17 19:14:41', '2020-04-18 02:14:41', '2020-04-18 02:14:41'),
(24, '51.23113895353919', '4.005631770965561', 3, '2020-04-17 19:14:41', '2020-04-18 02:14:41', '2020-04-18 02:14:41'),
(25, '51.25171886652619', '4.377965297576889', 3, '2020-04-17 19:14:41', '2020-04-18 02:14:41', '2020-04-18 02:14:41'),
(26, '51.50335655848392', '4.9046224020690765', 3, '2020-04-17 19:14:41', '2020-04-18 02:14:41', '2020-04-18 02:14:41'),
(27, '51.94363977834253', '5.299443569061264', 3, '2020-04-17 19:14:41', '2020-04-18 02:14:41', '2020-04-18 02:14:41'),
(28, '51.664201114400115', '6.160668697235092', 3, '2020-04-17 19:14:41', '2020-04-18 02:14:41', '2020-04-18 02:14:41'),
(29, '49.741418839562286', '5.543760623809799', 3, '2020-04-17 19:14:41', '2020-04-18 02:14:41', '2020-04-18 02:14:41'),
(30, '49.795429183553395', '4.663180675384506', 3, '2020-04-17 19:14:41', '2020-04-18 02:14:41', '2020-04-18 02:14:41'),
(31, '41.08945543672987', '28.801087703582766', 3, '2020-04-17 19:47:17', '2020-04-18 02:47:17', '2020-04-18 02:47:17'),
(32, '41.077939741691004', '28.830270137664797', 3, '2020-04-17 19:47:17', '2020-04-18 02:47:17', '2020-04-18 02:47:17'),
(33, '41.0894554367299', '28.834390010711672', 3, '2020-04-17 19:47:17', '2020-04-18 02:47:17', '2020-04-18 02:47:17'),
(34, '41.10076744709626', '28.8057225607605', 3, '2020-04-17 19:47:17', '2020-04-18 02:47:17', '2020-04-18 02:47:17'),
(35, '41.08916051745174', '28.80100187289429', 3, '2020-04-17 19:47:17', '2020-04-18 02:47:17', '2020-04-18 02:47:17'),
(36, '50.73842072707835', '5.450333919403061', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(37, '50.719065597449124', '5.413984622833237', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(38, '50.67453544650356', '5.385671224472031', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(39, '50.660442136878046', '5.410229530212387', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(40, '50.65483423739536', '5.430324640151962', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(41, '50.65203003655438', '5.458911623832687', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(42, '50.64574250851799', '5.4737656973571625', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(43, '50.61959696445959', '5.497841205474838', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(44, '50.647463711547935', '5.509192314025864', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(45, '50.64528328361558', '5.525854196426376', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(46, '50.642015853911715', '5.548604693290695', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(47, '50.64615070466339', '5.5665486716003265', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(48, '50.68439654679549', '5.623711910125717', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(49, '50.71277515690349', '5.630578365203842', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(50, '50.72948119908164', '5.633754100677475', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(51, '50.73575261156486', '5.62663015353392', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(52, '50.74338744392669', '5.597876872894272', 3, '2020-04-19 14:09:32', '2020-04-19 21:09:32', '2020-04-19 21:09:32'),
(53, '41.08945543672987', '28.801087703582766', 4, '2020-04-18 11:21:04', '2020-04-18 18:21:04', '2020-04-18 18:21:04'),
(54, '41.077939741691004', '28.830270137664797', 4, '2020-04-18 11:21:04', '2020-04-18 18:21:04', '2020-04-18 18:21:04'),
(55, '41.0894554367299', '28.834390010711672', 4, '2020-04-18 11:21:04', '2020-04-18 18:21:04', '2020-04-18 18:21:04'),
(56, '41.10076744709626', '28.8057225607605', 4, '2020-04-18 11:21:04', '2020-04-18 18:21:04', '2020-04-18 18:21:04'),
(57, '41.08916051745174', '28.80100187289429', 4, '2020-04-18 11:21:04', '2020-04-18 18:21:04', '2020-04-18 18:21:04'),
(58, '51.25010719525024', '5.142716731903061', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(59, '50.5518313381348', '4.886640872833237', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(60, '50.298463672367205', '5.004320111152634', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(61, '50.46520126759352', '5.473561849472031', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(62, '50.24071741698071', '5.410229530212387', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(63, '50.3753982406387', '5.276516046401962', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(64, '50.35856132182537', '5.305103030082687', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(65, '50.43628013950095', '5.5616563223571625', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(66, '50.4100182380271', '5.585731830474838', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(67, '49.959796445982875', '5.201575126525864', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(68, '49.85852910516098', '5.328100290176376', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(69, '50.432536897208976', '5.636495318290695', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(70, '50.43669015261951', '5.6544392966003265', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(71, '50.47510628309178', '5.711602535125717', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(72, '50.50361130869465', '5.718468990203842', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(73, '50.52039179384694', '5.721644725677475', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(74, '50.27458919152268', '5.86832937228392', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(75, '50.590191576654185', '6.037329997894272', 3, '2020-04-19 21:09:32', '2020-04-19 21:09:32', NULL),
(76, '41.08945543672987', '28.801087703582766', 5, '2020-04-19 14:16:06', '2020-04-19 21:16:06', '2020-04-19 21:16:06'),
(77, '41.077939741691004', '28.830270137664797', 5, '2020-04-19 14:16:06', '2020-04-19 21:16:06', '2020-04-19 21:16:06'),
(78, '41.0894554367299', '28.834390010711672', 5, '2020-04-19 14:16:06', '2020-04-19 21:16:06', '2020-04-19 21:16:06'),
(79, '41.10076744709626', '28.8057225607605', 5, '2020-04-19 14:16:06', '2020-04-19 21:16:06', '2020-04-19 21:16:06'),
(80, '41.08916051745174', '28.80100187289429', 5, '2020-04-19 14:16:06', '2020-04-19 21:16:06', '2020-04-19 21:16:06'),
(81, '50.60395168482691', '5.611695613738998', 5, '2020-04-19 21:16:06', '2020-04-19 21:16:06', NULL),
(82, '50.63956470727171', '5.72327550875853', 5, '2020-04-19 21:16:06', '2020-04-19 21:16:06', NULL),
(83, '50.70706819544296', '5.826958980438217', 5, '2020-04-19 21:16:06', '2020-04-19 21:16:06', NULL),
(84, '50.746676482041416', '5.743874873992905', 5, '2020-04-19 21:16:06', '2020-04-19 21:16:06', NULL),
(85, '50.75837548890024', '5.652636852142319', 5, '2020-04-19 21:16:06', '2020-04-19 21:16:06', NULL),
(86, '50.763122928356076', '5.599850978729233', 5, '2020-04-19 21:16:06', '2020-04-19 21:16:06', NULL),
(87, '50.72418817695478', '5.53549942004393', 5, '2020-04-19 21:16:06', '2020-04-19 21:16:06', NULL),
(88, '50.6991404261922', '5.460161533233627', 5, '2020-04-19 21:16:06', '2020-04-19 21:16:06', NULL),
(89, '50.65667012416394', '5.494686927673325', 5, '2020-04-19 21:16:06', '2020-04-19 21:16:06', NULL),
(90, '50.62810183660481', '5.551184978363022', 5, '2020-04-19 21:16:06', '2020-04-19 21:16:06', NULL),
(91, '50.628225948109616', '5.57869371401976', 5, '2020-04-19 21:16:06', '2020-04-19 21:16:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE `market` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_14_183227_create_category_table', 1),
(4, '2018_10_14_184427_create_units_table', 1),
(5, '2018_10_14_184458_create_features_table', 1),
(6, '2018_10_14_191404_create_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `new_order`
--

CREATE TABLE `new_order` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_time_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `id_promo` int(11) DEFAULT NULL,
  `promotext` text DEFAULT NULL,
  `total_before` float NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `total` float NOT NULL,
  `payment` int(11) NOT NULL DEFAULT 1 COMMENT '1=>cash',
  `data` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `customers_data` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `new_order_items`
--

CREATE TABLE `new_order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `total_price` float NOT NULL,
  `order_date` date NOT NULL,
  `data` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('08a81167-5459-468c-a8c0-e41cca61d285', 'App\\Notifications\\NewOrders', 1, 'App\\User', '{\"title_ar\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0637\\u0644\\u0628\\u064a\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0631\\u0642\\u0645 3 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 3 verildi 2020-04-18\",\"id\":3,\"data\":{\"customer_id\":1,\"order_date\":\"2020-04-18\",\"order_time_id\":\"1\",\"location_id\":\"1\",\"id_promo\":\"0\",\"promotext\":\"\",\"total_before\":\"9.30\",\"discount\":0,\"total\":9.3,\"payment\":\"1\",\"order_type\":\"2\",\"delivery_price\":\"0\",\"data\":\"{\\\"location\\\":{\\\"id\\\":1,\\\"customer_id\\\":\\\"1\\\",\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u0628\\\\u064a\\\\u062a\\\",\\\"latitude\\\":\\\"50.68609414818915\\\",\\\"longitude\\\":\\\"5.51700621843338\\\",\\\"compound_name\\\":null,\\\"building_number\\\":null,\\\"apartment_number\\\":null,\\\"floor_number\\\":null,\\\"other_details\\\":null,\\\"icon\\\":\\\"home.jpg\\\",\\\"status\\\":\\\"1\\\",\\\"location_id\\\":\\\"3\\\",\\\"created_at\\\":\\\"2020-04-18 05:47:16\\\",\\\"updated_at\\\":\\\"2020-04-18 12:47:16\\\"},\\\"time\\\":{\\\"id\\\":1,\\\"time_from\\\":\\\"05:00:00\\\",\\\"time_to\\\":\\\"06:00:00\\\",\\\"type\\\":\\\"3\\\",\\\"active\\\":\\\"1\\\",\\\"ordered\\\":\\\"0\\\",\\\"created_at\\\":\\\"2020-04-17 17:34:15\\\",\\\"updated_at\\\":\\\"2020-04-17 17:34:15\\\"}}\",\"updated_at\":\"2020-04-18 15:35:53\",\"created_at\":\"2020-04-18 15:35:53\",\"id\":3,\"total_after\":\"9.30\"},\"type\":0}', NULL, '2020-04-18 19:35:53', '2020-04-18 19:35:53'),
('1a6aa35c-5402-4a0f-bc44-f9513c72c7bf', 'App\\Notifications\\NewCustomer', 3, 'App\\User', '{\"title_ar\":\"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062c\\u062f\\u064a\\u062f \\u062a\\u062c\\u0631\\u064a\\u0628 \\u0627\\u0633\\u0639\\u062f \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-19\",\"title_tr\":\"Yeni bir sipari\\u015f no 3 verildi 2020-04-19\",\"id\":3,\"data\":null,\"type\":1}', NULL, '2020-04-19 20:23:44', '2020-04-19 20:23:44'),
('20885f8c-2f14-4322-a0fb-b313e0a85fb0', 'App\\Notifications\\NewCustomer', 1, 'App\\User', '{\"title_ar\":\"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062c\\u062f\\u064a\\u062f \\u062a\\u062c\\u0631\\u064a\\u0628 \\u0627\\u0633\\u0639\\u062f \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-19\",\"title_tr\":\"Yeni bir sipari\\u015f no 3 verildi 2020-04-19\",\"id\":3,\"data\":null,\"type\":1}', NULL, '2020-04-19 20:23:44', '2020-04-19 20:23:44'),
('29e72cb7-1d8c-4202-8d1f-aa918c38b76a', 'App\\Notifications\\NewOrders', 3, 'App\\User', '{\"title_ar\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0637\\u0644\\u0628\\u064a\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0631\\u0642\\u0645 4 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-19\",\"title_tr\":\"Yeni bir sipari\\u015f no 4 verildi 2020-04-19\",\"id\":4,\"data\":{\"customer_id\":4,\"order_date\":\"2020-04-19\",\"order_time_id\":\"1\",\"location_id\":\"8\",\"id_promo\":\"0\",\"promotext\":\"\",\"total_before\":\"25.18\",\"discount\":0,\"total\":25.18,\"payment\":\"1\",\"order_type\":\"2\",\"delivery_price\":\"0\",\"data\":\"{\\\"location\\\":{\\\"id\\\":8,\\\"customer_id\\\":\\\"4\\\",\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u0628\\\\u064a\\\\u062a\\\",\\\"latitude\\\":\\\"50.71531940544331\\\",\\\"longitude\\\":\\\"5.520080029964447\\\",\\\"compound_name\\\":null,\\\"building_number\\\":null,\\\"apartment_number\\\":null,\\\"floor_number\\\":null,\\\"other_details\\\":null,\\\"icon\\\":\\\"home.jpg\\\",\\\"status\\\":\\\"1\\\",\\\"location_id\\\":\\\"3\\\",\\\"created_at\\\":\\\"2020-04-19 10:17:13\\\",\\\"updated_at\\\":\\\"2020-04-19 17:17:13\\\"},\\\"time\\\":{\\\"id\\\":1,\\\"time_from\\\":\\\"05:00:00\\\",\\\"time_to\\\":\\\"06:00:00\\\",\\\"type\\\":\\\"3\\\",\\\"active\\\":\\\"1\\\",\\\"ordered\\\":\\\"0\\\",\\\"created_at\\\":\\\"2020-04-17 17:34:15\\\",\\\"updated_at\\\":\\\"2020-04-17 17:34:15\\\"}}\",\"updated_at\":\"2020-04-19 17:18:49\",\"created_at\":\"2020-04-19 17:18:49\",\"id\":4,\"total_after\":\"25.18\"},\"type\":0}', NULL, '2020-04-19 21:18:49', '2020-04-19 21:18:49'),
('37085833-9b43-4ef4-bb1d-17006fe439d4', 'App\\Notifications\\NewCustomer', 1, 'App\\User', '{\"title_ar\":\"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062c\\u062f\\u064a\\u062f Mohammed aldraimli \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-19\",\"title_tr\":\"Yeni bir sipari\\u015f no 4 verildi 2020-04-19\",\"id\":4,\"data\":null,\"type\":1}', NULL, '2020-04-20 02:53:31', '2020-04-20 02:53:31'),
('3f9be59a-f0f7-4eaf-8fbf-db29c1dd79db', 'App\\Notifications\\NewOrders', 1, 'App\\User', '{\"title_ar\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0637\\u0644\\u0628\\u064a\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0631\\u0642\\u0645 1 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 1 verildi 2020-04-18\",\"id\":1,\"data\":{\"customer_id\":1,\"order_date\":\"2020-04-18\",\"order_time_id\":\"1\",\"location_id\":\"1\",\"id_promo\":\"0\",\"promotext\":\"\",\"total_before\":\"6.00\",\"discount\":0,\"total\":6,\"payment\":\"1\",\"order_type\":\"2\",\"delivery_price\":\"0\",\"data\":\"{\\\"location\\\":{\\\"id\\\":1,\\\"customer_id\\\":\\\"1\\\",\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u0628\\\\u064a\\\\u062a\\\",\\\"latitude\\\":\\\"50.68609414818915\\\",\\\"longitude\\\":\\\"5.51700621843338\\\",\\\"compound_name\\\":null,\\\"building_number\\\":null,\\\"apartment_number\\\":null,\\\"floor_number\\\":null,\\\"other_details\\\":null,\\\"icon\\\":\\\"home.jpg\\\",\\\"status\\\":\\\"1\\\",\\\"location_id\\\":\\\"3\\\",\\\"created_at\\\":\\\"2020-04-18 05:47:16\\\",\\\"updated_at\\\":\\\"2020-04-18 12:47:16\\\"},\\\"time\\\":{\\\"id\\\":1,\\\"time_from\\\":\\\"05:00:00\\\",\\\"time_to\\\":\\\"06:00:00\\\",\\\"type\\\":\\\"3\\\",\\\"active\\\":\\\"1\\\",\\\"ordered\\\":\\\"0\\\",\\\"created_at\\\":\\\"2020-04-17 17:34:15\\\",\\\"updated_at\\\":\\\"2020-04-17 17:34:15\\\"}}\",\"updated_at\":\"2020-04-18 13:33:33\",\"created_at\":\"2020-04-18 13:33:33\",\"id\":1,\"total_after\":\"6.00\"},\"type\":0}', NULL, '2020-04-18 17:33:34', '2020-04-18 17:33:34'),
('46594e87-9f20-4791-a7fc-d725202a5bb9', 'App\\Notifications\\NewCustomer', 1, 'App\\User', '{\"title_ar\":\"\\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0627\\u0633\\u0639\\u062f \\u062a\\u062d\\u0631\\u064a\\u0628 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 2 verildi 2020-04-18\",\"id\":2,\"data\":null,\"type\":2}', NULL, '2020-04-18 19:16:27', '2020-04-18 19:16:27'),
('5396c70b-1b12-4502-9d77-e0d729f3fff2', 'App\\Notifications\\NewOrders', 1, 'App\\User', '{\"title_ar\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0637\\u0644\\u0628\\u064a\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0631\\u0642\\u0645 4 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-19\",\"title_tr\":\"Yeni bir sipari\\u015f no 4 verildi 2020-04-19\",\"id\":4,\"data\":{\"customer_id\":4,\"order_date\":\"2020-04-19\",\"order_time_id\":\"1\",\"location_id\":\"8\",\"id_promo\":\"0\",\"promotext\":\"\",\"total_before\":\"25.18\",\"discount\":0,\"total\":25.18,\"payment\":\"1\",\"order_type\":\"2\",\"delivery_price\":\"0\",\"data\":\"{\\\"location\\\":{\\\"id\\\":8,\\\"customer_id\\\":\\\"4\\\",\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u0628\\\\u064a\\\\u062a\\\",\\\"latitude\\\":\\\"50.71531940544331\\\",\\\"longitude\\\":\\\"5.520080029964447\\\",\\\"compound_name\\\":null,\\\"building_number\\\":null,\\\"apartment_number\\\":null,\\\"floor_number\\\":null,\\\"other_details\\\":null,\\\"icon\\\":\\\"home.jpg\\\",\\\"status\\\":\\\"1\\\",\\\"location_id\\\":\\\"3\\\",\\\"created_at\\\":\\\"2020-04-19 10:17:13\\\",\\\"updated_at\\\":\\\"2020-04-19 17:17:13\\\"},\\\"time\\\":{\\\"id\\\":1,\\\"time_from\\\":\\\"05:00:00\\\",\\\"time_to\\\":\\\"06:00:00\\\",\\\"type\\\":\\\"3\\\",\\\"active\\\":\\\"1\\\",\\\"ordered\\\":\\\"0\\\",\\\"created_at\\\":\\\"2020-04-17 17:34:15\\\",\\\"updated_at\\\":\\\"2020-04-17 17:34:15\\\"}}\",\"updated_at\":\"2020-04-19 17:18:49\",\"created_at\":\"2020-04-19 17:18:49\",\"id\":4,\"total_after\":\"25.18\"},\"type\":0}', NULL, '2020-04-19 21:18:49', '2020-04-19 21:18:49'),
('5ddf261c-eb03-4c4c-b6ad-5eb186f890da', 'App\\Notifications\\NewCustomer', 1, 'App\\User', '{\"title_ar\":\"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0645\\u062d\\u0645\\u062f \\u0645\\u062d\\u0645\\u062f \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-21\",\"title_tr\":\"Yeni bir sipari\\u015f no 4 verildi 2020-04-21\",\"id\":4,\"data\":null,\"type\":1}', NULL, '2020-04-21 16:03:35', '2020-04-21 16:03:35'),
('6c53640d-b73c-43b6-9029-a468fc61a505', 'App\\Notifications\\NewCustomer', 3, 'App\\User', '{\"title_ar\":\"\\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0627\\u0633\\u0639\\u062f \\u062a\\u062d\\u0631\\u064a\\u0628 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 4 verildi 2020-04-18\",\"id\":4,\"data\":null,\"type\":2}', NULL, '2020-04-18 19:30:15', '2020-04-18 19:30:15'),
('6d9eead9-15ba-4484-85ce-34c13a5c7f1f', 'App\\Notifications\\NewOrders', 3, 'App\\User', '{\"title_ar\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0637\\u0644\\u0628\\u064a\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0631\\u0642\\u0645 1 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 1 verildi 2020-04-18\",\"id\":1,\"data\":{\"customer_id\":1,\"order_date\":\"2020-04-18\",\"order_time_id\":\"1\",\"location_id\":\"1\",\"id_promo\":\"0\",\"promotext\":\"\",\"total_before\":\"6.00\",\"discount\":0,\"total\":6,\"payment\":\"1\",\"order_type\":\"2\",\"delivery_price\":\"0\",\"data\":\"{\\\"location\\\":{\\\"id\\\":1,\\\"customer_id\\\":\\\"1\\\",\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u0628\\\\u064a\\\\u062a\\\",\\\"latitude\\\":\\\"50.68609414818915\\\",\\\"longitude\\\":\\\"5.51700621843338\\\",\\\"compound_name\\\":null,\\\"building_number\\\":null,\\\"apartment_number\\\":null,\\\"floor_number\\\":null,\\\"other_details\\\":null,\\\"icon\\\":\\\"home.jpg\\\",\\\"status\\\":\\\"1\\\",\\\"location_id\\\":\\\"3\\\",\\\"created_at\\\":\\\"2020-04-18 05:47:16\\\",\\\"updated_at\\\":\\\"2020-04-18 12:47:16\\\"},\\\"time\\\":{\\\"id\\\":1,\\\"time_from\\\":\\\"05:00:00\\\",\\\"time_to\\\":\\\"06:00:00\\\",\\\"type\\\":\\\"3\\\",\\\"active\\\":\\\"1\\\",\\\"ordered\\\":\\\"0\\\",\\\"created_at\\\":\\\"2020-04-17 17:34:15\\\",\\\"updated_at\\\":\\\"2020-04-17 17:34:15\\\"}}\",\"updated_at\":\"2020-04-18 13:33:33\",\"created_at\":\"2020-04-18 13:33:33\",\"id\":1,\"total_after\":\"6.00\"},\"type\":0}', NULL, '2020-04-18 17:33:34', '2020-04-18 17:33:34'),
('6db41abd-36c6-4c86-b37c-007623af55c9', 'App\\Notifications\\NewCustomer', 3, 'App\\User', '{\"title_ar\":\"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062c\\u062f\\u064a\\u062f Mohammed aldraimli \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-19\",\"title_tr\":\"Yeni bir sipari\\u015f no 4 verildi 2020-04-19\",\"id\":4,\"data\":null,\"type\":1}', NULL, '2020-04-20 02:53:31', '2020-04-20 02:53:31'),
('a196eaff-3340-4e45-94ed-8f66df0ee977', 'App\\Notifications\\NewOrders', 3, 'App\\User', '{\"title_ar\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0637\\u0644\\u0628\\u064a\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0631\\u0642\\u0645 2 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 2 verildi 2020-04-18\",\"id\":2,\"data\":{\"customer_id\":1,\"order_date\":\"2020-04-18\",\"order_time_id\":\"1\",\"location_id\":\"1\",\"id_promo\":\"0\",\"promotext\":\"\",\"total_before\":\"6.00\",\"discount\":0,\"total\":6,\"payment\":\"2\",\"order_type\":\"2\",\"delivery_price\":\"0\",\"data\":\"{\\\"location\\\":{\\\"id\\\":1,\\\"customer_id\\\":\\\"1\\\",\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u0628\\\\u064a\\\\u062a\\\",\\\"latitude\\\":\\\"50.68609414818915\\\",\\\"longitude\\\":\\\"5.51700621843338\\\",\\\"compound_name\\\":null,\\\"building_number\\\":null,\\\"apartment_number\\\":null,\\\"floor_number\\\":null,\\\"other_details\\\":null,\\\"icon\\\":\\\"home.jpg\\\",\\\"status\\\":\\\"1\\\",\\\"location_id\\\":\\\"3\\\",\\\"created_at\\\":\\\"2020-04-18 05:47:16\\\",\\\"updated_at\\\":\\\"2020-04-18 12:47:16\\\"},\\\"time\\\":{\\\"id\\\":1,\\\"time_from\\\":\\\"05:00:00\\\",\\\"time_to\\\":\\\"06:00:00\\\",\\\"type\\\":\\\"3\\\",\\\"active\\\":\\\"1\\\",\\\"ordered\\\":\\\"0\\\",\\\"created_at\\\":\\\"2020-04-17 17:34:15\\\",\\\"updated_at\\\":\\\"2020-04-17 17:34:15\\\"}}\",\"updated_at\":\"2020-04-18 15:20:16\",\"created_at\":\"2020-04-18 15:20:16\",\"id\":2,\"total_after\":\"6.00\"},\"type\":0}', NULL, '2020-04-18 19:20:17', '2020-04-18 19:20:17'),
('a99a2679-b606-48e9-873a-05a14df332a3', 'App\\Notifications\\NewCustomer', 1, 'App\\User', '{\"title_ar\":\"\\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0627\\u0633\\u0639\\u062f \\u062a\\u062d\\u0631\\u064a\\u0628 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 1 verildi 2020-04-18\",\"id\":1,\"data\":null,\"type\":2}', NULL, '2020-04-18 19:13:47', '2020-04-18 19:13:47'),
('aaa54389-f4c4-4c87-a1e1-1db1262fd319', 'App\\Notifications\\NewCustomer', 3, 'App\\User', '{\"title_ar\":\"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0627\\u0633\\u0639\\u062f \\u062a\\u062c\\u0631\\u064a\\u0628 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 2 verildi 2020-04-18\",\"id\":2,\"data\":null,\"type\":1}', NULL, '2020-04-18 23:04:25', '2020-04-18 23:04:25'),
('acb05d62-0b4c-42e9-8b0c-509fe8c96332', 'App\\Notifications\\NewCustomer', 1, 'App\\User', '{\"title_ar\":\"\\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0627\\u0633\\u0639\\u062f \\u062a\\u062d\\u0631\\u064a\\u0628 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 4 verildi 2020-04-18\",\"id\":4,\"data\":null,\"type\":2}', NULL, '2020-04-18 19:30:15', '2020-04-18 19:30:15'),
('b5647706-4dcd-488e-8120-1ef42d139383', 'App\\Notifications\\NewOrders', 3, 'App\\User', '{\"title_ar\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0637\\u0644\\u0628\\u064a\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0631\\u0642\\u0645 3 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 3 verildi 2020-04-18\",\"id\":3,\"data\":{\"customer_id\":1,\"order_date\":\"2020-04-18\",\"order_time_id\":\"1\",\"location_id\":\"1\",\"id_promo\":\"0\",\"promotext\":\"\",\"total_before\":\"9.30\",\"discount\":0,\"total\":9.3,\"payment\":\"1\",\"order_type\":\"2\",\"delivery_price\":\"0\",\"data\":\"{\\\"location\\\":{\\\"id\\\":1,\\\"customer_id\\\":\\\"1\\\",\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u0628\\\\u064a\\\\u062a\\\",\\\"latitude\\\":\\\"50.68609414818915\\\",\\\"longitude\\\":\\\"5.51700621843338\\\",\\\"compound_name\\\":null,\\\"building_number\\\":null,\\\"apartment_number\\\":null,\\\"floor_number\\\":null,\\\"other_details\\\":null,\\\"icon\\\":\\\"home.jpg\\\",\\\"status\\\":\\\"1\\\",\\\"location_id\\\":\\\"3\\\",\\\"created_at\\\":\\\"2020-04-18 05:47:16\\\",\\\"updated_at\\\":\\\"2020-04-18 12:47:16\\\"},\\\"time\\\":{\\\"id\\\":1,\\\"time_from\\\":\\\"05:00:00\\\",\\\"time_to\\\":\\\"06:00:00\\\",\\\"type\\\":\\\"3\\\",\\\"active\\\":\\\"1\\\",\\\"ordered\\\":\\\"0\\\",\\\"created_at\\\":\\\"2020-04-17 17:34:15\\\",\\\"updated_at\\\":\\\"2020-04-17 17:34:15\\\"}}\",\"updated_at\":\"2020-04-18 15:35:53\",\"created_at\":\"2020-04-18 15:35:53\",\"id\":3,\"total_after\":\"9.30\"},\"type\":0}', NULL, '2020-04-18 19:35:53', '2020-04-18 19:35:53'),
('b7cd13a5-76c4-482f-9c12-5d58eb945676', 'App\\Notifications\\NewOrders', 1, 'App\\User', '{\"title_ar\":\"\\u062a\\u0645 \\u062d\\u062c\\u0632 \\u0637\\u0644\\u0628\\u064a\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0631\\u0642\\u0645 2 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 2 verildi 2020-04-18\",\"id\":2,\"data\":{\"customer_id\":1,\"order_date\":\"2020-04-18\",\"order_time_id\":\"1\",\"location_id\":\"1\",\"id_promo\":\"0\",\"promotext\":\"\",\"total_before\":\"6.00\",\"discount\":0,\"total\":6,\"payment\":\"2\",\"order_type\":\"2\",\"delivery_price\":\"0\",\"data\":\"{\\\"location\\\":{\\\"id\\\":1,\\\"customer_id\\\":\\\"1\\\",\\\"name\\\":\\\"\\\\u0627\\\\u0644\\\\u0628\\\\u064a\\\\u062a\\\",\\\"latitude\\\":\\\"50.68609414818915\\\",\\\"longitude\\\":\\\"5.51700621843338\\\",\\\"compound_name\\\":null,\\\"building_number\\\":null,\\\"apartment_number\\\":null,\\\"floor_number\\\":null,\\\"other_details\\\":null,\\\"icon\\\":\\\"home.jpg\\\",\\\"status\\\":\\\"1\\\",\\\"location_id\\\":\\\"3\\\",\\\"created_at\\\":\\\"2020-04-18 05:47:16\\\",\\\"updated_at\\\":\\\"2020-04-18 12:47:16\\\"},\\\"time\\\":{\\\"id\\\":1,\\\"time_from\\\":\\\"05:00:00\\\",\\\"time_to\\\":\\\"06:00:00\\\",\\\"type\\\":\\\"3\\\",\\\"active\\\":\\\"1\\\",\\\"ordered\\\":\\\"0\\\",\\\"created_at\\\":\\\"2020-04-17 17:34:15\\\",\\\"updated_at\\\":\\\"2020-04-17 17:34:15\\\"}}\",\"updated_at\":\"2020-04-18 15:20:16\",\"created_at\":\"2020-04-18 15:20:16\",\"id\":2,\"total_after\":\"6.00\"},\"type\":0}', NULL, '2020-04-18 19:20:17', '2020-04-18 19:20:17'),
('be918984-0375-44e9-a235-24eed3e6f134', 'App\\Notifications\\NewCustomer', 3, 'App\\User', '{\"title_ar\":\"\\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0627\\u0633\\u0639\\u062f \\u062a\\u062d\\u0631\\u064a\\u0628 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 1 verildi 2020-04-18\",\"id\":1,\"data\":null,\"type\":2}', NULL, '2020-04-18 19:13:47', '2020-04-18 19:13:47'),
('c196b803-7659-40f2-9360-dbc3d05a439a', 'App\\Notifications\\NewCustomer', 3, 'App\\User', '{\"title_ar\":\"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062c\\u062f\\u064a\\u062f Mohammed aldraimli aldraimli \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-19\",\"title_tr\":\"Yeni bir sipari\\u015f no 4 verildi 2020-04-19\",\"id\":4,\"data\":null,\"type\":1}', NULL, '2020-04-19 21:04:38', '2020-04-19 21:04:38'),
('c7a3c596-dc5f-4e48-abf2-0f7634e49793', 'App\\Notifications\\NewCustomer', 1, 'App\\User', '{\"title_ar\":\"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062c\\u062f\\u064a\\u062f Mohammed aldraimli aldraimli \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-19\",\"title_tr\":\"Yeni bir sipari\\u015f no 4 verildi 2020-04-19\",\"id\":4,\"data\":null,\"type\":1}', NULL, '2020-04-19 21:04:38', '2020-04-19 21:04:38'),
('db7dabca-a0c6-4c4e-bd61-0924903311cb', 'App\\Notifications\\NewCustomer', 3, 'App\\User', '{\"title_ar\":\"\\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0627\\u0633\\u0639\\u062f \\u062a\\u062d\\u0631\\u064a\\u0628 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 3 verildi 2020-04-18\",\"id\":3,\"data\":null,\"type\":2}', NULL, '2020-04-18 19:18:29', '2020-04-18 19:18:29'),
('dc9ea8bc-795d-4652-9001-c781ae2c9ac1', 'App\\Notifications\\NewCustomer', 1, 'App\\User', '{\"title_ar\":\"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0627\\u0633\\u0639\\u062f \\u062a\\u062c\\u0631\\u064a\\u0628 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 2 verildi 2020-04-18\",\"id\":2,\"data\":null,\"type\":1}', NULL, '2020-04-18 23:04:25', '2020-04-18 23:04:25'),
('dcc8ac5c-8e8f-49c6-a96d-bafffa0b9a6d', 'App\\Notifications\\NewCustomer', 3, 'App\\User', '{\"title_ar\":\"\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0645\\u062d\\u0645\\u062f \\u0645\\u062d\\u0645\\u062f \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-21\",\"title_tr\":\"Yeni bir sipari\\u015f no 4 verildi 2020-04-21\",\"id\":4,\"data\":null,\"type\":1}', NULL, '2020-04-21 16:03:35', '2020-04-21 16:03:35'),
('e141ce4d-b917-414e-842e-fa1a006c477a', 'App\\Notifications\\NewCustomer', 1, 'App\\User', '{\"title_ar\":\"\\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0627\\u0633\\u0639\\u062f \\u062a\\u062d\\u0631\\u064a\\u0628 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 3 verildi 2020-04-18\",\"id\":3,\"data\":null,\"type\":2}', NULL, '2020-04-18 19:18:29', '2020-04-18 19:18:29'),
('fed61125-01a4-481b-aa4f-463228bf885b', 'App\\Notifications\\NewCustomer', 3, 'App\\User', '{\"title_ar\":\"\\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0627\\u0633\\u0639\\u062f \\u062a\\u062d\\u0631\\u064a\\u0628 \\u0628\\u062a\\u0627\\u0631\\u064a\\u062e 2020-04-18\",\"title_tr\":\"Yeni bir sipari\\u015f no 2 verildi 2020-04-18\",\"id\":2,\"data\":null,\"type\":2}', NULL, '2020-04-18 19:16:27', '2020-04-18 19:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_time_id` int(11) NOT NULL,
  `order_type` tinyint(4) NOT NULL DEFAULT 1,
  `location_id` int(11) NOT NULL,
  `id_promo` int(11) DEFAULT NULL,
  `promotext` text DEFAULT NULL,
  `total_before` float NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `payment` int(11) NOT NULL DEFAULT 1 COMMENT '1=> chash',
  `total` float NOT NULL,
  `data` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `delivery_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>new 1=>prepared2=>In progress 3=deliverd',
  `customers_data` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `delivery_price` double NOT NULL DEFAULT 0,
  `delivery_price_discount` double NOT NULL DEFAULT 0,
  `delivery_id` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders_transaction`
--

CREATE TABLE `orders_transaction` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `total_price` float NOT NULL,
  `order_date` date DEFAULT NULL,
  `data` text DEFAULT NULL,
  `is_checked` int(11) NOT NULL DEFAULT 0,
  `is_gift` int(11) NOT NULL DEFAULT 0,
  `is_fetched` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `item_id`, `quantity`, `total_price`, `order_date`, `data`, `is_checked`, `is_gift`, `is_fetched`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 3, 6, '2020-04-18', '{\"id\":6,\"name_ar\":\"\\u0637\\u0645\\u0627\\u0637\\u0645\",\"name_tr\":\"Domates\",\"category_id\":\"5\",\"sub_category_id\":\"0\",\"brands_id\":null,\"image\":\"1586064115.jpg\",\"details_ar\":\"<p>.<\\/p>\",\"details_tr\":\"<p>.<\\/p>\",\"price\":\"1000.00\",\"discount_price\":\"2.00\",\"quantity\":\"100000\",\"highest_quantity\":\"3\",\"unit_id\":\"1\",\"feature_id\":\"2\",\"special\":\"0\",\"offer\":\"0\",\"lang\":\"0\",\"ordered\":\"1\",\"ordered_offer\":\"0\",\"user_id\":\"1\",\"active\":\"1\",\"unit_name_ar\":\"\\u0643\\u064a\\u0644\\u0648\",\"unit_name_tr\":\"kg\",\"increase_amount\":\"1\",\"limit_store_buy\":\"50\",\"barcode\":null,\"keyword\":null,\"name_en\":\"asfasf\",\"unit_name_en\":\"fsadgdsgdf\",\"details_en\":\"<p>.....<\\/p>\",\"created_at\":\"2020-03-26 14:19:45\",\"updated_at\":\"2020-04-18 10:52:13\",\"deleted_at\":null,\"name\":\"\\u0637\\u0645\\u0627\\u0637\\u0645\",\"fav_status\":0}', 0, 0, 0, NULL, '2020-04-18 17:33:34', '2020-04-18 17:33:34'),
(2, 2, 6, 3, 6, '2020-04-18', '{\"id\":6,\"name_ar\":\"\\u0637\\u0645\\u0627\\u0637\\u0645\",\"name_tr\":\"Domates\",\"category_id\":\"5\",\"sub_category_id\":\"0\",\"brands_id\":null,\"image\":\"1586064115.jpg\",\"details_ar\":\"<p>.<\\/p>\",\"details_tr\":\"<p>.<\\/p>\",\"price\":\"3.00\",\"discount_price\":\"2.00\",\"quantity\":\"99997\",\"highest_quantity\":\"3\",\"unit_id\":\"1\",\"feature_id\":\"2\",\"special\":\"0\",\"offer\":\"0\",\"lang\":\"0\",\"ordered\":\"1\",\"ordered_offer\":\"0\",\"user_id\":\"1\",\"active\":\"1\",\"unit_name_ar\":\"\\u0643\\u064a\\u0644\\u0648\",\"unit_name_tr\":\"kg\",\"increase_amount\":\"1\",\"limit_store_buy\":\"50\",\"barcode\":null,\"keyword\":null,\"name_en\":\"asfasf\",\"unit_name_en\":\"fsadgdsgdf\",\"details_en\":\"<p>.....<\\/p>\",\"created_at\":\"2020-03-26 14:19:45\",\"updated_at\":\"2020-04-18 14:05:26\",\"deleted_at\":null,\"name\":\"\\u0637\\u0645\\u0627\\u0637\\u0645\",\"fav_status\":0}', 0, 0, 0, NULL, '2020-04-18 19:20:17', '2020-04-18 19:20:17'),
(3, 3, 6, 3, 6, '2020-04-18', '{\"id\":6,\"name_ar\":\"\\u0637\\u0645\\u0627\\u0637\\u0645\",\"name_tr\":\"Domates\",\"category_id\":\"5\",\"sub_category_id\":\"0\",\"brands_id\":null,\"image\":\"1586064115.jpg\",\"details_ar\":\"<p>.<\\/p>\",\"details_tr\":\"<p>.<\\/p>\",\"price\":\"3.00\",\"discount_price\":\"2.00\",\"quantity\":\"99994\",\"highest_quantity\":\"3\",\"unit_id\":\"1\",\"feature_id\":\"2\",\"special\":\"0\",\"offer\":\"0\",\"lang\":\"0\",\"ordered\":\"1\",\"ordered_offer\":\"0\",\"user_id\":\"1\",\"active\":\"1\",\"unit_name_ar\":\"\\u0643\\u064a\\u0644\\u0648\",\"unit_name_tr\":\"kg\",\"increase_amount\":\"1\",\"limit_store_buy\":\"50\",\"barcode\":null,\"keyword\":null,\"name_en\":\"asfasf\",\"unit_name_en\":\"fsadgdsgdf\",\"details_en\":\"<p>.....<\\/p>\",\"created_at\":\"2020-03-26 14:19:45\",\"updated_at\":\"2020-04-18 14:05:26\",\"deleted_at\":null,\"name\":\"\\u0637\\u0645\\u0627\\u0637\\u0645\",\"fav_status\":0}', 0, 0, 0, NULL, '2020-04-18 19:35:53', '2020-04-18 19:35:53'),
(4, 3, 8, 3, 3.3, '2020-04-18', '{\"id\":8,\"name_ar\":\"\\u0628\\u0637\\u0627\\u0637\\u0633\",\"name_tr\":\"Patates\",\"category_id\":\"5\",\"sub_category_id\":\"0\",\"brands_id\":\"0\",\"image\":\"1586064171.jpg\",\"details_ar\":null,\"details_tr\":null,\"price\":\"1.10\",\"discount_price\":\"0.00\",\"quantity\":\"9994\",\"highest_quantity\":\"3\",\"unit_id\":\"1\",\"feature_id\":\"2\",\"special\":\"0\",\"offer\":\"0\",\"lang\":\"0\",\"ordered\":\"2\",\"ordered_offer\":\"0\",\"user_id\":\"1\",\"active\":\"1\",\"unit_name_ar\":\"\\u0643\\u064a\\u0644\\u0648\",\"unit_name_tr\":\"kg\",\"increase_amount\":\"1\",\"limit_store_buy\":\"10\",\"barcode\":null,\"keyword\":null,\"name_en\":null,\"unit_name_en\":null,\"details_en\":null,\"created_at\":\"2020-03-26 14:29:48\",\"updated_at\":\"2020-04-05 08:22:51\",\"deleted_at\":null,\"name\":\"\\u0628\\u0637\\u0627\\u0637\\u0633\",\"fav_status\":0}', 0, 0, 0, NULL, '2020-04-18 19:35:53', '2020-04-18 19:35:53'),
(5, 4, 156, 1, 6.99, '2020-04-19', '{\"id\":156,\"name_ar\":\"\\u062c\\u0628\\u0646\\u0629 \\u0628\\u064a\\u0636\\u0627\\u0621 60% \\u063a\\u0627\\u0632\\u064a\",\"name_tr\":\"Gazi Beyaz Peynir 60%\",\"category_id\":\"9\",\"sub_category_id\":\"0\",\"brands_id\":null,\"image\":\"1586700979.jpg\",\"details_ar\":null,\"details_tr\":null,\"price\":\"6.99\",\"discount_price\":\"0.00\",\"quantity\":\"10000\",\"highest_quantity\":\"3\",\"unit_id\":\"1\",\"feature_id\":\"2\",\"special\":\"0\",\"offer\":\"0\",\"lang\":\"0\",\"ordered\":\"4\",\"ordered_offer\":\"0\",\"user_id\":\"1\",\"active\":\"1\",\"unit_name_ar\":\"800 \\u062c\\u0645\",\"unit_name_tr\":\"800 gr\",\"increase_amount\":\"1\",\"limit_store_buy\":\"10\",\"barcode\":null,\"keyword\":null,\"name_en\":\"Gazi feta Cheese 60%\",\"unit_name_en\":\"800 g\",\"details_en\":null,\"created_at\":\"2020-04-12 17:16:19\",\"updated_at\":\"2020-04-15 16:23:23\",\"deleted_at\":null,\"name\":\"\\u062c\\u0628\\u0646\\u0629 \\u0628\\u064a\\u0636\\u0627\\u0621 60% \\u063a\\u0627\\u0632\\u064a\",\"fav_status\":0}', 0, 0, 0, NULL, '2020-04-19 21:18:49', '2020-04-19 21:18:49'),
(6, 4, 157, 2, 11.98, '2020-04-19', '{\"id\":157,\"name_ar\":\"\\u062c\\u0628\\u0646\\u0629 \\u0628\\u064a\\u0636\\u0627\\u0621 45% \\u063a\\u0627\\u0632\\u064a\",\"name_tr\":\"Gazi Beyaz Peynir 45%\",\"category_id\":\"9\",\"sub_category_id\":\"0\",\"brands_id\":null,\"image\":\"1586701340.jpg\",\"details_ar\":null,\"details_tr\":null,\"price\":\"5.99\",\"discount_price\":\"0.00\",\"quantity\":\"10000\",\"highest_quantity\":\"3\",\"unit_id\":\"1\",\"feature_id\":\"2\",\"special\":\"0\",\"offer\":\"0\",\"lang\":\"0\",\"ordered\":\"5\",\"ordered_offer\":\"0\",\"user_id\":\"1\",\"active\":\"1\",\"unit_name_ar\":\"800 \\u062c\\u0645\",\"unit_name_tr\":\"800 gr\",\"increase_amount\":\"1\",\"limit_store_buy\":\"10\",\"barcode\":null,\"keyword\":null,\"name_en\":\"Gazi feta Cheese 45%\",\"unit_name_en\":\"800 g\",\"details_en\":null,\"created_at\":\"2020-04-12 17:22:20\",\"updated_at\":\"2020-04-15 16:24:42\",\"deleted_at\":null,\"name\":\"\\u062c\\u0628\\u0646\\u0629 \\u0628\\u064a\\u0636\\u0627\\u0621 45% \\u063a\\u0627\\u0632\\u064a\",\"fav_status\":0}', 0, 0, 0, NULL, '2020-04-19 21:18:49', '2020-04-19 21:18:49'),
(7, 4, 176, 2, 2.98, '2020-04-19', '{\"id\":176,\"name_ar\":\"\\u0628\\u064a\\u0636 \\u0637\\u0628\\u0642\",\"name_tr\":\"Yumurta\",\"category_id\":\"9\",\"sub_category_id\":\"0\",\"brands_id\":null,\"image\":\"1586767832.jpg\",\"details_ar\":null,\"details_tr\":null,\"price\":\"1.49\",\"discount_price\":\"0.00\",\"quantity\":\"10000\",\"highest_quantity\":\"5\",\"unit_id\":\"1\",\"feature_id\":\"2\",\"special\":\"0\",\"offer\":\"0\",\"lang\":\"0\",\"ordered\":\"16\",\"ordered_offer\":\"0\",\"user_id\":\"1\",\"active\":\"1\",\"unit_name_ar\":\"6 \\u0628\\u064a\\u0636\\u0629\",\"unit_name_tr\":\"6 aded\",\"increase_amount\":\"1\",\"limit_store_buy\":\"10\",\"barcode\":null,\"keyword\":null,\"name_en\":\"Egg\",\"unit_name_en\":\"6 pcs\",\"details_en\":null,\"created_at\":\"2020-04-13 11:50:32\",\"updated_at\":\"2020-04-15 18:07:50\",\"deleted_at\":null,\"name\":\"\\u0628\\u064a\\u0636 \\u0637\\u0628\\u0642\",\"fav_status\":0}', 0, 0, 0, NULL, '2020-04-19 21:18:49', '2020-04-19 21:18:49'),
(8, 4, 205, 1, 1.85, '2020-04-19', '{\"id\":205,\"name_ar\":\"\\u0644\\u0628\\u0646 3.5%  \\u062f\\u0633\\u0645 \\u062a\\u0634\\u064a\\u0641\\u062a\\u0644\\u0643 \\u063a\\u0627\\u0632\\u064a\",\"name_tr\":\"Gazi Yogurt \\u00c7iftlik 3.5%\",\"category_id\":\"9\",\"sub_category_id\":\"0\",\"brands_id\":null,\"image\":\"1586964822.jpg\",\"details_ar\":null,\"details_tr\":null,\"price\":\"1.85\",\"discount_price\":\"0.00\",\"quantity\":\"10000\",\"highest_quantity\":\"3\",\"unit_id\":\"1\",\"feature_id\":\"2\",\"special\":\"0\",\"offer\":\"0\",\"lang\":\"0\",\"ordered\":\"44\",\"ordered_offer\":\"0\",\"user_id\":\"1\",\"active\":\"1\",\"unit_name_ar\":\"\\u0643\\u064a\\u0644\\u0648\",\"unit_name_tr\":\"kg\",\"increase_amount\":\"1\",\"limit_store_buy\":\"10\",\"barcode\":null,\"keyword\":null,\"name_en\":\"Gazi Yogurt \\u00c7iftlik 3.5%\",\"unit_name_en\":\"kg\",\"details_en\":null,\"created_at\":\"2020-04-15 18:33:42\",\"updated_at\":\"2020-04-15 18:33:42\",\"deleted_at\":null,\"name\":\"\\u0644\\u0628\\u0646 3.5%  \\u062f\\u0633\\u0645 \\u062a\\u0634\\u064a\\u0641\\u062a\\u0644\\u0643 \\u063a\\u0627\\u0632\\u064a\",\"fav_status\":0}', 0, 0, 0, NULL, '2020-04-19 21:18:49', '2020-04-19 21:18:49'),
(9, 4, 188, 2, 1.38, '2020-04-19', '{\"id\":188,\"name_ar\":\"\\u062c\\u0628\\u0646\\u0629 \\u0645\\u0648\\u0632\\u064a\\u0631\\u064a\\u0644\\u0627 \\u0625\\u0641\\u0631\\u064a \\u062f\\u064a\",\"name_tr\":\"Everyday Mozzarella Peynir\",\"category_id\":\"9\",\"sub_category_id\":\"0\",\"brands_id\":null,\"image\":\"1586780834.jpg\",\"details_ar\":null,\"details_tr\":null,\"price\":\"0.69\",\"discount_price\":\"0.00\",\"quantity\":\"10000\",\"highest_quantity\":\"10\",\"unit_id\":\"1\",\"feature_id\":\"2\",\"special\":\"0\",\"offer\":\"0\",\"lang\":\"0\",\"ordered\":\"42\",\"ordered_offer\":\"0\",\"user_id\":\"1\",\"active\":\"1\",\"unit_name_ar\":\"200 \\u062c\\u0645\",\"unit_name_tr\":\"200 gr\",\"increase_amount\":\"1\",\"limit_store_buy\":\"10\",\"barcode\":null,\"keyword\":null,\"name_en\":\"Everyday Mozzarella\",\"unit_name_en\":\"200 g\",\"details_en\":null,\"created_at\":\"2020-04-13 15:27:14\",\"updated_at\":\"2020-04-15 16:48:07\",\"deleted_at\":null,\"name\":\"\\u062c\\u0628\\u0646\\u0629 \\u0645\\u0648\\u0632\\u064a\\u0631\\u064a\\u0644\\u0627 \\u0625\\u0641\\u0631\\u064a \\u062f\\u064a\",\"fav_status\":0}', 0, 0, 0, NULL, '2020-04-19 21:18:49', '2020-04-19 21:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(51, 'main', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(52, 'department_of_departments', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(53, 'sub_departments_management', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(54, 'address_change_requests', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(55, 'customer_message_management', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(56, 'orders_and_distribution', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(57, 'alerts_management', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(58, 'sales_administration', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(59, 'promo_code_management', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(60, 'close_the_application', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(61, 'slider_management_offers', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(62, 'district_management', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(63, 'delivery_management', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(64, 'slider_image_management', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(65, 'delivery_time_management', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(66, 'custumer_show', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(67, 'custumer_operation', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(68, 'customer_send_message', NULL, NULL, '2019-10-27 05:24:07', '2019-10-27 05:24:07'),
(69, 'customer_send_notification', NULL, NULL, '2019-10-27 05:28:39', '2019-10-27 05:28:39'),
(70, 'items_show', NULL, '1', '2019-10-27 05:28:39', '2019-10-27 05:28:39'),
(71, 'items_add_edit', NULL, NULL, '2019-10-27 05:28:39', '2019-10-27 05:28:39'),
(72, 'items_add_delete', NULL, NULL, '2019-10-27 05:28:39', '2019-10-27 05:28:39'),
(73, 'orders_daily_show', NULL, '1', '2019-10-27 05:28:39', '2019-10-27 05:28:39'),
(74, 'orders_daily_stuatus', NULL, NULL, '2019-10-27 05:28:39', '2019-10-27 05:28:39'),
(75, 'orders_daily_print', NULL, NULL, '2019-10-27 05:28:39', '2019-10-27 05:28:39'),
(76, 'orders_daily_edit', NULL, NULL, '2019-10-27 05:28:39', '2019-10-27 05:28:39'),
(77, 'orders_daily_delete', NULL, NULL, '2019-10-27 05:28:39', '2019-10-27 05:28:39'),
(78, 'archives_orders_show', NULL, NULL, '2019-10-27 05:28:39', '2019-10-27 05:28:39'),
(79, 'archives_orders_edit', NULL, NULL, '2019-10-27 05:28:39', '2019-10-27 05:28:39'),
(80, 'archives_orders_delete', NULL, NULL, '2019-10-27 05:28:39', '2019-10-27 05:28:39'),
(81, 'stores_show', NULL, '1', '2019-10-27 05:28:39', '2019-10-27 05:28:39'),
(82, 'stores_add_transaction', NULL, NULL, '2019-12-22 14:58:29', '2019-12-22 14:58:29'),
(83, 'edit_service', NULL, NULL, '2019-12-22 14:58:29', '2019-12-22 14:58:29'),
(84, 'show_project', NULL, NULL, '2019-12-22 14:58:29', '2019-12-22 14:58:29'),
(85, 'edit_project', NULL, NULL, '2019-12-22 14:58:29', '2019-12-22 14:58:29'),
(86, 'show_team', NULL, NULL, '2019-12-22 14:58:29', '2019-12-22 14:58:29'),
(87, 'edit_team', NULL, NULL, '2019-12-22 14:58:29', '2019-12-22 14:58:29'),
(88, 'role_show', NULL, NULL, '2020-01-23 03:41:02', '2020-01-23 03:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(51, 4),
(51, 8),
(51, 13),
(52, 4),
(52, 8),
(52, 13),
(53, 4),
(53, 8),
(53, 13),
(54, 4),
(54, 13),
(55, 4),
(55, 13),
(56, 4),
(56, 8),
(56, 13),
(57, 4),
(57, 13),
(58, 4),
(58, 13),
(59, 4),
(59, 13),
(60, 4),
(61, 4),
(61, 13),
(62, 4),
(62, 8),
(63, 4),
(63, 8),
(63, 13),
(64, 4),
(64, 13),
(65, 4),
(65, 8),
(66, 4),
(66, 13),
(67, 4),
(67, 13),
(68, 4),
(68, 13),
(69, 4),
(69, 13),
(70, 4),
(70, 8),
(70, 12),
(70, 13),
(71, 4),
(71, 8),
(71, 13),
(72, 4),
(73, 4),
(73, 8),
(73, 12),
(73, 13),
(74, 4),
(74, 8),
(74, 12),
(74, 13),
(75, 4),
(75, 8),
(75, 12),
(75, 13),
(76, 4),
(76, 8),
(76, 13),
(77, 4),
(77, 8),
(77, 13),
(78, 4),
(78, 8),
(78, 12),
(78, 13),
(79, 4),
(79, 8),
(80, 4),
(80, 8),
(81, 4),
(81, 8),
(81, 12),
(81, 13),
(82, 4),
(82, 8),
(82, 13),
(88, 4);

-- --------------------------------------------------------

--
-- Table structure for table `promo_code`
--

CREATE TABLE `promo_code` (
  `id` int(11) NOT NULL,
  `codetext` text NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0 => %',
  `discount` float NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `once` int(11) NOT NULL DEFAULT 0 COMMENT '0=>once',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promo_code`
--

INSERT INTO `promo_code` (`id`, `codetext`, `type`, `discount`, `date_from`, `date_to`, `active`, `once`, `created_at`, `updated_at`) VALUES
(1, 'asad', 0, 10, '2020-04-18', '2020-04-28', 1, 1, '2020-04-18 20:47:03', '2020-04-18 20:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `requests_to_update_addresses`
--

CREATE TABLE `requests_to_update_addresses` (
  `id` int(11) NOT NULL,
  `customer_address_id` int(11) NOT NULL,
  `delivery_team_id` int(11) NOT NULL,
  `latitude` varchar(199) CHARACTER SET utf8 DEFAULT NULL,
  `longitude` varchar(199) CHARACTER SET utf8 DEFAULT NULL,
  `compound_name` varchar(199) CHARACTER SET utf8 DEFAULT NULL,
  `building_number` varchar(199) CHARACTER SET utf8 DEFAULT NULL,
  `apartment_number` varchar(199) CHARACTER SET utf8 DEFAULT NULL,
  `floor_number` varchar(199) CHARACTER SET utf8 DEFAULT NULL,
  `other_details` text CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(4, 'المدير العام', 'لا يتم عرضها ', 'كافة الصلاحيات', '2019-10-27 05:24:07', '2020-01-25 20:43:28'),
(8, 'مدير منطقة', NULL, 'مدير منطقة معينة', '2020-01-23 07:09:43', '2020-03-18 22:03:28'),
(12, 'كاشير', NULL, 'مشرف المستودع', '2020-01-30 02:49:29', '2020-01-30 02:49:29'),
(13, 'خدمة عملاء ', NULL, NULL, '2020-01-30 02:53:51', '2020-02-07 06:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 4),
(3, 8),
(4, 8),
(5, 13),
(6, 12),
(7, 13),
(8, 8),
(12, 8),
(13, 8),
(14, 8),
(15, 8),
(16, 12),
(17, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `text_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_tr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_tr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `text_ar`, `text_tr`, `image_ar`, `image_tr`, `active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '1585480407.png', '1585480407.png', 1, 1, '2020-03-29 18:13:27', '2020-03-29 18:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `sliders_offers`
--

CREATE TABLE `sliders_offers` (
  `id` int(11) NOT NULL,
  `image_ar` text NOT NULL,
  `image_tr` text NOT NULL,
  `type` int(2) NOT NULL,
  `url` varchar(199) DEFAULT NULL,
  `customer_type` tinyint(2) NOT NULL DEFAULT 0,
  `section_id` int(11) DEFAULT NULL,
  `item_ids` varchar(199) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` int(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders_offers`
--

INSERT INTO `sliders_offers` (`id`, `image_ar`, `image_tr`, `type`, `url`, `customer_type`, `section_id`, `item_ids`, `created_at`, `updated_at`, `is_active`) VALUES
(1, '1587393797.jpg', '1587198405.png', 4, NULL, 0, NULL, NULL, '2020-03-27 14:03:07', '2020-04-20 21:43:17', 1),
(2, '1587128599.jpg', '1587128502.jpg', 1, 'https://www.facebook.com/Halalmarket-101452304875469/', 0, NULL, NULL, '2020-04-17 16:56:02', '2020-04-17 20:03:19', 1),
(3, '1587128579.jpg', '1587393755.jpg', 4, NULL, 0, NULL, NULL, '2020-04-17 20:02:24', '2020-04-20 21:42:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_item`
--

CREATE TABLE `store_item` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_item_transactions`
--

CREATE TABLE `store_item_transactions` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `transaction_type_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `note` varchar(191) CHARACTER SET utf8 DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_item_transactions`
--

INSERT INTO `store_item_transactions` (`id`, `item_id`, `location_id`, `transaction_type_id`, `amount`, `note`, `price`, `order_id`, `updated_at`, `created_at`) VALUES
(1, 46, 1, 4, 100, NULL, 10, 0, '2020-04-02 04:49:48', '2020-04-02 04:49:48'),
(2, 152, 1, 4, 10, NULL, 10, 0, '2020-04-11 16:58:29', '2020-04-11 16:58:29'),
(3, 150, 1, 4, 10, NULL, 10, 0, '2020-04-11 17:00:06', '2020-04-11 17:00:06'),
(4, 6, 1, 2, 2, NULL, 0, 4, '2020-04-18 00:28:56', '2020-04-18 00:28:56'),
(5, 8, 1, 2, 3, NULL, 0, 4, '2020-04-18 00:28:56', '2020-04-18 00:28:56'),
(6, 10, 1, 2, 2, NULL, 0, 4, '2020-04-18 00:28:56', '2020-04-18 00:28:56'),
(7, 6, 1, 2, 3, NULL, 0, 5, '2020-04-18 00:34:55', '2020-04-18 00:34:55'),
(8, 8, 1, 2, 3, NULL, 0, 5, '2020-04-18 00:34:55', '2020-04-18 00:34:55'),
(9, 6, 3, 2, 3, NULL, 0, 1, '2020-04-18 17:33:34', '2020-04-18 17:33:34'),
(10, 6, 3, 2, 3, NULL, 0, 2, '2020-04-18 19:20:17', '2020-04-18 19:20:17'),
(11, 6, 3, 2, 3, NULL, 0, 3, '2020-04-18 19:35:53', '2020-04-18 19:35:53'),
(12, 8, 3, 2, 3, NULL, 0, 3, '2020-04-18 19:35:53', '2020-04-18 19:35:53'),
(13, 156, 3, 2, 1, NULL, 0, 4, '2020-04-19 21:18:49', '2020-04-19 21:18:49'),
(14, 157, 3, 2, 2, NULL, 0, 4, '2020-04-19 21:18:49', '2020-04-19 21:18:49'),
(15, 176, 3, 2, 2, NULL, 0, 4, '2020-04-19 21:18:49', '2020-04-19 21:18:49'),
(16, 205, 3, 2, 1, NULL, 0, 4, '2020-04-19 21:18:49', '2020-04-19 21:18:49'),
(17, 188, 3, 2, 2, NULL, 0, 4, '2020-04-19 21:18:49', '2020-04-19 21:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name_tr` varchar(255) CHARACTER SET utf8 NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_ar` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `image_tr` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `image_sm_ar` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `image_sm_tr` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `lang` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `ordered` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(191) CHARACTER SET utf8 NOT NULL,
  `name_tr` varchar(191) CHARACTER SET utf8 NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1=> sader 2=>wared',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `name_ar`, `name_tr`, `type`, `created_at`, `updated_at`) VALUES
(1, 'نقل من مخزن لمخزن', 'نقل من مخزن لمخزن', 0, '2019-12-14 13:13:53', '2019-12-14 13:13:53'),
(2, 'مبيعات', 'مبيعات', 1, '2019-12-14 13:13:53', '2019-12-14 13:13:53'),
(3, 'مشتريات', 'مشتريات', 2, '2019-12-14 13:13:53', '2019-12-14 13:13:53'),
(4, 'رصيد افتتاحي', 'رصيد افتتاحي', 2, '2019-12-14 13:13:53', '2019-12-14 13:13:53'),
(5, 'هدية مشتريات', 'هدية مشتريات', 2, '2019-12-14 13:13:53', '2019-12-14 13:13:53'),
(6, 'هدية مبيعات', 'هدية مبيعات', 1, '2019-12-14 13:13:53', '2019-12-14 13:13:53'),
(7, 'فاسدة / منتهي الصلاحية ', 'فاسدة / منتهي الصلاحية ', 1, '2019-12-14 13:13:53', '2019-12-14 13:13:53'),
(8, 'مرجع بيع ', 'مرجع بيع ', 2, '2019-12-14 13:13:53', '2019-12-14 13:13:53'),
(9, 'مرجع شراء', 'مرجع شراء', 1, '2019-12-14 13:13:53', '2019-12-14 13:13:53'),
(10, 'نقل من مخزن ', 'نقل من مخزن  ', 1, '2019-12-14 13:13:53', '2019-12-14 13:13:53'),
(11, 'نقل الى مخزن ', 'نقل الى مخزن  ', 2, '2019-12-14 13:13:53', '2019-12-14 13:13:53');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_tr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `highest_quantity` double(8,2) NOT NULL,
  `amount_increase` double(8,2) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name_ar`, `name_tr`, `highest_quantity`, `amount_increase`, `active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'لا يوجد', 'لا يوجد', 5.00, 5.00, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locations` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `locations`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$7ZybJo2EjOTKOg0dZT0zaejQPQ3hjgPEtCSTPHd8LDt9sV2fogARC', '99tj1fGsmK29y64fgAtd3UTvbKDlw0TkudK3PHhmztJhZ30VCx8MqqRCXepL', '1', 4, '2020-03-25 04:10:28', '2020-03-25 04:10:28'),
(3, 'super', 'super@admin.com', NULL, '$2y$10$aX/Qq7YQ81Akhnr1MJLTH.VAWoJ/cgV/Pf71QgE89k3/k9Bv/eZ.2', 'UujEbzRiMXdeUmxLyUBezhbS9cLjyOsStThDqGW5w3Jw1C9olMutxwCso6gZ', '1', 4, '2020-03-25 04:10:28', '2020-03-25 04:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `working_time`
--

CREATE TABLE `working_time` (
  `id` int(11) NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `active` int(11) NOT NULL,
  `ordered` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `working_time`
--

INSERT INTO `working_time` (`id`, `time_from`, `time_to`, `active`, `ordered`, `created_at`, `updated_at`) VALUES
(1, '01:00:00', '02:00:00', 0, 0, '2020-03-27 03:12:03', '2020-03-27 03:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `working_time_daily`
--

CREATE TABLE `working_time_daily` (
  `id` int(11) NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `type` int(3) NOT NULL DEFAULT 3 COMMENT '1=>tommoro 2=>day 3->tow way',
  `active` tinyint(4) NOT NULL,
  `ordered` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `working_time_daily`
--

INSERT INTO `working_time_daily` (`id`, `time_from`, `time_to`, `type`, `active`, `ordered`, `created_at`, `updated_at`) VALUES
(1, '05:00:00', '06:00:00', 3, 1, 0, '2020-04-17 21:34:15', '2020-04-17 21:34:15'),
(3, '06:00:00', '07:00:00', 3, 1, 1, '2020-04-17 21:34:15', '2020-04-17 21:34:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_config`
--
ALTER TABLE `app_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_favorite`
--
ALTER TABLE `customer_favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_notification`
--
ALTER TABLE `customer_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_notification_sender`
--
ALTER TABLE `customer_notification_sender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_old`
--
ALTER TABLE `customer_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_team`
--
ALTER TABLE `delivery_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items_price`
--
ALTER TABLE `items_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_views`
--
ALTER TABLE `item_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations_work_time`
--
ALTER TABLE `locations_work_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_data`
--
ALTER TABLE `location_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `market`
--
ALTER TABLE `market`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_order`
--
ALTER TABLE `new_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_order_items`
--
ALTER TABLE `new_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_transaction`
--
ALTER TABLE `orders_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests_to_update_addresses`
--
ALTER TABLE `requests_to_update_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_user_id_foreign` (`user_id`);

--
-- Indexes for table `sliders_offers`
--
ALTER TABLE `sliders_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_item`
--
ALTER TABLE `store_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_item_transactions`
--
ALTER TABLE `store_item_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `working_time`
--
ALTER TABLE `working_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `working_time_daily`
--
ALTER TABLE `working_time_daily`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_config`
--
ALTER TABLE `app_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `customer_favorite`
--
ALTER TABLE `customer_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_notification`
--
ALTER TABLE `customer_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customer_notification_sender`
--
ALTER TABLE `customer_notification_sender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_old`
--
ALTER TABLE `customer_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_team`
--
ALTER TABLE `delivery_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `items_price`
--
ALTER TABLE `items_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `item_views`
--
ALTER TABLE `item_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `locations_work_time`
--
ALTER TABLE `locations_work_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `location_data`
--
ALTER TABLE `location_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `market`
--
ALTER TABLE `market`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `new_order`
--
ALTER TABLE `new_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_order_items`
--
ALTER TABLE `new_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_transaction`
--
ALTER TABLE `orders_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `requests_to_update_addresses`
--
ALTER TABLE `requests_to_update_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders_offers`
--
ALTER TABLE `sliders_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_item`
--
ALTER TABLE `store_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_item_transactions`
--
ALTER TABLE `store_item_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `working_time`
--
ALTER TABLE `working_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `working_time_daily`
--
ALTER TABLE `working_time_daily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `features`
--
ALTER TABLE `features`
  ADD CONSTRAINT `features_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
