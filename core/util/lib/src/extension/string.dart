import 'package:core_util/util.dart';

extension StringExtension on String {
  bool get isWebUrl {
    if (isEmpty) return false;
    return urlPattern.hasMatch(this);
  }
}
