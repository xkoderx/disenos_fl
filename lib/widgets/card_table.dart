import 'dart:ui';
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.lightBlue,
              icon: Icons.border_all,
              texto: 'General',
            ),
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              texto: 'Car',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.deepPurple,
              icon: Icons.music_note,
              texto: 'Música',
            ),
            _SingleCard(
              color: Colors.brown,
              icon: Icons.movie_creation,
              texto: 'Películas',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.orange,
              icon: Icons.cloud,
              texto: 'Nube',
            ),
            _SingleCard(
              color: Colors.yellowAccent,
              icon: Icons.call_missed,
              texto: 'Tonight',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.grey,
              icon: Icons.help,
              texto: 'Aiuda',
            ),
            _SingleCard(
              color: Colors.red,
              icon: Icons.heart_broken,
              texto: 'Desamor',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String texto;

  const _SingleCard(
      {super.key,
      required this.icon,
      required this.color,
      required this.texto});
  @override
  Widget build(BuildContext context) {
    return _CardFondo(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                colors: [color, Colors.transparent],
              ),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 30,
              child: Icon(
                icon,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            texto,
            style: TextStyle(
              color: color,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

class _CardFondo extends StatelessWidget {
  const _CardFondo({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
