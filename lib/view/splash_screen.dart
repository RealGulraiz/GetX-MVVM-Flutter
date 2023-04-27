import 'package:flutter/material.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';
import 'package:getx_mvvm/res/assets/image_assets.dart';
import 'package:getx_mvvm/res/components/general_exception.dart';
import 'package:getx_mvvm/res/components/internet_exceptions_widget.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // return InternetExceptionWidget();

    return Scaffold(
      appBar: AppBar(
        title: Text('email_hint'.tr),
      ),
      body: Column(
        children: [
          RoundButton(title: 'Login', onPress: () {}, width: 200, loading: true,),
          RoundButton(title: 'SignUp', onPress: () {}, width: 200,),

        ],
      ),

      // body: GeneralExceptionWidget(onPress: (){ },),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     Utils.toastMessage('RealGulraiz Bottom');
      //     Utils.toastMessageCenter('RealGulraiz Center');
      //
      //   },
      // ),
    );
  }
} 
