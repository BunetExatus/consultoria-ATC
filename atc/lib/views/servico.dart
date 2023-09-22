import 'package:flutter/material.dart';

class Servico extends StatefulWidget {
  const Servico({super.key});

  @override
  State<Servico> createState() => _ServicoState();
}

class _ServicoState extends State<Servico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    appBar: AppBar(
      title: Text("Servico"),
     
    ),
    body: Container(
    padding: EdgeInsets.all(16),
    child: Column(children: [
      
      Image.asset("imagens/img.png"),
      Text("Welcome to Francisco Car's", style: TextStyle(color: Colors.orange, fontSize: 45, ),),
      Image.asset("imagens/img.png")
      
    ],)

  ),
  );
  }
}