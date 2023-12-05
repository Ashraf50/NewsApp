import 'package:flutter/material.dart';

import '../Model/CategoryModel.dart';
import '../Pages.dart/CategoryView.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  CategoryView(category: category.CategoryName),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 100,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(
                    category.CategoryImage,
                  ),
                  fit: BoxFit.fill),
              color: Colors.amber),
          child: Center(
              child: Text(
            category.CategoryName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
