import 'package:flutter/material.dart';
import 'package:news__app/Model/CategoryModel.dart';

import 'categoryCard.dart';

class CategoriesListVies extends StatelessWidget {
  const CategoriesListVies({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    // ignore: non_constant_identifier_names
    List<CategoryModel> Categories = [
      CategoryModel(
        CategoryImage: 'assets/business.png',
        CategoryName: "Business",
      ),
      CategoryModel(
        CategoryImage: 'assets/technology.jpeg',
        CategoryName: "technology",
      ),
      CategoryModel(
        CategoryImage: 'assets/general.png',
        CategoryName: "general",
      ),
      CategoryModel(
        CategoryImage: 'assets/entertainment.avif',
        CategoryName: "entertainment",
      ),
      CategoryModel(
        CategoryImage: 'assets/health.avif',
        CategoryName: "health",
      ),
      CategoryModel(
        CategoryImage: 'assets/science.avif',
        CategoryName: "science",
      ),
      CategoryModel(
        CategoryImage: 'assets/sports.png',
        CategoryName: "sports",
      ),
    ];

    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: Categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: Categories[index],
          );
        },
      ),
    );
  }
}
