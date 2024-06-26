import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String title;
  final String subtitle;

  const InfoText({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ],
    );
  }
}
