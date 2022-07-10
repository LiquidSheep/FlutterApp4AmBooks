import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return InputFormState();
  }
}

class InputFormState extends State<InputForm> {
  final _formKey = GlobalKey<FormState>();
  final keywordController = TextEditingController();
  final genreIdController = TextEditingController();
  final isbnjanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            const Text(
              'Input Form',
              style: TextStyle(fontSize: 40, color: Color(0xFF852342)),
            ),
            const Divider(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 300),
              child: TextFormField(
                controller: keywordController,
                validator: ((value) {
                  if ((value == null || value.isEmpty) &&
                      genreIdController.value.text.isEmpty &&
                      isbnjanController.value.text.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                }),
                cursorColor: const Color(0xFF852342),
                decoration: const InputDecoration(
                  label: Text(
                    'Keyword',
                    style: TextStyle(fontSize: 20, color: Color(0xFF852342)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF852342)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF852342)),
                  ),
                  errorStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 300),
              child: TextFormField(
                controller: genreIdController,
                validator: ((value) {
                  if ((value == null || value.isEmpty) &&
                      keywordController.value.text.isEmpty &&
                      isbnjanController.value.text.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                }),
                cursorColor: const Color(0xFF852342),
                decoration: const InputDecoration(
                  label: Text(
                    'Genre ID',
                    style: TextStyle(fontSize: 20, color: Color(0xFF852342)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF852342)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF852342)),
                  ),
                  errorStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 300),
              child: TextFormField(
                controller: isbnjanController,
                validator: ((value) {
                  if ((value == null || value.isEmpty) &&
                      keywordController.value.text.isEmpty &&
                      genreIdController.value.text.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                }),
                cursorColor: const Color(0xFF852342),
                decoration: const InputDecoration(
                  label: Text(
                    'ISBN / JAN',
                    style: TextStyle(fontSize: 20, color: Color(0xFF852342)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF852342)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF852342)),
                  ),
                  errorStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(const Color(0xFF852342)),
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFFFDFDEC)),
                    elevation: MaterialStateProperty.all(0),
                    side: MaterialStateProperty.all(
                      const BorderSide(color: Color(0xFF852342)),
                    )),
                child: const Text(
                  'Retrieve Data',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
            )
          ],
        ));
  }
}
