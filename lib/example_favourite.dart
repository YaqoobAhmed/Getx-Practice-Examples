import 'package:get/get.dart';

class ExampleFavourite extends GetxController {
  RxList<String> fruits = ['Orange', 'Mango', 'Apple', 'Bannana'].obs;
  RxList favourite = [].obs;
  addToFavourite(String value) {
    favourite.add(value);
    print(value);
  }

  removeFromFavourite(String value) {
    favourite.remove(value);
    print(value);
  }
}
