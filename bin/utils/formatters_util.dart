/// Process [object] by getting a JSON-style view from [Object.toString]
/// and adding tab spaces to each line.
String formatPretty(Object object) => object
    .toString()
    .split('\n')
    .map((line) => line == '{' ? line : ' ' ' ' '$line')
    .join('\n');

/// Reduces a collection to a single multi-line [String] by iteratively
/// combining each element's [String] representation.
String formatPrintable(Iterable<Object> objects) =>
    objects.fold('', (combination, object) => '$combination\n$object\n');
