import 'package:flutter/material.dart';

class CustomSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear_rounded))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
   return Column(
     children: [
       Text('REsult'),
       Text('REsult'),
       Text('REsult'),
       Text('REsult'),
     ],
   );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SizedBox();
  }
}
