import 'package:flutter/material.dart';

class MyTextBesar extends StatelessWidget {
  final String data;

  const MyTextBesar({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class MyTextSedang extends StatelessWidget {
  final String data;

  const MyTextSedang({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class MyTextKecil extends StatelessWidget {
  final String data;

  const MyTextKecil({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField();
  }
}




// TextFormField(
//       initialValue: '123456',
//       maxLength: 20,
//       obscureText: true,
//       decoration: const InputDecoration(
//         labelText: 'Password',
//         labelStyle: TextStyle(
//           color: Colors.blueGrey,
//         ),
//         suffixIcon: Icon(
//           Icons.password,
//         ),
//         enabledBorder: UnderlineInputBorder(
//           borderSide: BorderSide(
//             color: Colors.blueGrey,
//           ),
//         ),
//         helperText: 'Enter your password',
//       ),
//       onChanged: (value) {},
//     )