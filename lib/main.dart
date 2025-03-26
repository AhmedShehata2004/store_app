import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(child: Text('Hello World!')),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            http.Response response = await http.post(
              Uri.parse('https://fakestoreapi.com/products'),
              body: {
                'title': 'test product',
                'price': '13.5',
                'description': 'lorem ipsum set',
                'image': 'https://i.pravatar.cc',
                'category': 'electronic',
              },
             
            );
            // ignore: avoid_print
            print(response.body);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
