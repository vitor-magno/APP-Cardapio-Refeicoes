import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screens/categories_meals_screen.dart';
import '../utils/app_routes.dart';
class CategoryItem extends StatelessWidget {
  
  final Category category;

  const CategoryItem(
    this.category
  );

  void _selectCategory(BuildContext context){

    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    //InkWell é o componente que serve para poder fazer as navegações
    return InkWell(
      onTap: () => _selectCategory(context),
      //Isso seria o Hover
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
          child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
      ),
    );
  }
}