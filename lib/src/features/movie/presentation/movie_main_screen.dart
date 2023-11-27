import 'package:flutter/material.dart';

import 'search_bar.dart';

class MovieMainScreen extends StatelessWidget {
  const MovieMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('movie screen');
    return Scaffold(
        appBar: AppBar(
          title: const Text('TMDB Movie'),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: CustomSearchBar(),
            ),
            Expanded(
              child: ListView.custom(
                childrenDelegate: SliverChildBuilderDelegate(
                  childCount: 0,
                  (context, index) {
                    return null;
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
