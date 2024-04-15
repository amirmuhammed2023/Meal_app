import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/business_logic/cubit2/counter_cubit.dart';
import 'package:meal_app/business_logic/cubit3/checout_cubit.dart';
import 'package:meal_app/constants/colors.dart';
import 'package:meal_app/data/models/meal.model.dart';

class myshoppingcart extends StatelessWidget {
  const myshoppingcart({super.key, required this.product});
  final Meal product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 45,
        width: MediaQuery.of(context).size.width * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Kdetailscolor, width: 1.5),
        ),
        child: IconButton(
            onPressed: () {
              print(product.quantity);
              print(product.strCategory);
              context.read<ChecoutCubit>().added(product);
              print(product.quantity);
            },
            icon: Icon(
              Icons.add_shopping_cart,
              color: Kdetailscolor,
            )),
      ),
    );
  }
}
