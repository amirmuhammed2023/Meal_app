import 'package:flutter/material.dart';
import 'package:meal_app/data/models/meal.model.dart';
import 'package:meal_app/presentation/widgets/custom_appbar.dart';

class customcolumn extends StatelessWidget {
  const customcolumn({super.key, required this.food});
  final Meal food;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customappbar(colorappbar: Colors.white),
          SizedBox(
            height: 8,
          ),
          Text(
            food.strCategory ?? "",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            "Office Code",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          Text(
            "Price",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            "\$ ${food.price.toString()}",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
