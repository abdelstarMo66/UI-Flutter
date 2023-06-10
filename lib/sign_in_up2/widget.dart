import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// ignore: must_be_immutable
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
          hintStyle: GoogleFonts.merriweather(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 17.0,
          ),
          focusColor: Colors.white,
          fillColor: Colors.white,
          filled: true,
          focusedBorder:  OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF2C9DFF),),
            borderRadius: BorderRadius.circular(20.0),
          ),
          contentPadding: const EdgeInsets.only(left: 5.0,top: 18.0,bottom: 18.0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0.8),),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        keyboardType: inputType,
        obscureText: showText,
        style: GoogleFonts.merriweather(
          fontWeight: FontWeight.w600,
          fontSize: 17.0,
        ));
  }
}
