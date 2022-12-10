import 'package:flutter/material.dart';

class CheckBoxForm extends StatefulWidget {
  const CheckBoxForm({super.key});

  @override
  State<CheckBoxForm> createState() => _CheckBoxFormState();
}

class _CheckBoxFormState extends State<CheckBoxForm> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return FormField( builder: (state){
      return Row(
        children: [
          Checkbox(value: checkBoxValue, 
          onChanged: (value){
            checkBoxValue = value!;
            state.didChange(value);

          }
          ),
          Text(
            state.errorText ?? '',
            style: TextStyle(
              color: Theme.of(context).errorColor,
            ),
          )
        ],
      );
    },
    validator: ((value) {
      if (!checkBoxValue) return '';
      return null;
    }),
    );
  }
}