import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'background.dart';
import 'login.dart';
import 'widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context, GoTo(page: const LoginScreen()));
                      },
                      color: Colors.white,
                      elevation: 5.0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          bottomLeft: Radius.circular(50.0),
                        ),
                      ),
                      height: 50.0,
                      child: Text(
                        "Login",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Register",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60.0),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12, //New
                                  blurRadius: 15.0,
                                  offset: Offset(0, 5))
                            ],
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(50.0),
                                ),
                                child: MyTextInput(
                                    editingController: nameController,
                                    inputType: TextInputType.text,
                                    hintText: "User Name",
                                    prefix: Icons.person_outline_outlined,
                                    fieldValidator: (value) {
                                      return null;
                                    }),
                              ),
                              MyTextInput(
                                editingController: emailController,
                                inputType: TextInputType.emailAddress,
                                hintText: "Email Address",
                                prefix: Icons.email_outlined,
                                fieldValidator: (value) {
                                  return null;
                                },
                              ),
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(50.0),
                                ),
                                child: MyTextInput(
                                  showText: true,
                                  editingController: passwordController,
                                  inputType: TextInputType.visiblePassword,
                                  hintText: "Password",
                                  prefix: Icons.lock_outline_rounded,
                                  fieldValidator: (value) {
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 45.0,
                          top: 55.0,
                          child: FloatingActionButton(
                            elevation: 10.0,
                            onPressed: () {},
                            backgroundColor: Colors.cyan,
                            child: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                              size: 25.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
