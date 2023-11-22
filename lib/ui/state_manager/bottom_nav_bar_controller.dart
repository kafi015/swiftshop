import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController
{
  int selectedIndex = 0;

  int get selectedIndexGet => selectedIndex;
  void changeIndex(int index)
  {
    selectedIndex = index;
    update();
  }
  void backToHome()
  {
    if(selectedIndex != 0)
      {
        selectedIndex = 0;
        update();
      }


  }
}