import 'package:bloc/bloc.dart';
import 'package:meal_app/data/models/meal.model.dart';
//import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(1));

  void incrementcount(Meal product) {
    product.quantity += 1;
    emit(CounterState(product.quantity));
  }

  void decrementcount(Meal product) {
    product.quantity -= 1;
    emit(CounterState(product.quantity));
  }
}
