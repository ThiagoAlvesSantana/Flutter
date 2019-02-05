import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _peaple = 0;
  String _text = "";

  void changePeaple(int delta){
    setState(() {
      _peaple += delta;

      if(_peaple < 0){
        _text = "Lotado";
      } else {
        _text = "Tem vagas!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("images/restaurant.jpg", fit: BoxFit.cover, height: 1000.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas: $_peaple",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                FlatButton(
                  child: Text("+1", style: TextStyle(fontSize: 40.0, color: Colors.white),),
                  onPressed: () {
                    changePeaple(1);
                  },
                ),
                FlatButton(
                  child: Text("-1", style: TextStyle(fontSize: 40.0, color: Colors.white),),
                  onPressed: () {
                    changePeaple(-1);
                  },
                ),
              ],
            ),
            Text(_text,
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0)),
          ],
        )
      ],
    );
  }
}


