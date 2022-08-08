import 'package:dropbox_app/products/quick_accsess_listview.dart';
import 'package:dropbox_app/screens/temporary/temporary_screens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';
import '../products/category_listview.dart';
import '../products/widgets/inter_head_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  List pages = [const HomePage(), const FilePage(), const StarPage(), const ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 239, 239),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                const _HomePageAppBar(name: "Ahmet Talha Ablak"),
                const SizedBox(height: 40),
                _AvaibleSpace(context),
                const SizedBox(height: 30),
                InterHeadButton(text: "Category", onPressed: () {}),
                const SizedBox(height: 10),
                _categoryList(context),
                InterHeadButton(text: "Quick Accsess", onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: _quickAccsessList(context),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _designNavBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  NavigationBar _designNavBar() {
    return NavigationBar(
      backgroundColor: Colors.white,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home, size: 36),
          label: "Home Page",
        ),
        NavigationDestination(
          icon: Icon(Icons.file_open, size: 36),
          label: "Open File",
        ),
        NavigationDestination(
          icon: Icon(Icons.star, size: 36),
          label: "Favorites",
        ),
        NavigationDestination(
          icon: Icon(Icons.person, size: 36),
          label: "Profile",
        ),
      ],
      selectedIndex: selectedIndex,
      onDestinationSelected: (value) {
        setState(() {
          selectedIndex = value;
        });
      },
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

  Widget _AvaibleSpace(BuildContext context) {
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
            Container(
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
