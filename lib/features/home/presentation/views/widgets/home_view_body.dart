import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'best_seller_sliver_view.dart';
import 'custom_text_widget.dart';
import 'home_view_app_bar.dart';
import 'horizontal_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: HomeViewAppBar()),
        SliverToBoxAdapter(child: HorizontalListView()),
        SliverToBoxAdapter(child: SizedBox(height: 45)),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: CustomTextWidget(text: 'Newest'),
          ),
        ),
        BestSellerSliverList(),
      ],
    );
  }
}
