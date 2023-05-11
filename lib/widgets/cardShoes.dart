import 'package:flutter/material.dart';

class CardShoes extends StatelessWidget {
  CardShoes(
      {required this.titleProduct,
      required this.cost,
      required this.linkProduct,
      required this.Color});

  final String titleProduct;
  final String cost;
  final String linkProduct;
  final Color;

  @override
  Widget build(BuildContext context) {
    return Container(
      //Card
      height: 170,
      width: double.infinity,
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 12,
              offset: Offset.fromDirection(25)),
        ],
        color: Color,
        borderRadius: BorderRadius.circular(60),
      ),
      child: Column(
        children: [
          Container(
            // color: Colors.green[200],
            height: 130,
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titleProduct, //judul product
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "IDR. ${cost}", //harga product
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image.network(
                      '${linkProduct}',
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
