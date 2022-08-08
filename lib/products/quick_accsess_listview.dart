import 'package:dropbox_app/products/widgets/quick_accsess_card.dart';
import 'package:flutter/material.dart';

class QuickAccsessListViewBuilder extends StatefulWidget {
  const QuickAccsessListViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  State<QuickAccsessListViewBuilder> createState() => _QuickAccsessListViewBuilderState();
}

class _QuickAccsessListViewBuilderState extends State<QuickAccsessListViewBuilder> {
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
