import 'package:flutter/material.dart';

import 'container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold samples')),

      //!-----------------------------------------------------------------------

      body: const Text('merhaba'),
      backgroundColor: const Color.fromARGB(255, 239, 11, 11),
      extendBody: true,

      //!-----------------------------------------------------------------------

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //*butona basıldığında alttan kayan bir container çıkar
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 400,
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //action butonu konumunu belirler.

      //!-----------------------------------------------------------------------

      drawer: const Drawer(),
      //sağ üst menü tuşu
      //tıklayınca yandan kayan menü çıkar.

      //!-----------------------------------------------------------------------

      bottomNavigationBar: Container(
        height: 200,
        decoration: ProjectContainerDecoration(),
        //container_sized_box_learn.dart dosyasından ProjectContainerDecoration stilleri alır.

        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b'),
          //aşağıdaki butonlar.
        ]),
      ),

      //!-----------------------------------------------------------------------
    );
  }
}

//bottomsheet