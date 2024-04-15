import 'package:flutter/material.dart';
import 'package:meal_app/presentation/views/checkout_view.dart';

class customappbar extends StatelessWidget {
  const customappbar({super.key, required this.colorappbar});
  final Color colorappbar;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: colorappbar,
          ),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => checkout()));
                },
                icon: Icon(
                  Icons.shopping_cart_checkout,
                  color: colorappbar,
                )),
          ],
        ),
      ],
    );
  }
}
