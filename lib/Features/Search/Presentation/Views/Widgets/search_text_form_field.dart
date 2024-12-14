import 'package:bookly_app/Core/Utils/assets_data.dart';
import 'package:flutter/material.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({super.key, this.onSaved});

  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field is Required';
        }
        return null;
      },
      onSaved: onSaved,
      decoration: InputDecoration(
        hintText: 'Enter Name Book',
        label: const Text('Search'),
        suffixIcon: Opacity(
          opacity: 0.7,
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              AssetsData.iconSearch,
              height: 26,
              width: 26,
            ),
          ),
        ),
        border: borderOutlineInput(),
        focusedBorder: borderOutlineInput(),
        enabledBorder: borderOutlineInput(),
      ),
    );
  }

  OutlineInputBorder borderOutlineInput() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(
          12,
        ),
      ),
    );
  }
}
