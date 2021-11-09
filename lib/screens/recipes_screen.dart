import 'package:flutter/material.dart';

import 'package:pcpsfoodies/models/models.dart';
import 'package:pcpsfoodies/api/mock_pcpsfoodies_service.dart';
import 'package:pcpsfoodies/components/components.dart';

class RecipesScreen extends StatelessWidget {
  final exploreService = MockPcpsfoodiesService();
  RecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreService.getRecipes(),
      builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // TODO : Add RecipesGridView Here
          return const Center(child: Text('Recipes Screen'));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
