import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:humilylab_talk/ui/widget/custom_date_picker.dart';

class CustomDatePickerController extends GetxController {
  int year = 1980;
  int month = 01;
  int day = 01;

  Future<List<int>> showDatePicker() async {
    await Get.bottomSheet(
        CustomDatePicker(initialDateTime: [year, month, day]));
    return [year, month, day];
  }

  void setDate(DateTime dateTime) {
    year = dateTime.year;
    month = dateTime.month;
    day = dateTime.day;
    update();
  }
}
