import 'package:flutter/material.dart';
import 'package:flutter_learn/core/constants.dart';
import 'package:flutter_learn/model/item_model.dart';
import 'package:flutter_learn/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shegs App'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(itemModel: ItemModel(title: 'Travel', imagePath: 'images/travel.png',),),

            Row(
              children: [
                Expanded(
                  child: CardWidget(itemModel: ItemModel(title: 'Rocket', imagePath: 'images/rocket.png',),),
                ),

                Expanded(
                  child: CardWidget(itemModel: ItemModel(title: 'Space', imagePath: 'images/space.png',),),
                ),
              ],
            ),

            CardWidget(itemModel: ItemModel(title: 'Yeah', imagePath: 'images/yeah.png',),),
          ],
        ),
      ),
    );
  }
}
