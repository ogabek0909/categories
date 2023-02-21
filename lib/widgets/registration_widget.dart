import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegistrationWidget extends StatefulWidget {
  const RegistrationWidget({super.key});

  @override
  State<RegistrationWidget> createState() => _RegistrationWidgetState();
}

class _RegistrationWidgetState extends State<RegistrationWidget> {
  final TextEditingController _firstname = TextEditingController();
  final TextEditingController _lastname = TextEditingController();
  final TextEditingController _fathername = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _phoneNumber =
      TextEditingController(text: '+998 ');
  final TextEditingController _web = TextEditingController();
  final TextEditingController _telegram = TextEditingController();
  final TextEditingController _instagram = TextEditingController();
  final TextEditingController _facebook = TextEditingController();
  final TextEditingController _youtube = TextEditingController();
  final TextEditingController _whatsapp = TextEditingController();
  final TextEditingController _companyNameAndPosition = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.only(top: 60, bottom: 60, right: 15, left: 15),
        elevation: 5,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
          width: 700,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TxtField(
                            controller: _firstname,
                            hint: 'Ism',
                            validator: (value) {},
                          ),
                          TxtField(
                            controller: _lastname,
                            hint: 'Familiya',
                            validator: (value) {},
                          ),
                          TxtField(
                            controller: _fathername,
                            hint: 'Otasining ismi',
                            validator: (value) {},
                          ),
                          TxtField(
                            controller: _phoneNumber,
                            hint: 'Telefon raqam',
                            validator: (value) {},
                          ),
                          TxtField(
                            controller: _email,
                            hint: 'Email',
                            validator: (value) {},
                          ),
                          TxtField(
                            controller: _password,
                            hint: 'Password',
                            validator: (value) {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          TxtField(
                            hint: 'Web',
                            controller: _web,
                            validator: (value) {},
                          ),
                          TxtField(
                            hint: 'telegram',
                            controller: _telegram,
                            validator: (value) {},
                          ),
                          TxtField(
                            hint: 'instagram',
                            controller: _instagram,
                            validator: (value) {},
                          ),
                          TxtField(
                            hint: 'youtube',
                            controller: _youtube,
                            validator: (value) {},
                          ),
                          TxtField(
                            hint: 'whatsapp',
                            controller: _whatsapp,
                            validator: (value) {},
                          ),
                          TxtField(
                            hint: 'Company name and position',
                            controller: _companyNameAndPosition,
                            validator: (value) {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TxtField extends StatelessWidget {
  final String hint;
  final String? Function(String? value)? validator;
  final TextEditingController controller;
  final bool isTheLast;
  const TxtField({
    super.key,
    required this.hint,
    required this.controller,
    required this.validator,
    this.isTheLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black12,
            hintText: hint,
            border: const OutlineInputBorder(),
          ),
          textInputAction:
              isTheLast ? TextInputAction.done : TextInputAction.next,
          controller: controller,
          validator: validator,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
