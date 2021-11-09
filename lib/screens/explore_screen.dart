import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:pcpsfoodies/components/components.dart';
import 'package:pcpsfoodies/models/models.dart';
import 'package:pcpsfoodies/api/mock_pcpsfoodies_service.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = new MockPcpsfoodiesService();

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Add TodayRecipeListView FutureBuilder
    /*return const Center(
      child: Text('Explore Screen'),
    );*/
    // FutureBuilder created now
    /*return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        // TODO: Add Nested List Views
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data?.todayRecipes ?? [];
          return TodayRecipeListView(recipes: recipes);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );*/
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data?.todayRecipes ?? [];
          final friendPosts = snapshot.data?.friendPosts ?? [];
          return ListView(
            scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: recipes),
              const SizedBox(height: 16),
              FriendPostListView(friendPosts: friendPosts)
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
