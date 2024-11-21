import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class EditProductPage extends StatefulWidget {
  final int id;
  final String currentTitle;
  final String currentDescription;
  final double currentPrice;

  const EditProductPage({
    super.key,
    required this.id,
    required this.currentTitle,
    required this.currentDescription,
    required this.currentPrice,
  });

  @override
  State<EditProductPage> createState() => _EditProductPageState();
}

class _EditProductPageState extends State<EditProductPage> {
  final _formKey = GlobalKey<FormState>();
  late String title;
  late String description;
  late double price;

  @override
  void initState() {
    super.initState();
    title = widget.currentTitle;
    description = widget.currentDescription;
    price = widget.currentPrice;
  }

  Future<void> updateProduct() async {
    final url = Uri.parse("https://dummyjson.com/products/${widget.id}");
    final response = await http.put(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "title": title,
        "description": description,
        "price": price,
      }),
    );

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Product updated successfully!")),
      );
      Navigator.of(context).pop();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Failed to update product.")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Product")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: title,
                decoration: const InputDecoration(labelText: "Title"),
                onChanged: (value) => title = value,
                validator: (value) =>
                value == null || value.isEmpty ? "Enter a title" : null,
              ),
              TextFormField(
                initialValue: description,
                decoration: const InputDecoration(labelText: "Description"),
                onChanged: (value) => description = value,
                validator: (value) =>
                value == null || value.isEmpty ? "Enter a description" : null,
              ),
              TextFormField(
                initialValue: price.toString(),
                decoration: const InputDecoration(labelText: "Price"),
                keyboardType: TextInputType.number,
                onChanged: (value) => price = double.parse(value),
                validator: (value) => value == null || value.isEmpty
                    ? "Enter a price"
                    : double.tryParse(value) == null
                    ? "Enter a valid price"
                    : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    updateProduct();
                  }
                },
                child: const Text("Save Changes"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
