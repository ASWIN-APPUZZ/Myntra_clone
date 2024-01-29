import 'package:flutter/material.dart';
import 'package:mynthra_clone/theme/colors/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
          height: MediaQuery.of(context).size.height / 3,
          color: Colors.amber,
          child: Stack(children: [
            Container(color: Colors.amber),
            Positioned(
                left: 10,
                bottom: 10,
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.white70),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("4",style: TextStyle(fontSize: 13)),
                          Icon(Icons.star, color: AppColor.greens, size: 13),
                          Text("\t| 4.2K",style: TextStyle(fontSize: 13))
                        ])))
          ])),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text("Title",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              const Text("Sub Title", style: TextStyle(color: AppColor.grey)),
              Row(children: [
                const Text("₹xxx",
                    style: TextStyle(
                        color: AppColor.Reds,
                        decoration: TextDecoration.lineThrough)),
                const Text("\t ₹xxx",
                    style: TextStyle(
                      color: AppColor.greens,
                    )),
                Text("\t xx% Off", style: TextStyle(color: AppColor.yellows,fontWeight: FontWeight.w600))
              ])
            ]),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border))
          ]))
    ]));
  }
}
