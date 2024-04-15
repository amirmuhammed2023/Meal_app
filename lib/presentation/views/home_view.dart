import 'package:flutter/material.dart';
import 'package:meal_app/presentation/widgets/custom_appbar.dart';
import 'package:meal_app/presentation/widgets/custom_gridview.dart';

class homeview extends StatelessWidget {
  const homeview({super.key});
  static const id = "/homeview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customappbar(colorappbar: Colors.black),
            Text(
              "Meat Shop",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            customgridview(),
          ],
        ),
      ),
    );
  }
}
