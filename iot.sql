-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 06:31 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id_bill` int(11) NOT NULL,
  `delivery_address` varchar(50) NOT NULL,
  `receiver_phone` varchar(10) NOT NULL,
  `receiver_name` varchar(50) NOT NULL,
  `payment_method` tinyint(1) NOT NULL,
  `point_used` int(11) NOT NULL,
  `total_money` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `date_pay` date NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(50) NOT NULL,
  `img_category` varchar(250) NOT NULL,
  `order` int(2) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name_category`, `img_category`, `order`, `parent_id`) VALUES
(1, 'Bộ KIT học tập Arduino', './assets/images/kit-hoc-tap.png', 1, 0),
(2, 'Cảm biến', './assets/images/cam-bien.jpg', 2, 0),
(3, 'Mạch nạp', './assets/images/mach-nap.jpg', 3, 0),
(4, 'Linh kiện thụ động', './assets/images/lk-thu-dong.jpg', 4, 0),
(5, 'Linh kiện bán dẫn', './assets/images/lk-ban-dan.jpg', 5, 0),
(6, 'Máy tính nhúng RaspberryPi', './assets/images/raspberryPi.jpg', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(11) NOT NULL,
  `comment_content` varchar(150) NOT NULL,
  `accept` tinyint(1) NOT NULL DEFAULT 0,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detailbill`
--

CREATE TABLE `detailbill` (
  `id_detailBill` int(11) NOT NULL,
  `amount_detail` int(11) NOT NULL,
  `size_detail` varchar(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_img` varchar(150) NOT NULL,
  `product_price` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_detailProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detailproduct`
--

CREATE TABLE `detailproduct` (
  `id_detailProduct` int(11) NOT NULL,
  `inventory` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `detail_size` varchar(10) NOT NULL,
  `detail_price` int(11) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailproduct`
--

INSERT INTO `detailproduct` (`id_detailProduct`, `inventory`, `sold`, `detail_size`, `detail_price`, `id_product`) VALUES
(1, 88, 33, '', 800000, 1),
(2, 88, 66, '', 1000000, 2),
(3, 77, 66, '', 650000, 3),
(4, 33, 22, '', 1400000, 4),
(5, 11, 1, '', 1600000, 5),
(6, 55, 1, '', 10000, 6),
(7, 55, 3, '', 135000, 7),
(8, 44, 6, '', 5000, 8),
(9, 55, 1, '', 10000, 9),
(10, 55, 2, '', 195000, 10),
(11, 66, 3, '', 140000, 11),
(12, 55, 3, '', 140000, 12),
(13, 66, 4, '', 80000, 13),
(14, 77, 45, '', 23000, 14),
(15, 11, 32, '', 25000, 15),
(16, 11, 5, '', 3000, 16),
(17, 55, 3, '', 15000, 17),
(18, 11, 1, '', 550000, 18),
(19, 2, 4, '', 125000, 19),
(20, 11, 1, '', 5000, 20),
(21, 12, 45, '', 2000, 21),
(22, 11, 6, '', 5000, 22),
(23, 32, 2, '', 5000, 23),
(24, 11, 10, '', 1500, 24),
(25, 9, 1, '', 18000, 25),
(26, 11, 7, '', 2500, 26),
(27, 11, 35, '', 1000, 27),
(28, 24, 81, '', 7500, 28),
(29, 11, 24, '', 2000, 29),
(30, 11, 9, '', 2000, 30),
(31, 45, 1, '', 2000, 31),
(32, 14, 40, '', 7500, 32),
(33, 11, 1, '', 6000, 33),
(34, 11, 22, '', 4000, 34),
(35, 11, 2, '', 4000, 35),
(36, 11, 10, '', 600000, 36),
(37, 11, 3, '', 215000, 37);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `title_product` varchar(50) NOT NULL,
  `img_product` varchar(150) NOT NULL,
  `subTitle_product` varchar(250) NOT NULL,
  `des_product` text NOT NULL,
  `hot_product` tinyint(1) NOT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `title_product`, `img_product`, `subTitle_product`, `des_product`, `hot_product`, `id_category`) VALUES
