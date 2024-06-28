import 'package:get/get.dart';

class HomePageCarsolController extends GetxController {
  static HomePageCarsolController get instance => Get.find();

  final currentindex = 0.obs;

  void updateindex(index) {
    currentindex.value = index;
  }
}