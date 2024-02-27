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
        fontWeight: FontWeight.w300,
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  final Function(String)? onChanged;
  final bool obscureText;
  final TextInputType keyboardType;
  final int maxLength;
  final IconData? icon;
  final String labelText, helperText;

  const MyTextFormField({
    super.key,
    required this.onChanged,
    this.obscureText = false,
    required this.keyboardType,
    required this.maxLength,
    required this.icon,
    required this.labelText,
    required this.helperText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLength: maxLength,
      decoration: InputDecoration(
        icon: Icon(icon),
        labelText: labelText,
        helperText: helperText,
      ),
    );
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