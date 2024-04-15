import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/business_logic/cubit1/meal_cubit.dart';
import 'package:meal_app/presentation/widgets/custom_itemgridview.dart';
import 'package:meal_app/presentation/widgets/custom_loading.dart';

class customgridview extends StatelessWidget {
  const customgridview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealCubit, MealState>(
      builder: (context, state) {
        if (state is Mealsucceed) {
          return Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 2.5),
              itemCount: state.allcategories.length,
              itemBuilder: (BuildContext context, int index) {
                return customitemgridview(
                  myitem: state.allcategories[index],
                );
              },
            ),
          );
        } else if (state is Mealfailure) {
          return Text("Error has occured ${state.errmessage}");
        } else {
          return Expanded(child: customloading());
        }
      },
    );
  }
}
