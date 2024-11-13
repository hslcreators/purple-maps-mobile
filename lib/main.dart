import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Purple Maps"),
        centerTitle: true,
        ),
      body: GridView.count(
        padding: const EdgeInsets.all(8.0),
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        children: [
          for(int i = 0; i < 4; i++)
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
              child: Text(i.toString()),
            )
        ],
      ),
    );
  }
}