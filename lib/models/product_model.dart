class Product {
  final String name;
  final String description;
  final String image;
  final String price;

  Product({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
  });
}

final List<Product> coffeeProducts = [
  Product(
    name: 'Espresso',
    description: 'เอสเปรสโซ่เข้มข้นที่ทำจากเมล็ดกาแฟคุณภาพสูง รสชาติเข้มข้นเต็มรสสัมผัส มีครีมม่าที่หนาแน่นและกลิ่นหอมอบอวล เหมาะสำหรับคนรักกาแฟตัวจริง',
    image: 'assets/images/espresso.png',
    price: '100 ฿',
  ),
  Product(
    name: 'Americano',
    description: 'อเมริกาโน่สดชื่นที่เบากว่าเอสเปรสโซ่ แต่ยังคงรสชาติที่เข้มข้นและกลิ่นหอม ใช้เมล็ดกาแฟคุณภาพสูง เหมาะสำหรับการดื่มในทุกๆ ช่วงเวลา',
    image: 'assets/images/americano.png',
    price: '90 ฿',
  ),
  Product(
    name: 'Latte',
    description: 'ลาเต้ที่นุ่มนวลและเข้มข้น ผสมผสานระหว่างเอสเปรสโซ่และนมสดอย่างลงตัว ทำให้ได้รสชาตินุ่มและกลิ่นหอมของกาแฟ เหมาะสำหรับการดื่มยามเช้า',
    image: 'assets/images/latte.png',
    price: '110 ฿',
  ),
  Product(
    name: 'Cappuccino',
    description: 'คาปูชิโน่ที่มีฟองนมนุ่มหนา ผสมผสานระหว่างเอสเปรสโซ่ นม และฟองนมอย่างลงตัว ทำให้ได้รสชาติเข้มข้นและกลิ่นหอมอบอวล',
    image: 'assets/images/cappuccino.png',
    price: '120 ฿',
  ),
];

final List<Product> teaProducts = [
  Product(
    name: 'Green Tea',
    description: 'ชาเขียวที่สดชื่นและหอมสดใส ทำจากใบชาคุณภาพสูง มีรสชาติที่นุ่มนวลและกลิ่นหอมของใบชา เหมาะสำหรับการดื่มในทุกๆ ช่วงเวลา',
    image: 'assets/images/green_tea.jpg',
    price: '80 ฿',
  ),
  Product(
    name: 'Black Tea',
    description: 'ชาดำที่มีรสชาติเข้มข้นและกลิ่นหอมของใบชา ทำจากใบชาคุณภาพสูง ผ่านกระบวนการหมักที่พิถีพิถัน เหมาะสำหรับการดื่มในช่วงบ่าย',
    image: 'assets/images/black_tea.jpg',
    price: '70 ฿',
  ),
  Product(
    name: 'Thai Tea',
    description: 'ชาไทยรสชาติเข้มข้นและกลิ่นหอมของสมุนไพรไทย ผสมผสานกับนมข้นหวานอย่างลงตัว ทำให้ได้รสชาติที่หวานมันและกลิ่นหอมเฉพาะตัว',
    image: 'assets/images/thai_tea.jpg',
    price: '85 ฿',
  ),
  Product(
    name: 'Oolong Tea',
    description: 'ชาอู่หลงที่มีรสชาติเข้มข้นและกลิ่นหอมของใบชา ทำจากใบชาคุณภาพสูง ผ่านกระบวนการหมักที่พิถีพิถัน เหมาะสำหรับการดื่มในช่วงบ่าย',
    image: 'assets/images/oolong_tea.jpg',
    price: '90 ฿',
  ),
];

final List<Product> FruitProducts = [
  Product(
    name: 'Milkshake',
    description: 'มิลค์เชครสหวานที่ทำจากนมสดและไอศกรีมคุณภาพสูง ผสมผสานกับผลไม้สดหรือช็อกโกแลต ทำให้ได้รสชาติที่หวานมันและเนื้อสัมผัสที่เนียนนุ่ม',
    image: 'assets/images/milkshake.jpg',
    price: '150 ฿',
  ),
  Product(
    name: 'Hot Chocolate',
    description: 'ช็อกโกแลตร้อนที่ทำจากช็อกโกแลตแท้คุณภาพสูง ผสมผสานกับนมสดอย่างลงตัว ทำให้ได้รสชาติที่เข้มข้นและกลิ่นหอมของช็อกโกแลต เหมาะสำหรับการดื่มในช่วงเย็น',
    image: 'assets/images/hot_chocolate.jpg',
    price: '130 ฿',
  ),
  Product(
    name: 'Smoothie',
    description: 'สมูทตี้ผลไม้ที่ทำจากผลไม้สดคุณภาพสูง ผสมผสานกับโยเกิร์ตและน้ำแข็ง ทำให้ได้รสชาติที่สดชื่นและเนื้อสัมผัสที่เนียนนุ่ม เหมาะสำหรับการดื่มในช่วงบ่าย',
    image: 'assets/images/smoothie.jpg',
    price: '140 ฿',
  ),
  Product(
    name: 'Lemonade',
    description: 'น้ำมะนาวสดชื่นที่ทำจากมะนาวสดคุณภาพสูง ผสมผสานกับน้ำตาลและน้ำแข็ง ทำให้ได้รสชาติที่สดชื่นและกลิ่นหอมของมะนาว เหมาะสำหรับการดื่มในช่วงหน้าร้อน',
    image: 'assets/images/lemonade.jpg',
    price: '75 ฿',
  ),
];
