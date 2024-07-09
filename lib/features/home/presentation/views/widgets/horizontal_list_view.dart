import 'package:flutter/material.dart';
import 'horizontal_list_view_item.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 20.0),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: HorizontalListViewItem(
              onPressed: () {},
              image:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcFr8-NiY73WX6HiFwflVVKkRBipr76pcV2g&s',
            ),
          );
        },
      ),
    );
  }
}
