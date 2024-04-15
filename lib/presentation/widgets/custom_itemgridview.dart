import 'package:flutter/material.dart';
import 'package:meal_app/data/models/meal.model.dart';
import 'package:meal_app/presentation/views/details_view.dart';

class customitemgridview extends StatelessWidget {
  const customitemgridview({required this.myitem});
  final Meal myitem;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => detailsview(
                      item: myitem,
                    )));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(myitem.strCategoryThumb ?? "")),
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.withOpacity(0.6)),
            ),
          )),
          Text(
            myitem.strCategory ?? "Beef",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Text(myitem.strCategoryDescription ?? "this is good choice",
              style: TextStyle(color: Colors.grey, fontSize: 16),
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
