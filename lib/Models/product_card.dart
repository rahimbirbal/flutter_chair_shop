class ProductCard{
  final String title, image;
  final int price;

  ProductCard({
    required this.title,
    required this.image,
    required this.price
  });
}

final List<ProductCard> productCard = [
  ProductCard(
    title: "Dr. White Chair", 
    image: "assets/images/kursii01.png",
    price: 120),
  ProductCard(
    title: "Dr. White Chair", 
    image: "assets/images/kursii02.png",
    price: 120),
  ProductCard(
    title: "Dr. White Chair", 
    image: "assets/images/kursii03.png",
    price: 120),
  ProductCard(
    title: "Dr. White Chair", 
    image: "assets/images/kursii04.png",
    price: 120),
];