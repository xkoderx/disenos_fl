import 'package:flutter/material.dart';

class BasicoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Image(image: AssetImage('assets/bene.jpg')),
        const Titulo(),
        const Botones(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Text(
            'Occaecat culpa incididunt ut officia ipsum sunt sunt laboris.Incididunt eu labore laborum incididunt. Lorem deserunt exercitation cupidatat adipisicing anim adipisicing. Nulla voluptate do enim aliqua nisi deserunt non labore amet nostrud laboris fugiat deserunt. Labore commodo veniam Lorem officia incididunt amet commodo. Magna pariatur incididunt veniam Lorem ad labore voluptate consequat tempor tempor consequat. Ad adipisicing amet eiusmod sit dolore esse.',
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ));
  }
}

class Titulo extends StatelessWidget {
  const Titulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Benedetta campeona',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Usala rey', style: TextStyle(color: Colors.white60)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('5'),
        ],
      ),
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ButtonSection();
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.telegram, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 30,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.orange),
        )
      ],
    );
  }
}
