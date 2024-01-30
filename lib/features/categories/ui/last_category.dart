import 'package:flutter/material.dart';

class LastCategory extends StatelessWidget {
  const LastCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left:70, top: 10, right: 20),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("datasx"),
        Divider(
          thickness: 2,
        )],
      ),
    );
  }
}