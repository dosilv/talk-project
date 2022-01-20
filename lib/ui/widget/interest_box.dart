import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/consts.dart';

class InterestBoxList extends StatelessWidget {
  final List<int> interestList;
  const InterestBoxList({Key? key, required this.interestList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List filteredList = INTEREST_LIST
        .where((item) => interestList.contains(item['id']))
        .toList();

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
            5,
            (idx) => filteredList.length > idx
                ? InterestBox(
                    title: filteredList[idx]['title'],
                    icon: filteredList[idx]['icon'],
                    color: filteredList[idx]['color'])
                : const SizedBox(
                    width: 50,
                  )));
  }
}

class InterestBox extends StatelessWidget {
  final String title;
  final String icon;
  final Color color;

  const InterestBox(
      {Key? key, required this.title, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 50,
        height: 50,
        alignment: Alignment.center,
        child: Text(
          icon,
          style: const TextStyle(fontSize: 20),
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      const SizedBox(
        height: 4,
      ),
      Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
      ),
    ]);
  }
}
