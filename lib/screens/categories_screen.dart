import 'package:flutter/material.dart';
import '../dummydata/dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbf2d8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Categories"),
      ),
      drawer: Drawer(),
      body: GridView(
        padding: const EdgeInsets.all(15.0),
        children: Dummy_Categories.map(
          (catData) => CategoryItem(catData.id, catData.title, catData.color),
        ).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
