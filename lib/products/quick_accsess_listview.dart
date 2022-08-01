import 'package:dropbox_app/products/widgets/custom_clasour.dart';
import 'package:dropbox_app/products/widgets/quick_accsess_card.dart';
import 'package:flutter/material.dart';

import '../screens/home_page.dart';

class QuickAccsessListViewBuilder extends StatelessWidget {
  QuickAccsessListViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: CategoryWidgetList.length,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CategoryWidgetList[index],
        );
      }),
    );
  }

  List<Widget> CategoryWidgetList = const [
    QuicAccsessCard(quicAccessCardType: QuicAccessCardType.file),
    QuicAccsessCard(quicAccessCardType: QuicAccessCardType.video),
    QuicAccsessCard(quicAccessCardType: QuicAccessCardType.picture),
    QuicAccsessCard(quicAccessCardType: QuicAccessCardType.file),
    QuicAccsessCard(quicAccessCardType: QuicAccessCardType.video),
    QuicAccsessCard(quicAccessCardType: QuicAccessCardType.picture),
  ];
}
