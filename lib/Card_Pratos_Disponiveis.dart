import 'package:myapp/pratos_almoco.dart';
import 'package:flutter/material.dart';

class CardPratosDisponiveis extends StatefulWidget {
  final OpcoesAlmoco pratosDisponiveis;

  const CardPratosDisponiveis({
    super.key,
    required this.pratosDisponiveis,
  });

  @override
  State<CardPratosDisponiveis> createState() => _CardPratosDisponiveis();
}

class _CardPratosDisponiveis extends State<CardPratosDisponiveis> {
  OpcoesAlmoco get pacote => widget.pratosDisponiveis;
  int contador = 0;

  void incrementarContador() {
    setState(() {
      contador = contador + 1;
    });
  }

  void decrementaContador() {
    if (contador > 0) {
      setState(() {
        contador = contador - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(pacote.urlImagem),
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.restaurant_menu,
                        size: 30,
                      ),
                      Text(
                        pacote.titulo,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        onPressed: incrementarContador,
                        icon: Icon(
                          Icons.add,
                          size: 20,
                        ),
                      ),
                      Text(
                        '$contador',
                        style: const TextStyle(fontSize: 20),
                      ),
                      IconButton(
                        onPressed: decrementaContador,
                        icon: Icon(
                          Icons.remove,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        pacote.adc,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        pacote.Descricao,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'R\$ ${pacote.valor}',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.shopping_cart_outlined,
                            size: 30,
                          ),
                          SizedBox(width: 8),
                          Text(
                            '${pacote.opcao}',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 20,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '${pacote.localizacao}',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 85),
                      Icon(
                        Icons.lock_clock,
                        color: Colors.red,
                        size: 20,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '${pacote.hora}',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}