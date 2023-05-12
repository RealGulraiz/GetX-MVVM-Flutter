import 'package:flutter/material.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';
import 'package:getx_mvvm/res/assets/image_assets.dart';
import 'package:getx_mvvm/res/components/general_exception.dart';
import 'package:getx_mvvm/res/components/internet_exceptions_widget.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashServices = SplashServices() ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    // return InternetExceptionWidget();

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(child: Text('welcome_back'.tr, textAlign: TextAlign.center,)),


      // appBar: AppBar(
      //   title: Text('email_hint'.tr),
      // ),
      // body: Column(
      //   children: [
      //     RoundButton(title: 'Login', onPress: () {}, width: 200, loading: true,),
      //     RoundButton(title: 'SignUp', onPress: () {}, width: 200,),
      //   ],
      // ),

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
