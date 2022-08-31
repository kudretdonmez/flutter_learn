import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  final String text2 = "veli33";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: Column(children:  <Widget> [
          TitleTextWidget(text: text2), 
          _emptyBox(),
          const TitleTextWidget(text:"veli2"), 
          _emptyBox(),
          const TitleTextWidget(text:"veli3"),
          _emptyBox(),
          const TitleTextWidget(text:"veli4"),
          const _CustomContainer(),
          
          /*

          Container'ı CTRL+SHIFT+R ile extract Widget ile açtım.
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.red),
          ),  
          */

        ],
      ),    
    );
  }
  //Extract Method ile açıldı. textlerin arasına  "_emptyBox(),"  konuldu
  SizedBox _emptyBox() {
    return const SizedBox(height: 20);
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}