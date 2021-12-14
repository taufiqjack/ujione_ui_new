import 'package:e_learning_uji/ui/view/register_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isCheck = false;
  bool obsecureText = true;

  void togglePass() {
    setState(() {
      obsecureText = !obsecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF32B770),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 300,
                left: 40,
                right: 40,
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
                        const Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Email atau Nomor Induk Siswa',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: obsecureText,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: InkWell(
                              child: Icon(
                                obsecureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color:
                                    obsecureText ? Colors.grey : Colors.green,
                              ),
                              onTap: () {
                                togglePass();
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 30),
                          child: Row(
                            children: [
                              Checkbox(
                                  shape: const CircleBorder(),
                                  activeColor: Colors.green,
                                  value: isCheck,
                                  onChanged: (value) {
                                    setState(() {
                                      isCheck = value!;
                                    });
                                  }),
                              const Text('Ingat saya'),
                              const SizedBox(
                                width: 60,
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text('Lupa sandi?'),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Login',
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFF32B770)),
                              fixedSize: MaterialStateProperty.all(
                                  const Size(300, 50))),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          child: const Text(
                            'Kembali ke kode registrasi',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const RegisterView()));
                          },
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
