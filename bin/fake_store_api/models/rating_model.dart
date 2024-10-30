import '../../utils/checkers_util.dart';

final class RatingModel {
  final double rate;
  final int count;

  const RatingModel({
    required this.rate,
    required this.count,
  });

  RatingModel.from(Map<String, dynamic>? map)
      : this(
          rate: checkDoubleOrDefault(map?['rate']),
          count: checkIntOrDefault(map?['count']),
        );

  @override
  String toString() => '''
{
  rate: $rate,
  count: $count,
}''';
}
