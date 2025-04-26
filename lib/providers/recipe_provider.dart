import 'package:flutter/material.dart';
import '../models/recipe.dart';

class RecipeProvider with ChangeNotifier {
  List<Recipe> _recipes = [
    Recipe(
      title: '🍝 Spaghetti Bolognese',
      ingredients: 'Spaghetti, minced beef, tomato sauce, onion, garlic, herbs',
      steps: '1. Boil spaghetti.\n2. Cook beef with onions.\n3. Add tomato sauce and herbs.\n4. Mix and serve.',
    ),
    Recipe(
      title: '🥞 Classic Pancakes',
      ingredients: 'Flour, milk, eggs, baking powder, sugar, salt',
      steps: '1. Mix dry and wet ingredients.\n2. Pour batter into pan.\n3. Flip when bubbles form.\n4. Serve with syrup.',
    ),
    Recipe(
      title: '🥗 Caesar Salad',
      ingredients: 'Lettuce, croutons, Parmesan cheese, Caesar dressing',
      steps: '1. Wash and chop lettuce.\n2. Add croutons and cheese.\n3. Drizzle with dressing.\n4. Toss and serve.',
    ),
    Recipe(
      title: '🍹 Fruit Smoothie',
      ingredients: 'Banana, berries, yogurt, honey',
      steps: '1. Blend all ingredients until smooth.\n2. Pour into a glass.\n3. Enjoy!',
    ),
  ];

  List<Recipe> get recipes => _recipes;

  void addRecipe(Recipe recipe) {
    _recipes.add(recipe);
    notifyListeners();
  }
}
