import 'package:flutter/material.dart';
import 'package:flutter_web_aula/widget/item_produto.dart';
import 'package:flutter_web_aula/widget/mobile_app_bar.dart';
import 'package:flutter_web_aula/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  _LojaVirtualState createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {

  _ajustarVisualizacao(double larguraTela){

    int colunas = 2;
    if (larguraTela <=600){
      colunas = 2;
    } else if (larguraTela <= 960){
      colunas = 4;
    }else {
      colunas = 6;
    }
    return colunas;

  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_,constraints){

          var largura = constraints.maxWidth;
          var alturaBarra = AppBar().preferredSize.height;

          return Scaffold(
            appBar: largura < 600
            ? PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(largura,alturaBarra)
            )
            : PreferredSize(
                child: WebAppBar(),
                preferredSize: Size(largura,alturaBarra)
            ),
            body: Padding(
              padding: EdgeInsets.all(16),
              child: GridView.count(
                  crossAxisCount: _ajustarVisualizacao(largura),
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: [
                    ItemProduto("Kit Multimídia", "2.200,00", "p1.jpg"),
                    ItemProduto("Pneu Goodyear aro 16", "800,00", "p2.jpg"),
                    ItemProduto("Samsung 9", "4.500,00", "p3.jpg"),
                    ItemProduto("Samsung Edge", "2.150,90", "p4.jpg"),
                    ItemProduto("Galaxy 10", "6.200,00", "p5.jpg"),
                    ItemProduto("Iphone 10", "1.900,20", "p6.jpg"),
                  ],
              ),
            ),
          );
        }
    );
  }
}
