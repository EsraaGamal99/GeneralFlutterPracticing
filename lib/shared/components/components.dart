import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color backgroundColor = Colors.indigoAccent,
  double radius = 0.0,
  bool isUpperCase = true,
   @required Function onPressed,
  @required String text,
}) =>
    Container(
      width: width,
      child: MaterialButton(

        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: (){
      onPressed();
      },
      )
      ,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
    );

Widget defaultTextFormField({
  @required TextInputType keyboardType,
  @required TextEditingController controller,
  Function onFieldSubmitted,
  Function onChanged,
  bool isPassword = false,
  //required Function validate ,
  @required String labelText,
  @required IconData prefixIcon,
  IconData suffixIcon,
  Function suffixPressed,
  @required String text,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      //onFieldSubmitted: onFieldSubmitted!(),
      // onChanged: onChanged!(),
      validator: (value) {
        if (value.isEmpty) {
          return text;
        }
        return null;
      },
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
        prefixIcon: Icon(
          prefixIcon,
        ),
        suffixIcon: suffixIcon!=null ? IconButton(icon: Icon(suffixIcon), onPressed: () { suffixPressed(); },) : null,
        ),
    );
