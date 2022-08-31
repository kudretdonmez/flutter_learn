import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title='WELCOME';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        // elevation appbarın opaklığını ayarlar
        // sıfır 0 olursa sayfa tek parça gibi
        systemOverlayStyle: SystemUiOverlayStyle.light,
        // sistem simgelerinin siyah yada beyaz olmasını ayarlar.
        leadingWidth: 30,
        //sol taraf boşluğu default 56.


        actions: [
          IconButton(onPressed:(){}, 
          icon: const Icon(Icons.mark_email_unread_sharp),
          
          ),
          const Center(child: CircularProgressIndicator())
        ],
      ),  
    );
  }
} 