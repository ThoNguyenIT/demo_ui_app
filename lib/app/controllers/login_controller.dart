// ignore_for_file: avoid_print
import 'package:get/get.dart';

class LoginController extends GetxController {
  var id = ''.obs;
  var pw = ''.obs;
  var showPassword = false.obs;
  var isAutoLogin = false.obs;

  void togglePasswordVisibility() {
    showPassword.toggle();
  }

  void toggleAutoLogin(bool? value) {
    isAutoLogin.value = value ?? false;
  }

  void validateFields() {
    if (id.value.isEmpty || pw.value.isEmpty) {
      print('ID or password cannot be empty.');
    } else {
      print(
          'ID: ${id.value}, PW: ${pw.value}, Auto-Login: ${isAutoLogin.value}');
    }
  }
}
