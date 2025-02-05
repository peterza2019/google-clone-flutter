import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/web/web_search.dart';
import 'package:google_clone/widgets/translation_buttons.dart';
import 'package:google_clone/widgets/web/search_buttons.dart';
import 'package:google_clone/widgets/web/web_footer.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.25),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // since children of column are not supposed to be 'spaced between'
                    Column(
                      children: const [
                        Search(),
                        SizedBox(height: 20),
                        SearchButtons(),
                        SizedBox(height: 20),
                        TranslationButtons(),
                      ],
                    ),
                    const WebFooter(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
