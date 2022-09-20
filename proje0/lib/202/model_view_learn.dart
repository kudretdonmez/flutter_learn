import 'package:flutter/material.dart';
import 'package:proje0/202/model_learn.dart';

class ModelViewLearn extends StatefulWidget {
  const ModelViewLearn({super.key});

  @override
  State<ModelViewLearn> createState() => _ModelViewLearnState();
}

class _ModelViewLearnState extends State<ModelViewLearn> {
  var user9 = PostModel8(body: 'a');

  @override
  void initState() {
    super.initState();

    final user1 = PostModel1();
    user1.body = 'hello';

    final user2 = PostModel2(1, 2, 'a', 'b');
    user2.body = 'c';

    final user3 = PostModel3(1, 2, 'a', 'b');
    //*PostModel3 te final oldukları için değiştirilemezler
    //user3.body = 'c';

    //* LOCAL
    final user4 = PostModel4(userId: 1, id: 2, title: 'a', body: 'b');
    //user4.body = 'c ;

    final user5 = PostModel5(userId: 1, id: 2, title: 'a', body: 'b');
    user5.userId;

    final user6 = PostModel6(userId: 1, id: 2, title: 'a', body: 'b');

    final user7 = PostModel7();

    //* SERVICE
    final user8 = PostModel8(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'vb');
            user9.updateBody('ali');
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.body ?? 'Not have any data'),
      ),
    );
  }
}
