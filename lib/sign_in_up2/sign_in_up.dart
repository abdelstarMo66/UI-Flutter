import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/sign_in_up2/widget.dart';

import 'applocalizations.dart';

// ignore: must_be_immutable
class SignInUpScreen extends StatefulWidget {
  SignInUpScreen({Key? key}) : super(key: key);

  @override
  State<SignInUpScreen> createState() => _SignInUpScreenState();
}

class _SignInUpScreenState extends State<SignInUpScreen> {
  List<String> lang = ["EN", "AR", "DE"];
  bool login = true;
  bool showPassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  String text(String text)=>AppLocalizations.of(context)!.translate(text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      //   actions: [
      //     PopupMenuButton(
      //       icon: const Icon(
      //         Icons.language_outlined,
      //         color: Colors.grey,
      //       ),
      //       iconSize: 30.0,
      //       elevation: 10.0,
      //       shape: const RoundedRectangleBorder(
      //         borderRadius: BorderRadius.all(
      //           Radius.circular(20.0),
      //         ),
      //       ),
      //       color: Colors.white.withOpacity(0.9),
      //       onSelected: (select) {
      //         return print(lang[0]);
      //       },
      //       itemBuilder: (context) {
      //         return lang.map(
      //           (lang) {
      //             return PopupMenuItem<String>(
      //               value: lang,
      //               child: Center(
      //                   child: Text(
      //                 lang,
      //                 style: GoogleFonts.merriweather(
      //                   fontWeight: FontWeight.w600,
      //                 ),
      //               )),
      //             );
      //           },
      //         ).toList();
      //       },
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "lib/sign_in_up2/assets/1.png",
                width: 180.0,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            login = true;
                            emailController.clear();
                            passwordController.clear();
                            showPassword = true;
                          });
                        },
                        style: login
                            ? TextButton.styleFrom(
                                enableFeedback: false,
                                backgroundColor: Colors.black.withOpacity(0.8),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100.0),
                                  bottomLeft: Radius.circular(100.0),
                                )),
                              )
                            : TextButton.styleFrom(),
                        child: Text(
                          text("sign_in"),
                          style: GoogleFonts.merriweather(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF2C9DFF),
                            fontSize: 22.0,
                          ),
                        )),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          login = false;
                          emailController.clear();
                          passwordController.clear();
                          showPassword = true;
                        });
                      },
                      style: !login
                          ? TextButton.styleFrom(
                              backgroundColor: Colors.black.withOpacity(0.8),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100.0),
                                bottomRight: Radius.circular(100.0),
                              )),
                            )
                          : TextButton.styleFrom(),
                      child: Text(
                        text("sign_up"),
                        style: GoogleFonts.merriweather(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF2C9DFF),
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              login ? loginBody() : registerBody(),
            ],
          ),
        ),
      ),
    
    );
  }

  Widget loginBody() => Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 25.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              MyTextInput(
                editingController: emailController,
                hintText: text("enter_email"),
                inputType: TextInputType.emailAddress,
                prefix: Icons.email_outlined,
                fieldValidator: (value) {
                  return null;
                },
              ),
              const SizedBox(
                height: 25.0,
              ),
              MyTextInput(
                editingController: passwordController,
                hintText: text("enter_password"),
                inputType: TextInputType.visiblePassword,
                prefix: Icons.lock_outline_rounded,
                showText: showPassword,
                fieldValidator: (value) {
                  return null;
                },
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Checkbox(
                    value: !showPassword,
                    onChanged: (val) {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                  ),
                  Text(
                    text("show_password"),
                    style: GoogleFonts.merriweather(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.black.withOpacity(0.8),
                  elevation: 5.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),
                  ),
                  height: 50.0,
                  child: Text(
                    text("login"),
                    style: GoogleFonts.merriweather(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: const Color(0xFF2C9DFF),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: Colors.grey.withOpacity(0.6),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 8.0),
                      child: Text(
                        text("or"),
                        style: GoogleFonts.merriweather(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: Colors.grey.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "lib/sign_in_up2/assets/google.png",
                        width: 32.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "lib/sign_in_up2/assets/facebook.png",
                        width: 32.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "lib/sign_in_up2/assets/twitter.png",
                        width: 32.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget registerBody() => Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 25.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "lib/sign_in_up2/assets/google.png",
                        width: 32.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "lib/sign_in_up2/assets/facebook.png",
                        width: 32.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "lib/sign_in_up2/assets/twitter.png",
                        width: 32.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: Colors.grey.withOpacity(0.6),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 8.0),
                      child: Text(
                        text("or"),
                        style: GoogleFonts.merriweather(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1.0,
                        color: Colors.grey.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: MyTextInput(
                      editingController: fNameController,
                      hintText: text("f_name"),
                      inputType: TextInputType.text,
                      prefix: Icons.person_outline_outlined,
                      fieldValidator: (value) {
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: MyTextInput(
                      editingController: lNameController,
                      hintText: text("l_name"),
                      inputType: TextInputType.text,
                      prefix: Icons.person_outline_outlined,
                      fieldValidator: (value) {
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              MyTextInput(
                editingController: phoneController,
                hintText: text("phone"),
                inputType: TextInputType.phone,
                prefix: Icons.phone_enabled_outlined,
                fieldValidator: (value) {
                  return null;
                },
              ),
              const SizedBox(
                height: 25.0,
              ),
              MyTextInput(
                editingController: emailController,
                hintText: text("email_address"),
                inputType: TextInputType.emailAddress,
                prefix: Icons.email_outlined,
                fieldValidator: (value) {
                  return null;
                },
              ),
              const SizedBox(
                height: 25.0,
              ),
              MyTextInput(
                editingController: passwordController,
                hintText: text("password"),
                inputType: TextInputType.visiblePassword,
                prefix: Icons.lock_outline_rounded,
                showText: showPassword,
                fieldValidator: (value) {
                  return null;
                },
              ),
              const SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.black.withOpacity(0.8),
                  elevation: 5.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),
                  height: 50.0,
                  child: Text(
                    text("register"),
                    style: GoogleFonts.merriweather(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: const Color(0xFF2C9DFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
