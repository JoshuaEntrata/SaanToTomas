import 'package:flutter/material.dart';
import '../widgets/title_bar.dart';

class SaanToTomasText extends StatelessWidget {
  const SaanToTomasText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/home');
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

  @override
  Size get preferredSize {
    if (title.isNotEmpty) {
      return const Size.fromHeight(80);
    } else {
      return const Size.fromHeight(kToolbarHeight);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SaanToTomasText(),
          if (title.isNotEmpty) const SizedBox(height: 10),
          title.isNotEmpty ? TitleBar(title: title) : Container(),
        ],
      ),
    );
  }
}
