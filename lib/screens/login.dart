import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_first_app/screens/signup.dart';
import '../utilitis/gaps.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';
import '../utilitis/widgets/custombutton.dart';
import '../utilitis/widgets/customtextfield.dart';
import '../utilitis/widgets/logowidget.dart';
import '../utilitis/widgets/socialbuttonwidget.dart';
import 'OngoingJobs.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  var hinttext = 'Enter your email';
  var hintext = 'Password';
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  bool? check1 = false;
  bool _passwordVisible = true;

  @override
  void initState() {
    _passwordVisible = !_passwordVisible;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body : ListView(children: [
          Column(
              children: [
                LogoWidget(),
                VerticalGap(ScreenHeight(context) * 0.1),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                    children: [
                      Text(
                          'WELCOME BACK!',
                          style: T1textStyle),
                      VerticalGap(8),
                      Text(
                          'Please sign in to your account',
                          style: T2textStyle),
                    ],
                  ),
                ]),
                VerticalGap(50),
                CustomTextField(
                    text: 'Enter your email',
                    textEditingController: emailcontroller),
                VerticalGap(ScreenHeight(context)*0.01),
                CustomTextField(
                    text: 'Password',
                    textEditingController: passwordcontroller),
                InkWell(
                  onTap: (){},
                  child: Align(alignment: Alignment.centerRight,child: Text('Forgot Password?',style: T2textStyle,)),
                ),
                VerticalGap(30),
                CustomButton(
                    text: 'LOGIN',
                    onTap: ()async{
                      var useremail = emailcontroller.text.trim();
                      var userpassword = passwordcontroller.text.trim();

                      try {
                        final User? firebaseUser = (
                            await FirebaseAuth.instance.signInWithEmailAndPassword(
                                email: useremail,
                                password: userpassword)).user;
                        if (firebaseUser != null) {
                          Get.to(() => OngoingJobsScreen());
                        } else {
                          print('Check your email');
                        }
                      } on FirebaseAuthException catch (e) {
                        print("Error $e");
                      }
                    }
                ),
                VerticalGap(10),
                Center(child: Text('or',style: T3textStyle,)),
                socialButtonWidget(),
                Center(
                  child: InkWell(
                    onTap: ()  {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> SignupScreen()));
                    },
                    child: Text(
                      "Don't have an account?",
                      style: T2textStyle,
                    ),
                  ),
                )
              ])
        ])
    );
  }
}