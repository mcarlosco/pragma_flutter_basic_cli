import '../../utils/checkers_util.dart';

final class CategoryModel {
  final String value;

  CategoryModel.from(dynamic value) : this._(checkStringOrDefault(value));

  const CategoryModel._(this.value);

  @override
  String toString() => '"$value"';
}
