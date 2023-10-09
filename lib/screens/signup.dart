import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../repository/readuserdata.dart';
import '../utilitis/gaps.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';
import '../utilitis/widgets/custombutton.dart';
import '../utilitis/widgets/customtextfield.dart';
import '../utilitis/widgets/logowidget.dart';
import '../utilitis/widgets/socialbuttonwidget.dart';
import 'OngoingJobs.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  User? currentUser = FirebaseAuth.instance.currentUser;
  var usernamecontroller = TextEditingController();
  var phonecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var confirmcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body : ListView(children: [
          Column(
              children: [
                LogoWidget(),
                VerticalGap(ScreenHeight(context) * 0.04),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                      'Please fill in the form to continue',
                      style: T2textStyle),
                ]),
                VerticalGap(50),
                CustomTextField(
                    text: 'Full Name',
                    textEditingController: usernamecontroller),
                VerticalGap(ScreenHeight(context)*0.01),
                CustomTextField(
                    text : 'Phone Number',
                    textEditingController: phonecontroller),
                VerticalGap(ScreenHeight(context)*0.01),
                CustomTextField(
                    text: 'Email',
                    textEditingController: emailcontroller),
                VerticalGap(ScreenHeight(context)*0.01),
                CustomTextField(
                    text: 'Password',
                    textEditingController: passwordcontroller),
                VerticalGap(ScreenHeight(context)*0.01),
                CustomTextField(
                    text: 'Confirm Password',
                    textEditingController: confirmcontroller),
                VerticalGap(30),
                CustomButton(
                  text: 'SIGNUP',
                  onTap: () async {
                    var username = usernamecontroller.text.trim();
                    var useremail = emailcontroller.text.trim();
                    var userpassword = passwordcontroller.text.trim();

                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: useremail,
                        password: userpassword).then((value) => {
                      log("User Created"),
                      SignUpUser(
                          username,
                          useremail,
                          userpassword
                      )
                    });
                  },
                ),
                VerticalGap(10),
                Center(child: Text('or',style: T3textStyle,)),
                VerticalGap(10),
                socialButtonWidget(),
                VerticalGap(10),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> OngoingJobsScreen()));
                    },
                    child: Text(
                      "Continue as Guest",
                      style: T2textStyle,
                    ),
                  ),
                )
              ])
        ])
    );
  }
}
