import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';

List<Map> INTEREST_LIST = [
  {'id': 0, 'title': '자유', 'icon': '😆', 'color': ICON_ORANGE},
  {'id': 1, 'title': '고민상담', 'icon': '🤔', 'color': ICON_ORANGE},
  {'id': 2, 'title': '직장', 'icon': '💼', 'color': ICON_ORANGE},
  {'id': 3, 'title': '연애/결혼', 'icon': '💍', 'color': ICON_ORANGE},
  {'id': 4, 'title': '야구', 'icon': '⚾️ ', 'color': ICON_GREEN},
  {'id': 5, 'title': '축구', 'icon': '⚽️', 'color': ICON_GREEN},
  {'id': 6, 'title': '등산', 'icon': '⛰', 'color': ICON_GREEN},
  {'id': 7, 'title': '캠핑', 'icon': '🏕', 'color': ICON_GREEN},
  {'id': 8, 'title': '골프', 'icon': '⛳️', 'color': ICON_GREEN},
  {'id': 9, 'title': '영화', 'icon': '🍿', 'color': ICON_PURPLE},
  {'id': 10, 'title': '드라마', 'icon': '🎬', 'color': ICON_PURPLE},
  {'id': 11, 'title': '트로트', 'icon': '🎤', 'color': ICON_PURPLE},
  {'id': 12, 'title': '팬심', 'icon': '👩‍🎤', 'color': ICON_PURPLE},
  {'id': 13, 'title': '건강', 'icon': '💪', 'color': ICON_YELLOW},
  {'id': 14, 'title': '육아', 'icon': '🍼', 'color': ICON_YELLOW},
  {'id': 15, 'title': '다이어트', 'icon': '🥗', 'color': ICON_YELLOW},
  {'id': 16, 'title': '맛집/술', 'icon': '🍽', 'color': ICON_YELLOW},
  {'id': 17, 'title': '쇼핑', 'icon': '🛍', 'color': ICON_RED},
  {'id': 18, 'title': '뷰티', 'icon': '💄', 'color': ICON_RED},
  {'id': 19, 'title': '주식/투자', 'icon': '📈 ', 'color': ICON_BLUE},
  {'id': 20, 'title': '책', 'icon': '📚', 'color': ICON_BLUE},
];

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
