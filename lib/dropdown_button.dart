import 'package:flutter/material.dart';
// Drop Down Button Class
class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() {
    return _DropdownState();
  }
}

class _DropdownState extends State<Dropdown> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        elevation: 0,
        items: [
          DropdownMenuItem<String>(
            child: Text('Dividens-Yields',
              style: TextStyle(
                  color: Color(0XFFA3A3A3),
                  fontSize: 14,
                  fontWeight: FontWeight.w300
              ),),
            value: 'one',
          ),
          DropdownMenuItem<String>(
            child: Text('Item 2'),
            value: 'two',
          ),
          DropdownMenuItem<String>(
            child: Text('Item 3'),
            value: 'three',
          ),
        ],
        onChanged: (String value) {
          setState(() {
            _value = value;
          });
        },
        hint: Text('Dividens-Yields',
          style: TextStyle(
              color: Color(0XFFA3A3A3),
              fontSize: 14,
              fontWeight: FontWeight.w300
          ),),
        value: _value,
      ),
    );
  }
}