part of 'meal_cubit.dart';

sealed class MealState extends Equatable {
  const MealState();

  @override
  List<Object> get props => [];
}

final class MealInitial extends MealState {}

final class Mealloading extends MealState {}

final class Mealfailure extends MealState {
  final String errmessage;

  Mealfailure(this.errmessage);
}

final class Mealsucceed extends MealState {
  final List<Meal> allcategories;

  Mealsucceed(this.allcategories);
}
