import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Connect Your Files in Dropbox
              Text("Connect Your Files in Dropbox"),
              SizedBox(height: 30),
              // Orgnaized and link all your files in list and project to helo you build new habits
              Text("Orgnaized and link all your files in list and project to helo you build new habits"),
              SizedBox(height: 30),
              // Get Started
              ElevatedButton(onPressed: () {}, child: Text("Get Started")),
            ],
          ),
        ),
      ),
    );
  }
}
