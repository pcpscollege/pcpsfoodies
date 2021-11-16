import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';

import 'pcps_theme.dart';
import 'home.dart';

void main() {
  runApp(const Pcpsfoodies());
}

class Pcpsfoodies extends StatelessWidget {
  const Pcpsfoodies({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = PcpsTheme.light();
    return MaterialApp(
      theme: theme,
      title: 'PCPS Foodies',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager()),
        ],
        child: const Home(),
      ),
    );
  }
}
