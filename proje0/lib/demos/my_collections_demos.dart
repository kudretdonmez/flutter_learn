import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  //LATE SONRADAN DEĞER GELECEK DEMEK
  //late final olursa değişmez demek
  @override
  void initState() {
    super.initState();
    _items = CollectionsItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        padding: PaddingUtility().paddingHorizontal,
        //SOL VE SAĞDAN BOŞLUK
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: PaddingUtility().shapeCard,
      margin: PaddingUtility().paddingBottom,
      child: Padding(
        padding: PaddingUtility().paddingAll,
        child: Column(
          children: [
            Image.asset(
              _model.imagePath,
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(
              height: 60,
              child: Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_model.title),
                    Text('${_model.price} eth'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
  // SÜSLÜ PARANTEZ ATIP NAMED YAPIYORUZ. GELEN DATA BİRBİRİYLE EŞLEŞSİN
  //CREATE CONTRUCTOR DİYORUZ
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingAll = const EdgeInsets.all(20.0);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
  final shapeCard = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}

class CollectionsItems {
  late final List<CollectionModel> items;

  CollectionsItems() {
    items = [
      CollectionModel(imagePath: ProjectImages.imageCollection, title: 'Abstract Art', price: 3.4),
      CollectionModel(imagePath: ProjectImages.imageCollection2, title: 'Abstract Art2', price: 3.4),
      CollectionModel(imagePath: ProjectImages.imageCollection3, title: 'Abstract Art3', price: 3.4),
      CollectionModel(imagePath: ProjectImages.imageCollection4, title: 'Abstract Art4', price: 3.4),
    ];
  }
}

class ProjectImages {
  static const imageCollection = 'assets/png/image_collection.png';
  static const imageCollection2 = 'assets/png/image_collection.png';
  static const imageCollection3 = 'assets/png/image_collection.png';
  static const imageCollection4 = 'assets/png/image_collection.png';
}
