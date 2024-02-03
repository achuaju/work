import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_work/screens/register.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  bool showw = true;
  GlobalKey<FormState> funkey = GlobalKey();
  TextEditingController emailcontrol = TextEditingController();
  TextEditingController passcontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: funkey,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
              ),
              Positioned(
                top: 80,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 900,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 290, top: 20),
                      //   child: InkWell(
                      //     onTap: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => const RegisterPag()));
                      //     },
                      //     child: const CircleAvatar(
                      //       backgroundColor: Colors.blueAccent,
                      //       radius: 15,
                      //       child: Center(
                      //           child:
                      //               Icon(Icons.close_sharp, color: Colors.white)),
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w800,
                            color: Colors.blueAccent),
                      ),
                      const SizedBox(
                        height: 90,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter email_id";
                            }
                          },
                          controller: emailcontrol,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            hintText: "EMAIL",
                            hintStyle: const TextStyle(
                              fontSize: 15,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter password";
                            }
                          },
                          controller: passcontrol,
                          decoration: InputDecoration(
                            hintText: "PASSWORD",
                            hintStyle: const TextStyle(
                              fontSize: 15,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: InkWell(
                                onTap: () {
                                  showw = !showw;
                                },
                                child: showw
                                    ? const Icon(
                                  Icons.visibility,
                                  color: Colors.black54,
                                )
                                    : const Icon(Icons.visibility_off)),
                          ),
                          obscureText: showw,
                          obscuringCharacter: "*",
                          maxLength: 8,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account yet?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegistrationPage()));
                            },
                            child: const Text(
                              "Create one.",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent),
                            onPressed: () async {
                              if (funkey.currentState!.validate()) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>  homepage(),
                                  ),);

                              }
                            },
                            child: const Text(
                              "LOGIN",
                              style:
                              TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}