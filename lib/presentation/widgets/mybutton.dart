import 'package:flutter/material.dart';
import 'package:meal_app/constants/colors.dart';

class mybutton extends StatelessWidget {
  const mybutton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width * 0.76,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                backgroundColor: Kdetailscolor),
            child: Text(
              "Buy Now",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
      ),
    );
  }
}
