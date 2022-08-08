import 'package:flutter/material.dart';

class CustomNavigatonBar extends StatefulWidget {
  const CustomNavigatonBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigatonBar> createState() => _CustomNavigatonBarState();
}

class _CustomNavigatonBarState extends State<CustomNavigatonBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 1,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.home, size: 36)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.file_open, size: 36)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.star, size: 36)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.person, size: 36)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
