import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proje0/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusTextFieldOne = FocusNode();
  FocusNode focusTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //!-------------------------------------------------------------------

          TextField(
            maxLength: 20,
            //* KARAKTER SINIRLAMASI KOYAR.
            buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
              return AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 10,
                width: 10.0 * (currentLength ?? 0),
                color: Colors.green,
              );
            },
            keyboardType: TextInputType.emailAddress,
            //* KLAVYE MAİL TİPİNDE AÇILIR

            autofillHints: const [AutofillHints.email],
            //* klavyede @ işaretinde auto doldurma gelir. gmail outlook gibi

            inputFormatters: [TextProjectInputFormmater()._formmatter],
            //* İSTEDİĞİMİZ BİR KARAKTERİN YAZILMASINI ENGELLEMEK İÇİN KULLANILIR.

            textInputAction: TextInputAction.next,
            //* KLAVYEYE İLERİ BUTONU EKLER. TIKLAYINCA ALT SEKMEYE GEÇER.

            focusNode: focusTextFieldOne,

            decoration: _InputDecorator().emailInput,
          ),

          //!-------------------------------------------------------------------

          TextField(
            focusNode: focusTextFieldTwo,
            minLines: 1,
            maxLines: 3,
            decoration: const InputDecoration(
              prefix: Icon(Icons.phone),
              border: OutlineInputBorder(),
              labelText: 'Phone',
            ),
          ),

          //!-------------------------------------------------------------------
        ],
      ),
    );
  }
}

class TextProjectInputFormmater {
  final _formmatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text.contains('a')) {
      return oldValue;
    }
    return newValue;
  });
  //? BU KOD İLE KÜÇÜK A HARFİ YAZILAMAZ
}

class _InputDecorator {
  final emailInput = const InputDecoration(
    prefix: Icon(Icons.mail),
    //prefix imleç tıklanınca çıkar
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,

    //labeltext imleç yokken başlık
    //filled: true,
  );
}
