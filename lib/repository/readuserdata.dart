import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:my_first_app/screens/signup.dart';
import '../screens/login.dart';

SignUpUser(
    String username,
    String useremail,
    String userpassword
    ) async{
  User? userid = FirebaseAuth.instance.currentUser;

  try {
    await FirebaseFirestore.instance.collection("Users")
        .doc(userid!.uid)
        .set({
      'userName': username,
      'userEmail': useremail,
      'CreatedAt': DateTime.now(),
      'UserId': userid!.uid
    }).then((value) => {
      FirebaseAuth.instance.signOut(),
      Get.to(()=> SignupScreen()),
    });
  }on FirebaseAuthException catch (e){
    print("Error $e");
  }
}