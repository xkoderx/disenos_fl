import 'package:disenos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [Fondo(), _HomeBody()],
        ),
        bottomNavigationBar: CustomBar());
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        bottom: false,
        child: Column(
          children: const [
            PageTittle(),
            CardTable(),
          ],
        ),
      ),
    );
  }
}
