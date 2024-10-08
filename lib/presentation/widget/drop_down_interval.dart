import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownInterval extends StatefulWidget {
  const DropDownInterval({super.key});

  @override
  State<DropDownInterval> createState() => _DropDownIntervalState();
}

class _DropDownIntervalState extends State<DropDownInterval> {
  @override
  Widget build(BuildContext context) {
    final List<String> itemsPlace = [
      "SF, USA - 2 guests - Jan 18 to Jan 23",
      "SF, USA - 3 guests - Jan 18 to Jan 23",
      "SF, USA - 4 guests - Jan 18 to Jan 23",
    ];
    String? selectedValue;
    return DropdownButton2<String>(
      isExpanded: true,
      hint: const Padding(
        padding: EdgeInsets.only(left: 18.0),
        child: Text(
          "SF, USA - 2 guests - Jan 18 to Jan 23",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
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
                    color: Colors.white,
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
      iconStyleData: const IconStyleData(),
      dropdownStyleData: const DropdownStyleData(
        maxHeight: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(25, 26, 29, 1),
        ),
        offset: Offset(0, -5),
        scrollbarTheme: ScrollbarThemeData(),
      ),
      menuItemStyleData: const MenuItemStyleData(
        height: 80,
        padding: EdgeInsets.only(left: 18, right: 14),
      ),
    );
  }
}
