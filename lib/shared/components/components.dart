import 'package:flutter/material.dart';


Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 0.0,
  required Function() onPressed,
  required String text ,
}) => Container(
  height: 40.0,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: background,
  ),
  width: width ,
  child: MaterialButton(
    onPressed:onPressed,
    child: Text(
        isUpperCase ? text.toUpperCase() : text,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);



Widget defaultFormField({
  required TextEditingController controller,
  required String labelText,
  required IconData prefix,
  Function(String)? onChange,
  Function(String)? onSubmit,
  required String? Function(String?) validate,
  required TextInputType type,
  bool isPassword = false,
  Function()? suffixPressed,
  IconData? suffix,
}) => TextFormField(
  controller: controller,
  decoration: InputDecoration(
      labelText: labelText,
      prefixIcon: Icon(
        prefix,
      ),
      suffixIcon: IconButton(
        icon: Icon(
            suffix,
        ),
        onPressed: suffixPressed ,
      ),
      border: OutlineInputBorder()
  ),
  obscureText: isPassword,
  keyboardType: type,
  onChanged: onChange,
  onFieldSubmitted: onSubmit,
  validator: validate,
);

