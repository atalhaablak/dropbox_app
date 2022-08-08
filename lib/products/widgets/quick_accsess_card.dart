import 'package:flutter/material.dart';

import 'custom_clasour.dart';

class QuicAccsessCard extends StatelessWidget {
  final QuicAccessCardType quicAccessCardType;
  const QuicAccsessCard({Key? key, required this.quicAccessCardType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (quicAccessCardType == QuicAccessCardType.video) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CustomClasour(
                          icon: Icons.play_circle, label: "", color: Color.fromARGB(255, 130, 189, 238), size: 35),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Video Cards"),
                            SizedBox(height: 5),
                            Text("41 MB"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right)),
                ],
              ),
            ),
          ],
        ),
      );
    } else if (quicAccessCardType == QuicAccessCardType.file) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CustomClasour(icon: Icons.file_open, label: "", color: Color.fromARGB(255, 130, 189, 238), size: 35),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("File Cards"),
                            SizedBox(height: 5),
                            Text("50 MB"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right)),
                ],
              ),
            ),
          ],
        ),
      );
    } else if (quicAccessCardType == QuicAccessCardType.picture) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CustomClasour(
                          icon: Icons.camera_alt_outlined, label: "", color: Color.fromARGB(255, 130, 189, 238), size: 35),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Picture Cards"),
                            SizedBox(height: 5),
                            Text("30 MB"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.chevron_right)),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        color: Colors.red,
        child: const Icon(Icons.error_outline),
      );
    }
  }
}

enum QuicAccessCardType { video, file, picture }
