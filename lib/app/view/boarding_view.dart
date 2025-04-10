import 'package:flutter/material.dart';

import 'widgets/boarding_view_body.dart';

class BoardingView extends StatelessWidget {
  const BoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdffff),
      body: BoardingViewBody(),
    );
  }
}
