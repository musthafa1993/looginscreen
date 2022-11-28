class Product{
  final int id;
  final String name;
  final String image;
  final String   price;
  final String  disprice;
  final bool isfav;

  Product(
      {
        required this.id,
        required this.name,
        required this.image,
        required this.price,
        required this.disprice,
        required this.isfav,
      });
}