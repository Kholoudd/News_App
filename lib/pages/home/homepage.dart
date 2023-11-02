import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/pages/home/home_widgets/category_item.dart';
import 'package:news/pages/home/home_widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "homepage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CategoryData? selectedCategory;
  List<CategoryData> categories = [
    CategoryData(
      categoryId: "sports",
      categoryTitle: "Sports",
      categoryImage: "assets/images/ball.png",
      categoryBackgroundColor: const Color(0xFFC91C22),
    ),
    CategoryData(
      categoryId: "general",
      categoryTitle: "Politics",
      categoryImage: "assets/images/Politics.png",
      categoryBackgroundColor: const Color(0xFF003E90),
    ),
    CategoryData(
      categoryId: "health",
      categoryTitle: "Health",
      categoryImage: "assets/images/health.png",
      categoryBackgroundColor: const Color(0xFFED1E79),
    ),
    CategoryData(
      categoryId: "business",
      categoryTitle: "Buisness",
      categoryImage: "assets/images/bussines.png",
      categoryBackgroundColor: const Color(0xFFCF7E48),
    ),
    CategoryData(
      categoryId: "enviroment",
      categoryTitle: "Enviroment",
      categoryImage: "assets/images/environment.png",
      categoryBackgroundColor: const Color(0xFF4882CF),
    ),
    CategoryData(
      categoryId: "science",
      categoryTitle: "Science",
      categoryImage: "assets/images/science.png",
      categoryBackgroundColor: const Color(0xFFF2D352),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/pattern.png"),
            fit: BoxFit.cover,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "News app ",
            style: theme.textTheme.titleLarge,
          ),
        ),
        drawer: CustomDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20),
              child: Text("Pick your Category \n If you Interest",
                  style: theme.textTheme.titleLarge!.copyWith(
                    color: Color(0xFF4F5A69),
                  )),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(20.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 9 / 11,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                ),
                itemBuilder: (context, index) => CategoryItems(
                  categoryData: categories[index],
                  index: index,
                  onItemClick: onItemClicked,
                ),
                itemCount: categories.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  onItemClicked(CategoryData categoryData) {
    print(categoryData.categoryId);
    selectedCategory = categoryData;
    setState(() {});
  }

  onCategoryDrawerClicked() {
    selectedCategory = null;
    Navigator.pop(context);
    setState(() {});
  }
}

class CategoryData {
  final String categoryId;
  final String categoryTitle;
  final String categoryImage;
  final Color categoryBackgroundColor;

  const CategoryData({
    required this.categoryId,
    required this.categoryTitle,
    required this.categoryImage,
    required this.categoryBackgroundColor,
  });
}
