import 'package:flutter/material.dart';

class MyButtonF extends StatelessWidget {

  final void Function()? onTap;

  const MyButtonF({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.greenAccent[100],

        ),
        child: Center(
            child: Text(
              'For Sale',
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold
                , fontSize: 16,),
            )
        ),
      ),
    );
  }
}