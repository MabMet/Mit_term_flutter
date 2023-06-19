import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatefulWidget {
  const CustomTextFieldWidget({
    super.key,
    this.hintText,
    this.labelText,
    this.textPass = false,
    this.controller,
    this.onSubmit,
  });

  final String? hintText;
  final String? labelText;
  final bool textPass;
  final TextEditingController? controller;
  final ValueChanged<String>? onSubmit;

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  late bool _hidePassword;

  @override
  void initState() {
    super.initState();
    _hidePassword = widget.textPass;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: Form(
        child: TextFormField(
          controller: widget.controller,
          obscureText: _hidePassword,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.amberAccent),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.greenAccent),
            ),
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              fontSize: 15,
            ),
            label: Text(
              '${widget.labelText}',
            ),
            suffixIcon: widget.textPass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _hidePassword = !_hidePassword;
                      });
                    },
                    icon: Icon(
                      _hidePassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    splashRadius: 24,
                  )
                : null,
          ),
          validator: (value) {
            if (value != null && value.isEmpty) {
              return 'Please enter some text';
            }else if(value != null && value.length <= 8){
              return 'Please enter more then 8 characters';
            }else{
              return null;
            }
          },
        ),
      ),
    );
  }
}
