import 'parsers_util.dart';

/// Returns [source] iff it is a [String]; otherwise, [df].
String checkStringOrDefault(dynamic source, [String df = '']) =>
    source is String ? source : df;

/// Returns [source] iff it is an [int] or a valid [String]
/// representation of an [int]; otherwise, [df].
int checkIntOrDefault(dynamic source, [int df = 0]) => source is int
    ? source
    : (source is String ? parseIntOrDefault(source) : df);

/// Returns [source] iff it is a [double] or a valid [String]
/// representation of a [double]; otherwise, [df].
double checkDoubleOrDefault(dynamic source, [double df = .0]) =>
    source is double
        ? source
        : (source is String ? parseDoubleOrDefault(source) : df);
