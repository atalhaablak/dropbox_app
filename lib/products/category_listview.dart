import 'package:dropbox_app/products/widgets/custom_clasour.dart';
import 'package:flutter/material.dart';

import '../screens/home_page.dart';

class CategoryListViewBuilder extends StatelessWidget {
  CategoryListViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: CategoryWidgetList.length,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CategoryWidgetList[index],
        );
      }),
    );
  }

  List<Widget> CategoryWidgetList = const [
    CustomClasour(label: "File", icon: Icons.file_open, color: Color.fromARGB(255, 49, 118, 237), size: 35),
    CustomClasour(label: "Picture", icon: Icons.photo, color: Color.fromARGB(255, 100, 211, 241), size: 35),
    CustomClasour(label: "Video", icon: Icons.camera_alt_outlined, color: Color.fromARGB(255, 90, 137, 218), size: 35),
    CustomClasour(label: "More", icon: Icons.more_horiz, color: Color.fromARGB(255, 140, 49, 237), size: 35),
  ];
}
