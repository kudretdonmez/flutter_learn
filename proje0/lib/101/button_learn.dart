// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          //!-------------------------------------------------------------------
          //TEXT BUTTON
          //BUTONA BASILDIĞINDA RENK DEĞİŞTİRİR. SADECE TIKLANDIĞINDA RENK DEĞİŞİR.
          //TIKLAMA BIRAKILDIĞINDA ESKİ RENGİNE GERİ DÖNER.
          TextButton(
            child: Text('Save', style: Theme.of(context).textTheme.subtitle2),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.red;
            })),
            onPressed: () {},
          ),

          //!-------------------------------------------------------------------

          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),

          //!-------------------------------------------------------------------

          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.air_outlined)),

          //!-------------------------------------------------------------------

          //OUTLINED BUTTON
          //CircleBorder() , RoundedRectangleBorder() , StadiumBorder()
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red, shape: const StadiumBorder(), padding: const EdgeInsets.all(10)),
            onPressed: () {},
            child: const SizedBox(
              width: 200,
              child: Text('datssa'),
            ),
          ),

          //!-------------------------------------------------------------------

          // IKONLU BUTON
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.air),
            label: const Text('rüzgarlı'),
          ),

          //!-------------------------------------------------------------------

          InkWell(
            onTap: () {},
            child: const Text('asadasfğk'),
          ),

          //!-------------------------------------------------------------------

          Container(
            height: 100,
            color: Colors.amber[50],
          ),
          //ortadaki beyaz alan. buton ortaya gelmesi için

          //!-------------------------------------------------------------------

          // ELEVATED BUTTON
          // sizedbox araya boşluk koymak
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey[900],
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20, right: 40, left: 40),
              child: Text(
                'Place Bid',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
