import 'package:flutter/material.dart';

void main() => runApp(GaleriaDeImagenesApp());

class GaleriaDeImagenesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "No tiene efecto", debugShowCheckedModeBanner: false, home: new PaginaPrincipal(title: "GridView Galeria de fotos Cesar")); //Fin de materialApp
  } //Fin de widget
} //Fin agenda fotografica

class PaginaPrincipal extends StatefulWidget {
  final String title;
  @override
  PaginaPrincipal({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    return new PaginaPrincipalState();
  }
} //Fin PaginaPrincipal

class PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(21),
      ), //Fin de gridview
    ); //Fin de Scaffold
  } //Fin de widget
} //Fin de PaginaPrincipalState

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers = new List<Container>.generate(numberOfTiles, (int index) {
    //index = 0, 1, 2,...
    final imageName = index < 9 ? 'images/image0${index + 1}.jpg' : 'images/image${index + 1}.jpg';
    return new Container(
      child: new Image.asset(imageName, fit: BoxFit.fill),
    );
  }); //Fin contenedor
  return containers;
} //fin de list widget