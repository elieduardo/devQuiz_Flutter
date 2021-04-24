import 'package:DevQuiz/core/core.dart';
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
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Usuário do GitHub", hoverColor: Colors.black),
                  onChanged: (value) {
                    _userName = value;
                  },
                ),
              ),
              SizedBox(
                height: 24,
              ),
              TextButton(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: AppColors.white,
                      border: Border.fromBorderSide(
                          BorderSide(color: AppColors.border))),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
                    child: Text(
                      "Acessar",
                      style: GoogleFonts.notoSans(
                          color: AppColors.black, fontSize: 13),
                    ),
                  ),
                ),
                onPressed: () {
                  print(_userName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
