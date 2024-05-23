import 'package:flutter/material.dart';
import 'map1.dart';
import 'map2.dart';
import 'map3.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _HomePageState();
}

//Criando a parte de cima do app!
class _HomePageState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),


      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Definindo o icone que ficará no centro e também estilizando
            const Icon(

              Icons.add_business_sharp,
              size: 140.0,
              color: Colors.green,
            ),

            //Texto que aparecerá em baixo!
            Text(
              "MENU",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.greenAccent, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.greenAccent, fontSize: 25.0),
            ),

            //Definindo onde vai ficar os botões que irá para os outros app!
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  //Definindo o botão que vai para o APP "IMC", lembrando essa rota não é a nomeada, pois ja estava feito a nomeada
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Map1())
                      );
                    },
                    //estilizando o botão!
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white54),
                    ),
                    //colocando texto dentro do botão
                    child: const Text('mapa 1'),
                  ),
                  //Definindo o botão que vai para o APP "Contador", lembrando essa rota não é a nomeada, pois ja estava feito a nomeada
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Map2())
                      );
                    },
                    //estilizando o botão!
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white54),
                    ),
                    //colocando texto dentro do botão
                    child: const Text('Mapa 2'),
                  ),

                  //Definindo o botão que vai para o APP "Produto", lembrando essa rota não é a nomeada, pois ja estava feito a nomeada
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Map3())
                      );
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white54),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white54),
                    ),
                    child: const Text('mapa 3'),
                  ),
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}



