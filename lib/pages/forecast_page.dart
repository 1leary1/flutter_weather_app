import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ForecastPage extends StatelessWidget {
  const ForecastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        Text("Right now", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        CarouselSlider(
          items: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.pink,
            ),
          ],
          options: CarouselOptions(
            enlargeCenterPage: true,
            height: 200,
            enableInfiniteScroll: false,
            initialPage: 0,
          ),
        )
      ],
    );
  }
}
