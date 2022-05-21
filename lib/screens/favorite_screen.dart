import 'package:dailymeals/models/meal.dart';
import 'package:dailymeals/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if(favoriteMeals.isEmpty){
      return Center(
        child: Text('You have no favorites yet - Start adding some!'),
      );
    }
    else{
      return ListView.builder(
        itemBuilder: (ctx, idx) {
          return MealItem(
              favoriteMeals[idx].id,
              favoriteMeals[idx].title,
              favoriteMeals[idx].imageUrl,
              favoriteMeals[idx].duration,
              favoriteMeals[idx].complexity,
              favoriteMeals[idx].affordability);
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
