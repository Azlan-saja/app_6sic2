import 'package:app_6sic2/widget/my_widget.dart';
import 'package:flutter/material.dart';

class MyCatatan extends StatelessWidget {
  const MyCatatan({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: MyTextBesar(data: 'Layer Catatan'),
    );
  }
}
