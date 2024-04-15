import 'package:flutter/material.dart';

class imagedetails extends StatelessWidget {
  const imagedetails({super.key, required this.imageurl});
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 200, width: 200, child: Image.network(imageurl));
  }
}
