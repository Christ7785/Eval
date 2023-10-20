import 'package:flutter/material.dart';

class Calculatrice extends StatefulWidget {
  const Calculatrice({super.key, required this.title, required this.description});
  

  final String title;
  final String description;

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}



class _CalculatriceState extends State<Calculatrice> {
  String _number = "0";
  bool _showCalculator = true;
  


  _updatenumber(String nb) {
    setState(() {
      _number = nb;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My Calculatrice WoW"),
      ),
      body:_showCalculator ?
       Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
  'https://cdn-0001.qstv.on.epicgames.com/JjyzWUDkPwqSHrxmkP/image/landscape_comp.jpeg',
  width: 320.0,
),
            Text(
              _number,
              style: const TextStyle(fontSize: 24, color: Color.fromARGB(255, 6, 252, 35)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () => _updatenumber('1'),
                      child: const Text('1',style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 1, 90, 255)),),
                    ),
                    TextButton(
                      onPressed: () => _updatenumber('4'),
                      child: const Text('4',style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 1, 90, 255)),),
                      ),
                    TextButton(
                      onPressed: () => _updatenumber('7'),
                      child: const Text('7',style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 1, 90, 255)),),
                      ),
                    ],
                    ),
                    Column(
                  children: [
                    TextButton(
                      onPressed: () => _updatenumber('2'),
                      child: const Text('2',style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 1, 90, 255)),),
                      ),
                    TextButton(
                      onPressed: () => _updatenumber('5'),
                      child: const Text('5',style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 1, 90, 255)),),
                      ),
                    TextButton(
                      onPressed: () => _updatenumber('8'),
                      child: const Text('8',style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 1, 90, 255)),),
                      ),
                    ],
                    ),
                    Column(
                  children: [
                    TextButton(
                      onPressed: () => _updatenumber('3'),
                      child: const Text('3',style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 1, 90, 255)),),
                      ),
                    TextButton(
                      onPressed: () => _updatenumber('6'),
                      child: const Text('6',style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 1, 90, 255)),),
                      ),
                    TextButton(
                      onPressed: () => _updatenumber('9'),
                      child: const Text('9',style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 1, 90, 255)),),
                      ),
                    ],
                    ),
                  ],
                  ),
                  TextButton(
                    onPressed: () => _updatenumber('0'),
                      child: const Text('0',style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 1, 90, 255)),),
                      ),
    Image.network(
  'https://steamuserimages-a.akamaihd.net/ugc/2483060607396610469/FDB7FBB061EA876D7C02CA2A48F9609E5ACDBA45/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false',
  width: 250.0,
),                  

          
   Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          _showCalculator = false; 
                        });
                      },
                      tooltip: 'Hide Calculator',
                      child: const Text('OWO'),
                    ),
                  ),
                ],
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
  'https://static.wikia.nocookie.net/owo-bot/images/5/5d/7f7a07bfad0ad6a2faaaccd9421e5392.png/revision/latest?cb=20200328101850&path-prefix=fr',
  width: 200.0,
),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        _showCalculator = true;
                      });
                    },
                    tooltip: 'Show Calculator',
                    child: const Text('UWU'),
                  ),
                ],
              ),
            ),
    );
  }
}


