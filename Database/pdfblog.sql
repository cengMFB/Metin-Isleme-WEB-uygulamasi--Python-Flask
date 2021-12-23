-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 23 Ara 2021, 08:28:30
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `pdfblog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `aname` text NOT NULL,
  `ausername` text NOT NULL,
  `apassword` text NOT NULL,
  `aemail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `admins`
--

INSERT INTO `admins` (`id`, `aname`, `ausername`, `apassword`, `aemail`) VALUES
(2, 'recep', 'recep123', '12345', 'kocarecep95@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pdfs`
--

CREATE TABLE `pdfs` (
  `id` int(11) NOT NULL,
  `gonderici` text NOT NULL,
  `title` text NOT NULL,
  `text` text NOT NULL,
  `projeozeti` text NOT NULL,
  `anahtar` text NOT NULL,
  `öğrencino` text NOT NULL,
  `öğrencino2` text NOT NULL,
  `öğrenciad` text NOT NULL,
  `öğrenciad2` text NOT NULL,
  `dönem` text NOT NULL,
  `dersadi` text NOT NULL,
  `tarih` text NOT NULL,
  `öğretimtürü` text NOT NULL,
  `öğretimtürü2` text NOT NULL,
  `baslik` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pdfs`
--

INSERT INTO `pdfs` (`id`, `gonderici`, `title`, `text`, `projeozeti`, `anahtar`, `öğrencino`, `öğrencino2`, `öğrenciad`, `öğrenciad2`, `dönem`, `dersadi`, `tarih`, `öğretimtürü`, `öğretimtürü2`, `baslik`, `created_date`) VALUES
(93, 'recepp', 'Kargo Dağıtım', '', 'Kargo dağıtım projesinde masaüstü uygulama yapmamız istenmiştir. Bulut platformu, API, \nthread, dikstra algoritmaları kullanmamız gerekmektedir. Uygulamanın işleyişinde 2 adet \narayüz bulunması gerekmektedir. 1. arayüzde teslimat bilgileri login girişi ; 2.arayüzde ise \nharita ile ilgili bilgiler yer almaktadır. Teslim edilecek kargoların konumları harita üzerine \ntıklanarak ve ayrıca manuel olarak da girilebilecek şekilde olmalıdır. Kullanıcının konum \nbilgileri harita üzerinden alınacaktır ve elle de giriş yapılabilmesi sağlanmalıdır.  Ayrıca bu \nbilgiler masaüstü  uygulaması kullanılarak girilecek olup bulut veri tabanında tutulması \ngerekmektedir. Kullanıcı konum bilgilerini alarak kargoları en kısa yoldan ve dolayısıyla en \nkısa süreden teslim etmesi gerekmektedir. Bulut platformunda ise veri tabanı oluşturulup \nkargoya ait bilgiler tutulmalıdır ve yazılan API ile bulut platformunun haberleşmesi \ngerekmektedir. \n \nProjede nesneye yönelik programlama  , API işlemleri , thread mantığının  geliştirilmesi \namaçlanmaktadır. Uygulama masaüstü olarak tasarlanmıştır. Yazdığımız API ile \nuygulamamız ve bulut veri tabanımız haberleşmektedir. Uygulamanın amacı verilen teslimat \nbilgilerini oluşturup veri tabanındaki adrese en kısa yoldan teslim etmektir. Projede C# \ndiliyle yazılmış olup geliştirme ortamı olarak Visiual Studio kullanılmıştır.', 'Anahtar  kelimeler: APİ, Cloud Platform, Thread, Dijikstra, Map.', 'Öğrenci No: 190201014 \n\n', 'Öğrenci No: 190201060 \n\n', 'Adı Soyadı: Recep KOCA \n\n', 'Adı Soyadı: Furkan BEYAZ \n\n', 'Bahar Dönemi', 'ARAŞTIRMA PROBLEMLERİ', ': 01.06.2018 \n\n \n\n \n \n \n\n \n \n \n\n \n \n \n \n \n \n\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n\n \n\n \n \n \n \n \n\n \n\n \n\n \n\n \n\n \n\n \n\n', '1', '1', ' \n \n\n \n\n \n\nBULUT SİSTEMLERİ KULLANILARAK KARGO DAĞITIM \nUYGULAMASI  PROGRAMLAMA \n\n', '2021-12-21 20:25:55'),
(94, 'recepp', 'Sudoku', '', 'Sudoku mantık bazlı , birleştirici sayı yerleştirme bulmacasıdır. Klasik sudokuda ama. , 9*9 \nmatrisi rakamlarla doldurmaktır. Böylece her sütun , her satır  ve matrisi oluşturan dokuz 3*3 \nalt matrisin her biri 1’den 9’a kadar olan tüm rakamları içerir. Bulmaca ayarlayıcı , iyi \nhazırlanmış bir bulmaca için tek bir çözümü olan , kısmen tamamlanmış bir matris sağlar. \nSumari sudoku bulmacaları , örtüşen beş sudoku matrisinden oluşur. Standart sudoku \nkuralları , her 9*9 matris için geçerlidir. Samurai sudokudaki bulmacalar , tahmin etmeye \ngerek kalmadan saf mantıkla bulunabilecek benzersiz bir çözüme sahiptir. Bu projede ise \nmultithread yapısını kullanarak verilecek samurai sudoku üzerinden çözüm bulmanız \nistenmektedir. Sudoku başlangıç değerleri .txt uzantılı dosyada verilecektir. Verilen değerler \ndinamik olarak uygulamaya aktarılacaktır.  Birinci ister olarak verilen samurai sudoku \niçindeki her bir sudoku için bir başlangıç noktası seçerek 5 thread ile çözüme ulaşmamız \nbeklenmektedir. Threadler eşzamanlı çözüme başlayacaktır. Bu sudoku içerisinde \nsenkronizasyon problemi göz önünde bulundurulmalıdır.İkinci ister olarak verilen samurai \nsudoku içindeki her bir sudoku için 2 tane başlangıç noktası seçerek 10 thread ile çözüme \nulaşmamız beklenmektedir. Üçüncü ister olarak ise bu 2 ister arasında zaman ve bulduğu \nçözüm karesi arasında ilişki grafiği çizdirilecektir.', 'Anahtar  kelimeler: Thread, Multithread, Sudoku, Backtraking.', 'Öğrenci No: 190202014 \n\n', 'Öğrenci No: 190202060 \n\n', 'Adı Soyadı: Aziz Can ÖZ \n\n', 'Adı Soyadı: Ahmet YAVUZ \n\n', 'Güz Dönemi', 'ARAŞTIRMA PROBLEMLERİ', ': 10.09.2020 \n\n \n\n \n \n \n\n \n \n \n\n \n \n \n \n \n \n\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n\n \n\n \n \n \n \n \n\n \n\n \n\n \n\n \n\n \n\n \n\n', '2', '2', ' \n \n\n \n\n \n\nMULTİTHREAD KULLANILARAK SAMURAİ SUDOKU OYUNU \nPROGRAMLAMA   \n\n', '2021-12-21 20:26:22'),
(95, 'recepp', 'deneme', '', 'Bu  çalışmanın  amacı,  iletim  hatlarında  arıza  yeri  tespiti  için  empedansa  dayalı \nalgoritmaları  incelemek  ve  seri  kompanze  edilmiş  hatlar  için  yeni  bir  algoritma \ngeliştirmektir.  \n\nÖncelikle,  tek  yada iki baradan  alınan  ölçümleri kullanarak arıza yerini belirleyen \ntemel algoritmalar tanımlanmıştır. Örnek test sistemleri üzerinde sistem ve arızaya \nilişkin  parametreler  değiştirilerek,  temel  arıza  yeri  algoritmalarından  elde  edilen \nsonuçlar  karşılaştırılmıştır.  Sistem  parametreleri  hat  modeli ve sistemin homojen \nolup olmama durumlarını kapsarken, arızaya ilişkin parametreler arıza tipi, konumu \nve direnci olarak alınmıştır. \n\nSeri  kompanze  edilmiş  iletim  hatlarında  empedansa  dayalı  geliştirilmiş  temel \nalgoritmaların  yeterli  olmadığı,  bu  duruma  özel  algoritmaların  gerekliliği  bir \nuygulama ile  gösterilmiştir.  Bu özel algoritmalar incelenerek kısaca özetlenmiştir. \nBuradan  hareketle,  iletim  hatlarında  seri  kompanzasyon  durumunu  dikkate  alan \nperformansa  dayalı  yeni  bir  arıza  yeri  tespiti  algoritması  bu  tez  kapsamında \ngeliştirilmiştir. \n\nGeliştirilen  bu  algoritma,  hat  bilgileri  ve  iki  baradan alınan ölçümleri kullanarak \niteratif  olarak arıza yerini hesaplayan,  bütün örneklerdeki sonuçları karşılaştırarak \nminimum hata ile bir sonuca ulaşan bir algoritmadır. Önerilen algoritma, hem temel \nalgoritmalar hem de seri kompanze edilmiş iletim hatları için tasarlanmış, iki farklı \nalgoritma  türü  ile  çeşitli  test  sistemleri  üzerinde  denenmiş,  alınan  sonuçlar \nkarşılaştırılmıştır.  Test  sistemleri DigSILENT üzerinde modellenmiş ve kısadevre \nanalizleri  yapılmış  olup,  bu  sistemden  alınan akım ve gerilim bilgileri MATLAB \nortamında kodlanan algoritmalar için kullanılmıştır.', 'Anahtar  kelimeler: Arıza Yeri  Bulma Algoritmaları,  İletim  Hatları,  MOV, PMU, \nSeri Kapasitör.', 'Öğrenci No: 190201013 \n\n', 'Öğrenci No: 190201060 \n\n', 'Adı Soyadı: Teyfik CANER \n\n', 'Adı Soyadı: Hasan ÇOLAK \n\n', 'Bahar Dönemi', 'ARAŞTIRMA PROBLEMLERİ', ': 01.06.2018 \n\n', '1', '1', ' \nİLETİM  HATLARINDA  EMPEDANS  TABANLI  ARIZA  YERİ  TESPİTİ \nİÇİN YENİ BİR YAKLAŞIM  \n\n', '2021-12-22 08:26:08'),
(96, 'akın', 'deneme1', '', 'Kargo dağıtım projesinde masaüstü uygulama yapmamız istenmiştir. Bulut platformu, API, \nthread, dikstra algoritmaları kullanmamız gerekmektedir. Uygulamanın işleyişinde 2 adet \narayüz bulunması gerekmektedir. 1. arayüzde teslimat bilgileri login girişi ; 2.arayüzde ise \nharita ile ilgili bilgiler yer almaktadır. Teslim edilecek kargoların konumları harita üzerine \ntıklanarak ve ayrıca manuel olarak da girilebilecek şekilde olmalıdır. Kullanıcının konum \nbilgileri harita üzerinden alınacaktır ve elle de giriş yapılabilmesi sağlanmalıdır.  Ayrıca bu \nbilgiler masaüstü  uygulaması kullanılarak girilecek olup bulut veri tabanında tutulması \ngerekmektedir. Kullanıcı konum bilgilerini alarak kargoları en kısa yoldan ve dolayısıyla en \nkısa süreden teslim etmesi gerekmektedir. Bulut platformunda ise veri tabanı oluşturulup \nkargoya ait bilgiler tutulmalıdır ve yazılan API ile bulut platformunun haberleşmesi \ngerekmektedir. \n \nProjede nesneye yönelik programlama  , API işlemleri , thread mantığının  geliştirilmesi \namaçlanmaktadır. Uygulama masaüstü olarak tasarlanmıştır. Yazdığımız API ile \nuygulamamız ve bulut veri tabanımız haberleşmektedir. Uygulamanın amacı verilen teslimat \nbilgilerini oluşturup veri tabanındaki adrese en kısa yoldan teslim etmektir. Projede C# \ndiliyle yazılmış olup geliştirme ortamı olarak Visiual Studio kullanılmıştır.', 'Anahtar  kelimeler: APİ, Cloud Platform, Thread, Dijikstra, Map.', 'Öğrenci No: 190201014 \n\n', 'Öğrenci No: 190201060 \n\n', 'Adı Soyadı: Recep KOCA \n\n', 'Adı Soyadı: Furkan BEYAZ \n\n', 'Bahar Dönemi', 'ARAŞTIRMA PROBLEMLERİ', ': 01.06.2018 \n\n \n\n \n \n \n\n \n \n \n\n \n \n \n \n \n \n\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n\n \n\n \n \n \n \n \n\n \n\n \n\n \n\n \n\n \n\n \n\n', '1', '1', ' \n \n\n \n\n \n\nBULUT SİSTEMLERİ KULLANILARAK KARGO DAĞITIM \nUYGULAMASI  PROGRAMLAMA \n\n', '2021-12-22 09:05:06'),
(97, 'akın', 'deneme2', '', 'Sudoku mantık bazlı , birleştirici sayı yerleştirme bulmacasıdır. Klasik sudokuda ama. , 9*9 \nmatrisi rakamlarla doldurmaktır. Böylece her sütun , her satır  ve matrisi oluşturan dokuz 3*3 \nalt matrisin her biri 1’den 9’a kadar olan tüm rakamları içerir. Bulmaca ayarlayıcı , iyi \nhazırlanmış bir bulmaca için tek bir çözümü olan , kısmen tamamlanmış bir matris sağlar. \nSumari sudoku bulmacaları , örtüşen beş sudoku matrisinden oluşur. Standart sudoku \nkuralları , her 9*9 matris için geçerlidir. Samurai sudokudaki bulmacalar , tahmin etmeye \ngerek kalmadan saf mantıkla bulunabilecek benzersiz bir çözüme sahiptir. Bu projede ise \nmultithread yapısını kullanarak verilecek samurai sudoku üzerinden çözüm bulmanız \nistenmektedir. Sudoku başlangıç değerleri .txt uzantılı dosyada verilecektir. Verilen değerler \ndinamik olarak uygulamaya aktarılacaktır.  Birinci ister olarak verilen samurai sudoku \niçindeki her bir sudoku için bir başlangıç noktası seçerek 5 thread ile çözüme ulaşmamız \nbeklenmektedir. Threadler eşzamanlı çözüme başlayacaktır. Bu sudoku içerisinde \nsenkronizasyon problemi göz önünde bulundurulmalıdır.İkinci ister olarak verilen samurai \nsudoku içindeki her bir sudoku için 2 tane başlangıç noktası seçerek 10 thread ile çözüme \nulaşmamız beklenmektedir. Üçüncü ister olarak ise bu 2 ister arasında zaman ve bulduğu \nçözüm karesi arasında ilişki grafiği çizdirilecektir.', 'Anahtar  kelimeler: Thread, Multithread, Sudoku, Backtraking.', 'Öğrenci No: 190202014 \n\n', 'Öğrenci No: 190202060 \n\n', 'Adı Soyadı: Aziz Can ÖZ \n\n', 'Adı Soyadı: Ahmet YAVUZ \n\n', 'Güz Dönemi', 'ARAŞTIRMA PROBLEMLERİ', ': 10.09.2020 \n\n \n\n \n \n \n\n \n \n \n\n \n \n \n \n \n \n\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n\n \n\n \n \n \n \n \n\n \n\n \n\n \n\n \n\n \n\n \n\n', '2', '2', ' \n \n\n \n\n \n\nMULTİTHREAD KULLANILARAK SAMURAİ SUDOKU OYUNU \nPROGRAMLAMA   \n\n', '2021-12-22 09:05:43'),
(98, 'akın', 'deneme3', '', 'Bu projede bir labirent oyunu yapmamız istenmiştir. Genel olarak içerikten bahsedecek \nolursak azman ve gargamel olmak üzere 2 tane düşman karakter ; gözlüklü şirin , tembel \nşirin ve şirine olarak ise oyuncu karakterleri mevcuttur. Şirine bir noktada kurtarılmayı \nbeklemektedir. Oyunda belirtilen noktada seçimimize göre bir şirin ortaya çıkmaktadır. Buna \nbağlı olarak yine seçimlerimize bağlı olarak kapılardan düşman karakter veya karakterler \nortaya çıkmaktadır. Her şirinin ve her düşman karakterin kendine özgü ilerleyişi vardır. Oyun \nesnasında altın ve mantarlar ortaya çıkmaktadır. Şirin bunlardan birini alması halinde puan \nkazanmaktadır. Labirent oyununda amaç engelleri aşarak  düşman karakterlere karşı puanını \nbitirmeden şirineye varmaktır. \n \nProjede nesneye yönelik programlama  , veri yapıları ve algoritmaları alanlarının \ngeliştirilmesi amaçlanmaktadır. Bizden içinde labirentin ve düşman karakterlerin hangi \nkapıdan girmesi gerektiği bilgileri bulunan  dosyadan okuyacağımız bir grafik tasarlanmamız \nbeklenmektedir. Oyunda düşman karakterlerin oyuncuya giden en kısa yolu bulmak için \ndijikstra algoritması kullanılması zorunludur.Bu algoritmayla azman veya gargamel seçilen \nşirine giden en kısa yolu bulup o yol üzerinden hareket etmektedir. Proje Java diliyle \nyazılmış olup geliştirme ortamı olarak Netbeans kullanılmıştır.', 'Anahtar  kelimeler: Thread, Dijikstra, Maze, KeyListenner,Puan,Java,OOP.', 'Öğrenci No: 190202016 \n\n', 'Öğrenci No: 190202068 \n\n', 'Adı Soyadı: Ahmet DEMİR \n\n', 'Adı Soyadı: Mehmet YILDIZ \n\n', 'Güz Dönemi', 'BİTİRME PROJESİ', ': 28.09.2021 \n\n \n\n \n \n \n\n \n \n \n\n \n \n \n \n \n \n\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n\n \n\n \n\n \n \n \n \n \n\n \n\n \n\n \n\n \n\n \n\n \n\n', '2', '2', ' \n \n\n \n\n \n\nDİJİKSTRA ALGORİTMASI KULLANILARAK LABİRENT  OYUNU \nPROGRAMLAMA   \n\n', '2021-12-22 09:05:51'),
(99, 'akın', 'deneme5', '', 'Trawler adını, tarama yöntemiyle balıkçılık yapmalarından almış olan bu \ntekneler 1960 lı yıllara doğru gezilerde kullanılmak amacıyla üretildi.  \nTipik balıkçı teknesi karakteri ve modern yatçılık dizaynlarının \nkombinasyonu kullanılarak; ortaya klasik tasarımı sayesinde nostaljik bir \ngörüntü veren, sağlam, her yönden ekonomik, bakımı kolay ve konforlu bir \ndeplasman teknesi çıktı.', 'Anahtar  kelimeler: Traweler, Tasarım, Gemi ve Yat, Endaze, İç Mekan.', 'Öğrenci No: 190201016 \n\n', 'Öğrenci No: 190202068 \n\n', 'Adı Soyadı: Recep KOCA \n\n', 'Adı Soyadı: Cihat KARATAŞ \n\n', 'Güz Dönemi', 'BİTİRME PROJESİ', ': 05.09.2020 \n\n \n\n \n \n \n\n \n \n \n\n \n \n \n \n \n \n\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n\n \n\n \n \n \n \n \n\n \n\n \n\n \n\n \n\n \n\n \n\n', '1', '2', 'TRAWELER YAT PROJESİ  \n \n\n', '2021-12-22 09:06:04');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`) VALUES
(7, 'Recep KOCA', 'recepp', '$5$rounds=535000$MefB9bq6zSaSHt4J$Mrx5A4CqHI8BchqvlzReOmXCjeQbmd/P6IA1l8QEhbA', 'kocarecep95@gmail.com'),
(12, 'Furkan BEYAZ', 'furkann', '$5$rounds=535000$4rzonpbZkYlPuXMI$Fm8psl7MqcAH6JJywUEDx8hUTANZtVoRgR7Dwc7WijC', 'furkanve747@gmail.com'),
(16, 'Ahmet DEMİR', 'ahmet12', '$5$rounds=535000$0ULXEiKA7w.cgdGo$1OwsX6cD6dYoNJ7U6YFNmhjAHGFxCA9WKXaFLHE6I29', 'ali@gmail.com'),
(18, 'Ali AKIN', 'akın', '$5$rounds=535000$wGeY3Qi3m1X.YYMl$aKA0O/i3RuxRmLxWg8U.fkwwYZTaXX3lkMGD1JrpMu.', 'ali@gmail.com');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pdfs`
--
ALTER TABLE `pdfs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `pdfs`
--
ALTER TABLE `pdfs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
