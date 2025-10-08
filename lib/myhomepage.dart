import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int nbDe = 1;

  void _turnDe() {
    setState(() {});
  }

  void Un() {
    setState(() {});
  }

  void PlusUn() {
    setState(() {
      nbDe++;
    });
  }

  void PlusDix() {
    setState(() {
      nbDe += 10;
    });
  }

  void MoinsUn() {
    if (nbDe > 0) {
      setState(() {
        nbDe--;
      });
    }
  }

  void MoinsDix() {
    if (nbDe >= 10) {
      setState(() {
        nbDe -= 10;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: MoinsDix, child: const Text("-10")),
              ElevatedButton(onPressed: MoinsUn, child: const Text("-1")),
              ElevatedButton(onPressed: Un, child: const Text("1")),
              ElevatedButton(onPressed: PlusUn, child: const Text("-10")),
              ElevatedButton(onPressed: PlusDix, child: const Text("-10")),
            ],
          ),
          Row(
            children: [
              Container(
                child: Text(
                  'Nombre de D6: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _turnDe,
        tooltip: 'Start',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
