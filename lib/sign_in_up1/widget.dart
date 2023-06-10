import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextInput extends StatelessWidget {
  String hintText;
  TextEditingController editingController;
  FormFieldValidator fieldValidator;
  IconData prefix;
  TextInputType inputType;
  bool showText = false;
  MyTextInput({
    super.key,
    this.showText = false,
    required this.editingController,
    required this.inputType,
    required this.hintText,
    required this.prefix,
    required this.fieldValidator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: editingController,
        validator: fieldValidator,
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefix,
            color: Colors.grey,
            size: 25.0,
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.montserrat(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
          focusColor: Colors.white,
          fillColor: Colors.white,
          filled: true,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          contentPadding: const EdgeInsets.only(left: 5.0,top: 18.0,bottom: 18.0),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
        keyboardType: inputType,
        obscureText: showText,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w600,
          fontSize: 17.0,
        ));
  }
}

class GoTo extends PageRouteBuilder {
  final page;
  GoTo({this.page})
      : super(
    pageBuilder: (context, animation, animationTwo) => page,
    transitionsBuilder: (context, animation, animationTwo, child) {
      return FadeTransition(opacity: animation,child: child,);
    },
  );
}
