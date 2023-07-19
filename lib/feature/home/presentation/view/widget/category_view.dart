import 'package:flutter/material.dart';

import '../../view_model/category_model.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20
      ),
      child: SizedBox(
        height: 60,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>buildContainer(categoryModel[index],context),
          separatorBuilder: (context,index)=>const SizedBox(
            width: 20,
          ),
          itemCount: categoryModel.length,
        ),
      ),
    );
  }
  Widget buildContainer(CategoryModel categoryModel,context)=>Container(
    height: 80,
    width: MediaQuery.of(context).size.width *.22,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey.shade100)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Icon(
          categoryModel.iconData,
          color: Colors.blue,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(categoryModel.text,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500
          ),
        ),
      ],
    ),
  );
}
