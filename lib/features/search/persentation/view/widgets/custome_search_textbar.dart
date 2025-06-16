import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomeSearchTextBar extends StatelessWidget {
  const CustomeSearchTextBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(90)),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(90)),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 49, 36, 90),
            width: 1,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(90)),
        ),
        labelText: 'Book Name',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Bootstrap.search, color: Colors.white, size: 20),
        ),
        labelStyle: TextStyle(color: Colors.white),
      ),
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );
  }
}
