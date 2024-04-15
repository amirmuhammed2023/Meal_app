import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Meal extends Equatable {
  final String? idCategory;
  final String? strCategory;
  final String? strCategoryThumb;
  final String? strCategoryDescription;
  double? price;
  int quantity;

  Meal({
    this.quantity = 1,
    this.price,
    this.idCategory,
    this.strCategory,
    this.strCategoryThumb,
    this.strCategoryDescription,
  });

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        idCategory: json['idCategory'] as String?,
        strCategory: json['strCategory'] as String?,
        strCategoryThumb: json['strCategoryThumb'] as String?,
        strCategoryDescription: json['strCategoryDescription'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'idCategory': idCategory,
        'strCategory': strCategory,
        'strCategoryThumb': strCategoryThumb,
        'strCategoryDescription': strCategoryDescription,
      };

  @override
  List<Object?> get props {
    return [
      idCategory,
      strCategory,
      strCategoryThumb,
      strCategoryDescription,
    ];
  }
}
