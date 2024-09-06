import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hotel/data/core/constant/constants.dart';

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
            fontSize: 18,
            color: MyColors.textColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        items: itemsPlace
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: MyColors.textColor,
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
          height: 55,
          width: 120,
          padding: const EdgeInsets.only(left: 12, right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: MyColors.dropColor,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(41, 42, 47, 1),
                offset: Offset(-7, -7),
                blurRadius: 10,
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 1),
                offset: Offset(7, 7),
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
          width: 110,
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
