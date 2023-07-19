import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/core/utiles/constant.dart';
import 'package:tutorial/feature/home/presentation/view_model/item_model.dart';
import 'category_view.dart';
import 'search_view.dart';
import 'suggestion_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -10,
        leading: const Icon(
          Icons.location_on,
          color: Colors.blue,
          size: 30,
        ),
        title: const Text('Tokyo,Japan'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const SearchView(),
              const CategoryView(),
              const SizedBox(
                height: 15,
              ),
              SuggestionList('Recommendation for you',Item.recommendation),
              const SizedBox(
                height: 20,
              ),
              SuggestionList('Nearby you',Item.nearby),
            ],
          ),
        ),
      ),
      bottomNavigationBar:buildButtonNavBar(),
    );
  }
}
