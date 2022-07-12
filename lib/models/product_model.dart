class Product {
  final String name;
  final double price;
  final String imageURL;
  const Product({
    required this.name,
    required this.price,
    required this.imageURL,
  });
  static const List<Product> products = [
    Product(
        name: 'banana',
        price: 15000,
        imageURL:
            'https://image.shutterstock.com/image-photo/bunch-bananas-isolated-on-white-260nw-563183962.jpg'),
    Product(
        name: 'apple',
        price: 12000,
        imageURL:
            'https://image.shutterstock.com/image-photo/red-apple-isolated-on-white-260nw-1727544364.jpg'),
    Product(
        name: 'orange',
        price: 13000,
        imageURL:
            'https://image.shutterstock.com/image-photo/ripe-orange-leaves-on-white-260nw-68999266.jpg'),
  ];
}
