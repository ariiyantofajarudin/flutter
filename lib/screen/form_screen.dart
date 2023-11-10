import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          child: _buildForm(),
        ),
      ),
    );
  }
}

final _formKey = GlobalKey<FormState>();
final Map<String, dynamic> formData = {'email': null, 'password': null};

Widget _buildForm() {
  return Form(
    key: _formKey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SizedBox(
          height: 100,
          child: Center(
            child: Text(
              'Form Flutter',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue),
            ),
          ),
        ),
        _buildEmailField(),
        const SizedBox(
          height: 10,
        ),
        _buildPasswordField(),
        const SizedBox(
          height: 10,
        ),
        _buildSubmitButton(),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}

Widget _buildEmailField() {
  return TextFormField(
    decoration: const InputDecoration(labelText: 'Email'),
    validator: (value) {
      if (!RegExp(
              r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9]*[a-z0-9])?")
          .hasMatch(value!)) {
        return 'This is no valid email';
      }
    },
    onSaved: (value) {
      formData['email'] = value;
    },
  );
}

Widget _buildPasswordField() {
  return TextFormField(
    decoration: const InputDecoration(labelText: 'Password'),
    validator: (value) {
      if (value!.isEmpty) {
        return 'Please input a password';
      }
    },
    onSaved: (value) {
      formData['password'] = value;
    },
  );
}

Widget _buildSubmitButton() {
  return ElevatedButton(
    onPressed: () {
      _submitForm();
    },
    child: Text('SEND'),
  );
}

void _submitForm() {
  print('Submitting form');
  if (_formKey.currentState!.validate()) {
    print('Form was validated');
    _formKey.currentState!.save();
    print(formData);
    Get.snackbar('Form Data',
        'Email: ${formData['email']} Password: ${formData['password']}',
        backgroundColor: Colors.blue[300], snackPosition: SnackPosition.BOTTOM);
  }
}
