import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  String _userName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image.asset(AppImages.logo),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.github,
                      height: 60,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text.rich(
                      TextSpan(
                          text: "Faça login utilizando\n",
                          style: GoogleFonts.notoSans(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                                text: "seu ",
                                style: GoogleFonts.notoSans(
                                  color: AppColors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                )),
                            TextSpan(
                                text: "GitHub",
                                style: GoogleFonts.notoSans(
                                  color: AppColors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )),
                          ]),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.white,
                    border: Border.fromBorderSide(
                      BorderSide(color: AppColors.border),
                    ),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Digite seu username",
                        hintStyle: GoogleFonts.notoSans(fontSize: 16),
                        hoverColor: Colors.black),
                    onChanged: (value) {
                      _userName = value.trim();
                    },
                  ),
                ),
              ),
              TextButton(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: AppColors.white,
                      border: Border.fromBorderSide(
                          BorderSide(color: AppColors.border))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    child: Text(
                      "Acessar",
                      style: GoogleFonts.notoSans(
                          color: AppColors.black, fontSize: 15),
                    ),
                  ),
                ),
                onPressed: () {
                  if (_userName.trim() != "") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HomePage(userName: _userName)));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Digite seu username")),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
