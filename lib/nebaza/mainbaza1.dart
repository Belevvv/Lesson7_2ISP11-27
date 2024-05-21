import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/baza/mainbaza.dart';
import 'package:flutter_application_1/nebaza/izbran1.dart';
import 'package:flutter_application_1/nebaza/korzina1.dart';


final PageController controller = PageController();

class ConstrBook extends StatelessWidget {
  void Function()? onPressed;
  ConstrBook({
    super.key,
    required this.id,
    required this.onPressed,
  });
  final int id;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.all(8),
      child: Column(children: [
        Center(
          child: Text(
            '${BoookList[id].nameB}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Image.network(BoookList[id].Book),
        ),
        Center(
          child: Text(
            'Цена: ${BoookList[id].Cost} руб.',
            softWrap: true,
            maxLines: 5,
            style: TextStyle(fontSize: 12),
          ),
        ),
        Center(
          child: Text(
            'Автор: ${BoookList[id].nameA}',
            softWrap: true,
            maxLines: 5,
            style: TextStyle(fontSize: 12),
          ),
        ),
        SizedBox(height: 5),
        Center(
          child: ElevatedButton(
            child: Text('Информация о товаре'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookPage(id: id)),
              );
            },
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment(0, -1),
          child: ElevatedButton(
            child: Text('Добавить в избранное'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => favoritbook(id: id)),
              );
            },
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment(0, -1),
          child: ElevatedButton(
            child: Text('Добавить в корзину'),
            onPressed: onPressed,
              
        
          ),
        )
      ]),
    );
  }
}






class BookPage extends StatelessWidget {

  const BookPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(BoookList[id].nameB),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const Text('Описание:'),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500, maxHeight: 300),
            child: Container(
                padding: const EdgeInsets.all(1),
                color: Colors.grey,
                child: Container(
                  padding: EdgeInsets.all(4),
                  color: Colors.white,
                  child: ListView(
                    children: [Text(BoookList[id].info)],
                  ),
                )),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500, maxHeight: 300),
            child: PageView(
              controller: controller,
              children: BoookList[id].GetListOfPhoto(),
            ),
          ),
        ],
      ),
    );
  }
}
