/*
 * Định nghĩa lớp sản phẩm miêu tả thông tin của sản phẩm
 */
class Product {
  final String? id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final bool isFavorite;
  /*
   * Hàm xây dựng trong lớp Product 
   */
  Product({
    this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
  });

  /*
   * Hàm copy sản phẩm
   */

  Product copyWith({
    String? id,
    String? title,
    String? description,
    double? price,
    String? imageUrl,
    bool? isFavorite,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
