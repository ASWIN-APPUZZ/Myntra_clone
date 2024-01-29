import 'package:flutter/material.dart';
import 'package:mynthra_clone/features/home/product_card/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [ProductCard()],)
    );
  }
}
