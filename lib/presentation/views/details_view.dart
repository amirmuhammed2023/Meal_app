import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/business_logic/cubit2/counter_cubit.dart';
import 'package:meal_app/business_logic/cubit3/checout_cubit.dart';
import 'package:meal_app/constants/colors.dart';
import 'package:meal_app/data/models/meal.model.dart';
import 'package:meal_app/presentation/widgets/bottom_containerdetail.dart';
import 'package:meal_app/presentation/widgets/cart_counter.dart';
import 'package:meal_app/presentation/widgets/custom_column.dart';
import 'package:meal_app/presentation/widgets/details_mealcolumn.dart';
import 'package:meal_app/presentation/widgets/image_details.dart';
import 'package:meal_app/presentation/widgets/mybutton.dart';
import 'package:meal_app/presentation/widgets/myshoppingcart.dart';

class detailsview extends StatelessWidget {
  const detailsview({super.key, required this.item});
  final Meal item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kdetailscolor,
      body: BlocBuilder<ChecoutCubit, ChecoutState>(
        builder: (context, state) {
          return Column(
            children: [
              customcolumn(
                food: item,
              ),
              Expanded(
                  child: Stack(
                clipBehavior: Clip.none,
                children: [
                  bottomcontainer(),
                  Positioned(
                    top: -125,
                    right: 20,
                    child: imagedetails(
                      imageurl: item.strCategoryThumb ?? "",
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: mybutton(),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 10,
                    child: myshoppingcart(
                      product: item,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: detailsmealcolumn(
                      description:
                          item.strCategoryDescription ?? "Good food for you",
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    right: MediaQuery.of(context).size.width * 0.34,
                    child: cartcounter(
                      prod: item,
                    ),
                  ),
                ],
              ))
            ],
          );
        },
      ),
    );
  }
}
