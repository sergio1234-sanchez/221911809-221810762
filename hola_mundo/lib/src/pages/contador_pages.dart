import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadoPageState();
  }
}

class _ContadoPageState extends State<ContadorPage> {
  final _estiloText = new TextStyle(fontSize: 25);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(' Numero de Taps Jhovanny', style: _estiloText),
            Text('$_conteo', style: _estiloText),
          ],
        )),
        floatingActionButton: _createBotones());
  }

  Widget _createBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(child: Icon(Icons.add_alarm), onPressed: _reset),
        Expanded(child: null),
        FloatingActionButton(
            child: Icon(Icons.add_alarm), onPressed: _sustraer),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add_alarm), onPressed: _agregar),
      ],
    );
  }

  void _agregar() {
    _conteo++;
    setState(() => _conteo++);
    {}
  }

  void _sustraer() {
    _conteo++;
    setState(() => _conteo--);
    {}
  }

  void _reset() {
    _conteo++;
    setState(() => _conteo == 0);
    {}
  }
}
