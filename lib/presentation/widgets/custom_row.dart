import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/business_logic/cubit3/checout_cubit.dart';
import 'package:meal_app/constants/colors.dart';

class customrow extends StatefulWidget {
  const customrow({
    super.key,
  });

  @override
  State<customrow> createState() => _customrowState();
}

class _customrowState extends State<customrow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total:",
            style: TextStyle(
                color: Kdetailscolor,
                fontWeight: FontWeight.w800,
                fontSize: 18),
          ),
          Text(
            "\$ ${context.read<ChecoutCubit>().state.totalprice.round()}",
            style: TextStyle(
                color: Kdetailscolor,
                fontWeight: FontWeight.w800,
                fontSize: 18),
          ),
        ],
      ),
    );
  }
}
