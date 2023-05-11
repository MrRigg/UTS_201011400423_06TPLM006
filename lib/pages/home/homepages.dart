import 'package:flutter/material.dart';

import '../../widgets/cardShoes.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Shoes',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/people3.jpg'),
                      radius: 30,
                    )
                  ]),
            ),
          ],
        ),
        SizedBox(height: 20),
        CardShoes(
            titleProduct: 'Converse Chuck Taylor 70s High',
            cost: '900.000',
            Color: Colors.grey[100],
            linkProduct:
                'https://freepngimg.com/thumb/shoes/112098-pic-converse-black-shoes-free-hd-image.png'),
        CardShoes(
            titleProduct: 'Adidas Yeezy Boost SPLY 350 V2 Black',
            cost: '2.000.000',
            Color: Colors.brown[100],
            linkProduct:
                'https://freepngimg.com/thumb/adidas/58296-yeezy-sneakers-originals-adidas-shoe-png-file-hd.png'),
        CardShoes(
            titleProduct: 'Nike Flex Experience RN 3 MSL',
            cost: '3.000.000',
            Color: Colors.teal[100],
            linkProduct:
                'https://www.transparentpng.com/thumb/running-shoes/MQ02nC-running-shoes-hd-image.png'),
        CardShoes(
            titleProduct: 'Adidas Revenge Boost',
            cost: '1.500.000',
            Color: Colors.deepOrange[100],
            linkProduct:
                'https://freepngimg.com/thumb/adidas_shoes/3-2-adidas-shoes-png-clipart.png'),
      ],
    ));
  }
}
