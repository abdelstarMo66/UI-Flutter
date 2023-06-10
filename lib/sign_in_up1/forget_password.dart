import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'background.dart';


class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 80.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text("Enter Your Email to get a new password :",style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,color: Colors.black.withOpacity(0.8),
                    fontSize: 18.0,
                  ),),
                ),
                const SizedBox(height: 30.0,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.0),
                  child: TextFormField(
                      controller: emailController,
                      validator: (value){return null;},
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.grey,
                          size: 25.0,
                        ),
                        hintText: "Email Address",
                        hintStyle: GoogleFonts.montserrat(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                        focusColor: Colors.white,
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                          ),
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                        contentPadding: const EdgeInsets.only(left: 5.0,top: 18.0,bottom: 18.0),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                          ),
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0,
                      )),
                ),
                SizedBox(height: 20.0,),
                Align(
                  alignment: Alignment.center,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    elevation: 5.0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                      ),
                    ),
                    height: 50.0,
                    child: Text(
                      "Go",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
