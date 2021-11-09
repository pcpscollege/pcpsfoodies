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
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        // TODO: Add Nested List Views
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data?.todayRecipes ?? [];
          return Center(
            child: Container(
              child: const Text('Show Today Recipe Listview'),
            ),
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
