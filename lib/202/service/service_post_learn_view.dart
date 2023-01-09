import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:proje0/202/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({Key? key}) : super(key: key);

  @override
  State<ServicePostLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServicePostLearn> {
  bool _isLoading = false;
  late final Dio _dio;
  String? name;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();
  @override
  void initState() {
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    super.initState();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemsToService(PostModel postModel) async {
    _changeLoading();
    final response = await _dio.post('posts', data: postModel);
    if (response.statusCode == HttpStatus.created) {
      name = 'basarili';
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
        ),
        body: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'title'),
              keyboardType: TextInputType.text,
              //* KLAVYE SADECE HARF KABUL EDER
              textInputAction: TextInputAction.next,
              //* AŞAĞI BOŞLUĞA KAYMASI İÇİN
            ),
            TextField(
              controller: _bodyController,
              decoration: const InputDecoration(labelText: 'body'),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            TextField(
              controller: _userIdController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'userid'),
            ),
            TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIdController.text.isNotEmpty) {
                          final model = PostModel(
                            title: _titleController.text,
                            body: _bodyController.text,
                            userId: int.tryParse(_userIdController.text),
                          );
                          _addItemsToService(model);
                        }
                      },
                child: const Text('SEND'))
          ],
        ));
  }
}
