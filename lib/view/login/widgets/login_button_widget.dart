import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/components/round_button.dart';

import '../../../view_models/controller/login_view_model.dart';

class LoginButtonWidget extends StatelessWidget {
  final formkey;
  LoginButtonWidget({Key? key , required this.formkey}) : super(key: key);

  final loginVM = Get.put(LoginViewModel());


  @override
  Widget build(BuildContext context) {
    return Obx(() => RoundButton(
      title: 'login'.tr,
      width: 200,
      loading: loginVM.loading.value,
      onPress: (){
        if(formkey.currentState!.validate()) {
          loginVM.loginApi();
        }
      } ,
    ));
  }
}
