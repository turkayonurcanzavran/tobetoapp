import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(width: 0.1),
          ),
          hintText: "< Aradığın : iş Burada / >",
          hintStyle: const TextStyle(color: Colors.black26),
          prefixIcon: const Icon(
            Icons.search,
            size: 30,
            color: Color.fromARGB(255, 108, 108, 108),
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.clear,
              size: 30,
              color: Color.fromARGB(255, 108, 108, 108),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
