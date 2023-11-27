import 'package:flutter/material.dart';
import 'package:flutter_learn/model/item_model.dart';
import 'package:flutter_learn/pages/description_page.dart';

import '../core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.itemModel});

  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) {
                  return DescriptionPage(itemModel: itemModel,);
                },
            ),
        );
      },
      child: Card(
        child: Container(
          padding: EdgeInsets.all(kDouble10),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: kDouble5),
              Image.asset(
                itemModel.imagePath,
                height: 300.0,
                width: 200.0,
              ),
              Text(
                itemModel.title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                'This is the ${itemModel.title} description',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),

              const SizedBox(height: kDouble10),
            ],
          ),
        ),
      ),
    );
  }
}
