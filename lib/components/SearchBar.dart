import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.grey.withOpacity(0.5), width: 0.5),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // implement search functionality here
            },
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Pesquisar',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Color(0xFFDDDDDD),
                  width: 1,
                ),
              ),
              child: IconButton(
                icon: Icon(Icons.filter_alt),
                onPressed: () {
                  // implement filter functionality here
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
