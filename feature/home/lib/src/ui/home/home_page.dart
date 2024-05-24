import 'package:core_designsystem/component.dart';
import 'package:flutter/material.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AsisScaffold(
      appBar: AsisAppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Home Page'),
          ],
        ),
      ),
    );
  }
}
