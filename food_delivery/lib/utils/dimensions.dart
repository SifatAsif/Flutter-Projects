import 'package:get/get.dart';

//keeping 844 and 390 as the standard height and width in mind

class Dimensions {
  //getting Screen Size with Getx package
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //page view sizes
  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  //dynamic height of padding and margins
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;

  //dynamic width of padding and margins
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;

  //dynamic font size
  static double font20 = screenHeight / 42.2;

  //dynamic radius
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  //dynamic icon size
  static double iconSize24 = screenHeight / 35.17;

  //list view size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContainerSize = screenWidth / 3.9;
}