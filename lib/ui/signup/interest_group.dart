import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/consts.dart';
import 'package:humilylab_talk/ui/widget/round_button.dart';

class InterestGroup extends StatelessWidget {
  const InterestGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(bottom: 20),
      itemCount: INTEREST_LIST.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 3.2 / 1,
      ),
      itemBuilder: (BuildContext ctx, i) {
        return RoundButton(
          activated: false,
          onTap: () {},
          text: '${INTEREST_LIST[i]['icon']} ${INTEREST_LIST[i]['title']}',
        );
      },
    );
  }
}
