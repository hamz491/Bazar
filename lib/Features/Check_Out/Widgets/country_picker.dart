import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class country_picker extends StatelessWidget {
  const country_picker({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCountryPicker(
          context: context,
          countryListTheme: CountryListThemeData(
            flagSize: 25,
            backgroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 16,
              color: Colors.blueGrey,
            ),
            bottomSheetHeight: 500,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            //Optional. Styles the search field.
            inputDecoration: InputDecoration(
              labelText: 'Search',
              hintText: 'Start typing to search',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color(0xFF8C98A8).withOpacity(0.2),
                ),
              ),
            ),
          ),
          onSelect: (Country country) =>
              print('Select country: ${country.displayName}'),
        );
      },
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Country"),
              Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
