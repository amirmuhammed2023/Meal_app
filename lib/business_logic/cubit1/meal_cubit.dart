import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meal_app/data/models/meal.model.dart';
import 'package:meal_app/data/repository/meal_repo.dart';

part 'meal_state.dart';

class MealCubit extends Cubit<MealState> {
  MealCubit(this.mealrepository) : super(MealInitial());
  final mealrepo mealrepository;
  List<double> foodsprice = [
    22.99,
    44.99,
    54.99,
    64.99,
    84.99,
    99.99,
    9.99,
    14.99,
    17.99,
    29.99,
    14.99,
    34.99,
    18.99,
    199.99,
  ];
  void fetchallcategories() async {
    try {
      emit(Mealloading());
      List<Meal> result = await mealrepository.getallcatecories();
      for (var i = 0; i < result.length; i++) {
        result[i].price = foodsprice[i];
      }
      emit(Mealsucceed(result));
    } catch (e) {
      emit(Mealfailure(e.toString()));
    }
  }
}
