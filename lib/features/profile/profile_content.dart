import 'package:flutter/material.dart';
import 'package:mynthra_clone/foundation/sp_text_button/sp_text_button.dart';

class FooterContent extends StatelessWidget {
  const FooterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SPTextButton(text: 'FAQs'),
      SPTextButton(text: 'ABOUT US'),
      SPTextButton(text: 'TERMS OF USE'),
      SPTextButton(text: 'PRIVACY POLICY')
    ]);
  }
}