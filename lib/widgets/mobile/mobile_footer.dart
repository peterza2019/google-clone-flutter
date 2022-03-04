import 'package:flutter/material.dart';
import 'package:google_clone/widgets/footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        FooterText(title: 'About'),
        SizedBox(width: 10),
        FooterText(title: 'Advertising'),
        SizedBox(width: 10),
        FooterText(title: 'Suggest Website'),
        SizedBox(width: 10),
        FooterText(title: 'Privacy'),
        SizedBox(width: 10),
        FooterText(title: 'Terms'),
        SizedBox(width: 10),
        FooterText(title: 'Contact Us'),
      ],
    );
  }
}
