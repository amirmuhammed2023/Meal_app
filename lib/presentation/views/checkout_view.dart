import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/business_logic/cubit3/checout_cubit.dart';
import 'package:meal_app/constants/colors.dart';
import 'package:meal_app/presentation/widgets/custom_row.dart';
import 'package:meal_app/presentation/widgets/empty_cart.dart';
import 'package:meal_app/presentation/widgets/listview_checkout.dart';
import 'package:meal_app/presentation/widgets/mybutton.dart';

class checkout extends StatelessWidget {
  const checkout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Kdetailscolor,
              )),
          title: Text(
            "Cart",
            style: TextStyle(color: Kdetailscolor),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<ChecoutCubit, ChecoutState>(
          builder: (context, state) {
            if (state.productsbuyit.isEmpty) {
              //هنعمل هنا صفحه للشنطه الفاضيه
              return emptycart();
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  children: [
                    listviewcheckout(
                      mycar: state.productsbuyit,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    customrow(),
                    SizedBox(
                      height: 25,
                    ),
                    mybutton(),
                  ],
                ),
              );
            }
          },
        ));
  }
}
