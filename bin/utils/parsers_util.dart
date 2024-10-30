/// Parse [source] as a, possibly signed, integer literal.
///
/// Like [parse] except that this function returns [df] where
/// a similar call to [parse] would throw a [FormatException].
///
/// Example:
/// ```dart
/// print(parseIntOrDefault('1')); // 1
/// print(parseIntOrDefault('one')); // 0
/// print(parseIntOrDefault('one', df: 1)); // 1
/// ```
int parseIntOrDefault(String source, [int? radix, int df = 0]) =>
    int.tryParse(source, radix: radix) ?? df;

/// Parse [source] as a double literal and return its value.
///
/// Like [parse], except that this function returns [df] for
/// invalid inputs instead of throwing.
///
/// Example:
/// ```dart
/// print(parseDoubleOrDefault('1.5')); // 1.5
/// print(parseDoubleOrDefault('one.5')); // 0
/// print(parseDoubleOrDefault('two.nine', df: 2.9)); // 2.9
/// ```
double parseDoubleOrDefault(String source, [double df = 0]) =>
    double.tryParse(source) ?? df;
