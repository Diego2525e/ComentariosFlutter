import 'package:flutter/material.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget titleComentarioSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Comentarios y Quejas',
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: color,
        ),
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(16),
      child: Text(
        'Dejanos tu comentario o quejas para en un futuro brindar un mejor servicio',
        softWrap: true,
      ),
    );

    Widget inputSection = Container(
      padding: const EdgeInsets.all(16),
      child: TextField(
        maxLines: null,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );

    Widget buttonSection = Container(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {

            },
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
//                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text('Guardar', style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Comentario'),
        ),
        body: ListView(
          children: [
            titleComentarioSection,
            textSection,
            inputSection,
            buttonSection,
          ],
        ),
      ),
    );
  }
}
