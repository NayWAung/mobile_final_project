import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/recipe_provider.dart';
import 'add_recipe_screen.dart';
import 'recipe_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final recipeProvider = Provider.of<RecipeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('🍽️ Quick Recipe'),
        backgroundColor: Colors.teal,
        elevation: 5,
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        color: Colors.teal.shade50,
        child: ListView.builder(
          itemCount: recipeProvider.recipes.length,
          itemBuilder: (context, index) {
            final recipe = recipeProvider.recipes[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 6,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Text(
                    recipe.title.characters.first,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(
                  recipe.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade900,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 18),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RecipeDetailScreen.routeName,
                    arguments: recipe,
                  );
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, AddRecipeScreen.routeName);
        },
        label: Text('Add Recipe'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
