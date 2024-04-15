import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/business_logic/cubit2/counter_cubit.dart';
import 'package:meal_app/business_logic/cubit3/checout_cubit.dart';
import 'package:meal_app/constants/colors.dart';
import 'package:meal_app/data/models/meal.model.dart';

class listviewcheckout extends StatelessWidget {
  const listviewcheckout({super.key, required this.mycar});
  final List<Meal> mycar;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: ListView.builder(
                  itemCount: mycar.length,
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(mycar[index].strCategoryThumb ?? ""),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "You Have : ",
                            ),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Text(
                                  mycar[index].price.toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Kdetailscolor,
                                      fontWeight: FontWeight.w600),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: -30,
                                  child: Text(
                                    " × ${mycar[index].quantity}",
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        title: Text(
                          mycar[index].strCategory ?? "5",
                          style: TextStyle(fontSize: 18),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              context
                                  .read<ChecoutCubit>()
                                  .removed(mycar[index]);
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            )),
                      ),
                    );
                  }),
            ),
          ),
        );
      },
    );
  }
}

//      },
  // );

