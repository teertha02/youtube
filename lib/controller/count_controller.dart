import 'package:get/get.dart';

class CountController extends GetxController {
  // Basic Rx types
  RxInt number = 0.obs;
  RxDouble price = 99.99.obs;
  RxString name = "Teertha".obs;
  RxBool isActive = true.obs;

  // Collections
  RxList<String> fruits = <String>[].obs;
  RxMap<String, dynamic> user = <String, dynamic>{ "name" :  "chandel" , "contact"  :70282903741}.obs;
  RxSet<int> ids = <int>{}.obs;

  // Nullable Rx types (optional)
  RxnString email = RxnString();
  RxnInt age = RxnInt();

  // Example increment
  void count() {
    number++;
    print("number: $number");
  }

  // Example update for other types
  void updateValues() {
    price.value += 10.5;
    name.value = "Teertha";
    isActive.toggle(); // toggles between true/false

    fruits.addAll(["Apple", "Banana"]);
    user["email"] = "Teertha@example.com";
    ids.add(42);

    email.value = "test@example.com";
    age.value = 25;

}
}
