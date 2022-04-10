import 'package:flutter/material.dart';
import '../models/models.dart';
import './services/load_service.dart';

class ExPage extends StatefulWidget {
  const ExPage({Key? key, this.post}) : super(key: key);

  final List<Post>? post;

  @override
  State<ExPage> createState() => _ExPageState();
}

class _ExPageState extends State<ExPage> {
  final loadS = LoadService();
  @override
  void initState() {
    super.initState();
    loadS.loadPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Visibility(
      visible: false,
      replacement: const Center(child: CircularProgressIndicator()),
      child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
            return Card(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Текст $index'),
                ));
          }),
    ));
  }
}
