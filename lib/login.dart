import 'package:app_6sic2/dashboard.dart';
import 'package:app_6sic2/widget/my_widget.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    email.clear();
    password.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //Atas-Bawah
            crossAxisAlignment: CrossAxisAlignment.center, //Kiri-Kanan
            children: [
              const MyTextSedang(data: 'Hey,'),
              const MyTextBesar(data: 'Login Now!'),
              const MyTextKecil(
                  data: 'Login Menggunakan Email dan Password Anda!'),
              const SizedBox(height: 40),
              MyTextFormField(
                controller: email,
                onChanged: (p0) {},
                keyboardType: TextInputType.emailAddress,
                maxLength: 25,
                icon: Icons.email,
                labelText: 'Email',
                helperText: 'Email Harus Aktif',
                validator: (p0) {
                  return (p0 == null || p0.isEmpty)
                      ? 'Email Tidak Boleh Kosong!'
                      : null;
                },
              ),
              MyTextFormField(
                controller: password,
                obscureText: true,
                onChanged: (p0) {},
                keyboardType: TextInputType.visiblePassword,
                maxLength: 8,
                icon: Icons.lock,
                labelText: 'Password',
                helperText: 'Password Harus Gabungan Teks dan Angka',
                validator: (p0) {
                  return (p0 == null || p0.isEmpty)
                      ? 'Password Tidak Boleh Kosong!'
                      : null;
                },
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyElevatedButtonSubmit(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          if (email.text == 'azlansaja19@gmail.com' &&
                              password.text == '12345678') {
                            // Login Berhasil
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyDashboard(),
                              ),
                            );
                          } else {
                            // Login Gagal
                            return showDialog<void>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const MyTextBesar(data: 'Login Gagal'),
                                content: const MyTextSedang(
                                    data: 'Email dan Password Salah!'),
                                actions: <TextButton>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Close'),
                                  )
                                ],
                              ),
                            );
                          }
                        }
                      },
                      text: 'Log In'),
                  MyElevatedButtonReset(
                      onPressed: () {
                        email.clear();
                        password.clear();
                      },
                      text: 'Ulangi'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
