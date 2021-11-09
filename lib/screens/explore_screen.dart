import 'package:flutter/material.dart';

import 'package:pcpsfoodies/components/components.dart';
import 'package:pcpsfoodies/models/models.dart';
import 'package:pcpsfoodies/api/mock_pcpsfoodies_service.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = new MockPcpsfoodiesService();

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO 1: Add TodayRecipeListView FutureBuilder
    return const Center(
      child: Text('Explore Screen'),
    );
  }
}
