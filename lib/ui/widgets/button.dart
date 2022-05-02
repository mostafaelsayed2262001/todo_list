import 'package:flutter/material.dart';
import 'package:todo_list/ui/theme.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.lable,
    required this.onTap,
  }) : super(key: key);
  final String lable;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Center(
        child: Container(
          alignment: Alignment.center,
          height: 45,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: primaryClr,
          ),
          child: Text(
            lable,
            style: TextStyle(
              color: Colors.white,


            ),textAlign: TextAlign.center ,
          ),
        ),
      ),
    );
  }
}
