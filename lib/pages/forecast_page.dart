import 'package:flutter/material.dart';

class ForecastPage extends StatelessWidget {
  const ForecastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(height: 12),
        Text("Right now", style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}
