import 'package:bloc/bloc.dart';
import 'package:meal_app/data/models/meal.model.dart';
import 'package:meal_app/data/repository/checout_repo.dart';

part 'checout_state.dart';

class ChecoutCubit extends Cubit<ChecoutState> {
  ChecoutCubit(this.check) : super(ChecoutInitial([], check.allprice));
  checkoutrepo check;
  added(Meal product1) {
    List<Meal> result = check.addproduct(product: product1);
    emit(ChecoutInitial(result, check.allprice));
  }

  removed(Meal product1) {
    List<Meal> result = check.removeproduct(product: product1);
    emit(ChecoutInitial(result, check.allprice));
  }
}
