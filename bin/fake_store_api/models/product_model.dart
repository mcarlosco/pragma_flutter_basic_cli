import '../../utils/checkers_util.dart';
import '../../utils/formatters_util.dart';

import 'rating_model.dart';

final class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;

  const ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  ProductModel.from(Map<String, dynamic>? map)
      : this(
          id: checkIntOrDefault(map?['id']),
          title: checkStringOrDefault(map?['title']),
          price: checkDoubleOrDefault(map?['price']),
          description: checkStringOrDefault(map?['description']),
          category: checkStringOrDefault(map?['category']),
          image: checkStringOrDefault(map?['image']),
          rating: RatingModel.from(map?['rating']),
        );

  @override
  String toString() => '''
{
  id: $id,
  title: "$title",
  price: $price,
  description: "$description",
  category: "$category",
  image: "$image",
  rating: ${formatPretty(rating)},
}''';
}
