import 'package:flutter/material.dart';

class ChartItem extends StatelessWidget {
  final double height;
  const ChartItem({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 30,
              height: 50 + (height.clamp(0, 1) * 50),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      '-6',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
            ),
            const Text('1:00'),
            Image.network(
              'https://cdn.weatherapi.com/weather/64x64/night/176.png',
              width: 30,
              height: 30,
            )
          ],
        ),
        SizedBox(
          width: 8,
        )
      ],
    );
  }
}
