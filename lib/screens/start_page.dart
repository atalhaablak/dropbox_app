import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(250, 113, 132, 236), Color.fromARGB(250, 41, 72, 243)]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Connect Your Files in Dropbox
                Text(
                  "Connect Your Files in Dropbox",
                  style: GoogleFonts.adventPro(
                    fontSize: 46,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                // Orgnaized and link all your files in list and project to helo you build new habits
                Text(
                  "Orgnaized and link all your files in list and project to helo you build new habits",
                  maxLines: 2,
                  style: GoogleFonts.adventPro(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white54,
                  ),
                ),
                const SizedBox(height: 30),
                // Get Started
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomePage())));
                  },
                  child: Text("Get Started"),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 108, 179, 237),
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.6, 60),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
