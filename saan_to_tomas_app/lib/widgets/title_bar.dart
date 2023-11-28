import 'package:flutter/material.dart';

class TitleBar extends StatefulWidget {
  const TitleBar({super.key});

  @override
  State<TitleBar> createState() => _TitleBarState();
}

class _TitleBarState extends State<TitleBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 10,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: TextButton(
                child: const Icon(
                    Icons.arrow_back
                ),
                onPressed: () {},
              ),
            ),
            const Expanded(
                flex: 24,
                child: Text("Angkong", textAlign: TextAlign.center,)
            )
          ],
        ),
      ),
    ) ;
  }
}
