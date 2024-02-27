import 'package:app_6sic2/widget/my_widget.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, //Atas-Bawah
        crossAxisAlignment: CrossAxisAlignment.start, //Kiri-Kanan
        children: [
          const MyTextSedang(data: 'Hey,'),
          const MyTextBesar(data: 'Login Now!'),
          const MyTextKecil(data: 'Login Menggunakan Email dan Password Anda!'),
          MyTextFormField(
            onChanged: (p0) {},
            keyboardType: TextInputType.emailAddress,
            maxLength: 25,
            icon: Icons.email,
            labelText: 'Email',
            helperText: 'Email Harus Aktif',
          ),
          MyTextFormField(
            onChanged: (p0) {},
            keyboardType: TextInputType.visiblePassword,
            maxLength: 8,
            icon: Icons.lock,
            labelText: 'Password',
            helperText: 'Password Harus Gabungan Teks dan Angka',
          ),
          const MyTextKecil(data: 'Forget Password? Reset!'),
          const ElevatedButton(onPressed: null, child: Text('Log In')),
        ],
      ),
    );
  }
}
