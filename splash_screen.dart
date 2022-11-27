import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_foodie/auth_screen/login_screen.dart';
import 'package:my_foodie/consts/consts.dart';
import 'package:my_foodie/widgets_common/applogo_widget.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
   const SplashScreen({Key? key}) :super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
  // creating a method to change the screen//
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const  LoginScreen());
    });
  }

  @override
  void initState(){
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        heightFactor: 300,
        child: Column(
          children: [
            SizedBox(
                height: 320,
                child:
            Align(
              alignment: Alignment.topLeft,
           child: Image.asset(icSplashBg,width: 300,color: Colors.black,))),
            20.heightBox,
            applogoWidget().color(Colors.red),
            15.heightBox,
            appname.text.fontFamily(bold).size(22).black.make(),
            5.heightBox,
            app_tag.text.fontFamily(bold).size(15).black.make(),
            5.heightBox,
            const Spacer(),
            admin.text.black.fontFamily(bold).size(20).make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }
}
              // This is my Splash screen Ui //
