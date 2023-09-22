import 'package:atc/views/cliente.dart';
import 'package:atc/views/contato.dart';
import 'package:atc/views/servico.dart';
import 'package:flutter/material.dart';

import 'empresa.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirEmpressa(){
  Navigator.push(
    context, MaterialPageRoute(
      builder: (context)=>Empresa()));
}

 void _Cliente(){
  Navigator.push(
    context, MaterialPageRoute(
      builder: (context)=>Cliente()));
}

 void _Contato(){
  Navigator.push(
    context, MaterialPageRoute(
      builder: (context)=>Contato()));
}

 void _Servico(){
  Navigator.push(
    context, MaterialPageRoute(
      builder: (context)=>Servico()));
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(        
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Consultoria Atm"),
        backgroundColor: Colors.blueGrey,
      ),
      
      body: Container(
         width: double.infinity,  
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("imagens/logo.png"),
            SizedBox(
              height: 34,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(               
                  child: Image.asset("imagens/menu_empresa.png"),
                   onTap: _abrirEmpressa
                ),
                SizedBox(
                  width: 34,
                ),
                GestureDetector(
                  child: Image.asset("imagens/menu_servico.png"),
                   onTap: _Servico
                ),
              ],

            ),
            SizedBox(
              height: 34,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Image.asset("imagens/menu_cliente.png"),
                   onTap: _Cliente
                ),
                SizedBox(
                  width: 34,
                ),
                GestureDetector(
                  child: Image.asset("imagens/menu_contato.png"),
                   onTap: _Contato
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
