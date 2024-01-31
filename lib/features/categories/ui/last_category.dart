import 'dart:convert'; 
import 'package:flutter/material.dart';

class LastCategory extends StatelessWidget {
  const LastCategory();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left:70, top: 10, right: 20),
      child: const Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("hgvkhg"),
        Divider(
          thickness: 2,
        )],
      ),
    );
  }

  static fromJson(x) {}
  toJson() {}

}