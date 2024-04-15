import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/business_logic/cubit1/meal_cubit.dart';
import 'package:meal_app/business_logic/cubit2/counter_cubit.dart';
import 'package:meal_app/business_logic/cubit3/checout_cubit.dart';
import 'package:meal_app/data/repository/checout_repo.dart';
import 'package:meal_app/data/repository/meal_repo.dart';
import 'package:meal_app/data/web_services/meal_api.dart';
import 'package:meal_app/presentation/views/home_view.dart';
import 'package:meal_app/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              MealCubit(mealrepo(mealservice(Dio())))..fetchallcategories(),
        ),
        BlocProvider(
          create: (context) => ChecoutCubit(checkoutrepo()),
        ),
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: splashview(),
        routes: {
          homeview.id: (context) => homeview(),
        },
      ),
    );
  }
}
