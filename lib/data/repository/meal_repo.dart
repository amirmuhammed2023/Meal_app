import 'package:dio/dio.dart';
import 'package:meal_app/data/models/meal.model.dart';
import 'package:meal_app/data/web_services/meal_api.dart';

class mealrepo {
  final mealservice mealservices;

  mealrepo(this.mealservices);

  Future<List<Meal>> getallcatecories() async {
    try {
      var data = await mealservices.getservice(endpoint: "categories.php");
      List<Meal> mealcategory = [];
      for (var element in data["categories"]) {
        mealcategory.add(Meal.fromJson(element));
      }
      return mealcategory;
    } on DioException catch (e) {
      print("Dio exception help !!, ${e.toString()}");
      return [];
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
