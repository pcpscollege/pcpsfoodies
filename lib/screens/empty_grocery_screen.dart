import 'package:flutter/material.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: Add Empty Image
            // Todo: Add empty screen title
            // Todo: Add empty screen subtitle
            // Todo: Add browse recipes button
          ],
        ),
      ),
    );
  }
}
