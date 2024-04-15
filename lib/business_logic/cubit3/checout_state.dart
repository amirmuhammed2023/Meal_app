part of 'checout_cubit.dart';

class ChecoutState {
  double totalprice;
  List<Meal> productsbuyit;

  ChecoutState(this.productsbuyit, this.totalprice);
}

final class ChecoutInitial extends ChecoutState {
  ChecoutInitial(super.productsbuyit, super.totalprice);
}
