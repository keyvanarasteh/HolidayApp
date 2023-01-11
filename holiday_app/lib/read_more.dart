// ignore_for_file: empty_statements, dead_code, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ReadMore extends StatelessWidget {
  const ReadMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      "Manarola (yöresel dilde Manaea), kuzey İtalya'da, Liguria'daki La Spezia ilindeki Riomaggiore komünü içinde yer alan küçük bir kasaba, bir frazionedir. 353 kişilik bir nüfusa sahiptir. Cinque Terre kasabalarının ikinci en küçüğüdür. 1997 yılında UNESCO tarafından Dünya Mirası olarak listelenmiştir.Manarola (yöresel dilde Manaea), kuzey İtalya'da, Liguria'daki La Spezia ilindeki Riomaggiore komünü içinde yer alan küçük bir kasaba, bir frazionedir. ",
      trimLines: 3,
      preDataText: "MANAROLA",
      preDataTextStyle: TextStyle(fontWeight: FontWeight.w500),
      style: TextStyle(color: Colors.black),
      colorClickableText: Colors.pink,
      trimMode: TrimMode.Line,
      trimCollapsedText: '...Read More',
      trimExpandedText: ' Read Less',
    );
  }
}
