// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StatCardList extends StatelessWidget {
  final String value;
  final String title;
  final Color color;
  const StatCardList({
    Key? key,
    required this.value,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "+500",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5.0),
          Text("Leads".toUpperCase())
        ],
      ),
    );
  }
}

class StatCardGrid extends StatelessWidget {
  final int height;
  final Color color;
  final String value;
  final String desc;
  final IconData icon;
  final VoidCallback? onTap;

  const StatCardGrid({
    Key? key,
    required this.height,
    required this.color,
    required this.value,
    required this.desc,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height.toDouble(),
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text(
                value,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
              ),
              trailing: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            SizedBox(height: height / 10),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                desc,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
