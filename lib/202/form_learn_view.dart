import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  final GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {},
        child: Column(
          children: [
            TextFormField(
              validator: ((value) {
                return (value?.isNotEmpty ?? false) ? null : 'bu alan boş olamaz';
                //* value null ise false olacak.
                //* isnotempty ise true dönecek.
                //* true dönerse null dönecek, sıkıntı yok uyarı vermez.
                //* false dönerse uyarı verecek.
              }),
            ),
            TextFormField(
              validator: FormFieldValidator().isNotEmpty,
            ),
            DropdownButtonFormField<String>(
              value: 'v',
              validator: FormFieldValidator().isNotEmpty,
              items: const [
                DropdownMenuItem(
                  value: 'v',
                  child: Text('a'),
                ),
                DropdownMenuItem(
                  value: 'v1',
                  child: Text('a'),
                ),
                DropdownMenuItem(
                  value: 'v2',
                  child: Text('a'),
                ),
              ],
              onChanged: (value) {},
            ),
            ElevatedButton(
              onPressed: () {
                if (_key.currentState?.validate() ?? false) {
                  print('okey');
                }
              },
              child: const Text('SAVE'),
            ),
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage._notEmptyMessage;
  }
}

class ValidatorMessage {
  static const String _notEmptyMessage = 'bu alan boş olamazz';
}
