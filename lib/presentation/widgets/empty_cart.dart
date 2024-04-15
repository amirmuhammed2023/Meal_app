import 'package:flutter/material.dart';
import 'package:meal_app/constants/colors.dart';

class emptycart extends StatelessWidget {
  const emptycart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Image.asset(
            "assets/images/3d-illustration-icon-of-burger-fast-food-for-ui-ux-web-mobile-app-social-media-ads-png.png",
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Empty cart !",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Kdetailscolor,
                fontSize: 24),
          ),
          Text("Go and buy delicious meat"),
        ],
      ),
    );
  }
}
