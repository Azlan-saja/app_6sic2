import 'package:app_6sic2/dashboard.dart';
import 'package:app_6sic2/widget/my_widget.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
              onChanged: (p0) {},
              keyboardType: TextInputType.emailAddress,
              maxLength: 25,
              icon: Icons.email,
              labelText: 'Email',
              helperText: 'Email Harus Aktif',
            ),
            MyTextFormField(
              obscureText: true,
              onChanged: (p0) {},
              keyboardType: TextInputType.visiblePassword,
              maxLength: 8,
              icon: Icons.lock,
              labelText: 'Password',
              helperText: 'Password Harus Gabungan Teks dan Angka',
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyElevatedButtonSubmit(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyDashboard(),
                        ),
                      );
                    },
                    text: 'Log In'),
                MyElevatedButtonReset(onPressed: () {}, text: 'Ulangi'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
