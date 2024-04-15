import 'package:dio/dio.dart';
import 'package:meal_app/constants/Strings.dart';

class mealservice {
  final Dio dio;

  mealservice(this.dio);

  Future<Map<String, dynamic>> getservice({required String endpoint}) async {
    var response = await dio.get("$baseurl$endpoint");
    print(response.data.toString());
    return response.data;
  }
}
