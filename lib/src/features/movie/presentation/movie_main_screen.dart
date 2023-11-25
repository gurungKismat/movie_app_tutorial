import 'package:flutter/material.dart';

class MovieMainScreen extends StatefulWidget {
  const MovieMainScreen({super.key});

  @override
  State<MovieMainScreen> createState() => _MovieMainScreenState();
}

class _MovieMainScreenState extends State<MovieMainScreen> {
  TextEditingController searchController = TextEditingController();
  bool showClearIcon = false;

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TMDB Movie'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: SearchBar(
                padding: const MaterialStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 16),
                ),
                leading: const Icon(Icons.search),
                controller: searchController,
                trailing: [
                  showClearIcon
                      ? IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.close),
                        )
                      : const Text(''),
                ],
                onChanged: (value) {
                  print('value: $value');
                  if (value.isNotEmpty) {
                    setState(() {
                      showClearIcon = true;
                    });
                  }else {
                    setState(() {
                      showClearIcon = false;
                    });
                  }
                },
              ),
            ),
          ],
        ));
  }
}
