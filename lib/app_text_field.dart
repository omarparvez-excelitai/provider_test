import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  bool isObscure;
  AppTextField(
      {required this.textController,
      required this.hintText,
      required this.icon,
      required this.isObscure});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.grey[300],

          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            const BoxShadow(
              color: Colors.grey,
              offset: Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ]),
      child: TextField(
  obscureText: isObscure ?true : false,
        controller: textController,

        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder( //Outline border type for TextFeild
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color:Color(0xFFE0E0E0),
                  width: 0,
                )
            ),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color:Color(0xFFE0E0E0),
                  width: 0,
                )
            ),
            fillColor: Colors.grey[300],
            filled: true,
            //hintText,
            hintText: hintText,
            // prefixIcon
            prefixIcon: Icon(icon, color: Colors.yellow),
            //focusedBorder
           
            //
            // border
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
        ),
      ),
    );
  }
}
