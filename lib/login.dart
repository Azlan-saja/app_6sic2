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
        children: const [
          MyTextSedang(data: 'Hey,'),
          MyTextBesar(data: 'Login Now!'),
          MyTextKecil(data: 'Login Menggunakan Email dan Password Anda!'),
          MyTextFormField(),
          TextField(),
          MyTextKecil(data: 'Forget Password? Reset!'),
          ElevatedButton(onPressed: null, child: Text('Log In')),
        ],
      ),
    );
  }
}
