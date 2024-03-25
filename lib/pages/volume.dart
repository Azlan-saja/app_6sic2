import 'package:app_6sic2/widget/my_widget.dart';
import 'package:flutter/material.dart';

class MyVolume extends StatefulWidget {
  const MyVolume({super.key});

  @override
  State<MyVolume> createState() => _MyVolumeState();
}

class _MyVolumeState extends State<MyVolume> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nilaiJarijari = TextEditingController();
  TextEditingController nilaiTinggi = TextEditingController();

  @override
  void dispose() {
    nilaiJarijari.clear();
    nilaiTinggi.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MyTextBesar(data: 'Hitung Volume'),
            const MyTextBesar(data: 'Tabung'),
            const MyTextSedang(data: 'Rumus V = π x r² x t'),
            MyTextFormField(
              maxLength: 10,
              keyboardType: TextInputType.number,
              icon: Icons.input,
              labelText: 'Nilai Jari-jari',
              helperText: 'Silahkan Input Nilai Jari-jari',
              controller: nilaiJarijari,
              validator: (p0) {
                return (p0 == null || p0.isEmpty)
                    ? 'Nilai Jari-jari Tidak Boleh Kosong!'
                    : null;
              },
            ),
            MyTextFormField(
              maxLength: 10,
              keyboardType: TextInputType.number,
              icon: Icons.input,
              labelText: 'Nilai Tinggi',
              helperText: 'Silahkan Input Nilai Tinggi',
              controller: nilaiTinggi,
              validator: (p0) {
                return (p0 == null || p0.isEmpty)
                    ? 'Nilai Tinggi Tidak Boleh Kosong!'
                    : null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyElevatedButtonSubmit(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        double result = 0;
                        result = 3.14 *
                            (double.parse(nilaiJarijari.text) *
                                double.parse(nilaiJarijari.text)) *
                            double.parse(nilaiTinggi.text);

                        return showDialog<void>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const MyTextBesar(data: 'Hasil'),
                            content: MyTextSedang(
                                data:
                                    'π x r² x t = V\n\n3.14 x ${nilaiJarijari.text}² x ${nilaiTinggi.text} = ${result.toString()}'),
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
                      // print(nilaiPanjang * nilaiLebar);
                    },
                    text: 'Hitung'),
                MyElevatedButtonReset(
                    onPressed: () {
                      nilaiJarijari.clear();
                      nilaiTinggi.clear();
                    },
                    text: 'Ulangi'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
