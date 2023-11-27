import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  TextEditingController searchController = TextEditingController();
  bool showClearIcon = false;

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SearchBar(
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
        } else {
          setState(() {
            showClearIcon = false;
          });
        }
      },
    );
  }
}
