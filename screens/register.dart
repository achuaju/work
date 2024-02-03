import 'package:flutter/material.dart';


import 'login_page.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  GlobalKey<FormState> funkey = GlobalKey();
  TextEditingController emcontrol = TextEditingController();
  TextEditingController pascontrol = TextEditingController();
  TextEditingController phonecontrol = TextEditingController();
  TextEditingController namecontrol = TextEditingController();

  bool show = true;

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wit = MediaQuery.of(context).size.width;
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
                  height: hit / 1,
                  width: wit,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      const Text(
                        "Register",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 50,
                            color: Colors.blueAccent),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter your name";
                            }
                            return null;
                          },
                          controller: namecontrol,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                          decoration: InputDecoration(
                              hintText: "FULLNAME",
                              hintStyle: const TextStyle(
                                fontSize: 15,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter your email";
                            }
                          },
                          controller: emcontrol,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                          decoration: InputDecoration(
                              hintText: "EMAIL",
                              hintStyle: const TextStyle(
                                fontSize: 15,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter your phone no";
                            }
                          },
                          controller: phonecontrol,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                          decoration: InputDecoration(
                              hintText: "PHONE NO",
                              hintStyle: const TextStyle(
                                fontSize: 15,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter secur password";
                            }
                          },
                          controller: pascontrol,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
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
                                  show = !show;
                                },
                                child: show
                                    ? const Icon(
                                  Icons.visibility,
                                  color: Colors.black54,
                                )
                                    : const Icon(Icons.visibility_off)),
                          ),
                          obscureText: show,
                          obscuringCharacter: "*",
                          maxLength: 8,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent),
                            onPressed: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            child: const Text(
                              "CREATE ACCOUNT",
                              style:
                              TextStyle(color: Colors.white, fontSize: 17),
                            )),
                      )
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