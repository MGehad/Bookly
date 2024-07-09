import 'package:flutter/material.dart';

class VerticalSliverList extends StatelessWidget {
  const VerticalSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 55.0, left: 40.0, top: 18.0),
          child: Container(
            decoration: const BoxDecoration(color: Colors.indigo),
            height: 120,
          ),
        );
      },
    ));
  }
}
