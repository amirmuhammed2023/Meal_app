import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/business_logic/cubit2/counter_cubit.dart';
import 'package:meal_app/business_logic/cubit3/checout_cubit.dart';
import 'package:meal_app/data/models/meal.model.dart';

class cartcounter extends StatelessWidget {
  const cartcounter({
    super.key,
    required this.prod,
  });
  final Meal prod;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Row(
          children: [
            IconButton(
                onPressed: () {
                  context.read<CounterCubit>().decrementcount(prod);
                },
                icon: Icon(
                  Icons.remove,
                  size: 25,
                )),
            Text(
              "${prod.quantity}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            IconButton(
                onPressed: () {
                  context.read<CounterCubit>().incrementcount(prod);
                },
                icon: Icon(
                  Icons.add,
                  size: 25,
                )),
          ],
        );
      },
    );
  }
}
