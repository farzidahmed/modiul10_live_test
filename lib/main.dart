import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Modiul10());
}
class Modiul10 extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
}
Mysnackbar(messeage,context){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(messeage))
  );
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text('Text Styling App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Flutter Text Styling",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text("Expriment with text styling",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18),),
              SizedBox(height: 20,),
              TextButton(onPressed: (){
                    Mysnackbar("You clicked the button!", context);
              },
                  child: Text("Click Me")),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Wellcome to ",style: TextStyle(fontSize: 16),),
                  Text('Flutter!',style: TextStyle(color: Colors.blue,fontSize: 16),)
                ],
              ),
            ],
          ),
        ),
      );

}