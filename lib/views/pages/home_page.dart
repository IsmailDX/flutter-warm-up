import 'package:flutter/material.dart';
import 'package:flutter_basics/data/constants.dart';
import 'package:flutter_basics/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          HeroWidget(title: 'Hello World!'),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Basic layout', style: KTextStyle.titleTealText),
                    Text('The description', style: KTextStyle.descriptionText),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
