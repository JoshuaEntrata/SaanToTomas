import 'package:flutter/material.dart';
import '../widgets/title_bar.dart';

class SaanToTomasText extends StatelessWidget {
  const SaanToTomasText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/');
      },
      child: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: const [
            TextSpan(
              text: 'Saan',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Epilogue',
              ),
            ),
            TextSpan(
              text: 'ToTomas',
              style: TextStyle(
                color: Color(0xFFffd100),
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Epilogue',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const HeaderWidget({Key? key, this.title = ''}) : super(key: key);
  //TODO: Fix the padding and position of the contents of Header widget
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Container(
        child: title.isNotEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SaanToTomasText(),
                  TitleBar(title: title),
                ],
              )
            : const Center(
                child: SaanToTomasText(),
              ),
      ),
    );
  }
}
