import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


import 'api.dart';
import 'post_model.dart';

class PostProvider with ChangeNotifier {
  final ApiService apiService;

  PostProvider(this.apiService);

  List<PostModel> _posts = [];
  bool _loading = false;
  String _error = '';

  List<PostModel> get posts => _posts;
  bool get loading => _loading;
  String get error => _error;

  Future<void> fetchPosts() async {
    try {
      _loading = true;
      _error = '';
      notifyListeners();

      final List<Map<String, dynamic>> data = await apiService.fetchPosts();

      _posts = data.map((post) => PostModel.fromJson(post)).toList();
    } catch (e) {
      _error = 'Failed to fetch posts';
    } finally {
      _loading = false;
      notifyListeners();
    }
  }
}