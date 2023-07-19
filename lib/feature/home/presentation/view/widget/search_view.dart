import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Search...',
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[100],
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(12)
          // ),
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.filter_alt_outlined)
      ),
    );
  }
}