(1, 'Bộ học tập arduino cơ bản', './assets/images/anh1.jpg', 'Bộ KIT', 'Bộ KIT cung cấp đầy đủ các linh kiện, đi kèm với tài liệu hướng dẫn chi tiết, các dự án mẫu để bạn có thể bắt đầu ngay lập tức mà không cần kiến thức chuyên sâu giúp việc học lập trình dễ dàng, phát triển ứng dụng IoT, và làm quen với các thiết bị điện tử.
Bộ học tập Arduino cơ bản bao gồm: 
1 x Board Uno R3 
1 x Sensor Shield V5 
1 x Breadboad Test 
1 x Cảm biến siêu âm 
2 x Led RGB 5mm 
5 x Led đỏ 
5 x Led xanh lá 
2 x Nút nhấn giữ 
1 x 40P Male Header 
1 x Module RTC 
1 x Cảm biến nhiệt độ, độ ẩm 
2 x Nút nhấn nhả 
1 x Mắt thu hồng ngoại 
1 x DK hồng ngoại 
2 x Cảm biến ánh sáng 
1 x Cable USB 
1 x IC 74HC595 
1 x LED &SEG 
1 x Còi chíp 
1 x Jack chuyển đổi Pin 9V sang cổng DC 
1 x 20P Dây test board đực - đực 
1 x 20P Dây test board đực - cái 
1 x 20P Dây test board cái – cái 
5 x Tụ 47uF 
10 x Điện trở 1K 
10 x Điện trở 10K 
10 x Điện trở 100K 
10 x Điện trở 220R 
5 x Tụ 220uF 
1 x LCD 1602 
1 x Module LED 7 Seg 
1 x Servo Motor 
1 x Cảm biến nghiêng 
1 x Biến trở xoay
1 x keypad 4x4 
1 x Remote Control RF315Mhz 
1 x Hộp đóng gói
', 1, 1),
(2, 'Bộ học tập arduino & cảm biến', './assets/images/anh2.jpg', 'Bộ KIT', 'Arduino là bo mạch vi xử lý được dùng để lập trình tương tác với các thiết bị phần cứng như cảm biến, động cơ, đèn hoặc các thiết bị khác. Arduino ngày càng lớn mạnh, đi cùng với nó là rất nhiều các module mở rộng, điều đó mang lại rất nhiều lợi ích cho cộng đồng phát triển điện tử. Tuy nhiên nó cũng mang lại nhiều khó khăn cho các bạn mới bước vào tìm hiểu Arduino. Nắm bắt được tình hình đó, chúng tôi đã tổng hợp và đưa ra thị trường. Bộ học tập arduino và cảm biến nhằm cung cấp cho người học bộ các module cảm biến tương đối hoàn chỉnh, đầy đủ các module cơ bản, quan trọng nhất, giúp các bạn nhanh chóng làm chủ công nghệ  và thiết kế với arduino.
Đối tượng sử dụng:
- Người mới bắt đầu học, đam mê thích tìm hiểu công nghệ
- Người muốn nhanh chóng làm việc chuyên nghiệp với arduino
- Cũng có thể  các bạn học sinh, sinh viên, hay những người thích tìm tòi sáng tạo chế các thiết bị điện tử thông minh cho riêng mình
Bộ học tập arduino và cảm biến gồm:
 1 Arduino uno R3
 1 màn hình LCD 16 x 2
 1 cảm biến siêu âm HC-SR04
 1 cảm biến màu sắc
 1 cảm biến khí ga
 1 cảm biến chuyển động HC-SR501
 1 cảm biến mưa
 1 cảm biến ánh sáng
 1 cảm biến rung
 1 cảm biến gia tốc 3 trục MMA 8452
 1 cảm biến độ ẩm đất
 1 cảm biến nhiệt độ, độ ẩm đất DHT11
', 1, 1),
(3, 'Bộ tưới cây tự động v1', './assets/images/anh3.jpg', 'Bộ KIT', 'Bộ Tưới Cây Tự Động V1 được thiết kế bơm nước tự động theo độ ẩm đất, thích hợp tưới lan, rau mầm, rau ăn lá, vườn ươm, vườn hoa, chậu phong lan treo, giàn dây leo, mảng xanh bén rễ… Hệ thống tưới giúp tiết kiệm nước, tiết kiệm thời gian chăm sóc cây.
Bộ tưới cây tự động v1 có rất nhiều linh kiện như Ardunino Uno R3, module cảm biến độ ẩm đất, … Bộ tưới cây tự động V1 được kèm theo các bài học từ cơ bản đến nâng cao và lập trình để cho tưới cây tự  động theo giờ và theo độ ẩm đất.
Danh mục linh kiện bộ tưới cây tự động V1.
1 Ardunio Uno R3 dán
1 module cảm biến độ ẩm dất
1 module relay 1 kênh 5v
1 máu bơm nước chìm mini V2( 2.5-6V)
1 ống nước dẫn nhựa F6 50cm
1 hộp để pin AA có nắp và công tắc
1 dây cắm test board cái cái 20 cm
5 led siêu sáng 5mm
1 còi chíp 5V
1 dây USB kết nối Ardunio A-B
5 điện trở 1/4W 1k
', 2, 1),
(4, 'Bộ tưới cây tự động v2', './assets/images/anh4.jpg', 'Bộ KIT', 'Hệ thống tưới nước tự động là một trong những hệ thống được ứng dụng công nghệ hiện đại nhất hiện nay. Sử dụng hệ thống tưới tự động trên 1ha sẽ giảm thiểu được 70 lần mức chi phí so với cách tưới bằng máy và giảm đến 150 lần so vói tưới bằng tay. Hiện nay hệ thống nay đang được sử dụng phổ biến ở một số vùng đô thị phát triển mạnh, ở các sân golf cũng như các trang trại trồng cây ăn quả, cây hoa màu.
Với Bộ Tưới Cây Tự Động V2 bạn hoàn toàn an tâm giao phó tất cả để thiết bị hoàn toàn tự động mà không cần phải canh thời gian tắt mở van nước để thoát nước tưới cho cây hay thoát nước nữa. Vừa giảm nhẹ được thời gian vừa giúp bạn tiết kiệm thời gian để có thể làm được việc khác, dành thời gian cho gia đình nhiều hơn. Thậm chí đi đâu đó vài ngày bạn cũng hoàn toàn yên tâm, không còn nỗi lo trước lo sau, không có nhà thì ai sẽ tưới cây, cây sẽ chết,.. Bây giờ bạn muốn đi đâu cũng được mà không cần phải gò bó thời gian hay nhờ vả người khác khi đi ra ngoài hoặc bận đi làm xa nữa, bạn có thể theo giõi giám sát hệ thống mọi lúc mọi nơi chỉ với 1 chiếc máy tính hay 1 chiếc điện thoại có kết nối internet là bạn có thể giám sát độ ẩm đất, thời gian ở vườn nhà có mưa hay không
Bộ Tưới Cây Tự Động V2 là giải pháp thiết thực để giúp các hộ gia đình dù bận rộn với các công việc nhưng vẫn có thực phẩm sạch để sử dụng có những vườn hoa vườn cây xanh tốt. Bộ sản phẩm còn giúp chúng ta thư giãn, giảm stress sau những giờ làm việc căng thẳng mệt mỏi. Hay trong khi đang làm việc mà chúng ta vẫn biết được tình trạng vườn rau vườn cây nhà mình.
Bộ sản phẩm với các tính năng:
-Hệ thống hoạt động rất đơn giản, dễ dàng lắp đặt
-Chi phí đầu tư thấp giá thành rẻ phù hợp sự dụng tưới rau, tưới cây kiểng, tưới hoa,…
-Tưới nhỏ giọt hay tưới nhiều nước phù hợp với nhiều loại cây trồng
-Tưới cây tự động theo giờ ( nếu mưa thì không tưới).
-Tưới cây tự động theo độ ẩm
-Chuyên môn hoá việc bật tắt máy bơm, tắt mở van nước giúp tiết kiệm nguồn nước.
-Có thể setup bằng tay được thời gian tưới.
-Hiển thị nhiệt độ độ ẩm, độ ẩm đất, thời gian và tình trạng khu vườn có mưa hay không lên LCD
Hoàn toàn có thể giám sát được độ ẩm đất, thời gian, ở vườn có mưa hay không qua internet mọi lúc mọi nơi.
Với giá cả hợp lý cộng thêm các bài thực hành để các bạn có thể  hiểu về sản phẩm để thay đổi các thông số cho phù hợp hay phục vụ các bạn học tập nghiên cứu.
', 2, 1),
(5, 'Arduino smarthome', './assets/images/anh5.jpg', 'Bộ KIT', 'Với bộ Arduino SmartHome 1 bạn có thể học thiết kế một hệ thống nhà thông minh đơn giản.
Với bộ Arduino SmartHome 1 bạn có thể học thiết kế một hệ thống nhà thông minh đơn giản.
Điều khiển các thiết bị tức thời ngôi nhà của bạn từ xa thông qua SmartPhone hoặc PC.
Tài liệu và các code mẫu trình bày dễ hiểu với người học.
Tất cả dữ liệu được cập nhật  lên một flatform cho phép giám sát, điều khiển tức thời ngôi nhà của bạn từ xa thông qua SmartPhone  hoặc PC
Đối tượng sử dụng
  Người mới bắt đầu học và mong muốn làm việc chuyên nghiệp với Arduino
  Người muốn nhanh chóng thực hiện ý tưởng của mình
  Người không muốn hàn
  Người không có một nền tảng điện tử chuyên nghiệp
  Người là học sinh phổ thông, sinh viên đại học, hay người có sở thích tự chế các thiết bị điện tử thông minh
Danh mục linh kiện:
- Arduino Mega2560 x1
- Arduino Ethernet Shied W5100 x1
- Arduino Nano x1
- Module Relay 4 kênh 5V-220VAC/10A x1
- Module thu phát NRF24L01 x1
- Photo Resistor x1
- Gas Sensor x1
- Cảm biến áp suất GY 68 BMP180 x1
- Module RFID RC522 x1
- Cảm biến nhiệt độ, độ ẩm x1
- Cảm biến PIR x1
', 1, 1),
(6, 'Module Cảm Biến Ánh Sáng MS-CDS05', './assets/images/anh6.jpg', 'Cảm biến - Sensor', 'Sản phẩm có khả năng nhận biết các biến đổi của môi trường thông qua mắt cảm biến để kịp thời điều chỉnh ánh sáng cho phù hợp
Cảm biến này nhận biết ánh sáng và điều chỉnh thay đổi dựa trên các đi-ốt quang học
Tính năng sản phẩm
- Cảm biến sử dụng Photoresistor nên cho độ nhạy cao, tín hiệu ổn định
- Mạch thiết kế nhỏ gọn với độ chính xác cao, linh hoạt trong việc điều chỉnh độ nhạy của cảm biến
- Thụ động chuyển đổi “năng lượng ánh sáng” này cho dù có thể nhìn thấy hoặc trong các phần hồng ngoại của quang phổ thành tín hiệu điện
- Sản phẩm có khả năng nhận biết các biến đổi của môi trường thông qua mắt cảm biến để kịp thời điều chỉnh ánh sáng cho phù hợp
- Cảm biến này nhận biết ánh sáng và điều chỉnh thay đổi dựa trên các đi-ốt quang học
Ứng dụng
- Chế tạo đèn ngủ tự động sáng, xe dò line, đo cường độ ánh sáng
- Sử dụng chức năng digital chế tạo đèn tự sáng khi trời tối
- Đầu ra DO sẽ đưa ra mức 1 khi trời tối, kết hợp với tran NPN và đèn led để chế tạo bộ đèn ngủ tự sáng khi trời tối, có thể chỉnh biến trở để điều chỉnh thời điểm sáng phù hợp nhất
- Bật tắt đèn bằng ánh sáng, phát hiện ánh sáng,...
- Ứng dụng kết hợp với Arduino
Thông số kĩ thuật:
- Điện áp hoạt động: 3.3-5 DVC
- Đầu ra : AO  Tín hiệu analog
- Điều chỉnh: DO: Tín hiệu 0 hoặc 1 (Sử dụng LM393)
', 3, 2), 
(7, 'Cảm Biến Lực FSR402 Arduino', './assets/images/anh7.jpg', 'Cảm biến - Sensor', 'Tính năng sản phẩm
- Cảm biến có cách sử dụng dễ dàng, độ bền và độ ổn định cao với chi phí thấp
- Cảm biến cho phép bạn phát hiện áp suất, áp lực và trọng lượng cơ thể
- FSR có thể được xem như là một điện trở thay đổi trở kháng của nó
- Cảm biến sẽ thay đổi trở kháng tùy thuộc vào áp suất đè lên phần cảm ứng
- Cảm biến lực FSR402 này chuyển đổi áp suất áp dụng cho khu vực của màng cảm biến FSR thành thay đổi giá trị điện trở để có được thông tin áp suất
- Là một cảm biến áp suất điện trở siêu nhẹ, nhỏ gọn, độ nhạy cao, siêu mỏng của Interlink Electronics
Ứng dụng
- Cảm biến lực FSR402 được sử dụng trong các ứng dụng điều khiển, Robot như: nút nhấn cảm ứng, đo lực tay kẹp Robot, đo áp lực nhấn tại 1 điểm,...
- Có thể được sử dụng để phát hiện sự hiện diện hoặc vắng mặt của các vật kẹp ở đầu kẹp cơ khí, robot hai chân, robot nhện dưới chân cảm biến, thí nghiệm sinh học thử lực cắn của động vật có vú,...
- Dùng để đo áp suất ở 1 số khu vực
- FSR là cảm biến cho phép bạn phát hiện áp suất, áp lực và trọng lượng cơ thể
Thông số kĩ thuật
- Điện tích cảm ứng: Đường kính tròn 13mm
- Tín hiệu trả về: Điện trở biến thiên theo áp lực nhấn
- Cảm ứng được lực: 10g-1kg
- Độ dày: 0.45mm
- Độ bền: 10 triệu lần nhấn
- Kích thước: 60 x 19 x 0.45 mm
', 5, 2), 
(8, 'Cảm Biến Rung HDX-1801', './assets/images/anh8.jpg', 'Cảm biến - Sensor', 'Tính năng sản phẩm
- Được làm bằng kim loại và ống nhựa, độ nhạy cao, sản phẩm không bị ảnh hưởng bởi nhiễu tiếng ồn
- Chịu tải cao, độ rung động thay đổi với lực rung động.
- Phát hiện độ rung động và hoặc độ nghiêng , lấy tín hiệu gửi vào vi điều khiển để điều khiển thiết bị
Ứng dụng
- Có thể được sử dụng trong các thiết bị chống trộm, khóa điện tử, cơ khí phát hiện thiết bị rung,..
- Được sử dụng trong xe ô tô điện, báo động xe hơi
- Sử dụng trong các mạch điện tử ứng dụng nghiên cứu sinh viên
Thông số kĩ thuật:
- Điện áp hoạt động: 3~12V
- Dòng hoạt động: 10A
- Trở kháng: 10M
- Kích thước: 10 x 30 x 20mm
- Ngõ ra: 3 - 5 VDC
', 6, 2),
(9, 'Module Cảm Biến Rung SW-420', './assets/images/anh9.jpg', 'Cảm biến - Sensor', 'Tính năng sản phẩm
- Module cảm biến rung SW-420 là module sử dụng  cảm biến SW-420 cùng IC LM393 nhằm phát hiện các rung động trong một ngưỡng xác định
- Tích hợp LED báo nguồn và LED báo trạng thái
- Đầu ra hàn sẵn jump cắm tiện lợi cho việc đấu nối
- Tích hợp sẵn biến trở để điều chỉnh ngưỡng so sánh
- Thiết kế nhỏ gọn dễ dàng sử dụng
Ứng dụng
- Module cảm biến rung SW-420 thường được dùng trong các dự án DIY:thiết bị chống trộm, cảnh báo động đất, xe thông minh
Thông số kĩ thuật
- Điện áp hoạt động: 3.3-5 DVC
- Dòng: 15mA
- Điều chỉnh: DO: Tín hiệu 0 hoặc 1 (Sử dụng LM393)
- Kích thước: 32x14mm
', 6, 2),
(10, 'Module Cảm Biến Gia Tốc ADXL335', './assets/images/anh10.jpg', 'Cảm biến - Sensor', 'Tính năng sản phẩm
- Cảm biến gia tốc góc ADXL335 là một cảm biến gia tốc 3 trục nhỏ gọn, mỏng, công suất thấp hoàn chỉnh với các đầu ra điện áp được điều chỉnh tín hiệu
- Cảm biến này đi kèm với một bộ điều chỉnh điện áp trên bo mạch và hoạt động ở cả 3.3V và 5V.
- Module ADXL335 có chức năng đo gia tốc trọng trường tĩnh trong các ứng dụng đo góc nghiêng
ADXL335 còn đo gia tốc từ các chuyển động hoặc rung động của vật thể.
Ứng dụng
- Đo gia tốc trọng trường tĩnh trong các ứng dụng đo góc nghiêng.
- Ứng dụng trong máy bay mô hình, các hệ thống cân bằng động, đo lường quán tính…
ứng dụng trong nhiều lĩnh vực khác nhau như: hệ thống FPV, RC và Robot, hệ thống định vị GPS, thiết bị đầu vào trò chơi và thực tế ảo, ...
Thông số kĩ thuật
- Tên Module: ADXL335
- IC Driver: ADXL335
- Nguồn cung cấp: 3 - 5V
- Dòng điện tiêu thụ: 23uA
- Kích thước: 14 x 19mm
- Nhiệt độ hoạt động: -40 đến +85 °C
- Giao tiếp: SPI hoặc I2C
', 4, 2),
(11, 'Cảm Biến Dòng SCT-013-000V 50A/1V', './assets/images/anh11.jpg', 'Cảm biến - Sensor', 'Tính năng sản phẩm
- Cảm Biến Dòng SCT013 là cảm biến đo dòng điện xoay chiều.
- Cảm Biến có kết cấu khóa kẹp an toàn , dễ dàng lắp đặt 
- Đầu ra dây dẫn kết nối với jack Audio 3.5mm
Ứng dụng
- Dùng để đo, giám sát dòng điện và bảo vệ động cơ AC, thiết bị chiếu sáng, máy nén khí..
Thông số kĩ thuật
- Model: SCT-013
- Kích thước: 13x13mm
- Dòng định mức đầu vào: 0~50A
- Tần số: 50Hz - 150KHz
- Nhiệt độ làm việc: -25 ℃ ~ +70 ℃
- Độ dài dây: 1.5m
- Lõi: Ferrite
- Chỉ số an toàn: Chỉ số điện môi 6000VAC/1 min
- Màu sắc: Xanh dương
', 4, 2),
(12, 'Cảm Biến Áp Suất BMP085', './assets/images/anh12.jpg', 'Cảm biến - Sensor', 'Tính năng sản phẩm
- Vùng đo áp suất rộng, từ 300 - 1100 hPa
- Cảm biến MP085 hỗ trợ giao tiếp I2C
- Tiết kiệm điện năng
- Tích hợp tính năng đo nhiệt độ
- Ít bị nhiễu khi đo đạc
Ứng dụng
- Đo áp suất khí quyển, nước…
- Dùng cho việc xác định độ cao của robot, máy bay hay khoảng cách so với mặt đất của thiết bị được vận chuyển,...
Thông số kĩ thuật
- Điện áp cung cấp: 1.8 ~ 3.6V
- Công suất tiêu thụ thấp: 0.5uA tại 1Hz
- Giao tiếp: I2C
- Tốc độ I2C max: 3.5MHz
- Độ nhiễu thấp: 0.02hPa
- Dòng điện tiêu thụ: 5μA
- VCC: Nối nguồn vào
- GND: Nối GND nguồn vào
- SCL - SDA: kết nối với vi điều khiển
', 3, 2),
(13, 'Module Cảm Biến Mầu TCS34725 Arduino V1', './assets/images/anh13.jpg', 'Cảm biến - Sensor', 'TCS34725 có thể nhận biết từng màu thành phần màu RGB và cường độ sáng trắng với bộ lọc IR.
- Độ nhạy cao, chính xác, tiêu thụ điện năng thấp.
- Ứng dụng : Robot thông minh, Điều khiển Led RGB, đo nhiệt độ màu, cảm biến ánh sáng điều khiển đèn hiển thị, phân tích chất lỏng, phân loại sản phẩm...
Thông số kĩ thuật:
- Tốc độ dữ liệu lên đến 400 kbit / s
- Điện áp hoạt động 3.3 - 5.0 VDC
- Giao tiếp I2C
- I2C address 0x29 (7-bit)
- Khối lượng: 3.23g
', 2, 2),
(14, 'Module Cảm Biến Độ Ẩm HR202', './assets/images/anh14.jpg', 'Cảm biến - Sensor', 'Tính năng sản phẩm
- HR202 Module Cảm Biến Độ Ẩm sử dụng IC chính LM393, đo độ ẩm của môi trường xung quanh chính xác và ổn định, có thể điều chỉnh độ nhạy của mạch thông qua biến trở.
- Dải đo rộng và tiêu tốn ít điện năng
- Cảm biến có 2 đầu ra là tín hiệu analog và digital (Khi độ ẩm đạt ngưỡng cài đặt chân DO xuất ra mức cao, độ ẩm vượt ngưỡng cài đặt chân D0 xuất ra mức thấp)
- Có LED báo nguồn và báo trạng thái đầu ra số
Ứng dụng
- Sử dụng để phát hiện độ ẩm môi trường xung quanh; phát hiện độ ẩm, cảm biến độ ẩm.
- Được ứng dụng trong các sản phẩm KHKT, các sản phẩm thông minh, học tập.
- Giám sát nhiệt độ, độ ẩm phòng.
- Trong nông nghiệp, các nhà kính nuôi trồng.
Thông số kĩ thuật
- Điện áp: 3.3 - 5VDC
- Ngõ ra: Analog & Digital
- Chip: LM393
- Tốc độ baud: 9600
- Kích thước: 3 x 1.6cm
- Điện áp: 3.3 - 5VDC
', 1, 2),
(15, 'Module DHT11', './assets/images/anh15.jpg', 'Cảm biến - Sensor', 'DHT11 là module nhiệt độ độ ẩm giá rẻ phục vụ cho học tập và nghiên cứu
Tính năng
- Thư viện DHT được hỗ trợ và chia sẻ rộng rãi trên internet
- Được đánh giá có độ chính xác tương đối cao,hoạt động bền bỉ và ổn định.Khả năng chống nhiễu tương đối tốt.
Ứng dụng
- Module DHT11 là module nhiệt độ độ ẩm giá rẻ phục vụ cho học tập và nghiên cứu
Bảng thông số kỹ thuật:
 - Model:  DHT11
- Điện áp hoạt động: 3.3 đến 5V
- Dải đo nhiệt độ: -20 đến 60*C
- Sai số nhiệt độ: 2*C
- Dải đo độ ẩm: 20% ~ 90%
- Sai số độ ẩm : 5%
- Kích thước PCB:  2.8x1.4cm
- Trọng lượng: 8g
', 1, 2),
(16, 'Cảm Biến Âm Thanh Mic 9x7MM 56DB SMD', './assets/images/anh16.jpg', 'Cảm biến - Sensor', 'Tính năng sản phẩm
- Lấy tín hiệu ra đưa vào vi điều khiển để điều khiển thiết bị khác...
- Đây là loại mic chuyên dụng cho cảm biến âm thanh
- Công suất thấp và độ nhạy cao, kích thước nhỏ dễ dàng cài đặt
Ứng dụng
- Dùng trong mạch bật tắt thiết bị bằng âm thanh
- Sản phẩm có thể phát hiện mức độ tiếng ồn dựa trên rung động của không khí
- Dòng sản phẩm giá thấp cho các sản phẩm ứng dụng
Thông số kĩ thuật
- Điện áp hoạt động: 3-5 VDC
- Kích thước: 9x7mm
- Độ nhạy: 44 ±2 dB
', 4, 2),
(17, 'Module Cảm Biến Khí GAS MQ6', './assets/images/anh17.jpg', 'Cảm biến - Sensor', 'Tính năng sản phẩm
- Module có chức năng phát hiện khí dễ cháy khác nhau, đặc biệt là 
Methane, với chi phí thấp và phù hợp cho các ứng dụng khác nhau.
- Độ nhạy của cảm biến có thể điều chỉnh bằng cách chỉnh biến trở để thay đổi điện áp so sánh
- Nhỏ gọn, độ nhạy cao và thời gian áp dụng nhanh, thông tin đo lường chính xác
- Mạch đơn giản, dễ sử dụng và hoạt động ổn định trong thời gian dài 
Ứng dụng
- Làm mạch phát hiện các loại khí như khí Propan, CH4, Hydro, ROH, khói và một số khí thiên nhiên dễ gây cháy.
- Dễ dàng thay thế, sửa chữa cho các sản phẩm có sử dụng module MQ6
- Cảnh báo rò rỉ khí gas công nghiệp, lắp đặt ở hộ gia đình.
- Phù hợp với người học tập, chế tạo các loại mạch ứng dụng
- Dễ dàng thay thế, sửa chữa cho các sản phẩm có sử dụng module MQ3
Thông số kĩ thuật
- Chip chính: LM393 , MQ 6 
- Nguồn hoạt động: 5VDC
- Loại dữ liệu: Analog
- Kích thước: 32 x 22 x 27 MM ( DxRxC )
', 1, 2),
(18, 'Mạch nạp st-link v2 mini (waveshare)', './assets/images/anh18.jpg', 'Mạch nạp', 'Mạch Nạp ST-LINK V2 Mini (Waveshare) là một board mạch được sử dụng để lập trình và gỡ lỗi cho các dòng vi điều khiển STM8 và STM32.
Thông Số Kĩ Thuật
- Tích hợp cầu chì tự phục hồi để tránh gây tổn hại mach khi ngắn mạch
- Đầu ra điện áp (3.3V / 5V), dễ dàng để gỡ lỗi / lập trình
- Giao diện USB chuẩn để kết nối trực tiếp với PC
- Gỡ lỗi / lập trình
+ Gỡ lỗi: run at full-speed, single-stepped, breakpoints, viewing variables and registers, etc.
+ Lập trình: hỗ trợ FLASH ROM, EEPROM, AFR, v.v.
+ USB2.0 kết hợp với giao diện SWIM / SWD
- Phần mềm nâng cấp
+ Firmware có thể nâng cấp để hỗ trợ nhiều thiết bị hơn.
+ Tự động nâng cấp
- Phần mềm được hỗ trợ
+ ST-LINK Utility v2.0
+ STVD Phiên bản 4.2.1
+ Phiên bản STVP 3.2.3
+ IAR EWARM Phiên bản v6.20
+ KEIL RVMDK bản sửa đổi v4.2
+ ATOLLIC
- Thiết bị hỗ trợ:
+ Tất cả các thiết bị STM8 có giao diện SWIM
+ Tất cả các thiết bị STM32 có giao diện SWD
', 3, 3),
(19, 'Mạch nạp st- link v2', './assets/images/anh19.jpg', 'Mạch nạp', 'Mạch Nạp ST- LINK V2 Hỗ trợ đầy đủ các STM32 giao diện SWD nạp và gỡ lỗi, giao diện đơn giản 4 dây (bao gồm cả dây cấp nguồn), tốc độ nhanh, hoạt động ổn định;
Hỗ trợ đầy đủ các STM8 giao diện SWIM nạp và gỡ lỗi (Hỗ trợ môi trường phát triển phổ biến như IAR, STVD hoặc tương đương); Phiên bản phần mềm hỗ trợ như sau:
-  ST-LINK Utility 2 trở lên
- STVD 4.2.1 trở lên
- STVP 3.2.3 trở lên
- IAR EWARM V6.20 trở lên
- IAR EWSTM8 v1.30 trở lên
- Keil RVMDK V4.21 trở lên
Hỗ trợ nâng cấp firmware tự động, theo sản phẩm của ST. Firmware xuất xưởng đã được nâng cấp lên V2.J17.S4 mới nhất;
Nhỏ gọn, Đẹp, tiện lợi, chú thích ngay trên vỏ hộp nhôm sang trọng.
Trọn gói bao gồm:
- 1 x ST LINK V2 Mini
- 4 x Dây DuPont gỡ lỗi dài 30cm
Kết nối với 
* STM8
- NRST -- RST
- SWIM -- SWIM
* STM32
- NRST -- RST
- SWCLK -- TCK
- SWDIO -- TMS
SW DRIVERS
', 5, 3),
(20, 'Cầu Chì 5A 3x10MM', './assets/images/anh20.jpg', 'Linh kiện', 'Công dụng sản phẩm
- Cầu chì được sử dụng để bảo vệ mạch điện bằng nguyên lý hoạt động đơn giản là khi có dòng điện tăng đột biến đi qua sẽ làm dây chì bên trong nóng chảy làm ngắt mạch điện.
- Cấu tạo bên trong cầu chì gồm 2 đầu đấu nối tiếp trong mạch điện , bên trong gồm 1 dây kim loại mảnh có nhiệt độ nóng chảy thấp
- Bộ phân cơ bản của cầu chì là dây chảy , dây chảy được làm bằng chất liệu có nhiệt độ nóng chảy thấp như chì, kẽm , đồng ..
Ứng dụng
- Được sử dụng trong các dây nguồn tivi, oto, xe máy , các thiết bị điện công nghiệp ,....
- Phù hợp trong việc sửa chữa và thiết kế trong các mạch điện
Thông số kĩ thuật
- Chịu dòng tối đa: 5A
- Điện áp chịu đựng: 250VAC
- Chất liệu: Kim loại + thủy tinh
- Hình dạng: Ống tròn
- Kích thước: 3x10mm
', 6, 4),
(21, 'Điện Trở Nhiệt NTC8D-13', './assets/images/anh21.jpg', 'Linh kiện', 'Tính năng sản phẩm
- Điện trở là một loại linh kiện thụ động, đặc trưng cho khả năng cản trở dòng điện.
- Điện trở nhiệt hay nhiệt điện trở hay thermistor là loại điện trở có trở kháng thay đổi dưới quá trình nhiệt độ thay đổi, khác biệt so với các loại điện trở thông thường.
- Điện trở nhiệt NTC 8D-13 là một nghịch nhiệt trở, trở kháng của điện trở giảm khi nhiệt độ tăng.
- Hoạt động trong môi trường nhiệt độ cao và độ ẩm, cảm ứng nhiệt nhanh, độ nhạy cao
Ứng dụng
- Dùng làm cảm biến nhiệt trong các máy móc thiết bị, kiểm soát nhiệt độ và kiểm tra thiết bị gia đình
- Đo lường và kiểm tra nhiệt độ của ngành công nghiệp, y tế, bảo vệ môi trường, dự báo thời tiết, thiết bị chế biến thực phẩm, vv.
- Nó cũng được dùng trong phần mạch bảo vệ quá nhiệt trong các bộ cấp nguồn điện.
Thông số kĩ thuật
- Mã sản phẩm: NTC 8D-13
- Giá trị điện trở: 8 ohms
- Hệ số công suất: 13mW / ° C
- Hệ số thời gian nhiệt: 45S
- Nhiệt độ hoạt động: -55°C đến 200°C
- Chất liệu: hỗn hợp các oxit kim loại mangan, nikel, cobalt
- Khối lượng: 10g
', 3, 4),
(22, 'Trở 2512 5% 7R5-7.5R 1W', './assets/images/anh22.jpg', 'Linh kiện', 'Tính năng sản phẩm
- Điện trở là linh kiện được dùng nhiều nhất trong các mạch điện tử. Công dụng chính của nó là hạn chế hoặc điều chỉnh dòng điện và phân chia điện áp trong mạch điện.
Ứng dụng: 
-Hạn chế dòng điện, phân áp, phân cực transistor, tham gia vào các mạch lọc, mạch tạo dao động, mạch khuếch đại, ...
Thông số kĩ thuật
- Trị số điện trở: 7.5R
- Công suất định mức: 1W
- Sai số: 5%
- Kiểu chân: 2512
', 8, 4),
(23, 'Trở 5% 1/2W 2.2K', './assets/images/anh23.jpg', 'Linh kiện', 'Tính năng:
- Điện trở (Resistor) là một linh kiện điện tử thụ động với 2 tiếp điểm nối. Chức năng của nó dùng để điều chỉnh mức độ tín hiệu, hạn chế cường độ dòng điện chảy trong mạch. Dùng để chia điện áp, kích hoạt các linh kiện điện tử chủ động như transistor, tiếp điểm cuối trong đường truyền điện đồng thời có trong nhiều ứng dụng khác.
- Điện trở công suất sẽ giúp tiêu tán 1 lượng lớn điện năng chuyển sang nhiệt năng trong các hệ thống phân phối điện, trong các bộ điều khiển động cơ. Các điện trở thường có trở kháng cố định, ít bị thay đổi bởi nhiệt độ và điện áp hoạt động.
- Ứng dụng: Hạn chế dòng điện, phân áp, phân cực transistor, tham gia vào các mạch lọc, mạch tạo dao động, mạch khuếch đại, ...
Thông số kĩ thuật:
- Giá trị điện trở: 2.2K 
- Công suất định mức: 1/2W
- Sai số: 5%
- Kiểu đóng gói: DIP
', 7, 4),
(24, 'Tụ Hóa 1000uF 16V 10x20MM', './assets/images/anh24.jpg', 'Linh kiện', 'Tính năng sản phẩm 
- Tụ điện điện phân là một loại tụ điện có phân cực. 
- Anode được làm bằng kim loại đặc biệt được xử lý bề mặt để tạo lớp oxit cách điện
- Tụ điện có tác dụng ngăn cách dòng điện một chiều và cho phép dòng điện xoay chiều đi qua.
Khi mắc phối hợp với cuộn cảm sẽ hình thành mạch cộng hưởng
- Tụ điện có khả năng lọc điện áp xoay chiều sau khi đã được chỉnh lưu
Ứng dụng 
- Dùng trong mạch chỉnh lưu, mạch lọc, mạch tạo trễ, tạo dao động, ...
- Sử dụng trong các mạch điện tử.
- Tụ hoá (trị số lớn) thường lắp trong các mạch âm tần hoăc lọc nguồn điện có tần số thấp
Thông số kĩ thuật
- Trị số điện dung	:1000uF
- Điện áp định mức: 16V
- Loại tụ: Tụ hóa
- Khoảng cách chân: 5MM
- Kích thước: Dài 20 MM
- Đường kính: 10 MM
', 4, 4),
(25, 'Tụ Hóa 2200uF 63V 18x35mm FuSeng', './assets/images/anh25.jpg', 'Linh kiện', 'Tính năng sản phẩm
- Tụ điện là tập hợp của hai hay nhiều vật dẫn ngăn cách nhau bởi lớp điện môi
- Tụ điện dẫn điện xoay chiều và lọc phẳng điện áp một chiều.
- Khi mắc phối hợp với cuộn cảm sẽ hình thành mạch cộng hưởng
- Tụ điện có khả năng lọc điện áp xoay chiều sau khi đã được chỉnh lưu
Ứng dụng
- Dùng trong mạch chỉnh lưu, mạch lọc, mạch tạo trễ, tạo dao động, ...
- Sử dụng trong các mạch điện tử.
- Tụ hoá (trị số lớn) thường lắp trong các mạch âm tần hoăc lọc nguồn điện có tần số thấp
Thông số kĩ thuật
- Hãng SX: FuSeng
- Trị số điện dung	: 2200uF
- Điện áp định mức: 63V
- Loại tụ: Tụ hóa
- Kích thước: 19 x 35 mm
', 8, 4),
(26, 'Triết Áp Đơn B1M', './assets/images/anh26.jpg', 'Linh kiện', 'Tính năng sản phẩm
- Triết áp đơn thực chất là một điện trở có núm xoay kết nối vào thanh quét tạo ra hai phần có giá trị điện trở thay đổi theo vị trí thanh quét
- Triết áp Đơn được sử dụng rất nhiều trong mạch điện tử cần thay đổi giá trị về thông số như mạch tăng áp, hạ áp
- Sử dụng để thay đổi giá trị đầu vào, ra cho các mạch điện tử.
Thông số kĩ thuật
- Sai số: 10%
- Nhiệt độ hoạt động: -55oC – 125oC.
- Công suất: 2W
- Loại: Đơn, 3 chân
- Trọng lượng của triết áp đơn: 10g
- Loại điều chỉnh: tuyến tính
', 2, 4),
(27, 'Cuộn Cảm Vạch 220uH 1W 0510 CKL0510-221K', './assets/images/anh27.jpg', 'Linh kiện', 'Tính năng sản phẩm: 
- Trong kỹ thuật điện tử, cuộn cảm thường dùng để dẫn dòng điện một chiều, chặn dòng điện cao tần và khi mắc phối hợp với tụ điện sẽ hình thành mạch cộng hưởng. Người ta thường sử dụng dây dẫn để quấn thành cuộn cảm.
- Ứng dụng: Dùng để chế tạo ra các thiết bị như biến áp, relay, loa, micro, bên cạnh đó chúng còn được sử dụng trong các mạch lọc, mạch tạo dao động, ...
Thông số kĩ thuật:
- Trị số điện cảm: 220uH
- Loại cuộn cảm: vạch
- Kiểu đóng gói: DIP
', 1, 4),
(28, 'Cuộn Cảm 4.7uH 4.5x5MM CD54 ( 4R7-CD54)', './assets/images/anh28.jpg', 'Linh kiện', 'Tính năng sản phẩm: 
- Trong kỹ thuật điện tử, cuộn cảm thường dùng để dẫn dòng điện một chiều, chặn dòng điện cao tần và khi mắc phối hợp với tụ điện sẽ hình thành mạch cộng hưởng. Người ta thường sử dụng dây dẫn để quấn thành cuộn cảm.
- Ứng dụng: Dùng để chế tạo ra các thiết bị như biến áp, relay, loa, micro, bên cạnh đó chúng còn được sử dụng trong các mạch lọc, mạch tạo dao động, ...
Thông số kĩ thuật:
- Trị số điện cảm: 4.7uH
- Loại cuộn cảm: lõi ferrit
- Kiểu đóng gói: DIP
', 2, 4),
(29, 'Cuộn Cảm 0805 1uH', './assets/images/anh29.jpg', 'Linh kiện', 'Tính năng sản phẩm: 
- Trong kỹ thuật điện tử, cuộn cảm thường dùng để dẫn dòng điện một chiều, chặn dòng điện cao tần và khi mắc phối hợp với tụ điện sẽ hình thành mạch cộng hưởng. Người ta thường sử dụng dây dẫn để quấn thành cuộn cảm.
- Ứng dụng: Dùng để chế tạo ra các thiết bị như biến áp, relay, loa, micro, bên cạnh đó chúng còn được sử dụng trong các mạch lọc, mạch tạo dao động, ...
Thông số kĩ thuật:
- Trị số điện cảm: 1uH
- Loại cuộn cảm: vạch
- Kiểu đóng gói: SMD0805
', 5, 4),
(30, 'Diode Cầu 1A 1000V DBS10 SOP4', './assets/images/anh30.jpg', 'Linh kiện', 'Tính năng sản phẩm
- Diode cầu là một linh kiện điện tử được cấu tạo từ 2 lớp bán dẫn tiếp xúc với nhau
- Diode là 1 loại linh kiện bán dẫn chỉ cho phép dòng điện đi qua nó theo 1 chiều mà không theo chiều ngược lại
- Có 2 cực Anode và Cathode
- Diode cầu chỉ là một cách gọi khác khi bạn thực hiện lắp đồng thời 4 chiếc diode theo hình cầu
- Công dụng chính của diode cầu trong mạch điện là chỉnh lưu dòng xoay chiều thành dòng một chiều.
Ứng dụng
- Được sử dụng trong nhiều các mạch điện tử : mạch nguồn , mạch tạo dao động , mạch công suất ,...
- Phù hợp trong nhiều lĩnh vực học tập , sủa chữa và nghiên cứu điện tử.
- Tùy theo như cầu mà chúng ta chọn cho các sản phẩm phù hợp
Thông số kỹ thuật
- Mã IC: DBS10
- Điện áp max: 1000V
- Dòng điện max: 1A
- Dòng ngược: 500uA
- Dải nhiệt độ hoạt động: -55oC ~ 150oC
- Trọng lượng: 1g
- Kiểu chân: SOP
- Số chân: 4
- Kích thước: 8,8 x 6,5 x 3,4mm
', 1, 5),
(31, 'Diode Zener 1W 6.8V DIP 1N4736A', './assets/images/anh31.jpg', 'Linh kiện', 'Diode Zener 1W 6.8V DIP 1N4736A (5c)
 Diode zener còn gọi là điốt ổn áp, là một loại diode bán dẫn làm việc ở chế độ phân cực ngược trên vùng điện áp đánh thủng
Tính năng:
- Diode zener còn gọi là điốt ổn áp, là một loại diode bán dẫn làm việc ở chế độ phân cực ngược trên vùng điện áp đánh thủng.
- Nó được chế tạo sao cho khi phân cực ngược thì diode zener sẽ ghim một mức điện áp gần cố định bằng giá trị ghi trên diode, làm ổn áp cho mạch điện.
Thông số kĩ thuật:
- Điện áp: 6.8V 
- Công suất: 1W 
- Kiểu đóng gói: DIP
', 4, 5),
(32, 'Diode SS26 SMA 2A 60V', './assets/images/anh32.jpg', 'Linh kiện', 'Diode SS26 SMA 2A 60V (5c)
Đây là loại diode có thời gian phục hồi nhanh. Đóng cắt được các xung có tần số rất cao và các đường truyền tín hiệu xung trong các mạch tín hiệu.
Tính năng
- Diode đóng cắt tốc độ cao, dòng điện, điện áp thấp.
- Đây là loại diode có thời gian phục hồi nhanh. Đóng cắt được các xung có tần số rất cao và các đường truyền tín hiệu xung trong các mạch tín hiệu.
- Ứng dụng: Những diode này thường được sử dụng để chỉnh lưu trong các bộ nguồn xung, các thiết bị điện tử cao tần.
- Ngoài chức năng đóng cắt được tần số cao nó còn có chức năng của của một diode thông thường.
Thông số kĩ thuật:
- Điện áp: 60V 
- Dòng điện: 2A
- Kiểu đóng gói: SMA
', 3, 5),
(33, 'MJE13003 E13003 TO126 NPN 400V 1.5A', './assets/images/anh33.jpg', 'Linh kiện', 'Tính năng sản phẩm
- Transistor hay còn gọi là tranzito là một loại linh kiện bán dẫn chủ động
- Transistor được tạo thành từ hai chất bán dẫn điện
- Khi ghép một bán dẫn điện âm nằm giữa hai bán dẫn điện dương ta được một PNP Transistor - ghép một bán dẫn điện dương nằm giữa hai bán dẫn điện âm ta được một NPN Transistor.
- Thường được sử dụng như một phần tử khuếch đại hay khóa điện tử
- Transistor cũng được kết hợp thành mạch tích hợp (IC)
Ứng dụng
- Sử dụng nhiều trong ứng dụng tương tự và số như: mạch khuếch đại, điều chỉnh điện áp, tạo dao động và điều khiển tín hiệu.
- Được sử dụng làm sò công suất trong các bộ nguồn adapter nhỏ như nguồn cấp cho Modem, Router, Camera,...
- Tùy theo mục đích và nhu cầu phù hợp mà sản phẩm có thể chọn được sản phẩm phù hợp
Thông số kỹ thuật:
- Loại transistor: NPN
- Dòng điện Ic max: 1.5A
- Điện áp Vce max: 400V
- Kiểu đóng gói: TO-126
- Kiểu chân: Xuyên lỗ
- Số chân: 3
- Công suất max: 40W
- Nhiệt độ min: -65 °C
- Nhiệt độ max: 150 °C
', 3, 5),
(34, 'D882 TO126 TRANS NPN 3A 30V (DIP)', './assets/images/anh34.jpg', 'Linh kiện', 'Tính năng:
- Transistor là linh kiện bán dẫn có cấu tạo gồm 2 lớp tiếp giáp P-N, gồm 3 cực là E (Emiiter), B (Base), C (Collector), chúng là một thành phần không thể thiếu trong các mạch điện cũng như cấu tạo nên các chip điện tử ngày nay
- Ứng dụng: Đóng cắt mạch điện, tạo ra IC tích hợp, mạch dao động, mạch khuếch đại, ...
Thông số kĩ thuật:
- Điện áp CE max chịu được khi B hở: 30V
- Dòng IC tối đa: 3A
- Đóng gói: TO126
- Loại: Transistor NPN
', 5, 5),
(35, 'AO3401 SOT23-3 MOSFET P-1CH 4A 30V(A19T,X1,X1GL)', './assets/images/anh35.jpg', 'Linh kiện', 'Tính năng sản phẩm
- MOSFET : transistor hiệu ứng trường được sử dụng rất phổ biến trong các mạch số và các mạch tương tự.
- Transistor MOSFET được xây dựng dựa trên lớp chuyển tiếp Oxit Kim loại và bán dẫn (ví dụ Oxit Bạc và bán dẫn Silic)
- Mosfet có nguyên tắc hoạt động dựa trên hiệu ứng từ trường để tạo ra dòng điện.
Ứng dụng
- Mosfet được sử dụng nhiều trong các mạch nguồn Monitor, nguồn máy tính.
- Tương tự như Transistor dùng để Đóng - Mở dòng điện nhưng chịu dòng lớn hơn ( vài Ampe là chuyện nhỏ ).
', 6, 5),
(36, 'Raspberry pi rp2040 plus 4mb flash', './assets/images/anh36.jpg', 'Máy tính nhúng', 'RASPBERRY PI RP2040 Plus 4MB Flash tích hợp bộ vi điều khiển RP2040, với bộ xử lý Arm Cortex M0+ lõi kép chạy lên đến 133 MHz và các chân GPIO đa chức năng 26x, có Flash 4 MB trên bo mạch, đầu nối USB-C, đầu cắm sạc và chip DC-DC hiện tại cao hơn.  
Thông số kĩ thuật:
- Bộ xử lý lõi kép Arm Cortex M0+, xung clock linh hoạt lên đến 133MHZ. 
- 264KB SRAM và 4MB/16MB bộ nhớ Flash tích hợp.
- Đầu kết nối USB.
- Đầu sạc/xả pin lithium, thích hợp cho thiết bị di động.
- Chip DC-DC trên bo mạch MP28164, chip tăng áp DC-DC hiệu suất cao, dòng tải tối đa 2A.
- Chế độ ngủ và ngủ công suất thấp.
- Lập trình kéo và thả sử dụng bộ lưu trữ dung lượng lớn qua USB.
- 26 × chân GPIO đa chức năng.
- 2 × SPI, 2 × I2C, 2 × UART, 3 × 12-bit ADC, 16 × kênh PWM có thể điều khiển.
- 8 × máy trạng thái I/O có thể lập trình (PIO) để hỗ trợ ngoại vi tùy chỉnh.
- Tích hợp clock và timer trên chip.
- Hỗ trợ C/C++，MicroPython: SDK toàn diện.
', 1, 6), 
(37, 'Raspberry pi pico rp2040', './assets/images/anh37.jpg', 'Máy tính nhúng', 'Raspberry Pi Pico là mạch vi điều khiển hiệu năng cao, chi phí thấp được xây dựng dựa trên chip RP2040 – chip vi điều khiển được thiết kế bởi chính Raspberry Pi. Đây là bo mạch vi điều khiển đầu tiên của Raspberry Pi, được thiết kế đặc biệt cho tính toán vật lý. Bộ vi điều khiển là một loại thiết bị khác với Máy tính bo mạch đơn (SBC – Sigle Board Computer) như Raspberry Pi 4 và các thế hệ trước của Pi, chúng không chạy hệ điều hành và chúng thường được lập trình để chỉ thực hiện một tác vụ – mặc dù tác vụ đó có thể khá phức tạp và thú vị!
Chúng hoàn hảo để thử nghiệm với phần cứng và sử dụng như bộ não của các thiết bị, máy móc. Nó có thể được lập trình lại dễ dàng qua USB từ Raspberry Pi hoặc máy tính khác sử dụng C/C++ hoặc MicroPython.
Thông số kĩ thuật:
- Chip vi điều khiển RP2040 thiết kế bởi Raspberry Pi tại Anh Quốc
- Bộ xử lý Dual-core ARM Cortex M0+, xung nhịp tối đa 133 MHz
- 264kB SRAM, 2MB Flash memory
- Hỗ trợ USB 1.1 chế độ Host và Device
- Chế độ ngủ Low-power và công suất thấp
- Lập trình kéo thả qua cổng USB
- 26 chân GPIO
- 2×SPI, 2×I2C, 2×UART, 3×12-bit ADC, 16×PWM
- Hỗ trợ Realtime clock (RTC)
- Cảm biến nhiệt độ
- 8× PIO để hỗ trợ thiết bị ngoại vi tùy chỉnh
', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `slider_img` varchar(150) NOT NULL,
  `slider_link` varchar(50) NOT NULL,
  `slider_title` varchar(50) NOT NULL,
  `slider_subtitle` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `slider_img`, `slider_link`, `slider_title`, `slider_subtitle`, `description`, `order`) VALUES
(1, './assets/images/slide1.png', 'index.php?quanly=cuahang', ' ', ' ', '', 1),
(2, './assets/images/slide2.png', '', ' ', ' ', '', 3),
(3, './assets/images/slide3.png', 'index.php?quanly=gioithieu', ' ', ' ', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_phone` varchar(10) NOT NULL,
  `user_address` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `accountName_user` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_role` int(11) NOT NULL DEFAULT 0,
  `point_available` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `user_name`, `user_phone`, `user_address`, `user_email`, `accountName_user`, `user_password`, `user_role`, `point_available`) VALUES
(1, 'admin', '0931462697', 'HN', 'tienltps24556@ptit.edu.vn', 'admin', 'admin', 1, 1133306),
(5, 'Anh Cuốc', '0917972553', 'HCM', 'cuoc123@gmail.com', 'cuoc123', '12345678', 0, 0),
(6, 'Trung Hiếu', '0585818504', 'HN', 'hieu123@gmail.com', 'hieu104@gmail.com', '12345678', 1, 0),
(9, 'abc', '0917972553', 'HN', 'trunghieu1040203@gmail.com', 'hieutran123', '123456', 1, 0),
(10, 'Trần Trung Hiếu', '0585818504', 'HCM', 'trunghieu1042003@gmail.com', 'abc', 'hieutran2003', 0, 0),
(11, 'demowebabc', '0364877525', 'HN', 'demoweb@gmail.com', 'demoweb', 'demoweb', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_bill`),
  ADD KEY `FK_bill_user` (`id_user`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `FK_comment_product` (`id_product`),
  ADD KEY `FK_comment_user` (`id_user`);

--
-- Indexes for table `detailbill`
--
ALTER TABLE `detailbill`
  ADD PRIMARY KEY (`id_detailBill`),
  ADD KEY `FK_detailBill_detailProduct` (`id_detailProduct`),
  ADD KEY `FK_detailBill_bill` (`id_bill`);

--
-- Indexes for table `detailproduct`
--
ALTER TABLE `detailproduct`
  ADD PRIMARY KEY (`id_detailProduct`),
  ADD KEY `FK_detailProduct_product` (`id_product`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `FK_product_category` (`id_category`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id_bill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `detailbill`
--
ALTER TABLE `detailbill`
  MODIFY `id_detailBill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `detailproduct`
--
ALTER TABLE `detailproduct`
  MODIFY `id_detailProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `FK_bill_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_comment_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_comment_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `detailbill`
--
ALTER TABLE `detailbill`
  ADD CONSTRAINT `FK_detailBill_bill` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id_bill`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_detailBill_detailProduct` FOREIGN KEY (`id_detailProduct`) REFERENCES `detailproduct` (`id_detailProduct`);

--
-- Constraints for table `detailproduct`
--
ALTER TABLE `detailproduct`
  ADD CONSTRAINT `FK_detailProduct_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_product_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
