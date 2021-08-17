import 'package:flutter/material.dart';

void main() {
  runApp(PrimeiroApp());
}

class PrimeiroApp extends StatelessWidget {
  static const String_title = "App Contador";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '_PrimeiroApp',
      home: MyButton(),
    );
  }
}

class MyButton extends StatefulWidget{
  @override
  MyButtonState createState(){
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton>{

  String displayText = "Button habilitado!";
  int count = 0;

  void OnPressOfButton(){
    setState(() {
      
      if(displayText == "Button habilitado!"){
        displayText="Button desabilitado";
      }else{
        displayText="Button habilitado!";
      }
    });
  }

  void OnPressOfButton2(){
    setState(() {
      count++;
    });
  }

  void OnPressOfButton3(){
    setState(() {
      count--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Meu Primeiro Aplicativo"),
        backgroundColor: Colors.blue,
        actions: [],),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Text(displayText, style: TextStyle(fontSize: 40.0, color: Colors.white), ),
              Padding(padding: EdgeInsets.all(10.0),),
              RaisedButton(
                child: Text('Clique', style: TextStyle(color: Colors.white),),
                color: Colors.red,
                onPressed: OnPressOfButton,
              ),
              Padding(padding: EdgeInsets.all(10.0),),
              Text('$count', style: TextStyle(fontSize: 50.0, color: Colors.white),),
              Padding(padding: EdgeInsets.all(10.0),),
              RaisedButton(
                child: Text('+', style: TextStyle(color: Colors.black),),
                color: Colors.yellow,
                onPressed: OnPressOfButton2,
              ),
              RaisedButton(
                child: Text('-', style: TextStyle(color: Colors.black),),
                color: Colors.red,
                onPressed: OnPressOfButton3,
              )
            ],) ,),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/fundo2.jpg"),
                fit: BoxFit.cover
              )
            ),
      ),
    );
  }


}