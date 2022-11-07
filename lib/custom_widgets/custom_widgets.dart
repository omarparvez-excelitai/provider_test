import 'package:flutter/material.dart';


//for button
customButton(BuildContext context,
    {text, press, height, width, top, left, right, bottom, color, radius}) {
  return Center(
    child: Container(
      width:width,
      height: height,
      margin: EdgeInsets.only(
          top: top ?? 0,
          left: left ?? 0,
          right: right ?? 0,
          bottom: bottom ?? 0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius ?? 0)),
              primary: color ?? const Color(0xff0ce0ff)),
          onPressed: press,
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),
          )),
    ),
  );
}

//for text_field
customTextField(BuildContext context,
    {controller, hintText, keyboardType, icon, autofillHints,isObscure}) {
  return Container(
    //decoration
      padding: const EdgeInsets.all(10),
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(1, 1),
              blurRadius: 10,
            ),
            BoxShadow(
              color: Colors.transparent,
              offset: Offset(-1, -1),
              blurRadius: 10,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //for search
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller,
                  keyboardType: keyboardType,
                  autofillHints: [autofillHints],
                  decoration: InputDecoration(
                    hintText: hintText,
                    isCollapsed: true,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding:
                    const EdgeInsets.only(top: 8, bottom: 8, left: 12),
                  ),
                ),
              ),
              icon != null
                  ? Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 2,
                            spreadRadius: 1.5,
                            offset: const Offset(0, 2.5))
                      ]),
                  child: icon)
                  : Container(),
            ],
          ),
        ],
      ));
}
