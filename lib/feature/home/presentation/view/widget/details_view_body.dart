import 'package:flutter/material.dart';

class PageDetailsViewBody extends StatelessWidget {

   PageDetailsViewBody({
    super.key,
    required this.title,
    required this.category,
    required this.location,
    required this.price,
     required this.image,
});
  String? title;
  String? category;
  String? location;
  double? price;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: 30,
          ),
        ),
        title: Text(title!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height *.4,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('$image'),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(category!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(title!,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 20,
                ),
                Text(location!,
                  style:const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('${price}\$ / Month',
                  style:const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
              ],
            ),
            Expanded(child: Container()),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(6)
              ),
              child: MaterialButton(
                onPressed: (){},
                child: Text('Rent Now',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
