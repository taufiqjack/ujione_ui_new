import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:e_learning_uji/core/constans/api.dart';
import 'package:e_learning_uji/ui/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  String? registerCode;
  final registerController = TextEditingController();

  Future register() async {
    var data = {'token': registerCode};

    registerCode = registerController.text;

    await Dio().post(BaseUrl().getPrefixToken, data: jsonEncode(data));

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const LoginView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProgressHUD(
        barrierColor: Colors.black45,
        backgroundColor: Colors.black54,
        child: Builder(
          builder: (context) => SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: 500,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFF32B770),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 300,
                    left: 25,
                    right: 25,
                  ),
                  child: Container(
                    height: 400,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 2,
                            offset: Offset(0, 0)),
                      ],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Masukkan kode registrasi\n untuk melanjutkan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey.shade500),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              controller: registerController,
                              decoration: const InputDecoration(
                                labelText: 'Kode Registrasi',
                              ),
                              // validator: (value) {
                              //   if (value.toString().isEmpty) {
                              //     return _toastMsg();
                              //   }
                              //   return null;
                              // },
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                var success = register();
                                if (success == true) {
                                  final progress = ProgressHUD.of(context);
                                  progress!.showWithText('Loading...');
                                  Future.delayed(const Duration(seconds: 3),
                                      () {
                                    progress.dismiss();
                                    register();
                                  });
                                }
                              },
                              child: const Text(
                                'Login',
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xFF32B770)),
                                  fixedSize: MaterialStateProperty.all(
                                      const Size(300, 50))),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _toastMsg() {
    Fluttertoast.showToast(
        msg: 'form tidak boleh kosong',
        timeInSecForIosWeb: 1,
        fontSize: 12,
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_SHORT);
  }
}
