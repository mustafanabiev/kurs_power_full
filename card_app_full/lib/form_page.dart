import 'package:card_app_full/home_page.dart';
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  FormPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final kesibiController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Форманы толтур'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 60),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Аты-жөнүңүздү киргизиңиз',
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: kesibiController,
                decoration: const InputDecoration(
                  labelText: 'Кесибиңизди жазыңыз',
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                  labelText: 'Телефон номериңизди жазыңыз',
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email аккаунтуңузду жазыңыз',
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (nameController.text.isNotEmpty &&
                      kesibiController.text.isNotEmpty &&
                      phoneController.text.isNotEmpty &&
                      emailController.text.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                          name: nameController.text,
                          kesibi: kesibiController.text,
                          phone: phoneController.text,
                          email: emailController.text,
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Форманын баарын туура толтуруңуз !!!'),
                      ),
                    );
                  }
                },
                child: const Text('Жөнөтүү'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
