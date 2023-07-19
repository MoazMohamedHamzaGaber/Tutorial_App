import 'package:flutter/material.dart';
import 'package:tutorial/feature/home/presentation/view/widget/suggistion_item.dart';
import 'package:tutorial/feature/home/presentation/view_model/item_model.dart';

import '../details_view.dart';
import 'details_view_body.dart';

class SuggestionList extends StatelessWidget {
  SuggestionList(this.text, this.item, {Key? key}) : super(key: key);

  String? text;
  List<Item> item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              text!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text('See All'),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .42,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  SuggestionItem(Item.recommendation[index]),
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
              itemCount: item.length,
            ),
          ),
        ),
      ],
    );
  }

}
