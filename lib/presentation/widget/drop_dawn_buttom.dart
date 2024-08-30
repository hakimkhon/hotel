import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDawnButtom extends StatefulWidget {
  const DropDawnButtom({super.key, required this.title});
  final String title;

  @override
  State<DropDawnButtom> createState() => _DropDawnButtomState();
}

class _DropDawnButtomState extends State<DropDawnButtom> {

  @override
  Widget build(BuildContext context) {
    final List<String> itemsPlace = ["One", "Two", "Tree", "Four", "Five +"];
    // ignore: unused_local_variable
    final List<String> itemsData = ["", "Night", "Day", "Week", "Month"];
    String? selectedValue;
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        hint: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
        items: itemsPlace
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          selectedValue = value;
          setState(() {
            selectedValue = value;
          });
        },
        buttonStyleData: ButtonStyleData(
          height: 60,
          width: 130,
          padding: const EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color.fromRGBO(25, 26, 29, 1),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(41, 42, 47, 1),
                offset: Offset(-5, -5),
                blurRadius: 10,
                spreadRadius: -1,
              ),
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 1),
                offset: Offset(5, 5),
                blurRadius: 10,
                spreadRadius: -8,
              ),
            ],
          ),
          elevation: 2,
        ),
        iconStyleData: const IconStyleData(),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 240,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: const Color.fromRGBO(25, 26, 29, 1),
          ),
          offset: const Offset(0, -5),
          scrollbarTheme: const ScrollbarThemeData(
            radius: Radius.circular(40),
            // thickness: MaterialStateProperty.all(6),
            // thumbVisibility: MaterialStateProperty.all(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.only(left: 14, right: 14),
        ),
      ),
    );
  }
}
