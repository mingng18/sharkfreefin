import 'dart:convert';

import 'package:flutter/services.dart';

class JsonUtil {
  static Future<Map<String, dynamic>> loadJsonFromAssets(String filePath) async {
    String jsonString = await rootBundle.loadString(filePath);
    Map<String, dynamic> data = json.decode(jsonString);
    print(data);
    return data;
  }
}
