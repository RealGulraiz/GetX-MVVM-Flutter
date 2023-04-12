
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_color.dart';

class InternetExceptionWidget extends StatefulWidget {
    const InternetExceptionWidget({Key? key}) : super(key: key);
  
    @override
    State<InternetExceptionWidget> createState() => _InternetExceptionWidgetState();
  }
  
  class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
    @override
    Widget build(BuildContext context) {
      return Padding(
          padding: EdgeInsets.only(top: 300) ,
        child: Column(z
          children: [
            Icon(Icons.cloud_off, color: AppColor.redColor ,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text('internet_exception'.tr)),
            ) ,
          ],
        ),
      );
    }
  }
  