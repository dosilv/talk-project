import 'package:get/route_manager.dart';
import 'package:humilylab_talk/ui/group_talk/group_talk_list/group_talk_list.dart';
import 'package:humilylab_talk/ui/home/home.dart';

abstract class Routes {
  static const INITIAL = '/';
  static const GROUP_TALK_LIST = '/group-talk-list';
}

class AppRoutes {
  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => const Home()),
    GetPage(name: Routes.GROUP_TALK_LIST, page: () => const GroupTalkList())
  ];
}
