import 'package:meal_app/data/models/meal.model.dart';

class checkoutrepo {
  List<Meal> allproductincart = [];
  double allprice = 0;
  List<Meal> addproduct({required Meal product}) {
    if (allproductincart.contains(product)) {
      //++product.quantity;
      print("product found");
      //allprice += product.price!;
      allprice = 0;
      if (allproductincart.length > 1) {
        for (var element in allproductincart) {
          allprice = allprice + (element.price! * element.quantity);
        }
      } else {
        allprice = product.price! * product.quantity;
      }
    } else {
      allproductincart.add(product);
      allprice = allprice + (product.price! * product.quantity);
    }
    return allproductincart;
  }

  List<Meal> removeproduct({required Meal product}) {
    allprice = allprice - (product.price! * product.quantity);
    product.quantity = 1;
    allproductincart.remove(product);
    return allproductincart;
  }
}
