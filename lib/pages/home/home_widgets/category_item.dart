import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../homepage.dart';

class CategoryItems extends StatelessWidget {
  final CategoryData categoryData;
  final int index;
  final Function onItemClick;

  CategoryItems(
      {super.key,
      required this.categoryData,
      required this.index,
      required this.onItemClick});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaquary = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        onItemClick(categoryData);
      },
      child: Container(
        decoration: BoxDecoration(
          color: categoryData.categoryBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              categoryData.categoryImage,
            ),
            Text(
              categoryData.categoryTitle,
              style: theme.textTheme.titleLarge,
            )
          ],
        ),
      ),
    );
  }
}
