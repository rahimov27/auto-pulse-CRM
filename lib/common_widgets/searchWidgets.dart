import 'package:auto_pulse_crm/resources/AppFonts.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    super.key,
  });

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9465,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(1, 2), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        cursorColor: Colors.blue,
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Search for...',

          prefixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          suffixIcon: IconButton(
              onPressed: () {
                _controller.clear();
              },
              icon: const Icon(Icons.clear)),
          hintStyle: AppFonts.searchStyle,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(20), // Adjust padding as needed
        ),
      ),
    );
  }
}
