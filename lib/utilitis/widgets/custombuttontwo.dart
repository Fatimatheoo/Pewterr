import 'package:flutter/material.dart';

import 'buttonstyle.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child: Text('login',style: TextStyle(fontFamily: 'Font2',fontSize: 19,fontWeight: FontWeight.w700,color: Colors.black)),style: ButtonTwo,);
  }
}
