import "package:flutter/material.dart";

class GuideActions extends StatelessWidget {
  const GuideActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Action(
            icon: Icons.call,
            text: "CALL",
          ),
          Action(
            icon: Icons.near_me,
            text: "ROUTE",
          ),
          Action(
            icon: Icons.share,
            text: "SHARE",
          ),
        ],
      ),
    );
  }
}

class Action extends StatelessWidget {
  const Action({required this.icon, required this.text, Key? key})
      : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final Color? color = Theme.of(context).primaryColor;
    return Column(
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: Text(
            text,
            style: TextStyle(
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
