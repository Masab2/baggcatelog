class ProductModel {
  final String id;
  final String name;
  final String description;
  final String image;
  final String price;
  int quntity;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.quntity,
  });

  static List<ProductModel> products = [
    ProductModel(
      id: '0',
      name: 'Shoulder Bag',
      description: 'A stylish and spacious shoulder bag for everyday use.',
      image: 'assets/images/bag1.png',
      price: '1000 ',
      quntity: 0,
    ),
    ProductModel(
      id: '1',
      name: 'Leather Wallet',
      description:
          'A classic leather wallet with multiple card slots and compartments.',
      image: 'assets/images/wallet.jpg',
      price: '500 ',
      quntity: 0,
    ),
    ProductModel(
      id: '2',
      name: 'Sunglasses',
      description: 'Trendy sunglasses with UV protection for sunny days.',
      image: 'assets/images/glasses.jpg',
      price: '200 ',
      quntity: 0,
    ),
    ProductModel(
      id: '3',
      name: 'Shoes',
      description: 'Trendy Shoes with Amazing Designs.',
      image: 'assets/images/shoes.png',
      price: '200 ',
      quntity: 0,
    ),
    // Add more products as needed
  ];
}
