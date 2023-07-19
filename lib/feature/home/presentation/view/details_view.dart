import 'package:flutter/material.dart';

import 'widget/details_view_body.dart';

class PageDetailsView extends StatelessWidget {

  PageDetailsView({
    super.key,
    required this.title,
    required this.category,
    required this.location,
    required this.price,
    required this.image
  });
  String? title;
  String? category;
  String? location;
  double? price;
  String? image;
  @override
  Widget build(BuildContext context) {
    return PageDetailsViewBody(
      price: price,
      location: location,
      category: category,
      title: title,
      image: image,
    );
  }
}
