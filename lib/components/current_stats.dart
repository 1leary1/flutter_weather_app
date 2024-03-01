import 'package:flutter/material.dart';
import 'package:weater_app/components/info_text.dart';

class CurrentStats extends StatelessWidget {
  const CurrentStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [InfoText(title: "Tittle", subtitle: "Subtitle")],
                  ),
                  Column(
                    children: [Text("dsfdfs"), Text("data")],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
