import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar(
    {
    super.key, 
    required this.child, 
    required this.title
    }
    );

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 100,
      floating: false,
      pinned: true,
      actions: [
        // Cart Button
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            // Handle cart button press
          },
        )
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.primary,
      title: Text("Sunset Dinner"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
