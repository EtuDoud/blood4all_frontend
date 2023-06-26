import 'package:flutter/foundation.dart';

logd(dynamic text) {
  if (kDebugMode) {
    print(text);
  }
}