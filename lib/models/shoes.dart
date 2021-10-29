import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shoes {
  final String? name;
  final String? imageName;
  final String? description;
  final String? price;
  final Color? bgColor;
  final List<Color>? availableColor;

  Shoes({
      this.availableColor,
    this.name,
    this.imageName,
    this.description,
    this.price,
    this.bgColor
      });
}

List<Shoes> categoryShoes =[
  Shoes(
    name: 'Nike 1',
    imageName: 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/b857de62-8c92-4d06-8b27-1ae6192e56b0/zoom-fly-4-womens-road-running-shoes-5VmBLp.png',
    description: "Take it to the streets and find your tempo. From the moment you lace up, the webbing on the upper and lacing system wrap around your foot for a secure feel from start to finish. The added flex feels highly responsive and secure with every step. A soft, breathable upper combines with a stretchy collar for a sock-like fit and a secure, stable sensation. You've got goals to hit, lace up and fly towards a new best.",
    price: '100.00',
    bgColor: Colors.green.withOpacity(0.2),
      availableColor:[Colors.teal.shade100,Colors.teal.shade300]
  ),
  Shoes(
    name: 'Nike 2',
    imageName: 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/d3c5053d-cece-456c-ab60-9c4ccd19f70c/zoom-fly-4-womens-road-running-shoes-5VmBLp.png',
    description: "Take it to the streets and find your tempo. From the moment you lace up, the webbing on the upper and lacing system wrap around your foot for a secure feel from start to finish. The added flex feels highly responsive and secure with every step. A soft, breathable upper combines with a stretchy collar for a sock-like fit and a secure, stable sensation. You've got goals to hit, lace up and fly towards a new best.",
    price: '100.00',
    bgColor: Colors.red.withOpacity(0.2),
      availableColor:[Colors.teal.shade100,Colors.teal.shade300]

  ),
  Shoes(
    name: 'Nike 3',
    imageName: 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/3dd4c47e-5edf-4bdc-aff4-edc396c3f83e/zoom-fly-4-womens-road-running-shoes-5VmBLp.png',
    description: "Take it to the streets and find your tempo. From the moment you lace up, the webbing on the upper and lacing system wrap around your foot for a secure feel from start to finish. The added flex feels highly responsive and secure with every step. A soft, breathable upper combines with a stretchy collar for a sock-like fit and a secure, stable sensation. You've got goals to hit, lace up and fly towards a new best.",
    price: '100.00',
    bgColor: Colors.blue.withOpacity(0.2),
      availableColor:[Colors.teal.shade100,Colors.teal.shade300]
  ),
  Shoes(
    name: 'Nike 4',
    imageName: 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9a3e28c8-98b6-4633-a868-9d9d307cb6cb/zoom-fly-4-womens-road-running-shoes-5VmBLp.png',
    description: "Take it to the streets and find your tempo. From the moment you lace up, the webbing on the upper and lacing system wrap around your foot for a secure feel from start to finish. The added flex feels highly responsive and secure with every step. A soft, breathable upper combines with a stretchy collar for a sock-like fit and a secure, stable sensation. You've got goals to hit, lace up and fly towards a new best.",
    price: '100.00',
    bgColor: Colors.black.withOpacity(0.2),
      availableColor:[Colors.teal.shade100,Colors.teal.shade300]
  ),
];