import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/repository/login_repository/login_repository.dart';

import '../../utils/utils.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };

    _api.loginApi(data).then((value) {
      loading.value = false ;
      if(value['error'] == 'user not found'){
        Utils.snackBar('Login', value['error']);
      }else {
        Utils.snackBar('Login', 'Login successfully');
      }
    }).onError((error, stackTrace){
      print(error.toString());
      loading.value = false ;
      Utils.snackBar('Error', error.toString());
    });
  }

  List user = [];

  @override
  void onInit() {
    user = [
      {"id": 1, "name": "Hamza"},
      {"id": 2, "name": "Hamza"},
      {"id": 3, "name": "Hamza"},
    ];
    update();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
