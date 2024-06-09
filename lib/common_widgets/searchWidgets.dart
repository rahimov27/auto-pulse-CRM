import 'package:auto_pulse_crm/resources/AppFonts.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

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
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search for...',
          prefixIcon: Icon(Icons.search),
          hintStyle: AppFonts.searchStyle,
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(20), // Adjust padding as needed
        ),
      ),
    );
  }
}
