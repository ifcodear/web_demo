import 'package:flutter/material.dart';

class ObjectWeb {
  String title;
  String descripcion;
  String imagen;
  Color color1;
  Color color2;
  ObjectWeb(
      {required this.title,
      required this.descripcion,
      required this.imagen,
      required this.color1,
      required this.color2});
}

List<ObjectWeb> datainfo = [
  ObjectWeb(
      title: 'Red Bull',
      descripcion:
          'Red Bull Racing es una escudería austriaca de Fórmula 1 propiedad de la empresa fabricante de bebidas energéticas Red Bull GmbH. El equipo debutó en la temporada 2005 tras comprar la escudería Jaguar Racing por cerca de 110 millones de dólares. Su primer Gran Premio fue en Australia en 2005',
      imagen: 'imagen/redbull.png',
      color1: const Color(0xff004b93),
      color2: Colors.blue),
  ObjectWeb(
    descripcion:
        "La Academia de pilotos de Ferrari es un programa de desarrollo de pilotos dirigido por el equipo de Fórmula 1 Scuderia Ferrari para promover jóvenes promesas dentro de su propia organización, con varios pilotos seleccionados y financiados por el equipo, que tienen contratos a largo plazo",
    imagen: "imagen/ferrari.png",
    title: "Ferrari",
    color1: Colors.red[700]!,
    color2: Colors.red,
  ),
  ObjectWeb(
      descripcion:
          "McLaren Racing Limited, conocida comúnmente como McLaren,1​ es una escudería británica de automovilismo con sede en Woking, Inglaterra. Fue fundada en 1963 por el piloto neozelandés Bruce McLaren. Es considerado uno de los cuatro grandes equipos de Fórmula 1, Ferrari y Mercedes",
      imagen: "imagen/maclaren.png",
      title: "McLaren",
      color1: Colors.yellow,
      color2: Colors.orangeAccent),
  ObjectWeb(
      descripcion:
          "Mercedes-Benz es una de las automotrices más exitosas de la Fórmula 1, considerada uno de los cuatro equipos con mejores resultados, junto con Williams, Ferrari y McLaren.4​ Participó inicialmente como constructor en Fórmula 1 en 1954 y 1955, y volvió a hacerlo desde 2010 ",
      imagen: "imagen/mercedes.png",
      title: "Mercedes",
      color1: Colors.green[700]!,
      color2: Colors.green),
];
