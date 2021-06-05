import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_list.dart';

class CategoriesScreen extends StatefulWidget {



  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    //list view e benziyo ama categorik dizilim icin alternatif
    return GridView(
      padding: EdgeInsets.all(10),
      children: DUMMY_CATEGORIES
          .map((catData) => CategoryList(
                categoryId : catData.id,
                color: catData.color,
                title: catData.name,
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //bir satırda kac tane item 300 olursa listviewe benzer
          maxCrossAxisExtent: 200,
          //kac tane item yuksekligine ve genisligine gore dizilmeli
          childAspectRatio: 1.5,

          //aralardaki bosluk
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
    );
  }
}
