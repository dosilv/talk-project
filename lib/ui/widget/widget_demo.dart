import 'package:flutter/material.dart';
import 'package:humilylab_talk/theme/color.dart';
import 'package:humilylab_talk/theme/consts.dart';
import 'package:humilylab_talk/ui/widget/defalut_input.dart';
import 'package:humilylab_talk/ui/widget/default_button.dart';
import 'package:humilylab_talk/ui/widget/interest_box.dart';
import 'package:humilylab_talk/ui/widget/main_app_bar.dart';
import 'package:humilylab_talk/ui/widget/round_button.dart';

class WidgetDemo extends StatelessWidget {
  WidgetDemo({
    Key? key,
  }) : super(key: key);

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(
          appBar: AppBar(),
        ),
        body: const MyStatelessWidget());
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottheet'),
        onPressed: () {
          showModal(context);
        },
      ),
    );
  }
}

void showModal(context) {
  showModalBottomSheet<void>(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(40.0),
    ),
    isScrollControlled: true,
    context: context,
    builder: (_) {
      //Q : _로 어떻게context를 받는지 궁금합니다..!
      return Container(
        height: MediaQuery.of(context).size.height * 0.78,
        padding: const EdgeInsets.only(top: 36),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '관심사 선택하기',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '최대 5개까지 선택할 수 있습니다.',
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: DEEP_GRAY,
                  ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ListView.builder(
                  itemCount: ((INTEREST_LIST.length) / 2).ceil(),
                  itemBuilder: (context, i) {
                    return INTEREST_LIST.length > 2 * i + 1
                        ? Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: RoundButton(
                                      activated: false,
                                      onTap: () {},
                                      text:
                                          '${INTEREST_LIST[2 * i]['icon']} ${INTEREST_LIST[2 * i]['title']}',
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: RoundButton(
                                      activated: false,
                                      onTap: () {},
                                      text:
                                          '${INTEREST_LIST[2 * i + 1]['icon']} ${INTEREST_LIST[2 * i + 1]['title']}',
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              )
                            ],
                          )
                        : Row(
                            children: [
                              Expanded(
                                child: RoundButton(
                                    activated: false,
                                    onTap: () {},
                                    text:
                                        '${INTEREST_LIST[2 * i]['icon']} ${INTEREST_LIST[2 * i]['title']}'),
                              ),
                              const Expanded(child: SizedBox()),
                            ],
                          );
                  },
                ),
              ),
            ),
            DefaultButton(
                activated: true,
                borderRadius: 0,
                botttomPadding: 24,
                onTap: () => Navigator.pop(context),
                text: '확인'),
          ],
        ),
      );
    },
  );
}
