import 'package:dropbox_app/products/quick_accsess_listview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

import '../products/category_listview.dart';
import '../products/widgets/custom_clasour.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 239, 239),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const _HomePageAppBar(name: "Ahmet Talha Ablak"),
              SizedBox(height: 40),
              _AvaibleSpace(context),
              SizedBox(height: 20),
              InterHeadButton(text: "Category", onPressed: () {}),
              SizedBox(height: 10),
              _categoryList(context),
              InterHeadButton(text: "Quick Accsess", onPressed: () {}),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _quickAccsessList(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _quickAccsessList(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.24,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Color.fromARGB(96, 143, 140, 140), blurRadius: 20)]),
        child: QuickAccsessListViewBuilder());
  }

  Container _categoryList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.11,
      child: CategoryListViewBuilder(),
    );
  }

  Stack _AvaibleSpace(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 10,
          top: 10,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.17,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8, left: 90),
                  child: _customChart(),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Positioned(
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.20,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Color.fromARGB(255, 33, 110, 243)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Avaible Space",
                        style: GoogleFonts.adventPro(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "84 GB / 128 GB",
                          style: GoogleFonts.adventPro(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("See All"),
                        style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 65, 209, 246)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  PieChart _customChart() {
    return PieChart(
      dataMap: dataMap,
      chartType: ChartType.ring,
      chartRadius: 80,
      chartLegendSpacing: 15,
      chartValuesOptions: const ChartValuesOptions(
        showChartValues: false,
      ),
      legendOptions: const LegendOptions(
        legendPosition: LegendPosition.bottom,
        showLegendsInRow: true,
        legendTextStyle: TextStyle(
          fontSize: 10,
        ),
      ),
    );
  }

  Map<String, double> dataMap = {
    "File": 5,
    "Vid": 3,
    "Pict": 2,
  };
}

class _HomePageAppBar extends StatelessWidget {
  final String name;
  const _HomePageAppBar({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back",
              style: GoogleFonts.adventPro(
                fontSize: 30,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              name,
              style: GoogleFonts.adventPro(
                fontSize: 30,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blue.shade900),
            image: DecorationImage(
              image: AssetImage("assets/png/person.png"),
            ),
          ),
        ),
      ],
    );
  }
}

class InterHeadButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const InterHeadButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: GoogleFonts.adventPro(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(onPressed: onPressed(), icon: Icon(Icons.more_horiz, color: Color.fromARGB(255, 164, 158, 158))),
      ],
    );
  }
}
