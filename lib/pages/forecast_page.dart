import 'package:flutter/material.dart';

class ForecastPage extends StatelessWidget {
  const ForecastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Right now", style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}
