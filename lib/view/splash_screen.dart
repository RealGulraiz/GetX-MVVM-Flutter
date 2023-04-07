import 'package:flutter/material.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';
import 'package:getx_mvvm/res/assets/image_assets.dart';
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
    return Scaffold(
      body: Image(
          image: AssetImage(ImageAssets.profilePhoto),
      ),
      appBar: AppBar(
        title: Text('email_hint'.tr),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Utils.toastMessage('RealGulraiz Bottom');
          Utils.toastMessageCenter('RealGulraiz Center');

        },
      ),
    );
  }
} 
