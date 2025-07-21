import 'package:flutter/material.dart';

class Appbarsearch extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
        onTap: () {
          showSearch(
            context: context,
            delegate: mySearch()
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 160, 104, 57),
            borderRadius: BorderRadius.circular(10)
          ),
          padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.search_rounded, size: 26, color: Colors.black,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    "Search coffee",
                    style: TextStyle(
                      fontFamily: 'inter',
                      fontSize: 14,
                      color: Colors.white
                    ),
                  ),
                )
              ],
            ),
          ),
    );
  }
}

class mySearch extends SearchDelegate
{

    List<String> allItems = ['Cappuccino', 'Coffee', 'Latte', 'Moka'];
    // List<String> filteredItems = [];

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return BackButton();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    final results = allItems.where(
      (item) => item.toLowerCase().contains(query.toLowerCase())
    ).toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(results[index]),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestions = allItems.where(
      (item) => item.toLowerCase().contains(query.toLowerCase())
    ).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(suggestions[index]),
        onTap: () {
          query = suggestions[index];
          showResults(context);
        },
      ),
    );
  }
  
}